#include "fft_config.hpp"
#include "vt_fft.hpp"
#include "ap_axi_sdata.h"
#include "hls_stream.h"

// Use traits to determine output type
typedef typename xf::dsp::fft::FFTInputTraits<T_in>::T_castedType T_casted;
typedef typename xf::dsp::fft::FFTOutputTraits<ssr_fft_params::N,
                                          ssr_fft_params::R,
                                          ssr_fft_params::scaling_mode,
                                          ssr_fft_params::transform_direction,
                                          ssr_fft_params::butterfly_rnd_mode,
                                          T_casted>::T_FFTOutType T_out_fft;

void unpack_data(hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &in_stream, hls::stream<T_in> outD[SSR_FFT_R]) {
    for (int i = 0; i < SSR_FFT_L / SSR_FFT_R; ++i) {
#pragma HLS PIPELINE II=1
        ap_axiu<AXI_WIDTH, 0, 0, 0> val = in_stream.read();
        ap_int<AXI_WIDTH> data = val.data;
        for (int r = 0; r < SSR_FFT_R; ++r) {
#pragma HLS UNROLL
            unsigned int low = r * 32;
            unsigned int high = (r + 1) * 32 - 1;
            ap_int<32> sample_bits = data.range(high, low);
            
            ap_int<16> real_bits = sample_bits.range(15, 0);
            ap_int<16> imag_bits = sample_bits.range(31, 16);
            
            T_elem real_val;
            real_val.range(15, 0) = real_bits;
            T_elem imag_val;
            imag_val.range(15, 0) = imag_bits;
            
            T_in sample(real_val, imag_val);
            outD[r].write(sample);
        }
    }
}

void pack_data(hls::stream<T_out_fft> inD[SSR_FFT_R], hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &out_stream) {
    for (int i = 0; i < SSR_FFT_L / SSR_FFT_R; ++i) {
#pragma HLS PIPELINE II=1
        ap_axiu<AXI_WIDTH, 0, 0, 0> val;
        ap_int<AXI_WIDTH> data = 0;
        
        for (int r = 0; r < SSR_FFT_R; ++r) {
#pragma HLS UNROLL
            T_out_fft sample = inD[r].read();
            T_elem real_val = sample.real();
            T_elem imag_val = sample.imag();
            
            ap_int<16> real_bits = real_val.range(15, 0);
            ap_int<16> imag_bits = imag_val.range(15, 0);
            
            ap_int<32> sample_bits;
            sample_bits.range(15, 0) = real_bits;
            sample_bits.range(31, 16) = imag_bits;
            
            unsigned int low = r * 32;
            unsigned int high = (r + 1) * 32 - 1;
            data.range(high, low) = sample_bits;
        }
        
        val.data = data;
        val.keep = -1;
        val.strb = -1;
        val.last = (i == (SSR_FFT_L / SSR_FFT_R) - 1) ? 1 : 0;
        
        out_stream.write(val);
    }
}

void fft_top(hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &in_stream,
             hls::stream<ap_axiu<AXI_WIDTH, 0, 0, 0>> &out_stream) {
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS DATAFLOW

    hls::stream<T_in> inD[SSR_FFT_R];
#pragma HLS STREAM variable=inD depth=16
    hls::stream<T_out_fft> outD[SSR_FFT_R];
#pragma HLS STREAM variable=outD depth=16

    unpack_data(in_stream, inD);
    xf::dsp::fft::fft<ssr_fft_params>(inD, outD);
    pack_data(outD, out_stream);
}
