import numpy as np
from scipy import signal

def generate_sine_wave(t, freq=50.0, amplitude=1000.0):
    """生成单频正弦波"""
    return amplitude * np.sin(2 * np.pi * freq * t)

def generate_multi_sine_wave(t, freqs=[50, 100, 150], amplitudes=[1.0, 0.5, 0.2], base_amplitude=500.0):
    """生成多频混合正弦波"""
    signal_data = np.zeros_like(t)
    for f, a in zip(freqs, amplitudes):
        signal_data += a * np.sin(2 * np.pi * f * t)
    return base_amplitude * signal_data

def generate_square_wave(t, freq=30.0, amplitude=500.0):
    """生成方波"""
    return amplitude * signal.square(2 * np.pi * freq * t)

def generate_white_noise(length, max_amplitude=1000.0):
    """生成白噪声"""
    return np.random.randint(-max_amplitude, max_amplitude, length)

def generate_chirp_signal(t, start_freq=20, end_freq=500, amplitude=800.0):
    """生成线性调频信号 (Chirp)"""
    return amplitude * signal.chirp(t, f0=start_freq, f1=end_freq, t1=t[-1], method='linear')

def generate_am_signal(t, carrier_freq=200, signal_freq=20, amplitude=800.0, modulation_index=0.5):
    """生成调幅信号 (AM)"""
    carrier = np.sin(2 * np.pi * carrier_freq * t)
    modulator = modulation_index * np.sin(2 * np.pi * signal_freq * t)
    return amplitude * (1 + modulator) * carrier
