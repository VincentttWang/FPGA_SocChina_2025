#ifndef FFT_CONFIG_HPP
#define FFT_CONFIG_HPP

#include "ap_fixed.h"
#include <complex>
#include "vitis_fft/hls_ssr_fft_enums.hpp"

// FFT Parameters
#define SSR_FFT_L 1024
#define SSR_FFT_R 2

// Data Type Parameters
#define SSR_FFT_IN_WL 16
#define SSR_FFT_IN_IL 1
#define SSR_FFT_TW_WL 16
#define SSR_FFT_TW_IL 1

typedef ap_fixed<SSR_FFT_IN_WL, SSR_FFT_IN_IL> T_elem;
typedef std::complex<T_elem> T_in;
typedef std::complex<T_elem> T_out;

struct ssr_fft_params {
    static const int N = SSR_FFT_L;
    static const int R = SSR_FFT_R;
    static const xf::dsp::fft::scaling_mode_enum scaling_mode = xf::dsp::fft::SSR_FFT_SCALE;
    static const xf::dsp::fft::fft_output_order_enum output_data_order = xf::dsp::fft::SSR_FFT_NATURAL;
    static const int twiddle_table_word_length = SSR_FFT_TW_WL;
    static const int twiddle_table_intger_part_length = SSR_FFT_TW_IL;
    static const xf::dsp::fft::transform_direction_enum transform_direction = xf::dsp::fft::FORWARD_TRANSFORM;
    static const xf::dsp::fft::butterfly_rnd_mode_enum butterfly_rnd_mode = xf::dsp::fft::TRN;
    static const int default_t_instanceID = HLS_SSR_FFT_DEFAULT_INSTANCE_ID;
};

// AXI Stream Data Width
// Each sample is complex<16-bit>, so 32 bits.
// SSR=2, so 2 samples per cycle -> 64 bits.
#define AXI_WIDTH 64

#endif
