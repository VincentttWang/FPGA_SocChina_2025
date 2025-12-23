#include "denoise_config.hpp"
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "hls_math.h"

// ========================================
// 内部数据结构
// ========================================
struct internal_data_t {
    ap_uint<64> data;
    ap_uint<1> last;
};

// ========================================
// 辅助函数：AXI 输入适配
// ========================================
void axi_to_internal(
    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &axi_in,
    hls::stream<internal_data_t> &internal_out
) {
    #pragma HLS INLINE off

    CONVERT_IN: for (int i = 0; i < FFT_SIZE / SSR; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=512 max=512

        ap_axiu<AXI_WIDTH, 0, 0, 0> axi_val = axi_in.read();
        internal_data_t internal_val;
        internal_val.data = axi_val.data;
        internal_val.last = axi_val.last;
        internal_out.write(internal_val);
    }
}

// ========================================
// 模块 1: 幅度平方计算（避免 sqrt）
// ========================================
void compute_magnitude_square(
    hls::stream<internal_data_t> &data_in,
    hls::stream<internal_data_t> &data_copy,
    hls::stream<magnitude_t> &mag_sq_out
) {
    #pragma HLS INLINE off

    MAG_COMPUTE: for (int i = 0; i < FFT_SIZE / SSR; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=512 max=512

        internal_data_t val = data_in.read();
        data_copy.write(val);

        ap_uint<64> raw = val.data;

        for (int r = 0; r < SSR; r++) {
            #pragma HLS UNROLL

            ap_int<32> sample = raw.range((r+1)*32-1, r*32);
            ap_int<16> re = sample.range(15, 0);
            ap_int<16> im = sample.range(31, 16);

            // 转定点数
            fixed_t re_f = (fixed_t)re / (fixed_t)32768.0;
            fixed_t im_f = (fixed_t)im / (fixed_t)32768.0;

            // 计算幅度平方（节省 DSP）
            magnitude_t mag_sq = (magnitude_t)(re_f * re_f + im_f * im_f);

            mag_sq_out.write(mag_sq);
        }
    }
}

// ========================================
// 模块 2: 噪声估计累加
// ========================================
void noise_estimation_accumulate(
    hls::stream<magnitude_t> &mag_in,
    hls::stream<magnitude_t> &mag_out,
    ap_uint<1> is_noise_frame,
    magnitude_t noise_accum[FFT_SIZE]
) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=noise_accum cyclic factor=4 dim=1

    ACCUM: for (int i = 0; i < FFT_SIZE; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=1024 max=1024

        magnitude_t mag = mag_in.read();

        if (is_noise_frame) {
            noise_accum[i] = noise_accum[i] + mag;
        }

        mag_out.write(mag);
    }
}

// ========================================
// 模块 3: 谱减法
// ========================================
void spectral_subtract(
    hls::stream<magnitude_t> &noisy_mag_in,
    hls::stream<magnitude_t> &clean_mag_out,
    const magnitude_t noise_spec[FFT_SIZE],
    magnitude_t alpha,
    magnitude_t beta,
    ap_uint<1> bypass
) {
    #pragma HLS INLINE off
    #pragma HLS ARRAY_PARTITION variable=noise_spec cyclic factor=4 dim=1

    SUBTRACT: for (int i = 0; i < FFT_SIZE; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=1024 max=1024

        magnitude_t noisy_mag = noisy_mag_in.read();
        magnitude_t clean_mag;

        if (bypass) {
            clean_mag = noisy_mag;
        } else {
            magnitude_t noise_val = noise_spec[i];
            magnitude_t subtracted = noisy_mag - alpha * noise_val;
            magnitude_t floor_val = beta * noise_val;

            // 半波整流
            if (subtracted > floor_val) {
                clean_mag = subtracted;
            } else {
                clean_mag = floor_val;
            }
        }

        clean_mag_out.write(clean_mag);
    }
}

// ========================================
// 模块 4: 信号重建（修复缩放逻辑）
// ========================================
void reconstruct_signal(
    hls::stream<magnitude_t> &clean_mag_sq_in,
    hls::stream<internal_data_t> &phase_in,
    hls::stream<internal_data_t> &signal_out
) {
    #pragma HLS INLINE off

    RECONSTRUCT: for (int i = 0; i < FFT_SIZE / SSR; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=512 max=512

        internal_data_t phase_data = phase_in.read();
        ap_uint<64> orig = phase_data.data;
        ap_uint<64> recon = 0;

        for (int r = 0; r < SSR; r++) {
            #pragma HLS UNROLL

            magnitude_t clean_mag_sq = clean_mag_sq_in.read();

            // 提取原始复数
            ap_int<32> orig_sample = orig.range((r+1)*32-1, r*32);
            ap_int<16> orig_re = orig_sample.range(15, 0);
            ap_int<16> orig_im = orig_sample.range(31, 16);

            fixed_t re_f = (fixed_t)orig_re / (fixed_t)32768.0;
            fixed_t im_f = (fixed_t)orig_im / (fixed_t)32768.0;

            // 计算原始幅度平方
            magnitude_t orig_mag_sq = (magnitude_t)(re_f * re_f + im_f * im_f);

            // 计算缩放因子 (Ratio of Squares)
            magnitude_t ratio_sq;
            if (orig_mag_sq > (magnitude_t)0.00001) { // 提高一点阈值避免除零噪声
                ratio_sq = clean_mag_sq / orig_mag_sq;
            } else {
                ratio_sq = 0;
            }

            // --- 关键修改 ---
            // 我们需要的是幅度的比例，即 sqrt(ratio_sq)
            // 使用 hls::sqrt 进行定点数开方
            magnitude_t scale_factor;
            ap_ufixed<16, 2> ratio_cast = ratio_sq; // 转换类型适配 sqrt
            ap_ufixed<16, 2> scale_res;
            
            // [FIXED] 修改为赋值形式
            scale_res = hls::sqrt(ratio_cast);
            
            scale_factor = (magnitude_t)scale_res;
            
            // 简单的限幅 (防止增益过大爆炸)
            if (scale_factor > (magnitude_t)1.5) scale_factor = 1.5;

            // 重建
            ap_int<16> new_re = (ap_int<16>)((fixed_t)orig_re * (fixed_t)scale_factor);
            ap_int<16> new_im = (ap_int<16>)((fixed_t)orig_im * (fixed_t)scale_factor);

            // 打包
            ap_int<32> new_sample;
            new_sample.range(15, 0) = new_re;
            new_sample.range(31, 16) = new_im;

            recon.range((r+1)*32-1, r*32) = new_sample;
        }

        internal_data_t out_data;
        out_data.data = recon;
        out_data.last = phase_data.last;
        signal_out.write(out_data);
    }
}

// ========================================
// 辅助函数：AXI 输出适配
// ========================================
void internal_to_axi(
    hls::stream<internal_data_t> &internal_in,
    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &axi_out
) {
    #pragma HLS INLINE off

    CONVERT_OUT: for (int i = 0; i < FFT_SIZE / SSR; i++) {
        #pragma HLS PIPELINE II=1
        #pragma HLS LOOP_TRIPCOUNT min=512 max=512

        internal_data_t internal_val = internal_in.read();

        ap_axiu<AXI_WIDTH, 0, 0, 0> axi_val;
        axi_val.data = internal_val.data;
        axi_val.keep = -1; // 允许所有字节有效
        axi_val.strb = -1;
        
        // ------------------------------------------------------
        // [FIX] 强制手动生成 TLAST 信号
        // 当计数器 i 到达最后一帧 (511) 时，强制置 1，否则置 0
        // ------------------------------------------------------
        if (i == (FFT_SIZE / SSR) - 1) {
            axi_val.last = 1;
        } else {
            axi_val.last = 0;
        }

        axi_out.write(axi_val);
    }
}

// ========================================
// 顶层模块
// ========================================
void denoise_top(
    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &fft_in,
    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &clean_out,
    magnitude_t alpha,
    magnitude_t beta,
    ap_uint<1> enable,
    ap_uint<1> reset_noise,
    ap_uint<4> noise_frame_count
) {
    #pragma HLS INTERFACE axis port=fft_in
    #pragma HLS INTERFACE axis port=clean_out
    #pragma HLS INTERFACE s_axilite port=alpha bundle=control
    #pragma HLS INTERFACE s_axilite port=beta bundle=control
    #pragma HLS INTERFACE s_axilite port=enable bundle=control
    #pragma HLS INTERFACE s_axilite port=reset_noise bundle=control
    #pragma HLS INTERFACE s_axilite port=noise_frame_count bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    // 静态噪声谱存储（定点数，BRAM 减半）
    static magnitude_t noise_accumulator[FFT_SIZE];
    static magnitude_t noise_spectrum[FFT_SIZE];
    static ap_uint<4> frame_counter = 0;
    static bool noise_estimated = false;

    #pragma HLS ARRAY_PARTITION variable=noise_accumulator cyclic factor=4 dim=1
    #pragma HLS ARRAY_PARTITION variable=noise_spectrum cyclic factor=4 dim=1
    #pragma HLS BIND_STORAGE variable=noise_accumulator type=ram_2p impl=bram
    #pragma HLS BIND_STORAGE variable=noise_spectrum type=ram_2p impl=bram

    // 复位逻辑
    if (reset_noise) {
        RESET_NOISE: for (int i = 0; i < FFT_SIZE; i++) {
            #pragma HLS PIPELINE II=1
            noise_accumulator[i] = 0;
            noise_spectrum[i] = 0;
        }
        frame_counter = 0;
        noise_estimated = false;
    }

    bool is_noise_frame = (frame_counter < noise_frame_count) && !noise_estimated;

    // ========================================
    // DATAFLOW 处理流水线
    // ========================================
    #pragma HLS DATAFLOW

    hls::stream<internal_data_t> stream1;
    hls::stream<internal_data_t> stream2;
    hls::stream<magnitude_t> stream3;
    hls::stream<magnitude_t> stream4;
    hls::stream<magnitude_t> stream5;
    hls::stream<internal_data_t> stream6;

    #pragma HLS STREAM variable=stream1 depth=16
    #pragma HLS STREAM variable=stream2 depth=2048  // <--- 关键修改！
    #pragma HLS STREAM variable=stream3 depth=16
    #pragma HLS STREAM variable=stream4 depth=16
    #pragma HLS STREAM variable=stream5 depth=16
    #pragma HLS STREAM variable=stream6 depth=16

    axi_to_internal(fft_in, stream1);
    compute_magnitude_square(stream1, stream2, stream3);
    noise_estimation_accumulate(stream3, stream4, is_noise_frame, noise_accumulator);
    spectral_subtract(stream4, stream5, noise_spectrum, alpha, beta, !enable);
    reconstruct_signal(stream5, stream2, stream6);
    internal_to_axi(stream6, clean_out);

    // ========================================
    // 后处理：完成噪声估计
    // ========================================
    if (is_noise_frame) {
        frame_counter++;

        if (frame_counter == noise_frame_count) {
            magnitude_t inv_count = (magnitude_t)1.0 / (magnitude_t)noise_frame_count;
            FINALIZE_NOISE: for (int i = 0; i < FFT_SIZE; i++) {
                #pragma HLS PIPELINE II=1
                noise_spectrum[i] = noise_accumulator[i] * inv_count;
            }
            noise_estimated = true;
        }
    }
}
