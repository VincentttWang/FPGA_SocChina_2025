#include "denoise_config.hpp"
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include <iostream>
#include <vector>
#include <cmath>
#include <complex>

// 声明顶层函数
void denoise_top(
    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &fft_in,
    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &clean_out,
    magnitude_t alpha,
    magnitude_t beta,
    ap_uint<1> enable,
    ap_uint<1> reset_noise,
    ap_uint<4> noise_frame_count
);

// 辅助函数：将复数数据打包为 AXI Stream
void pack_data(const std::vector<std::complex<float>> &input_data, hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &in_stream) {
    int num_samples = input_data.size();
    int num_transactions = num_samples / SSR;

    for (int i = 0; i < num_transactions; ++i) {
        ap_axiu<AXI_WIDTH, 0, 0, 0> val;
        ap_int<AXI_WIDTH> data = 0;

        for (int r = 0; r < SSR; ++r) {
            int idx = i * SSR + r;
            std::complex<float> sample = input_data[idx];
            
            // 将 float (-1.0 ~ 1.0) 转换为 int16
            short re_int = (short)(sample.real() * 32767.0);
            short im_int = (short)(sample.imag() * 32767.0);
            
            ap_int<32> sample_bits;
            sample_bits.range(15, 0) = re_int;
            sample_bits.range(31, 16) = im_int;
            
            unsigned int low = r * 32;
            unsigned int high = (r + 1) * 32 - 1;
            data.range(high, low) = sample_bits;
        }

        val.data = data;
        val.keep = -1;
        val.strb = -1;
        val.last = (i == num_transactions - 1) ? 1 : 0;
        
        in_stream.write(val);
    }
}

// 辅助函数：将 AXI Stream 解包为复数数据
void unpack_data(hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &out_stream, std::vector<std::complex<float>> &output_data) {
    output_data.clear();
    // 读取直到流为空或达到预期数量
    // 注意：在实际 HLS 仿真中，流通常不会自动结束，需要知道读取多少
    int expected_transactions = FFT_SIZE / SSR;
    
    for (int i = 0; i < expected_transactions; ++i) {
        if (out_stream.empty()) break;
        
        ap_axiu<AXI_WIDTH, 0, 0, 0> val = out_stream.read();
        ap_int<AXI_WIDTH> data = val.data;

        for (int r = 0; r < SSR; ++r) {
            unsigned int low = r * 32;
            unsigned int high = (r + 1) * 32 - 1;
            ap_int<32> sample_bits = data.range(high, low);
            
            short re_int = sample_bits.range(15, 0);
            short im_int = sample_bits.range(31, 16);
            
            float re = (float)re_int / 32768.0f;
            float im = (float)im_int / 32768.0f;
            
            output_data.push_back(std::complex<float>(re, im));
        }
    }
}

int main() {
    std::cout << "========================================" << std::endl;
    std::cout << "      Denoise HLS Testbench Start       " << std::endl;
    std::cout << "========================================" << std::endl;

    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> fft_in;
    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> clean_out;

    // 参数设置
    magnitude_t alpha = 2.0;   // 过减因子
    magnitude_t beta = 0.01;   // 频谱下限
    ap_uint<4> noise_frames = 5; // 噪声估计帧数

    // 1. 复位逻辑测试
    std::cout << "[Step 1] Resetting module..." << std::endl;
    denoise_top(fft_in, clean_out, alpha, beta, 0, 1, noise_frames);

    // 2. 噪声估计阶段 (发送纯噪声)
    std::cout << "[Step 2] Noise Estimation Phase (" << noise_frames << " frames)..." << std::endl;
    
    std::vector<std::complex<float>> noise_frame(FFT_SIZE);
    // 生成模拟噪声：所有频点幅度约为 0.1
    for (int i = 0; i < FFT_SIZE; ++i) {
        noise_frame[i] = std::complex<float>(0.07f, 0.07f); 
    }

    for (int f = 0; f < noise_frames; ++f) {
        pack_data(noise_frame, fft_in);
        // 调用 IP：reset=0, enable=1 (虽然估计阶段 enable 不影响估计逻辑，但通常开启)
        denoise_top(fft_in, clean_out, alpha, beta, 1, 0, noise_frames);
        
        // 清空输出流 (估计阶段输出的数据是未处理或处理中的，我们暂不关心)
        std::vector<std::complex<float>> dummy;
        unpack_data(clean_out, dummy);
    }
    std::cout << "   -> Noise estimation complete." << std::endl;

    // 3. 降噪测试阶段 (发送 信号 + 噪声)
    std::cout << "[Step 3] Denoising Test Phase..." << std::endl;
    
    std::vector<std::complex<float>> signal_frame(FFT_SIZE);
    int signal_idx = 100; // 信号所在的频点
    
    for (int i = 0; i < FFT_SIZE; ++i) {
        if (i == signal_idx) {
            // 强信号：幅度 ~0.8
            signal_frame[i] = std::complex<float>(0.8f, 0.0f); 
        } else {
            // 背景噪声：幅度 ~0.1 (与估计时一致)
            signal_frame[i] = std::complex<float>(0.07f, 0.07f);
        }
    }

    pack_data(signal_frame, fft_in);
    denoise_top(fft_in, clean_out, alpha, beta, 1, 0, noise_frames);

    // 4. 结果验证
    std::vector<std::complex<float>> result_frame;
    unpack_data(clean_out, result_frame);

    if (result_frame.size() != FFT_SIZE) {
        std::cerr << "Error: Output size mismatch! Expected " << FFT_SIZE << ", got " << result_frame.size() << std::endl;
        return 1;
    }

    float signal_mag_in = std::abs(signal_frame[signal_idx]);
    float noise_mag_in = std::abs(signal_frame[signal_idx + 50]); // 取一个非信号点

    float signal_mag_out = std::abs(result_frame[signal_idx]);
    float noise_mag_out = std::abs(result_frame[signal_idx + 50]);

    std::cout << "   -> Input Signal Mag (Bin " << signal_idx << "): " << signal_mag_in << std::endl;
    std::cout << "   -> Input Noise Mag  (Bin " << signal_idx+50 << "): " << noise_mag_in << std::endl;
    std::cout << "   ----------------------------------------" << std::endl;
    std::cout << "   -> Output Signal Mag: " << signal_mag_out << std::endl;
    std::cout << "   -> Output Noise Mag:  " << noise_mag_out << std::endl;

    // 简单的 Pass/Fail 检查
    // 信号应该保留 (可能略有衰减)
    // 噪声应该被大幅抑制
    bool pass = true;
    if (signal_mag_out < 0.5f) {
        std::cout << "FAILURE: Signal attenuated too much!" << std::endl;
        pass = false;
    }
    if (noise_mag_out > 0.05f) { // 期望噪声被抑制到很小
        std::cout << "FAILURE: Noise not sufficiently reduced!" << std::endl;
        pass = false;
    }

    if (pass) {
        std::cout << "========================================" << std::endl;
        std::cout << "      TEST PASSED                       " << std::endl;
        std::cout << "========================================" << std::endl;
        return 0;
    } else {
        std::cout << "========================================" << std::endl;
        std::cout << "      TEST FAILED                       " << std::endl;
        std::cout << "========================================" << std::endl;
        return 1;
    }
}
