# PYNQ-Z2 Vitis DSP Library L1 FFT 移植项目说明

## 1. 工程简要介绍
本项目演示了如何将 Vitis DSP Library L1 级定点 FFT 算法移植到 PYNQ-Z2 开发板 (Zynq-7000 XC7Z020) 上。
项目基于 Vitis HLS 2024.2 开发，实现了 1024 点、SSR=2（超采样率）的 FFT 硬件加速器，并通过 AXI Stream 接口与 Zynq PS 端进行数据交互。
工程包含了完整的 HLS 源码、Vivado 构建脚本以及用于 PYNQ 上验证的 Jupyter Notebook。

## 2. IP 核接口信息
`fft_top` 模块对外提供以下标准接口：

| 接口名称 | 类型 | 协议 | 位宽 | 描述 |
| :--- | :--- | :--- | :--- | :--- |
| `s_axi_control` | Slave | AXI4-Lite | 32-bit | 控制与状态寄存器 (CSR)，用于启动/停止 IP 核及中断控制。 |
| `in_stream` | Slave | AXI4-Stream | 64-bit | 时域输入数据流。每周期传输 2 个复数采样点。 |
| `out_stream` | Master | AXI4-Stream | 64-bit | 频域输出数据流。每周期传输 2 个复数采样点。 |

*   **数据格式**: 复数定点数 `std::complex<ap_fixed<16, 1>>` (16位位宽，1位整数位，15位小数位)。
*   **传输格式**: 64位 AXI Stream 数据包中包含 2 个 32位复数数据（SSR=2）。

## 3. 资源占用量 (基于 XC7Z020)
根据 HLS 综合报告 (`csynth.rpt`)，`fft_top` 模块的资源估算如下：

| 资源类型 | 使用量 | 百分比 (%) |
| :--- | :--- | :--- |
| **BRAM** | 12 | 4% |
| **DSP** | 36 | 16% |
| **FF** (Flip-Flops) | 16045 | 15% |
| **LUT** (Look-up Tables) | 21468 | 40% |

## 4. 目录结构
```text
pynq_z2_fft_port/
├── src/
│   ├── fft_config.hpp      # FFT 参数配置文件 (N=1024, SSR=2, 定点)
│   └── fft_top.cpp         # HLS 顶层函数源文件
├── tcl_scripts/
│   ├── build_hls.tcl       # Vitis HLS 构建脚本
│   ├── build_vivado.tcl    # Vivado 工程构建及 Bitstream 生成脚本
│   └── build/              # 构建产物目录 (含 IP 核及 Overlay)
├── notebooks/
│   ├── fft_test.ipynb      # PYNQ 基础功能验证 Notebook
│   └── audio_fft_demo.ipynb # 音频 FFT 应用演示 Notebook
└── README.md       # 本文档
```

## 5. 其他重要内容
*   **硬件平台**: PYNQ-Z2 (Xilinx Zynq XC7Z020-1CLG484)
*   **开发工具**: Xilinx Vitis HLS / Vivado 2024.2
*   **注意事项**:
    *   在运行构建脚本前，请检查 `tcl_scripts/build_hls.tcl` 中的 Vitis Library 路径是否正确。
    *   在 PYNQ 上运行时，需确保 `.bit` 和 `.hwh` 文件名称一致并位于正确路径。
    *   FFT 配置为输出缩放模式 (`SSR_FFT_SCALE`) 以防止定点数溢出。
