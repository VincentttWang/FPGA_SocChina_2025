#ifndef DENOISE_CONFIG_HPP
#define DENOISE_CONFIG_HPP

#include "ap_int.h"
#include "ap_fixed.h"

// FFT 参数
#define FFT_SIZE 1024
#define SSR 2
#define AXI_WIDTH 64

// 降噪参数
#define NOISE_EST_FRAMES 10

// 数据类型定义（优化精度）
// 修改：幅度平方需要更高的小数精度。
// 整数位4位足够表示最大值(约2.0)，小数位20位可保证 -60dB 以上信号不丢失
typedef ap_ufixed<24, 4> magnitude_t; 

// 输入/输出保持 16-bit 标准
typedef ap_fixed<16, 1> fixed_t;       

#endif