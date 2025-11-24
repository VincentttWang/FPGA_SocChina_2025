// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of alpha
//        bit 23~0 - alpha[23:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of beta
//        bit 23~0 - beta[23:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of enable
//        bit 0  - enable[0] (Read/Write)
//        others - reserved
// 0x24 : reserved
// 0x28 : Data signal of reset_noise
//        bit 0  - reset_noise[0] (Read/Write)
//        others - reserved
// 0x2c : reserved
// 0x30 : Data signal of noise_frame_count
//        bit 3~0 - noise_frame_count[3:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDENOISE_TOP_CONTROL_ADDR_AP_CTRL                0x00
#define XDENOISE_TOP_CONTROL_ADDR_GIE                    0x04
#define XDENOISE_TOP_CONTROL_ADDR_IER                    0x08
#define XDENOISE_TOP_CONTROL_ADDR_ISR                    0x0c
#define XDENOISE_TOP_CONTROL_ADDR_ALPHA_DATA             0x10
#define XDENOISE_TOP_CONTROL_BITS_ALPHA_DATA             24
#define XDENOISE_TOP_CONTROL_ADDR_BETA_DATA              0x18
#define XDENOISE_TOP_CONTROL_BITS_BETA_DATA              24
#define XDENOISE_TOP_CONTROL_ADDR_ENABLE_DATA            0x20
#define XDENOISE_TOP_CONTROL_BITS_ENABLE_DATA            1
#define XDENOISE_TOP_CONTROL_ADDR_RESET_NOISE_DATA       0x28
#define XDENOISE_TOP_CONTROL_BITS_RESET_NOISE_DATA       1
#define XDENOISE_TOP_CONTROL_ADDR_NOISE_FRAME_COUNT_DATA 0x30
#define XDENOISE_TOP_CONTROL_BITS_NOISE_FRAME_COUNT_DATA 4

