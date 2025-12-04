# PYNQ-Z2 Audio Analyzer🎵💡

## Introduction

全国大学生嵌入式芯片与系统设计竞赛-FPGA创新设计赛道（AMD）的命题式基础赛道决赛作品仓库

PYNQ-Z2 is  a development board based on the **Xilinx Zynq-7000 SoC**, which features a **Cortex-A9 processor (PS)** and **Artix-7 programmable logic (PL)**. Each unit is known to be suitable for handling different types of tasks. For example, programmable logic is well-suited for parallel processing and repetitive operations, while the processor is more general-purpose and flexible.

## ✨ Features

- 🚀 **Hardware Acceleration**: 1024-point FFT & Spectral Subtraction fully offloaded to Artix-7 PL.
- ⚡ **Real-Time Processing**: Stream-based Dataflow architecture with **SSR=2** (Super Sample Rate), processing 2 samples per clock cycle.
- 🎛️ **Dynamic Control**: Adjust noise reduction parameters (`alpha`, `beta`) on-the-fly via Jupyter Notebook without stopping the stream.
- 📊 **Live Visualization**: High-frame-rate spectrum analysis on Host PC (PyQt5) or Web UI.
- 🛠️ **Hybrid Design**: Seamless integration of Vitis DSP Library L1 IP cores with custom HLS logic and Python drivers.

## 📌 System Architecture

The system adopts a heterogeneous **PS + PL** architecture, leveraging the Zynq-7000 SoC's strengths.

```mermaid
graph LR
    Mic[Audio Input] -->|I2S| DMA_RX
    subgraph PL [Programmable Logic]
        DMA_RX[AXI DMA] -->|Time Domain| FFT[FFT IP (Vitis DSP)]
        FFT -->|Freq Domain| Denoise[Denoise IP (HLS)]
        Denoise -->|Clean Freq| DMA_TX[AXI DMA]
    end
    subgraph PS [Processing System]
        DMA_TX -->|Buffer| Python[Jupyter / Python Driver]
        Python -->|Socket| Host[PC Visualization]
        Python -.->|AXI Lite| Ctrl[Parameter Control]
        Ctrl -.-> Denoise
    end
```

### 🧠 Core Algorithms (HLS Implementation)

The core signal processing chain is implemented in C++ using **Vitis HLS**, ensuring low latency and high throughput.

1.  **FFT (Fast Fourier Transform)**:
    *   **Library**: Vitis DSP Library L1.
    *   **Config**: 1024-point, Fixed-point, **SSR=2** (Parallel processing).
    *   **Optimization**: Pipelined execution with `II=1` (Initiation Interval).

2.  **Spectral Subtraction (Denoise IP)**:
    *   **Magnitude Calculation**: Computes $|X(k)|^2 = Re^2 + Im^2$ directly to avoid expensive `sqrt` operations and save DSP resources.
    *   **Noise Estimation**: Accumulates noise profiles during "silence" frames (configurable frame count).
    *   **Subtraction Logic**:
        $$ |Y(k)|^2 = |X(k)|^2 - \alpha \cdot |N(k)|^2 $$
        *   **$\alpha$ (Alpha)**: Over-subtraction factor (Tunable).
        *   **$\beta$ (Beta)**: Spectral floor parameter to prevent "musical noise" artifacts.

## 📊 System Performance

*   **Throughput**: The PL pipeline runs at **100MHz**, capable of processing audio streams far beyond standard 48kHz sampling rates.
*   **Latency**: The hardware pipeline introduces only microsecond-level latency (excluding DMA buffering), significantly faster than software-based FFT/IFFT.
*   **Resource Efficiency**:
    *   **DSP Usage**: Optimized by using fixed-point arithmetic and avoiding floating-point operations in the critical path.
    *   **Memory**: Uses Block RAM (BRAM) for windowing and noise profile storage.
*   **Stability**: Solved "Reconvergence Deadlock" issues by optimizing FIFO depths in the HLS dataflow.

## 📂 Structure

```
.
├── doc/                        # Documentation and tutorials
├── Main (PYNQ)/                # Main deployment folder (Bitstream, Notebooks)
├── Program/                    # Source code and Vivado projects
│   ├── basic_overlay/          # Audio codec control IP
│   ├── fft_fir_hw/             # FFT and FIR hardware implementation
│   ├── ip/                     # IP Repository
│   ├── pynq_z2_denoise/        # Denoise HLS implementation (Source Code)
│   └── pynq_z2_fft_port/       # FFT HLS implementation (Source Code)
└── Upper (PC Host)/            # PC Host application (Python Visualization)
```

## 🛠️ Minimum Requirements

### Software ：

* Vitis HLS（2024.2）
* Vivado（2024.2）
* PyQT5, soundedevice, numpy (Upper PC Host)
* Virtual Cable
* Python
* Putty

### Hardware：

* PYNQ-Z2 — **1 pc**（On v3.0.1 image)

* Micro SD Card — **1 pc**

* Micro USB Cable — **1 pc**

* Ethernet Cable — **1 pc**

* Audio Source (Phone/PC) & Headphones/Speakers

### System Overview

The system implements a hardware-accelerated audio processing pipeline on the PYNQ-Z2 board. It features:

1.  **Audio Input**: Captures audio from the onboard Line-In or Microphone.
2.  **Hardware Acceleration (PL)**:
    *   **FFT**: Converts time-domain audio signals to the frequency domain using Vitis DSP Library L1.
    *   **Denoise**: Implements Spectral Subtraction algorithm in HLS to reduce background noise.
3.  **Software Control (PS)**:
    *   Jupyter Notebooks for system control, parameter tuning, and visualization.
    *   Python drivers for interacting with the custom IP cores.
4.  **Visualization**: Real-time spectrum display on the host PC or Jupyter Notebook.

### Preparation

1.  **Image Setup**: Burn the PYNQ v3.0.1 image to the Micro SD card.
2.  **Connections**:
    *   Connect the PYNQ-Z2 board to the PC via Ethernet and Micro USB.
    *   Connect an audio source (e.g., phone, PC) to the **Line-In** jack (blue).
    *   Connect headphones or speakers to the **Line-Out** jack (green).
3.  **Network**: Configure the network settings to access the Jupyter Notebook server (usually `192.168.2.99`).
4.  **Deployment**: Upload the `Main (PYNQ)` folder contents to the PYNQ board's Jupyter workspace.

### Core Tasks

1.  **Real-time Spectrum Analyzer**:
    *   Utilizes the hardware FFT IP to compute the frequency spectrum of the incoming audio.
    *   Visualizes the spectrum in real-time using Jupyter Notebook or the Upper Host application.

2.  **Adaptive Noise Reduction**:
    *   Removes background noise from the audio stream using **Spectral Subtraction**.
    *   The noise profile is estimated from the initial frames or can be reset dynamically via software control.
    *   Parameters like `alpha` (subtraction factor) and `beta` (spectral floor) can be tuned in real-time.

3.  **Audio Loopback & Playback**:
    *   Demonstrates the basic audio I/O capability of the board with high-fidelity audio codec configuration.

### System Performance

*   **Hardware Acceleration**: Critical signal processing tasks (FFT, Denoise) are offloaded to the FPGA (PL), significantly reducing the load on the ARM Cortex-A9 processor (PS).
*   **Throughput**: The system supports real-time audio processing with minimal latency.
*   **Resource Usage**: Efficient use of LUTs and DSP slices for the FFT and Denoise logic.

### Upper Host Dynamic Response

*   The `Upper (PC Host)` folder contains a Python script (`Upper.py`) designed to run on a PC.
*   It receives processed audio data or analysis results from the PYNQ board (via network socket).
*   It provides a smooth, high-frame-rate visualization of the audio spectrum and dynamic response, complementing the web-based Jupyter interface.

## Reference

https://pynq.readthedocs.io/en/latest/

https://github.com/Xilinx/PYNQ

https://github.com/Xilinx/Vitis_Libraries

https://github.com/UnreaLin01/PYNQ_Z2_MUSIC_VISUALIZER/

https://github.com/reed-foster/pynq-audio

https://github.com/lgddyza/FPGA-Based_Audio_Processing_and_Classification

https://github.com/tmaringer/Pynq-Z2-Audio-Video-Pipelines



