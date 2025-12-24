#include "fft_config.hpp"
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include <iostream>
#include <vector>
#include <cmath>

// Declaration of the top function
void fft_top(hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &in_stream,
             hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &out_stream);

int main() {
    std::cout << "Starting FFT Testbench..." << std::endl;

    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> in_stream;
    hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> out_stream;

    // Prepare input data
    // SSR_FFT_L is 1024
    // SSR_FFT_R is 2
    const int N = SSR_FFT_L;
    const int R = SSR_FFT_R;
    const int NUM_TRANSACTIONS = N / R;

    std::vector<T_in> input_data(N);
    
    // Generate a test signal (e.g., a simple sine wave)
    // Frequency = 16 bins (16 cycles in 1024 samples)
    for (int i = 0; i < N; ++i) {
        float real = 0.5 * cos(2 * M_PI * i * 16.0 / N); 
        float imag = 0.5 * sin(2 * M_PI * i * 16.0 / N);
        input_data[i] = T_in(T_elem(real), T_elem(imag));
    }

    std::cout << "Writing data to input stream..." << std::endl;
    // Pack data into AXI stream
    for (int i = 0; i < NUM_TRANSACTIONS; ++i) {
        ap_axiu<AXI_WIDTH, 0, 0, 0> val;
        ap_int<AXI_WIDTH> data = 0;

        for (int r = 0; r < R; ++r) {
            int idx = i * R + r;
            T_in sample = input_data[idx];
            
            // Extract bits
            ap_int<16> real_bits = sample.real().range(15, 0);
            ap_int<16> imag_bits = sample.imag().range(15, 0);
            
            ap_int<32> sample_bits;
            sample_bits.range(15, 0) = real_bits;
            sample_bits.range(31, 16) = imag_bits;
            
            unsigned int low = r * 32;
            unsigned int high = (r + 1) * 32 - 1;
            data.range(high, low) = sample_bits;
        }

        val.data = data;
        val.keep = -1; // All bytes valid
        val.strb = -1;
        val.last = (i == NUM_TRANSACTIONS - 1) ? 1 : 0;
        
        in_stream.write(val);
    }

    // Call the DUT
    std::cout << "Calling fft_top..." << std::endl;
    fft_top(in_stream, out_stream);

    // Read output
    std::cout << "Reading results..." << std::endl;
    std::vector<std::complex<float>> output_data;
    
    for (int i = 0; i < NUM_TRANSACTIONS; ++i) {
        if (out_stream.empty()) {
            std::cerr << "Error: Output stream empty at transaction " << i << std::endl;
            return 1;
        }

        ap_axiu<AXI_WIDTH, 0, 0, 0> val = out_stream.read();
        ap_int<AXI_WIDTH> data = val.data;

        for (int r = 0; r < R; ++r) {
            unsigned int low = r * 32;
            unsigned int high = (r + 1) * 32 - 1;
            ap_int<32> sample_bits = data.range(high, low);
            
            ap_int<16> real_bits = sample_bits.range(15, 0);
            ap_int<16> imag_bits = sample_bits.range(31, 16);
            
            T_elem real_val;
            real_val.range(15, 0) = real_bits;
            T_elem imag_val;
            imag_val.range(15, 0) = imag_bits;
            
            output_data.push_back(std::complex<float>(real_val.to_float(), imag_val.to_float()));
        }
        
        if (i == NUM_TRANSACTIONS - 1) {
            if (val.last != 1) {
                std::cerr << "Error: Last signal not set on last transaction!" << std::endl;
            } else {
                std::cout << "Received TLAST correctly." << std::endl;
            }
        }
    }

    // Print first few outputs
    // Since we put in a frequency of 16, we expect a peak around index 16
    std::cout << "Checking output peak..." << std::endl;
    float max_mag = 0;
    int max_idx = -1;
    
    for (int i = 0; i < N; ++i) {
        float mag = std::abs(output_data[i]);
        if (mag > max_mag) {
            max_mag = mag;
            max_idx = i;
        }
    }
    
    std::cout << "Max magnitude: " << max_mag << " at index: " << max_idx << std::endl;

    if (max_idx == 16) {
        std::cout << "SUCCESS: Peak detected at expected index 16." << std::endl;
    } else {
        std::cout << "WARNING: Peak detected at unexpected index." << std::endl;
    }

    std::cout << "Testbench finished." << std::endl;
    return 0;
}
