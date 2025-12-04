# PYNQ-Z2 音频降噪硬件加速器 (FFT + Spectral Subtraction)

## 1. 项目概述

本项目在 PYNQ-Z2 (Zynq-7020) 平台上实现了一套基于频域谱减法（Spectral Subtraction）的音频降噪硬件加速系统。

系统数据流为：DMA (Time Domain) -> FFT IP -> Denoise IP -> DMA (Freq Domain)。

- **架构特点**: 纯流式处理 (Dataflow)，SSR=2 (Super Sample Rate, 每时钟处理2点)。
- **核心算法**: Vitis DSP Library L1 FFT + 自定义 HLS 降噪逻辑。



## 2. IP 核接口与使用指南

### 2.1. FFT IP (`fft_top`)

基于 Vitis DSP Library L1 封装。

- **Stream 接口**: 64-bit AXI4-Stream (包含 2 个 32-bit 复数采样点)。
- **控制接口**: AXI4-Lite (`s_axi_control`)。
- **关键配置**:
  - **Scaling Mode**: `SSR_FFT_NO_SCALING` (必须禁用动态缩放，否则 IP 会阻塞等待配置包)。
  - **Length**: 1024 point。

### 2.2. Denoise IP (`denoise_top`)

自定义 HLS IP，用于计算幅度谱并执行谱减法。

- **Stream 接口**:
  - Input: 64-bit (来自 FFT 的频域数据)。
  - Output: 64-bit (降噪后的频域数据，需在 PS 端做 IFFT)。
- **寄存器映射 (AXI-Lite)**:

| **偏移地址 (Offset)** | **寄存器名**   | **位宽** | **描述**                     | **推荐值**                |
| --------------------- | -------------- | -------- | ---------------------------- | ------------------------- |
| `0x00`                | `AP_CTRL`      | 32       | 控制寄存器 (Start/Done/Idle) | `0x81` (Auto-restart)     |
| `0x10`                | `alpha`        | 32       | 谱减因子 (定点数 <16,8>)     | 2.5 (`0x0280`)            |
| `0x18`                | `beta`         | 32       | 频谱下限因子 (定点数 <16,8>) | 0.05 (`0x000C`)           |
| `0x20`                | `enable`       | 1        | 降噪使能 (0=旁路, 1=开启)    | `1`                       |
| `0x28`                | `reset_noise`  | 1        | 强制重置噪声估计             | 脉冲信号 (Write 1 then 0) |
| `0x30`                | `noise_frames` | 4        | 用于初始噪声估计的帧数       | `10`                      |

> **注意**: 定点数参数需在 Python 端转换，例如 `int(alpha * 256)`。

------



## 3. 常见故障排查 (Troubleshooting)

### 故障现象

在 Jupyter Notebook 中运行 DMA 接收 (`dma.recvchannel.wait()`) 时程序卡死，最终报错 `KeyboardInterrupt` 或超时。读取 IP 状态寄存器 (`0x00`)，两者均为 `0x81` (Busy)。

### 根本原因分析

此问题通常由以下两个 HLS 设计缺陷导致的 **系统级死锁 (System-Level Deadlock)** 引起：

1. **收敛性死锁 (Reconvergence Deadlock)**:
   - 在 `denoise_top` 中，数据分为“计算路径”（高延迟）和“旁路路径”（低延迟）。
   - 旁路 FIFO (`stream2`) 深度若仅设为帧长 (512)，会被瞬间填满。
   - 由于计算路径尚未输出结果，消费端无法读取 FIFO，导致生产端阻塞。生产端阻塞导致计算路径断流，形成死锁。
2. **FFT 配置阻塞 (Config Blocking)**:
   - 若 FFT 配置为 `SSR_FFT_SCALE`，IP 启动后会阻塞等待配置包。如果仅发送音频数据，IP 不会进行任何计算。



### 解决方案 (Fix Steps)





#### 步骤 1: 修改 HLS 代码 (必须)



- **文件**: `src/denoise_top.cpp`
  - **操作**: 将旁路 FIFO 深度显著加大 (建议 4 倍帧长)。
  - **代码**: `#pragma HLS STREAM variable=stream2 depth=2048`
- **文件**: `src/fft_config.hpp`
  - **操作**: 禁用运行时缩放。
  - **代码**: `static const xf::dsp::fft::scaling_mode_enum scaling_mode = xf::dsp::fft::SSR_FFT_NO_SCALING;`



#### 步骤 2: 彻底重新编译 (必须)



1. 运行 HLS 构建脚本 (`tcl` 文件)，确保 C Synthesis 和 Export RTL 重新执行。
2. **关键**: 在 Vivado Block Design 中，必须点击 "Refresh IP Catalog" 或 "Upgrade IP Status" 以加载新的 IP 核逻辑。
3. 重新生成 Bitstream (`.bit`) 和 HWH 文件 (`.hwh`)。



#### 步骤 3: Python 端驱动优化



由于硬件流式处理存在固有延迟 (Latency)，建议在发送数据时增加 **Flush (填充)** 数据，迫使流水线吐出最后一帧结果。

Python

```
# Python 示例：发送 2 帧数据以接收 1 帧结果
input_data = ... # 1024 points
padding = np.zeros_like(input_data) # 全0填充帧
dma.sendchannel.transfer(np.concatenate((input_data, padding))) # 发送双倍数据
dma.recvchannel.transfer(out_buffer) # 接收单倍数据
```

------



## 4. 上板调试速查表



如果遇到卡死，请按以下顺序检查：

1. **检查 IP 状态**:

   Python

   ```
   print(hex(fft_ip.read(0x00)))     # 应为 0x81 (启动且忙碌) 或 0x6 (完成)
   print(hex(denoise_ip.read(0x00))) # 应为 0x81 (启动且忙碌) 或 0x6 (完成)
   ```

   - *如果全是 `0xFFFFFFFF`*: Overlay 加载失败或时钟未给。
   - *如果是 `0x81`*: IP 活着，正在等数据或死锁。

2. **检查 DMA 状态**:

   - 读取 DMA 寄存器，确认 `Halted` 位是否为 0，`Idle` 位是否为 0。

3. **版本确认**:

   - 确认上传到板卡上的 `.bit` 文件创建时间是否为最新（防止 Vivado 缓存了旧 IP）。

------



## 5. 目录结构 (Reference)



Plaintext

```
denoise_pynq/
├── src/
│   ├── fft_config.hpp      # [关键] 修改 Scaling Mode
│   ├── fft_top.cpp
│   ├── denoise_config.hpp
│   └── denoise_top.cpp     # [关键] 修改 FIFO Depth
├── tcl_scripts/            # 构建脚本
├── build/
│   └── denoise_ip/         # ip核
│   └── fft_top/            # ip核
│   └── overlay/            # 最终产物 (.bit, .hwh)
│   └── audio_denoise_system/	# vivado工程
└── notebooks/              # Jupyter 测试脚本
```