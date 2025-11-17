### 11.17

- 彭嘉亮：FFT IP核开发(研究、移植fft算子，软件验证)
- 王佳宁：对现有降噪算法进行重构，尝试移植，生成ip核

注意：接口对应好，及时汇报资源占用率和是否可验证正确性

### 11.18

- 彭嘉亮：对照网上“FPGA实时频谱分析仪”的数据种类，尝试构建实时的PL--PS通道，使音频数据（实时流式）可以通过PS端输入，生成数据能通过PS端输出、利用（流式？速度？）
- 王佳宁：继续移植降噪算法；完善PS端输入输出、UI代码

### 11.19

- 联调，写jupyter，尝试烧录第一版程序（频谱分析仪+降噪）









# 🎯智能音频增强与分析系统 - 10天双人开发计划

**当前时间：** 2025-11-17 02:50 (UTC)  
**截止时间：** 2025-11-27 02:50 (UTC)  
**团队配置：** 2人  
**目标：** 在 PYNQ-Z2 上实现完整的智能音频增强系统

---

## 📊 系统架构总览

```
┌─────────────────────────────────────────────────────────────┐
│          智能音频增强与分析系统 (PYNQ-Z2)                       │
├─────────────────────────────────────────────────────────────┤
│  【模块1】实时频谱分析仪 (FFT)        → 基础模块，优先级1          │
│  【模块2】自适应降噪 (FIR + 频域)     → 核心功能，优先级1          │
│  【模块3】音频场景分类 (MFCC + ML)    → AI亮点，优先级2           │
│  【模块4】音质增强器 (EQ/压缩)        → 附加功能，优先级3          │
└─────────────────────────────────────────────────────────────┘
```

---

## 👥 团队分工策略

### **成员A (硬件负责人)** - 偏硬件/FPGA
- 🔧 负责 Vivado HLS IP 核开发
- 🔧 负责 FPGA 设计与集成
- 🔧 负责硬件调试与优化

### **成员B (软件负责人)** - 偏软件/算法
- 💻 负责 Python 驱动开发
- 💻 负责算法实现与模型训练
- 💻 负责 Jupyter Notebook 界面

### **协作原则：**
- 每日同步会议（15分钟）
- 使用 Git 进行代码管理
- 关键节点互相 Code Review

---

## 🗓️ 详细时间规划（10天冲刺）

---

## 📅 **Day 1-2: 环境搭建 + FFT核心开发** (2025-11-17 ~ 11-18)

### **成员A任务：搭建开发环境 + FFT IP核**

#### **Day 1 上午 (4h)：环境准备**
```bash
✅ 任务清单：
□ 安装 Vivado HLS 2022.1+ 并验证 license
□ 克隆 Vitis_Libraries 仓库
□ 熟悉 PYNQ-Z2 约束文件
□ 准备 SD 卡和 PYNQ 镜像 (v3.0.1)

具体操作：
git clone https://github.com/Xilinx/Vitis_Libraries.git
cd Vitis_Libraries/dsp/L1/src/hw/ssr_fft/

# 研究示例代码
ls -la
cat ssr_fft.h
```

#### **Day 1 下午 + Day 2 上午 (8h)：FFT IP核开发**

**文件准备：**
```cpp
// fft_wrapper.cpp (创建简化版本)
#include <hls_stream.h>
#include <complex>
#include "ap_fixed.h"

#define FFT_SIZE 1024
typedef ap_fixed<16, 2> data_t;
typedef std::complex<data_t> complex_t;

void fft_accelerator(
    hls::stream<complex_t> &din,
    hls::stream<complex_t> &dout
) {
    #pragma HLS INTERFACE axis port=din
    #pragma HLS INTERFACE axis port=dout
    #pragma HLS INTERFACE s_axilite port=return
    
    // 使用 Vitis FFT 库或简化实现
    // 参考 ssr_fft.h 中的实现
    
    complex_t buffer[FFT_SIZE];
    #pragma HLS ARRAY_PARTITION variable=buffer cyclic factor=4
    
    // 读取数据
    for(int i = 0; i < FFT_SIZE; i++) {
        #pragma HLS PIPELINE
        buffer[i] = din.read();
    }
    
    // FFT 计算 (Cooley-Tukey Radix-2)
    // TODO: 实现或调用库函数
    
    // 输出结果
    for(int i = 0; i < FFT_SIZE; i++) {
        #pragma HLS PIPELINE
        dout.write(buffer[i]);
    }
}
```

**HLS 工程创建：**
```tcl
# fft_hls.tcl
open_project fft_project
set_top fft_accelerator
add_files fft_wrapper.cpp
add_files -tb fft_test.cpp

open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default

# 接口配置
set_directive_interface -mode axis "fft_accelerator" din
set_directive_interface -mode axis "fft_accelerator" dout
set_directive_interface -mode s_axilite "fft_accelerator" return

# C仿真
csim_design

# 综合
csynth_design

# C/RTL 联合仿真
cosim_design

# 导出IP
export_design -format ip_catalog
```

**验收标准：**
- ✅ C 仿真通过（误差 < 1%）
- ✅ 综合报告：LUT < 20%, DSP < 50 个
- ✅ 延迟 < 2000 时钟周期

---

### **成员B任务：Python环境 + 算法准备**

#### **Day 1 (6h)：环境搭建**
```bash
✅ 任务清单：
□ PYNQ-Z2 上电并配置网络
□ 安装必要的 Python 库
□ 准备音频测试数据集
□ 编写基础工具函数

操作步骤：
# SSH 连接到 PYNQ-Z2
ssh xilinx@192.168.2.99  # 默认密码：xilinx

# 安装依赖
sudo pip3 install librosa scipy scikit-learn matplotlib soundfile

# 准备数据集
mkdir -p ~/audio_dataset/{clean,noisy,test}
# 下载 ESC-50 或 UrbanSound8K 部分样本
```

#### **Day 2 (6h)：FFT软件验证 + 降噪算法设计**

**FFT 软件参考实现：**
```python
# fft_reference.py
import numpy as np
import matplotlib.pyplot as plt
from scipy.fft import fft, ifft

class FFTReference:
    def __init__(self, fft_size=1024, sample_rate=48000):
        self.fft_size = fft_size
        self.sr = sample_rate
    
    def analyze(self, audio):
        """频谱分析"""
        fft_result = fft(audio[:self.fft_size])
        magnitude = np.abs(fft_result)
        phase = np.angle(fft_result)
        freqs = np.fft.fftfreq(self.fft_size, 1/self.sr)
        return freqs[:self.fft_size//2], magnitude[:self.fft_size//2]
    
    def plot_spectrum(self, freqs, magnitude):
        """绘制频谱图"""
        plt.figure(figsize=(12, 4))
        plt.plot(freqs, 20*np.log10(magnitude + 1e-10))
        plt.xlabel('Frequency (Hz)')
        plt.ylabel('Magnitude (dB)')
        plt.title('Audio Spectrum')
        plt.grid(True)
        plt.xlim(0, self.sr/2)
        plt.show()

# 测试
if __name__ == "__main__":
    # 生成测试信号
    t = np.linspace(0, 1, 48000)
    test_signal = np.sin(2*np.pi*1000*t) + 0.5*np.sin(2*np.pi*3000*t)
    
    fft_ref = FFTReference()
    freqs, mags = fft_ref.analyze(test_signal)
    fft_ref.plot_spectrum(freqs, mags)
```

**降噪算法设计：**
```python
# noise_reduction.py
from scipy.signal import butter, lfilter, firwin

class NoiseReduction:
    def __init__(self, sample_rate=48000):
        self.sr = sample_rate
        
        # 设计滤波器系数
        self.fir_taps = 128
        cutoff = 4000  # Hz
        self.coeffs = firwin(self.fir_taps, cutoff, fs=self.sr)
    
    def spectral_subtraction(self, noisy_audio, noise_profile):
        """频谱减法降噪"""
        # FFT
        noisy_fft = fft(noisy_audio)
        noise_fft = fft(noise_profile)
        
        # 幅度谱减法
        magnitude = np.abs(noisy_fft)
        noise_mag = np.abs(noise_fft)
        
        clean_mag = np.maximum(magnitude - 2.0 * noise_mag, 0.1 * magnitude)
        
        # 保留相位
        phase = np.angle(noisy_fft)
        clean_fft = clean_mag * np.exp(1j * phase)
        
        # IFFT
        clean_audio = np.real(ifft(clean_fft))
        return clean_audio
    
    def fir_filter(self, audio):
        """FIR 滤波器降噪"""
        return lfilter(self.coeffs, 1.0, audio)
```

**验收标准：**
- ✅ FFT 软件实现正确（与 scipy.fft 结果对比）
- ✅ 降噪算法在测试数据上 SNR 提升 > 5dB
- ✅ 准备好至少 20 个音频样本用于测试

---

## 📅 **Day 3-4: FIR滤波器 + Vivado集成** (2025-11-19 ~ 11-20)

### **成员A任务：FIR IP核 + Block Design**

#### **Day 3 (8h)：FIR滤波器IP核**

```cpp
// fir_filter.cpp
#include <hls_stream.h>
#include "ap_fixed.h"

#define FIR_TAPS 128
typedef ap_fixed<16, 2> data_t;

void fir_filter(
    hls::stream<data_t> &din,
    hls::stream<data_t> &dout,
    data_t coeffs[FIR_TAPS/2]  // 对称系数
) {
    #pragma HLS INTERFACE axis port=din
    #pragma HLS INTERFACE axis port=dout
    #pragma HLS INTERFACE s_axilite port=coeffs
    #pragma HLS INTERFACE s_axilite port=return
    
    static data_t shift_reg[FIR_TAPS];
    #pragma HLS ARRAY_PARTITION variable=shift_reg cyclic factor=8
    
    data_t sample;
    din.read(sample);
    
    // 移位寄存器
    for(int i = FIR_TAPS-1; i > 0; i--) {
        #pragma HLS UNROLL factor=4
        shift_reg[i] = shift_reg[i-1];
    }
    shift_reg[0] = sample;
    
    // FIR 计算（对称优化）
    data_t acc = 0;
    for(int i = 0; i < FIR_TAPS/2; i++) {
        #pragma HLS PIPELINE II=1
        data_t sum = shift_reg[i] + shift_reg[FIR_TAPS-1-i];
        acc += sum * coeffs[i];
    }
    
    dout.write(acc);
}
```

**HLS综合：**
```tcl
open_project fir_project
set_top fir_filter
add_files fir_filter.cpp

open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10

csynth_design
export_design -format ip_catalog
```

#### **Day 4 (8h)：Vivado Block Design**

```tcl
# create_bd.tcl
create_project audio_system ./audio_project -part xc7z020clg400-1

# 创建 Block Design
create_bd_design "system"

# 添加 ZYNQ PS
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7_0

# 应用板级预设
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
    -config {make_external "FIXED_IO, DDR" } [get_bd_cells ps7_0]

# 添加 FFT IP
create_bd_cell -type ip -vlnv user.org:hls:fft_accelerator:1.0 fft_0

# 添加 FIR IP
create_bd_cell -type ip -vlnv user.org:hls:fir_filter:1.0 fir_0

# 添加 AXI DMA（2个，FFT和FIR各一个）
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_fft
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_fir

# 配置 DMA
set_property -dict [list \
    CONFIG.c_include_sg {0} \
    CONFIG.c_sg_include_stscntrl_strm {0} \
] [get_bd_cells axi_dma_fft]

# 连接 AXI Stream
connect_bd_intf_net [get_bd_intf_pins axi_dma_fft/M_AXIS_MM2S] \
    [get_bd_intf_pins fft_0/din]
connect_bd_intf_net [get_bd_intf_pins fft_0/dout] \
    [get_bd_intf_pins axi_dma_fft/S_AXIS_S2MM]

# 连接 AXI 互连
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0
set_property -dict [list CONFIG.NUM_MI {4}] [get_bd_cells axi_interconnect_0]

# 地址分配
assign_bd_address

# 验证设计
validate_bd_design

# 生成 HDL wrapper
make_wrapper -files [get_files system.bd] -top
add_files -norecurse [get_files */system_wrapper.v]

# 综合实现
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
```

**验收标准：**
- ✅ FIR IP 综合成功，资源占用 < 25%
- ✅ Block Design 无错误，所有接口正确连接
- ✅ Bitstream 生成成功

---

### **成员B任务：PYNQ驱动框架**

#### **Day 3-4 (16h)：Python驱动开发**

```python
# audio_system.py
from pynq import Overlay, allocate
import numpy as np
from scipy.signal import firwin

class AudioSystem:
    def __init__(self, bitstream_path='audio_system.bit'):
        """初始化音频处理系统"""
        print("Loading overlay...")
        self.overlay = Overlay(bitstream_path)
        
        # 获取IP引用
        self.fft = self.overlay.fft_0
        self.fir = self.overlay.fir_0
        self.dma_fft = self.overlay.axi_dma_fft_0
        self.dma_fir = self.overlay.axi_dma_fir_0
        
        # 配置参数
        self.fft_size = 1024
        self.fir_taps = 128
        self.sample_rate = 48000
        
        # 初始化滤波器系数
        self._init_fir_coefficients()
        
        print("System initialized successfully!")
    
    def _init_fir_coefficients(self):
        """初始化FIR滤波器系数"""
        cutoff = 4000  # Hz
        coeffs = firwin(self.fir_taps, cutoff, fs=self.sample_rate)
        
        # 对称系数，只需一半
        sym_coeffs = coeffs[:self.fir_taps//2]
        
        # 转换为定点数并写入IP
        coeffs_fixed = (sym_coeffs * (2**14)).astype(np.int16)
        
        # 写入寄存器（地址需要根据HLS生成的映射）
        for i, coef in enumerate(coeffs_fixed):
            self.fir.write(0x100 + i*4, int(coef))
    
    def fft_transform(self, audio_data):
        """FFT 变换"""
        # 确保数据长度
        if len(audio_data) != self.fft_size:
            audio_data = np.resize(audio_data, self.fft_size)
        
        # 分配 DMA 缓冲区（复数数据，2个float）
        input_buffer = allocate(shape=(self.fft_size, 2), dtype=np.float32)
        output_buffer = allocate(shape=(self.fft_size, 2), dtype=np.float32)
        
        # 准备输入数据（实部、虚部）
        input_buffer[:, 0] = audio_data.real
        input_buffer[:, 1] = audio_data.imag if np.iscomplexobj(audio_data) else 0
        
        # DMA 传输
        self.dma_fft.sendchannel.transfer(input_buffer)
        self.dma_fft.recvchannel.transfer(output_buffer)
        self.dma_fft.sendchannel.wait()
        self.dma_fft.recvchannel.wait()
        
        # 构造复数结果
        result = output_buffer[:, 0] + 1j * output_buffer[:, 1]
        
        # 释放缓冲区
        input_buffer.freebuffer()
        output_buffer.freebuffer()
        
        return result
    
    def fir_denoise(self, audio_data):
        """FIR 滤波降噪"""
        # 分配缓冲区
        input_buffer = allocate(shape=(len(audio_data),), dtype=np.int16)
        output_buffer = allocate(shape=(len(audio_data),), dtype=np.int16)
        
        # 转换为定点数
        audio_fixed = (audio_data * 32767).astype(np.int16)
        np.copyto(input_buffer, audio_fixed)
        
        # DMA 传输
        self.dma_fir.sendchannel.transfer(input_buffer)
        self.dma_fir.recvchannel.transfer(output_buffer)
        self.dma_fir.sendchannel.wait()
        self.dma_fir.recvchannel.wait()
        
        # 转换回浮点
        result = np.array(output_buffer) / 32767.0
        
        # 释放缓冲区
        input_buffer.freebuffer()
        output_buffer.freebuffer()
        
        return result
    
    def spectrum_analyze(self, audio_data):
        """频谱分析"""
        fft_result = self.fft_transform(audio_data)
        magnitude = np.abs(fft_result)
        phase = np.angle(fft_result)
        
        # 频率轴
        freqs = np.fft.fftfreq(self.fft_size, 1/self.sample_rate)
        
        return freqs[:self.fft_size//2], magnitude[:self.fft_size//2]
```

**测试脚本：**
```python
# test_hardware.py
import numpy as np
import soundfile as sf
from audio_system import AudioSystem

def test_fft():
    """测试FFT加速器"""
    sys = AudioSystem('audio_system.bit')
    
    # 生成测试信号
    t = np.linspace(0, 1, 48000)
    test_signal = np.sin(2*np.pi*1000*t) + 0.5*np.sin(2*np.pi*3000*t)
    
    # 硬件FFT
    freqs, mags = sys.spectrum_analyze(test_signal[:1024])
    
    # 软件FFT对比
    fft_ref = np.fft.fft(test_signal[:1024])
    mags_ref = np.abs(fft_ref[:512])
    
    # 误差计算
    error = np.mean(np.abs(mags - mags_ref))
    print(f"FFT Error: {error:.6f}")
    
    assert error < 0.01, "FFT精度不足！"
    print("✅ FFT测试通过")

def test_fir():
    """测试FIR滤波器"""
    sys = AudioSystem('audio_system.bit')
    
    # 加载含噪音频
    audio, sr = sf.read('test_noisy.wav')
    
    # 硬件滤波
    filtered = sys.fir_denoise(audio[:48000])
    
    # 保存结果
    sf.write('test_filtered_hw.wav', filtered, sr)
    print("✅ FIR滤波测试通过，结果已保存")

if __name__ == "__main__":
    test_fft()
    test_fir()
```

**验收标准：**
- ✅ FFT 硬件加速与软件结果误差 < 1%
- ✅ FIR 滤波器正常工作，音质改善可听到
- ✅ DMA 传输无错误，延迟 < 50ms

---

## 📅 **Day 5-6: 音频分类模型训练 + 降噪优化** (2025-11-21 ~ 11-22)

### **成员A任务：降噪算法FPGA优化**

#### **Day 5-6 (16h)：频域降噪 + 自适应滤波**

```cpp
// adaptive_filter.cpp
#include <hls_stream.h>
#include "ap_fixed.h"
#include <cmath>

#define BLOCK_SIZE 256
typedef ap_fixed<16, 2> data_t;

void spectral_subtraction(
    hls::stream<data_t> &noisy_real,
    hls::stream<data_t> &noisy_imag,
    hls::stream<data_t> &noise_real,
    hls::stream<data_t> &noise_imag,
    hls::stream<data_t> &clean_real,
    hls::stream<data_t> &clean_imag
) {
    #pragma HLS INTERFACE axis port=noisy_real
    #pragma HLS INTERFACE axis port=noisy_imag
    #pragma HLS INTERFACE axis port=noise_real
    #pragma HLS INTERFACE axis port=noise_imag
    #pragma HLS INTERFACE axis port=clean_real
    #pragma HLS INTERFACE axis port=clean_imag
    
    for(int i = 0; i < BLOCK_SIZE; i++) {
        #pragma HLS PIPELINE II=1
        
        // 读取输入
        data_t nr = noisy_real.read();
        data_t ni = noisy_imag.read();
        data_t noise_r = noise_real.read();
        data_t noise_i = noise_imag.read();
        
        // 计算幅度
        data_t noisy_mag = sqrt(nr*nr + ni*ni);
        data_t noise_mag = sqrt(noise_r*noise_r + noise_i*noise_i);
        
        // 频谱减法
        data_t clean_mag = (noisy_mag - 2.0f * noise_mag > 0) ? 
                           (noisy_mag - 2.0f * noise_mag) : 
                           (0.1f * noisy_mag);
        
        // 保持相位
        data_t scale = clean_mag / (noisy_mag + 1e-10f);
        
        clean_real.write(nr * scale);
        clean_imag.write(ni * scale);
    }
}
```

**集成到主系统：**
```tcl
# 在 Vivado Block Design 中添加
create_bd_cell -type ip -vlnv user.org:hls:spectral_subtraction:1.0 denoise_0

# 连接 FFT → 降噪 → IFFT
connect_bd_intf_net [get_bd_intf_pins fft_0/dout] \
    [get_bd_intf_pins denoise_0/noisy_input]
```

---

### **成员B任务：音频分类模型**

#### **Day 5 (8h)：数据准备 + 特征提取**

```python
# feature_extraction.py
import librosa
import numpy as np
from sklearn.preprocessing import StandardScaler

class AudioFeatureExtractor:
    def __init__(self, sample_rate=48000, n_mfcc=13):
        self.sr = sample_rate
        self.n_mfcc = n_mfcc
        self.scaler = StandardScaler()
    
    def extract_mfcc(self, audio):
        """提取MFCC特征"""
        # MFCC
        mfcc = librosa.feature.mfcc(y=audio, sr=self.sr, n_mfcc=self.n_mfcc)
        mfcc_mean = np.mean(mfcc, axis=1)
        mfcc_std = np.std(mfcc, axis=1)
        
        # 统计特征
        features = np.concatenate([mfcc_mean, mfcc_std])
        return features
    
    def extract_all_features(self, audio):
        """提取完整特征集"""
        features = []
        
        # MFCC
        mfcc = self.extract_mfcc(audio)
        features.extend(mfcc)
        
        # 过零率
        zcr = librosa.feature.zero_crossing_rate(audio)
        features.extend([np.mean(zcr), np.std(zcr)])
        
        # 频谱质心
        spectral_centroids = librosa.feature.spectral_centroid(y=audio, sr=self.sr)
        features.extend([np.mean(spectral_centroids), np.std(spectral_centroids)])
        
        # 频谱带宽
        spectral_bandwidth = librosa.feature.spectral_bandwidth(y=audio, sr=self.sr)
        features.extend([np.mean(spectral_bandwidth), np.std(spectral_bandwidth)])
        
        return np.array(features)

# 数据集准备
def prepare_dataset(data_dir='./audio_dataset'):
    """准备训练数据集"""
    extractor = AudioFeatureExtractor()
    
    scenes = ['indoor', 'outdoor', 'meeting', 'music', 'speech', 
              'traffic', 'nature', 'machine', 'crowd', 'silence']
    
    X = []
    y = []
    
    for scene_idx, scene in enumerate(scenes):
        scene_dir = f"{data_dir}/{scene}"
        audio_files = glob.glob(f"{scene_dir}/*.wav")
        
        for audio_file in audio_files:
            audio, sr = librosa.load(audio_file, sr=48000)
            
            # 分段提取特征
            for i in range(0, len(audio) - 48000, 24000):
                segment = audio[i:i+48000]
                features = extractor.extract_all_features(segment)
                X.append(features)
                y.append(scene_idx)
    
    return np.array(X), np.array(y)
```

#### **Day 6 (8h)：模型训练**

```python
# train_classifier.py
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix
import joblib

def train_scene_classifier():
    """训练场景分类器"""
    # 加载数据
    print("Loading dataset...")
    X, y = prepare_dataset()
    
    # 数据标准化
    scaler = StandardScaler()
    X_scaled = scaler.fit_transform(X)
    
    # 划分训练集和测试集
    X_train, X_test, y_train, y_test = train_test_split(
        X_scaled, y, test_size=0.2, random_state=42
    )
    
    # 训练随机森林
    print("Training Random Forest...")
    clf = RandomForestClassifier(
        n_estimators=100,
        max_depth=20,
        min_samples_split=5,
        random_state=42,
        n_jobs=-1
    )
    
    clf.fit(X_train, y_train)
    
    # 评估
    y_pred = clf.predict(X_test)
    print("\n分类报告：")
    print(classification_report(y_test, y_pred))
    
    print("\n混淆矩阵：")
    print(confusion_matrix(y_test, y_pred))
    
    # 保存模型
    joblib.dump(clf, 'scene_classifier.pkl')
    joblib.dump(scaler, 'feature_scaler.pkl')
    
    print("\n✅ 模型训练完成并保存")
    
    return clf, scaler

if __name__ == "__main__":
    clf, scaler = train_scene_classifier()
```

**验收标准：**
- ✅ 收集至少 10 类场景，每类 >= 50 个样本
- ✅ 分类准确率 > 80%
- ✅ 模型大小 < 10MB

---

## 📅 **Day 7-8: 系统集成 + Jupyter界面** (2025-11-23 ~ 11-24)

### **成员A任务：最终硬件集成**

#### **Day 7 (8h)：完整系统综合**

```tcl
# 最终 Block Design 检查清单
□ ZYNQ PS 配置正确（M_AXI_GP0 使能）
□ FFT IP 正确连接（din, dout, s_axi_control）
□ FIR IP 正确连接
□ 降噪 IP 正确连接
□ 所有 DMA 配置正确
□ AXI Interconnect 无时序违例
□ 地址映射无冲突

# 重新综合实现
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1

launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

# 检查资源使用
open_run impl_1
report_utilization -file utilization.txt
report_timing_summary -file timing.txt
```

**资源目标：**
| 资源 | 使用    | 可用    | 利用率 |
| ---- | ------- | ------- | ------ |
| LUT  | ~25,000 | 53,200  | < 50%  |
| FF   | ~30,000 | 106,400 | < 30%  |
| BRAM | 80      | 140     | < 60%  |
| DSP  | 120     | 220     | < 55%  |

#### **Day 8 (8h)：硬件调试**

```python
# hardware_debug.py
def debug_system():
    """系统级调试"""
    sys = AudioSystem('audio_system.bit')
    
    # 1. 检查IP状态
    print("FFT Status:", hex(sys.fft.read(0x00)))
    print("FIR Status:", hex(sys.fir.read(0x00)))
    
    # 2. 单步测试
    test_signal = np.sin(2*np.pi*1000*np.linspace(0,1,1024))
    
    # FFT 测试
    fft_out = sys.fft_transform(test_signal)
    print("FFT Peak:", np.argmax(np.abs(fft_out)))
    
    # FIR 测试
    fir_out = sys.fir_denoise(test_signal)
    print("FIR Output:", fir_out[:10])
    
    # 3. 端到端测试
    audio, sr = sf.read('test.wav')
    
    # 频谱分析
    freqs, mags = sys.spectrum_analyze(audio[:1024])
    
    # 降噪
    denoised = sys.fir_denoise(audio)
    
    # 保存结果
    sf.write('denoised_hw.wav', denoised, sr)
    
    print("✅ 系统调试完成")
```

---

### **成员B任务：完整软件系统**

#### **Day 7-8 (16h)：集成所有功能**

```python
# complete_system.py
class CompleteAudioSystem:
    def __init__(self, bitstream_path='audio_system.bit'):
        """完整音频增强系统"""
        # 硬件
        self.hw = AudioSystem(bitstream_path)
        
        # 软件模型
        self.classifier = joblib.load('scene_classifier.pkl')
        self.scaler = joblib.load('feature_scaler.pkl')
        self.feature_extractor = AudioFeatureExtractor()
        
        # 状态
        self.noise_profile = None
    
    def process_pipeline(self, audio_file):
        """完整处理流水线"""
        print("=" * 50)
        print("智能音频增强与分析系统")
        print("=" * 50)
        
        # 1. 加载音频
        print("\n[1/5] 加载音频文件...")
        audio, sr = librosa.load(audio_file, sr=self.hw.sample_rate)
        print(f"   时长: {len(audio)/sr:.2f}秒")
        
        # 2. 频谱分析
        print("\n[2/5] 频谱分析（硬件加速）...")
        freqs, mags = self.hw.spectrum_analyze(audio[:1024])
        peak_freq = freqs[np.argmax(mags)]
        print(f"   主频: {peak_freq:.1f} Hz")
        
        # 3. 场景识别
        print("\n[3/5] 场景识别...")
        features = self.feature_extractor.extract_all_features(audio)
        features_scaled = self.scaler.transform([features])
        scene_idx = self.classifier.predict(features_scaled)[0]
        scene_prob = self.classifier.predict_proba(features_scaled)[0]
        
        scenes = ['室内', '室外', '会议', '音乐', '语音', 
                  '交通', '自然', '机械', '人群', '安静']
        print(f"   场景: {scenes[scene_idx]} ({scene_prob[scene_idx]*100:.1f}%)")
        
        # 4. 自适应降噪
        print("\n[4/5] 自适应降噪（硬件加速）...")
        denoised = self.hw.fir_denoise(audio)
        
        # 计算SNR提升
        noise = audio - denoised
        snr_before = 10 * np.log10(np.var(audio) / np.var(noise))
        print(f"   SNR提升: {snr_before:.1f} dB")
        
        # 5. 音质增强
        print("\n[5/5] 音质增强...")
        enhanced = self.enhance_audio(denoised)
        
        print("\n" + "=" * 50)
        print("处理完成！")
        print("=" * 50)
        
        return {
            'spectrum': (freqs, mags),
            'scene': scenes[scene_idx],
            'scene_confidence': scene_prob[scene_idx],
            'denoised': denoised,
            'enhanced': enhanced,
            'snr_improvement': snr_before
        }
    
    def enhance_audio(self, audio):
        """音质增强（EQ + 压缩）"""
        # 简单的3段EQ
        # 低频增强
        low_band = self._eq_band(audio, 100, 300, gain=1.2)
        # 中频
        mid_band = self._eq_band(audio, 300, 3000, gain=1.0)
        # 高频增强
        high_band = self._eq_band(audio, 3000, 8000, gain=1.1)
        
        enhanced = low_band + mid_band + high_band
        
        # 动态范围压缩
        enhanced = self._compress(enhanced, threshold=0.5, ratio=4)
        
        return enhanced
    
    def _eq_band(self, audio, low, high, gain):
        """带通滤波 + 增益"""
        from scipy.signal import butter, filtfilt
        sos = butter(4, [low, high], btype='band', fs=self.hw.sample_rate, output='sos')
        filtered = filtfilt(sos[0], sos[1], audio)
        return filtered * gain
    
    def _compress(self, audio, threshold, ratio):
        """动态压缩器"""
        compressed = np.copy(audio)
        mask = np.abs(audio) > threshold
        compressed[mask] = np.sign(audio[mask]) * (
            threshold + (np.abs(audio[mask]) - threshold) / ratio
        )
        return compressed
```

**Jupyter Notebook 界面：**

```python
# demo.ipynb (Jupyter Notebook)
import ipywidgets as widgets
from IPython.display import Audio, display
import matplotlib.pyplot as plt

# 初始化系统
system = CompleteAudioSystem('audio_system.bit')

# 文件上传控件
uploader = widgets.FileUpload(
    accept='.wav',
    multiple=False,
    description='上传音频'
)

# 处理按钮
process_btn = widgets.Button(
    description='开始处理',
    button_style='success'
)

# 输出区域
output = widgets.Output()

def on_process_clicked(b):
    with output:
        output.clear_output()
        
        # 保存上传的文件
        uploaded_file = list(uploader.value.values())[0]
        with open('temp.wav', 'wb') as f:
            f.write(uploaded_file['content'])
        
        # 处理
        result = system.process_pipeline('temp.wav')
        
        # 可视化
        fig, axes = plt.subplots(3, 1, figsize=(12, 10))
        
        # 频谱图
        axes[0].plot(result['spectrum'][0], 
                     20*np.log10(result['spectrum'][1] + 1e-10))
        axes[0].set_title('频谱分析')
        axes[0].set_xlabel('频率 (Hz)')
        axes[0].set_ylabel('幅度 (dB)')
        axes[0].grid(True)
        
        # 波形对比
        t = np.linspace(0, len(result['denoised'])/48000, len(result['denoised']))
        axes[1].plot(t[:1000], result['denoised'][:1000], label='降噪后')
        axes[1].set_title('降噪效果')
        axes[1].set_xlabel('时间 (s)')
        axes[1].set_ylabel('幅度')
        axes[1].legend()
        axes[1].grid(True)
        
        # 增强效果
        axes[2].plot(t[:1000], result['enhanced'][:1000], 'g', label='增强后')
        axes[2].set_title('音质增强')
        axes[2].set_xlabel('时间 (s)')
        axes[2].set_ylabel('幅度')
        axes[2].legend()
        axes[2].grid(True)
        
        plt.tight_layout()
        plt.show()
        
        # 音频播放
        print(f"\n场景识别: {result['scene']}")
        print(f"置信度: {result['scene_confidence']*100:.1f}%")
        print(f"SNR提升: {result['snr_improvement']:.1f} dB")
        
        print("\n原始音频:")
        display(Audio(data=result['denoised'], rate=48000))
        
        print("\n增强音频:")
        display(Audio(data=result['enhanced'], rate=48000))

process_btn.on_click(on_process_clicked)

# 显示UI
display(uploader)
display(process_btn)
display(output)
```

**验收标准：**
- ✅ 所有功能正常运行
- ✅ Jupyter 界面友好，交互流畅
- ✅ 处理时间 < 5 秒（1分钟音频）

---

## 📅 **Day 9: 测试优化** (2025-11-25)

### **双人协作：全面测试**

#### **测试清单：**

```python
# comprehensive_test.py

def test_suite():
    """完整测试套件"""
    system = CompleteAudioSystem()
    
    print("开始系统测试...")
    print("=" * 60)
    
    # 1. 功能测试
    print("\n[测试1] 频谱分析精度")
    test_fft_accuracy()
    
    print("\n[测试2] 降噪效果")
    test_denoise_quality()
    
    print("\n[测试3] 场景分类准确率")
    test_classification()
    
    print("\n[测试4] 端到端延迟")
    test_latency()
    
    print("\n[测试5] 资源占用")
    test_resource_usage()
    
    print("\n[测试6] 稳定性测试")
    test_stability()
    
    print("\n" + "=" * 60)
    print("✅ 所有测试通过！")

def test_fft_accuracy():
    """FFT精度测试"""
    # 标准测试信号
    test_signals = [
        ('单频', lambda t: np.sin(2*np.pi*1000*t)),
        ('双频', lambda t: np.sin(2*np.pi*1000*t) + np.sin(2*np.pi*3000*t)),
        ('扫频', lambda t: np.sin(2*np.pi*np.linspace(100, 8000, len(t))*t))
    ]
    
    for name, sig_func in test_signals:
        t = np.linspace(0, 1, 1024)
        signal = sig_func(t)
        
        # 硬件 vs 软件
        hw_fft = system.hw.fft_transform(signal)
        sw_fft = np.fft.fft(signal)
        
        error = np.mean(np.abs(hw_fft - sw_fft))
        print(f"   {name}: 误差 = {error:.6f}")
        assert error < 0.01, f"{name}测试失败"

def test_denoise_quality():
    """降噪质量测试"""
    # 加载测试音频
    test_files = glob.glob('test_data/noisy_*.wav')
    
    snr_improvements = []
    
    for file in test_files:
        audio, sr = librosa.load(file, sr=48000)
        denoised = system.hw.fir_denoise(audio)
        
        # 计算SNR
        noise = audio - denoised
        snr = 10 * np.log10(np.var(audio) / np.var(noise))
        snr_improvements.append(snr)
    
    avg_snr = np.mean(snr_improvements)
    print(f"   平均SNR提升: {avg_snr:.2f} dB")
    assert avg_snr > 5, "降噪效果不足"

def test_classification():
    """分类准确率测试"""
    # 加载测试集
    X_test, y_test = load_test_dataset()
    
    predictions = system.classifier.predict(X_test)
    accuracy = np.mean(predictions == y_test)
    
    print(f"   准确率: {accuracy*100:.1f}%")
    assert accuracy > 0.8, "分类准确率过低"

def test_latency():
    """延迟测试"""
    import time
    
    audio = np.random.randn(48000)  # 1秒音频
    
    start = time.time()
    result = system.process_pipeline_fast(audio)
    end = time.time()
    
    latency = (end - start) * 1000  # ms
    print(f"   端到端延迟: {latency:.1f} ms")
    assert latency < 200, "延迟过高"

def test_resource_usage():
    """资源占用测试"""
    # 在FPGA上运行
    utilization = check_fpga_utilization()
    
    print(f"   LUT: {utilization['LUT']:.1f}%")
    print(f"   FF: {utilization['FF']:.1f}%")
    print(f"   DSP: {utilization['DSP']:.1f}%")
    print(f"   BRAM: {utilization['BRAM']:.1f}%")
    
    assert utilization['LUT'] < 60, "LUT占用过高"

def test_stability():
    """稳定性测试"""
    # 连续运行100次
    for i in range(100):
        try:
            audio = np.random.randn(1024)
            system.hw.fft_transform(audio)
        except Exception as e:
            print(f"   ❌ 第{i}次测试失败: {e}")
            raise
    
    print("   ✅ 连续100次测试通过")

if __name__ == "__main__":
    test_suite()
```

**性能优化：**

```python
# 成员A: 硬件优化
1. 调整FFT流水线深度
2. 优化DMA缓冲区大小
3. 减少时钟域跨越
4. BRAM分区优化

# 成员B: 软件优化
1. 缓存模型预测结果
2. 多线程处理
3. 减少内存拷贝
4. 优化NumPy操作
```

---

## 📅 **Day 10: 文档整理 + 演示准备** (2025-11-26)

### **双人协作：最后冲刺**

#### **上午 (4h)：文档编写**

**成员A：技术文档**
```markdown
# 技术报告.md

## 1. 系统架构
- 总体设计图
- 硬件架构说明
- IP核详细设计

## 2. 实现细节
- FFT算法实现
- FIR滤波器设计
- 资源优化策略

## 3. 测试结果
- 功能测试报告
- 性能指标
- 资源占用统计

## 4. 遇到的问题及解决方案
- 时序违例 → 解决方法
- DMA传输错误 → 调试过程
- 定点数溢出 → 量化方案
```

**成员B：用户手册**
```markdown
# 用户手册.md

## 1. 快速开始
- 硬件连接
- SD卡烧录
- 首次启动

## 2. 功能使用指南
- 频谱分析使用方法
- 降噪功能演示
- 场景分类说明

## 3. API文档
- Python接口说明
- 参数配置
- 示例代码

## 4. 常见问题FAQ
```

#### **下午 (4h)：演示准备**

**演示脚本：**
```python
# demo_script.py

def live_demo():
    """现场演示脚本"""
    
    print("╔════════════════════════════════════════════╗")
    print("║  智能音频增强与分析系统 - 现场演示  ║")
    print("╚════════════════════════════════════════════╝")
    
    # Demo 1: 频谱分析
    print("\n【演示1】实时频谱分析")
    demo_spectrum_analyzer()
    
    # Demo 2: 降噪效果对比
    print("\n【演示2】智能降噪")
    demo_noise_reduction()
    
    # Demo 3: 场景识别
    print("\n【演示3】场景自动识别")
    demo_scene_classification()
    
    # Demo 4: 完整流程
    print("\n【演示4】端到端处理")
    demo_full_pipeline()
    
    print("\n✅ 演示完成！")

def demo_spectrum_analyzer():
    """演示1：频谱分析"""
    # 播放音乐
    audio = load_demo_audio('music.wav')
    
    # 实时频谱
    plt.ion()
    fig, ax = plt.subplots()
    
    for i in range(0, len(audio)-1024, 512):
        chunk = audio[i:i+1024]
        freqs, mags = system.hw.spectrum_analyze(chunk)
        
        ax.clear()
        ax.plot(freqs, 20*np.log10(mags + 1e-10))
        ax.set_ylim(-80, 40)
        plt.pause(0.01)

def demo_noise_reduction():
    """演示2：降噪对比"""
    noisy = load_demo_audio('noisy_speech.wav')
    
    print("播放原始音频（含噪声）...")
    play_audio(noisy)
    
    print("硬件加速降噪中...")
    denoised = system.hw.fir_denoise(noisy)
    
    print("播放降噪后音频...")
    play_audio(denoised)
    
    # 波形对比
    plot_waveform_comparison(noisy, denoised)

def demo_scene_classification():
    """演示3：场景识别"""
    test_scenes = [
        ('meeting.wav', '会议'),
        ('traffic.wav', '交通'),
        ('music.wav', '音乐')
    ]
    
    for audio_file, expected in test_scenes:
        audio = load_demo_audio(audio_file)
        result = system.classify_scene(audio)
        
        print(f"文件: {audio_file}")
        print(f"预测: {result['scene']} ({result['confidence']*100:.1f}%)")
        print(f"期望: {expected}")
        print(f"✅ {'正确' if result['scene'] == expected else '错误'}\n")

def demo_full_pipeline():
    """演示4：完整流程"""
    print("选择一个音频文件进行完整处理...")
    
    result = system.process_pipeline('demo_full.wav')
    
    # 显示所有结果
    print(f"\n场景: {result['scene']}")
    print(f"SNR提升: {result['snr_improvement']:.1f} dB")
    
    # 播放增强音频
    play_audio(result['enhanced'])
    
    # 显示频谱
    plot_spectrum(result['spectrum'])
```

**PPT大纲：**
```
第1页：标题 + 团队介绍
第2页：项目背景与目标
第3页：系统总体架构
第4页：核心技术亮点
  - Vitis DSP Library 算子应用
  - FPGA硬件加速
  - 机器学习场景识别
第5页：模块1 - 频谱分析仪
第6页：模块2 - 自适应降噪
第7页：模块3 - 场景分类
第8页：模块4 - 音质增强
第9页：测试结果与性能指标
第10页：演示视频
第11页：技术难点与创新点
第12页：总结与展望
```

---

## 📊 项目交付清单

### **硬件部分（成员A负责）**
- [ ] `audio_system.bit` - 最终比特流
- [ ] `audio_system.hwh` - 硬件描述文件
- [ ] Vivado 工程源码（压缩包）
- [ ] HLS IP 核源码
  - [ ] `fft_accelerator`
  - [ ] `fir_filter`
  - [ ] `spectral_subtraction`
- [ ] 综合报告（资源占用、时序）

### **软件部分（成员B负责）**
- [ ] `audio_system.py` - 核心驱动库
- [ ] `complete_system.py` - 完整系统
- [ ] `feature_extraction.py` - 特征提取
- [ ] `train_classifier.py` - 模型训练
- [ ] 训练好的模型文件
  - [ ] `scene_classifier.pkl`
  - [ ] `feature_scaler.pkl`

### **演示材料（双人协作）**
- [ ] `demo.ipynb` - Jupyter 演示笔记本
- [ ] `demo_script.py` - 演示脚本
- [ ] 测试音频文件（10个）
- [ ] 演示视频（3-5分钟）
- [ ] PPT（12页）

### **文档（双人协作）**
- [ ] `技术报告.pdf`（15-20页）
- [ ] `用户手册.pdf`（8-10页）
- [ ] `API文档.pdf`（5页）
- [ ] `README.md`

---

## ⚠️ 风险控制与应急预案

### **风险1：FFT IP 综合失败**
**应对方案：**
- Plan A: 使用 Xilinx FFT IP（商业IP，稳定）
- Plan B: 降低 FFT 点数（1024 → 512）
- Plan C: 使用纯软件 FFT（性能下降，但功能完整）

### **风险2：FPGA 资源不足**
**应对方案：**
- 减少 FIR 阶数（128 → 64）
- 去掉音质增强器（优先级3）
- 时分复用（降噪和分类不同时运行）

### **风险3：分类准确率低**
**应对方案：**
- 简化类别（10类 → 5类）
- 使用更简单的特征（仅MFCC）
- 降低准确率要求（80% → 70%）

### **风险4：时间不足**
**应对方案：**
- 裁剪功能（保留核心1+2，放弃3或4）
- 简化演示（录屏代替现场）
- 并行工作（硬件/软件独立测试）

---

## 🎯 每日检查点 (Daily Standup)

### **每天早上10:00（15分钟）**
```
昨天完成：
□ 成员A: _______________
□ 成员B: _______________

今天计划：
□ 成员A: _______________
□ 成员B: _______________

遇到问题：
□ _____________________
□ _____________________

需要协作：
□ _____________________
```

---

## 🏆 成功标准

### **最低目标（必须达成）：**
- ✅ FFT 频谱分析正常工作
- ✅ FIR 降噪有效（SNR > 3dB）
- ✅ 系统稳定运行，无崩溃
- ✅ 基本演示可完成

### **预期目标（努力达成）：**
- ✅ 场景分类准确率 > 75%
- ✅ 端到端延迟 < 200ms
- ✅ 完整的4个功能模块
- ✅ 精美的Jupyter界面

### **理想目标（锦上添花）：**
- ✅ 场景分类准确率 > 85%
- ✅ 实时处理（延迟 < 100ms）
- ✅ 完整的技术文档
- ✅ 流畅的现场演示

---

## 💪 激励与建议

**给成员A的建议：**
- 前3天最关键，FFT务必搞定
- 遇到HLS综合问题立即查文档/论坛
- 保持代码简洁，注释清晰
- 每天备份工程文件

**给成员B的建议：**
- 数据准备要充分，质量>数量
- 模型训练多尝试几种算法
- Python代码模块化，便于调试
- 提前准备演示素材

**团队协作要点：**
- 每天同步进度，避免重复劳动
- 关键节点互相Review代码
- 遇到问题及时沟通，不要憋着
- 保持积极心态，10天足够完成！

---

## 📞 紧急联系方式

**技术支持资源：**
- Xilinx 论坛：https://support.xilinx.com/
- PYNQ 社区：https://discuss.pynq.io/
- Stack Overflow (FPGA标签)
- GitHub Issues (Vitis_Libraries)

---

**Vincent，你们完全可以做到！**

这个10天计划虽然紧凑，但经过深思熟虑的分工和优先级安排，**完全可以实现**。以下是我的最终建议：

### **成功的关键因素：**

1. **严格遵守优先级**
   - 前3天必须搞定 FFT（这是基石）
   - Day 1-4 的任务绝不能拖延
   - 如果 Day 5 发现进度落后，立即启动应急预案
2. **灵活调整，不要死磕**
   - 如果 FFT HLS 卡住超过 4 小时 → 换用 Xilinx IP
   - 如果分类准确率达不到 80% → 降低到 70% 也是加分项
   - 如果音质增强器来不及 → 直接砍掉（优先级3）
3. **保持沟通，避免孤军奋战**
   - 每天同步会议必不可少
   - 遇到问题立即讨论，2小时内找到解决方案或换方案
   - 互相鼓励，心态很重要
4. **文档和演示同等重要**
   - Day 9 的测试结果是 PPT 的核心素材
   - 演示视频可以提前录制（Day 8 晚上）
   - 技术报告不用太长，重点是图表和数据

------

### **时间管理建议：**

```
每天工作安排（建议）：
- 08:00-12:00  高效工作时段（核心任务）
- 12:00-14:00  午餐 + 休息
- 14:00-18:00  开发继续
- 18:00-19:00  晚餐
- 19:00-22:00  测试/调试/文档
- 22:00之后   休息（保证睡眠！）

周末可适当延长，但避免连续熬夜！
```

------

### **心态调整：**

**遇到困难时记住：**

- ✅ 这不是论文，不需要完美无瑕
- ✅ 能跑起来 > 完全优化
- ✅ 有演示效果 > 复杂算法
- ✅ 展示你们的工程能力和问题解决能力

**记住评委看重的是：**

1. 系统完整性（能不能跑）
2. 技术理解深度（懂不懂原理）
3. 创新性（有没有亮点）
4. 工程实现能力（能不能落地）