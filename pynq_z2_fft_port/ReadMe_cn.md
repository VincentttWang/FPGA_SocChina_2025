# PYNQ-Z2 Vitis DSP Library L1 FFT 移植项目

本项目演示了如何将 Vitis DSP Library L1 定点 FFT 移植到 PYNQ-Z2 开发板 (Zynq-7000) 上。项目包含了 HLS 源代码、用于 Vitis HLS 和 Vivado 的构建脚本，以及用于在 PYNQ-Z2 上进行验证的 Jupyter Notebook。

## 注意事项

* **注意修改`tcl_scripts/build_hls/tcl`中的`"-I../../include/hw/vitis_fft/fixed"`，以导向实际的Vitis Library库文件**
* **注意修改`notebooks/*.ipynb`文件中的`*.bit`位置，以及`audio_fft_demo.ipynb`文件中的音频文件（`.wav`）位置**
* **导入`.bit`和`.hwh`文件之后，注意将其修改为同名**

## 快速开始

打开`pynq_z2_fft_port/build/build/`目录，其中的`fft_top.zip`文件即为需要的ip核

## ip核接口

详见INTERFACE_CN.md

## 项目结构

```
pynq_z2_fft_port/
├── src/
│   ├── fft_config.hpp      # FFT 配置 (SSR=2, N=1024, 定点数)
│   └── fft_top.cpp         # 带有 AXI Stream 接口的 HLS 顶层封装
├── tcl_scripts/
│   ├── build_hls.tcl       # 用于构建 HLS IP 的 TCL 脚本
│   ├── build_vivado.tcl    # 用于构建 Vivado 项目和比特流的 TCL 脚本
│   └── build/              # 构建产物 (IP, Overlay)
│       └── overlay/
│           ├── fft.bit     # 生成的比特流
│           └── fft.hwh     # 硬件切换文件 (Hardware Handoff file)
├── notebooks/
│   └── fft_test.ipynb      # 用于在 PYNQ-Z2 上测试的 Jupyter Notebook
└── README.md               # 本文件
```

## 前置条件

*   **硬件:** PYNQ-Z2 开发板 (Xilinx Zynq XC7Z020-1CLG484)
*   **软件:** Xilinx Vitis / Vivado 2024.2
*   **操作系统:** Linux (在 Ubuntu 上测试通过)

## 构建说明

### 1. 构建 HLS IP

此步骤使用 Vitis HLS 将 C++ FFT 代码编译为 RTL IP 核。

1.  进入 `tcl_scripts` 目录：
    ```bash
    cd tcl_scripts
    ```
2.  运行 HLS 构建脚本：
    ```bash
    vitis_hls -f build_hls.tcl
    ```
    *   这将创建一个包含导出 IP 的 `build/fft_top.zip` 文件。

### 2. 构建 Vivado Overlay

此步骤创建一个 Vivado 项目，将 HLS IP 与 Zynq 处理系统 (PS) 和 DMA 集成，并生成比特流。

1.  确保你仍在 `tcl_scripts` 目录下。
2.  运行 Vivado 构建脚本：
    ```bash
    vivado -mode batch -source build_vivado.tcl
    ```
    *   这将创建一个 `build/vivado_project` 目录。
    *   最终的比特流 (`fft.bit`) 和硬件切换文件 (`fft.hwh`) 将被复制到 `build/overlay`。

## 使用说明 (在 PYNQ-Z2 上)

1.  **传输文件:** 将 `notebooks` 文件夹和 `build/overlay` 文件夹复制到你的 PYNQ-Z2 开发板上 (例如，使用 SCP 或 Jupyter 界面)。
    *   将 `fft.bit` 和 `fft.hwh` 放在与 notebook 相同的目录下，或者更新 notebook 中的路径。
2.  **打开 Notebook:** 在 PYNQ-Z2 上的 Jupyter Lab 中打开 `fft_test.ipynb`。
3.  **运行验证:** 执行单元格以：
    *   加载 Overlay。
    *   生成随机输入数据。
    *   通过 DMA 将数据发送到 FFT IP。
    *   接收 FFT 输出。
    *   将硬件结果与软件 FFT (NumPy) 进行比较以验证正确性。

## 实现细节

*   **FFT 配置:**
    *   长度: 1024
    *   SSR (超采样率): 2 (每个时钟周期处理 2 个样本)
    *   数据类型: 定点数 (16位整数, 1位符号, 15位小数 - *注意: 代码中配置为 16,1，请检查 `fft_config.hpp`*)
    *   缩放: 缩放 (1/N) 以避免溢出。
*   **硬件设计:**
    *   **Zynq PS:** 针对 PYNQ-Z2 进行配置。
    *   **AXI DMA:** 通过 AXI Stream 在 PS 内存和 FFT IP 之间传输数据。
    *   **SmartConnect:** 用于高性能 AXI 通信的互连。

