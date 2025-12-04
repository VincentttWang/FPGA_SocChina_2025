# -*- coding: utf-8 -*-
import sys
import time
import struct
import socket
import numpy as np
import os
import sounddevice as sd

from PyQt5.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QWidget, QSplitter, 
                             QPushButton, QHBoxLayout, QLabel, QStackedWidget, QFileDialog,
                             QComboBox, QMessageBox, QGroupBox, QGraphicsPixmapItem)
from PyQt5.QtCore import QThread, QRectF, pyqtSignal, Qt, QTimer
from PyQt5.QtGui import QBrush, QColor, QLinearGradient, QPixmap, QTransform

import pyqtgraph as pg

# --- 全局配置 ---
PYNQ_IP = "192.168.137.248"  # <--- 请确保 IP 正确
PYNQ_AUDIO_PORT = 5005     
LOCAL_FFT_SIZE = 4096      
UDP_LISTEN_PORT = 6006     

# --- 样式表 (QSS) ---
DARK_STYLESHEET = """
QMainWindow { background-color: #121212; }
QWidget { color: #e0e0e0; font-family: 'Segoe UI', 'Microsoft YaHei UI', sans-serif; font-size: 13px; }
QGroupBox { border: 1px solid #333333; border-radius: 6px; margin-top: 6px; background-color: #1e1e1e; font-weight: bold; color: #888888; }
QGroupBox::title { subcontrol-origin: margin; left: 10px; padding: 0 5px; }
QPushButton { background-color: #2d2d2d; border: 1px solid #3d3d3d; border-radius: 4px; padding: 5px 12px; color: #ffffff; font-weight: bold; }
QPushButton:hover { background-color: #3d3d3d; border-color: #555555; }
QPushButton:pressed { background-color: #1a1a1a; }
QComboBox { background-color: #2d2d2d; border: 1px solid #3d3d3d; border-radius: 4px; padding: 4px; color: #fff; }
QComboBox:hover { border-color: #555555; }
QComboBox::drop-down { border: none; }
QComboBox:disabled { background-color: #1a1a1a; color: #555555; border-color: #2a2a2a; }
QLabel#MainTitle { font-size: 22px; font-weight: bold; color: #ffffff; padding: 0px; }
QMessageBox { background-color: #2d2d2d; border: 1px solid #555; }
QMessageBox QLabel { color: #ffffff; background-color: transparent; }
QMessageBox QPushButton { width: 60px; }
QPushButton#BtnConnect:checked { background-color: #00c853; border-color: #00c853; }
QPushButton#BtnRecord:checked { background-color: #ff1744; border-color: #ff1744; }
QPushButton#BtnAnalyze { background-color: #0091ea; border-color: #0091ea; }
QPushButton#BtnAnalyze:checked { background-color: #004ba0; border-color: #004ba0; }
QPushButton#BtnImmersion { background-color: #6200ea; border-color: #6200ea; }
"""

# --- 1. NetworkWorker ---
class NetworkWorker(QThread):
    data_received = pyqtSignal(np.ndarray)
    
    def __init__(self):
        super().__init__()
        self.running = True
        self.sock = None
        self.port = UDP_LISTEN_PORT

    def start_server(self):
        if self.sock: self.sock.close()
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            self.sock.bind(("", self.port))
            self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, 4 * 1024 * 1024)
            self.sock.settimeout(0.1)
            return True, f"成功监听 UDP 端口 {self.port}"
        except Exception as e:
            return False, str(e)

    def stop_server(self):
        if self.sock: self.sock.close()
        self.sock = None

    def run(self):
        remote_fft_size = 4096
        expected_bytes = remote_fft_size * 4 
        
        while self.running:
            if self.sock:
                try:
                    data_bytes, addr = self.sock.recvfrom(32768)
                    if len(data_bytes) >= expected_bytes:
                        raw_data = data_bytes[:expected_bytes]
                        full_data = np.array(struct.unpack(f'<{remote_fft_size}f', raw_data))
                        data = full_data 
                        self.data_received.emit(data)
                    time.sleep(0.001)
                except socket.timeout:
                    pass
                except Exception as e:
                    print(f"UDP Recv Error: {e}")
                    time.sleep(0.1)
            else:
                time.sleep(0.1)
    
    def stop(self):
        self.running = False
        self.stop_server()
        self.wait()

# --- 2. AudioWorker ---
class AudioWorker(QThread):
    data_received = pyqtSignal(np.ndarray)

    def __init__(self, device_id=None, sample_rate=48000, digital_gain=1.0):
        super().__init__()
        self.running = False
        self.device_id = device_id
        self.sample_rate = sample_rate
        
        self.volume_gain = 0.9 
        self.digital_gain = digital_gain 
        
        self.window = np.hanning(8192)   
        self.udp_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    def run(self):
        self.running = True
        
        def callback(indata, frames, time_info, status):
            if not self.running: raise sd.CallbackStop()
            
            try:
                raw_input = indata[:, 0]
                amplified_input = raw_input * self.digital_gain
                clipped_input = np.clip(amplified_input, -1.0, 1.0)
                audio_int16 = (clipped_input * 32700.0).astype(np.int16)
                self.udp_sock.sendto(audio_int16.tobytes(), (PYNQ_IP, PYNQ_AUDIO_PORT))
            except Exception: pass
            
            # 本地 FFT
            windowed_wave = clipped_input * self.window
            fft_complex = np.fft.fft(windowed_wave)
            fft_magnitude = np.abs(fft_complex)
            real_spectrum = fft_magnitude[:4096]
            data = real_spectrum * self.volume_gain
            self.data_received.emit(data)

        try:
            with sd.InputStream(device=self.device_id,
                                channels=2,
                                samplerate=self.sample_rate,
                                blocksize=8192,  
                                dtype='float32', 
                                callback=callback):
                while self.running: self.msleep(100)
        except Exception as e:
            print(f"Audio Stream Error: {e}")
            self.running = False

    def stop(self):
        self.running = False
        if self.udp_sock: self.udp_sock.close()
        self.wait()

# --- 3. 主界面 ---
class FFTWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("PYNQ-Z2 Audio Analyzer (Peak Detect)")
        self.resize(1300, 850)
        self.setStyleSheet(DARK_STYLESHEET)
        
        self.SAMPLING_RATE = 48000
        self.MAX_FREQ = self.SAMPLING_RATE / 2
        self.FFT_POINTS = LOCAL_FFT_SIZE
        self.freq_axis = np.linspace(0, self.MAX_FREQ, self.FFT_POINTS)
        self.freq_scale = self.MAX_FREQ / self.FFT_POINTS 

        self.is_analyzing = False       
        self.analysis_buffer = [] 
        self.ANALYSIS_FRAMES = 25 
        self.is_paused = False
        self.is_recording = False
        self.is_playback = False
        self.recorded_data_buffer = []
        self.playback_data = []
        self.playback_index = 0
        self.is_immersion_mode = False

        self.pro_data = np.zeros(self.FFT_POINTS)
        self.pro_smooth = 0.45
        self.immer_data = np.zeros(self.FFT_POINTS)
        self.immer_smooth = 0.25
        self.HISTORY_LEN = 300
        self.waterfall_history = np.zeros((self.HISTORY_LEN, self.FFT_POINTS))
        self.rot_angle = 0.0
        
        self.init_ui()
        
        self.playback_timer = QTimer()
        self.playback_timer.setInterval(16) 
        self.playback_timer.timeout.connect(self.update_playback_frame)

        self.net_worker = NetworkWorker()
        self.net_worker.data_received.connect(self.handle_incoming_data)
        self.audio_worker = None

    def init_ui(self):
        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        main_layout = QVBoxLayout()
        main_layout.setContentsMargins(0, 0, 0, 0)
        main_layout.setSpacing(0)
        main_widget.setLayout(main_layout)

        # Top Panel
        top_panel = QWidget()
        top_panel.setFixedHeight(80)
        top_panel.setStyleSheet("background-color: #181818; border-bottom: 1px solid #333;")
        top_layout = QHBoxLayout()
        top_layout.setContentsMargins(15, 10, 15, 10)
        top_layout.setSpacing(20)
        top_panel.setLayout(top_layout)

        # CONTROL
        grp_ctrl = QGroupBox("CONTROL")
        grp_ctrl.setFixedWidth(200)
        l_ctrl = QHBoxLayout()
        l_ctrl.setContentsMargins(8, 8, 8, 8)
        self.lbl_port = QLabel(f"Port: {UDP_LISTEN_PORT}") 
        self.btn_connect = QPushButton("Start Listen")
        self.btn_connect.setObjectName("BtnConnect")
        self.btn_connect.setCheckable(True)
        self.btn_connect.clicked.connect(self.toggle_master_switch) 
        l_ctrl.addWidget(self.lbl_port)
        l_ctrl.addWidget(self.btn_connect)
        grp_ctrl.setLayout(l_ctrl)
        top_layout.addWidget(grp_ctrl)

        # INPUT SOURCE
        grp_input = QGroupBox("INPUT SOURCE")
        grp_input.setFixedWidth(240)
        l_input = QHBoxLayout()
        l_input.setContentsMargins(8, 8, 8, 8)
        self.combo_devices = QComboBox()
        self.combo_devices.setMinimumWidth(200)
        self.refresh_audio_sources() 
        l_input.addWidget(self.combo_devices)
        grp_input.setLayout(l_input)
        top_layout.addWidget(grp_input)

        # DATA
        grp_record = QGroupBox("DATA")
        grp_record.setFixedWidth(220)
        l_record = QHBoxLayout()
        l_record.setContentsMargins(8, 8, 8, 8)
        self.btn_record = QPushButton("REC")
        self.btn_record.setObjectName("BtnRecord")
        self.btn_record.setCheckable(True)
        self.btn_record.clicked.connect(self.toggle_record)
        self.btn_pause = QPushButton("Pause")
        self.btn_pause.setCheckable(True)
        self.btn_pause.clicked.connect(self.toggle_pause)
        self.btn_load = QPushButton("Load")
        self.btn_load.clicked.connect(self.load_and_play)
        l_record.addWidget(self.btn_record)
        l_record.addWidget(self.btn_pause)
        l_record.addWidget(self.btn_load)
        grp_record.setLayout(l_record)
        top_layout.addWidget(grp_record)

        top_layout.addStretch()
        self.lbl_title = QLabel("PYNQ-Z2 AUDIO ANALYZER")
        self.lbl_title.setObjectName("MainTitle")
        self.lbl_title.setAlignment(Qt.AlignCenter)
        top_layout.addWidget(self.lbl_title)
        top_layout.addStretch()

        # Right
        right_container = QWidget()
        l_right = QHBoxLayout()
        l_right.setContentsMargins(0, 0, 0, 0)
        l_right.setSpacing(10)
        right_container.setLayout(l_right)
        
        self.btn_analyze = QPushButton("实时音频分类 🎵")
        self.btn_analyze.setObjectName("BtnAnalyze")
        self.btn_analyze.setFixedHeight(36)
        self.btn_analyze.setFixedWidth(140)
        self.btn_analyze.setCheckable(True) 
        self.btn_analyze.clicked.connect(self.start_analysis_process)

        self.btn_mode = QPushButton("✨ 沉浸模式")
        self.btn_mode.setObjectName("BtnImmersion")
        self.btn_mode.setFixedHeight(36)
        self.btn_mode.setFixedWidth(120)
        self.btn_mode.clicked.connect(self.toggle_mode)
        l_right.addWidget(self.btn_analyze)
        l_right.addWidget(self.btn_mode)
        top_layout.addWidget(right_container)
        main_layout.addWidget(top_panel)

        # Stack
        self.stack = QStackedWidget()
        main_layout.addWidget(self.stack)
        self.pro_widget = self.init_pro_mode_ui()
        self.immer_widget = self.init_immersion_mode_ui()
        self.stack.addWidget(self.pro_widget)
        self.stack.addWidget(self.immer_widget)
        self.stack.setCurrentIndex(0)

    def refresh_audio_sources(self):
        self.combo_devices.clear()
        self.combo_devices.addItem("🌐 Network (VB-Cable Stereo)", -1) 
        try:
            devices = sd.query_devices()
            for i, dev in enumerate(devices):
                if dev['max_input_channels'] > 0:
                    name = dev['name'][:25]
                    self.combo_devices.addItem(f"🎤 {i}: {name}", i)
            self.combo_devices.setCurrentIndex(0)
        except Exception as e:
            print(f"Device query error: {e}")

    def toggle_master_switch(self):
        if self.btn_connect.isChecked():
            self.combo_devices.setEnabled(False)
            source_id = self.combo_devices.currentData()
            
            if source_id == -1:
                # --- Network Mode ---
                if not self.net_worker.isRunning():
                    self.net_worker.start()
                suc, msg = self.net_worker.start_server()
                
                if suc:
                    cable_idx = None
                    dev_name = ""
                    try:
                        all_devices = sd.query_devices()
                        for dev in all_devices:
                            if dev['max_input_channels'] <= 0: continue
                            if "CABLE Output" in dev['name'] and "VB-Audio" in dev['name']:
                                hostapi_info = sd.query_hostapis(dev['hostapi'])
                                if "DirectSound" in hostapi_info['name']:
                                    cable_idx = dev['index']
                                    dev_name = dev['name']
                                    break
                    except Exception: pass

                    if cable_idx is None:
                        QMessageBox.critical(self, "Error", "未找到 VB-Cable (DirectSound) 设备！")
                        self.net_worker.stop_server()
                        self.btn_connect.setChecked(False)
                        self.combo_devices.setEnabled(True)
                        return

                    self.btn_connect.setText("UDP Stream Active")
                    self.statusBar().showMessage(f"UDP 模式: 已挂载 {dev_name} -> PYNQ")
                    
                    if self.audio_worker: self.audio_worker.stop()
                    # Network 增益 1.0
                    self.audio_worker = AudioWorker(device_id=cable_idx, sample_rate=self.SAMPLING_RATE, digital_gain=1.0)
                    self.audio_worker.start()
                else:
                    QMessageBox.critical(self, "Error", msg)
                    self.btn_connect.setChecked(False)
                    self.combo_devices.setEnabled(True)
            else:
                self.start_local_mic(source_id)
                self.btn_connect.setText(f"Mic {source_id} Active")
                self.statusBar().showMessage(f"Mic 模式: 本地预览 + 同步至 PYNQ ({PYNQ_IP})")
        else:
            self.net_worker.stop_server()
            if self.audio_worker:
                self.audio_worker.stop()
                self.audio_worker = None
            self.btn_connect.setText("Start Listen")
            self.combo_devices.setEnabled(True)
            self.statusBar().showMessage("已停止监听")

    def start_local_mic(self, device_idx):
        if self.audio_worker:
            self.audio_worker.stop()
        # Mic 增益 1
        self.audio_worker = AudioWorker(device_id=device_idx, sample_rate=self.SAMPLING_RATE, digital_gain=1.0)
        self.audio_worker.data_received.connect(self.handle_incoming_data)
        self.audio_worker.start()

    def init_pro_mode_ui(self):
        container = QWidget()
        container.setStyleSheet("background-color: #000;")
        container.setLayout(QVBoxLayout())
        container.layout().setContentsMargins(0,0,0,0)
        splitter = QSplitter(Qt.Vertical)
        splitter.setHandleWidth(2)
        splitter.setStyleSheet("QSplitter::handle { background-color: #444; }")

        self.wave_plot = pg.PlotWidget(title="Real-time Spectrum")
        self.wave_plot.showGrid(x=True, y=True, alpha=0.2)
        self.wave_plot.getAxis('bottom').setLabel('Frequency', units='Hz')
        self.wave_plot.getAxis('left').setLabel('Amplitude')
        
        # 1. 先创建曲线
        self.pro_curve = self.wave_plot.plot(self.freq_axis, self.pro_data, pen=pg.mkPen('#00e5ff', width=1), brush=pg.mkBrush(0,229,255,40), fillLevel=0)
        
        # 2. 限制拖动范围
        self.wave_plot.getPlotItem().getViewBox().setLimits(xMin=0, xMax=self.MAX_FREQ, yMin=0)
        
        # 3. 设置范围并禁用自动缩放
        vb = self.wave_plot.getPlotItem().getViewBox()
        vb.enableAutoRange(axis='x', enable=False)
        vb.enableAutoRange(axis='y', enable=False)
        vb.setAutoVisible(x=False, y=False)
        self.wave_plot.setXRange(0, 5000, padding=0)
        self.wave_plot.setYRange(0, 800, padding=0)
        
        # 4. [新增] 峰值检测指示器
        # 红点 (Red Dot)
        self.peak_point = pg.ScatterPlotItem(size=10, pen=pg.mkPen(None), brush=pg.mkBrush(255, 0, 0, 255))
        self.wave_plot.addItem(self.peak_point)
        
        # 文本标签 (Text Label)
        self.peak_text = pg.TextItem(text="", color=(255, 50, 50), anchor=(0.5, 1.5))
        self.peak_text.setFont(QApplication.font()) 
        self.wave_plot.addItem(self.peak_text)

        # 辅助线和光标 (保持原有功能)
        self.vLine = pg.InfiniteLine(angle=90, movable=False, pen=pg.mkPen('#ffff00', width=1, style=Qt.DashLine))
        self.hLine = pg.InfiniteLine(angle=0, movable=False, pen=pg.mkPen('#ffff00', width=1, style=Qt.DashLine))
        self.wave_plot.addItem(self.vLine, ignoreBounds=True)
        self.wave_plot.addItem(self.hLine, ignoreBounds=True)
        self.cursor_label = pg.TextItem(anchor=(0, 1), color="#ffff00")
        self.wave_plot.addItem(self.cursor_label)
        self.proxy = pg.SignalProxy(self.wave_plot.scene().sigMouseMoved, rateLimit=60, slot=self.mouse_moved)

        self.waterfall_plot = pg.PlotWidget()
        self.waterfall_plot.showGrid(x=True, y=False, alpha=0.2)
        self.waterfall_plot.getAxis('bottom').setLabel('Frequency', units='Hz')
        self.waterfall_plot.getPlotItem().getViewBox().setLimits(xMin=0, xMax=self.MAX_FREQ, yMin=0, yMax=self.HISTORY_LEN)
        self.waterfall_plot.setXRange(0, 5000, padding=0)
        self.waterfall_plot.getPlotItem().getViewBox().enableAutoRange(axis='x', enable=False)
        
        self.img_item = pg.ImageItem()
        self.img_item.setLookupTable(pg.colormap.get('inferno').getLookupTable())
        self.waterfall_plot.addItem(self.img_item)
        self.img_item.resetTransform()
        tr = QTransform()
        tr.scale(self.freq_scale, 1)
        self.img_item.setTransform(tr)
        self.wave_plot.setXLink(self.waterfall_plot)
        self.waterfall_plot.setMouseEnabled(x=True, y=False)

        splitter.addWidget(self.wave_plot)
        splitter.addWidget(self.waterfall_plot)
        splitter.setSizes([400, 400])
        container.layout().addWidget(splitter)
        return container

    def init_immersion_mode_ui(self):
        self.immer_plot = pg.PlotWidget()
        self.immer_plot.hideAxis('left')
        self.immer_plot.hideAxis('bottom')
        self.immer_plot.showGrid(x=False, y=False)
        self.immer_plot.setMouseEnabled(x=False, y=False)
        self.immer_plot.setAspectLocked(True)
        self.immer_plot.setRange(xRange=(-600, 600), yRange=(-600, 600))
        
        if os.path.exists("bg.jpg"):
            pixmap = QPixmap("bg.jpg")
            bg_brush = QBrush(pixmap.scaled(self.width(), self.height(), Qt.IgnoreAspectRatio, Qt.SmoothTransformation))
            self.immer_plot.setBackground(bg_brush) 
        else:
            grad_bg = QLinearGradient(0, 0, 0, 1)
            grad_bg.setCoordinateMode(QLinearGradient.ObjectBoundingMode)
            grad_bg.setColorAt(0.0, QColor("#000000"))
            grad_bg.setColorAt(1.0, QColor("#1a0033"))
            self.immer_plot.setBackground(QBrush(grad_bg))
        
        center_img_path = "center.png" 
        if os.path.exists("center.png") or os.path.exists("center.jpg"):
            fpath = "center.png" if os.path.exists("center.png") else "center.jpg"
            center_pix = QPixmap(fpath)
            center_pix = center_pix.transformed(QTransform().scale(1, -1), Qt.SmoothTransformation)
            center_pix = center_pix.scaled(1000, 1000, Qt.KeepAspectRatio, Qt.SmoothTransformation)
            self.center_item = QGraphicsPixmapItem(center_pix)
            self.center_item.setTransformOriginPoint(center_pix.width() / 2, center_pix.height() / 2)
            self.center_item.setPos(-center_pix.width()/2, -center_pix.height()/2)
            self.center_item.setZValue(10)
            self.immer_plot.addItem(self.center_item)

        self.immer_curve = self.immer_plot.plot(pen=pg.mkPen(color='#ff00ff', width=2))
        return self.immer_plot

    def start_analysis_process(self):
        if self.btn_analyze.isChecked():
            self.is_analyzing = True
            self.analysis_buffer = []
            self.btn_analyze.setText("Analyzing...")
            self.statusBar().showMessage("正在采集音频数据进行分析 (约1秒)...")
        else:
            self.is_analyzing = False
            self.btn_analyze.setText("智能音频分析 🎵")
            self.statusBar().showMessage("分析已取消")

    def finalize_analysis(self):
        self.is_analyzing = False
        self.btn_analyze.setChecked(False)
        self.btn_analyze.setText("智能音频分析 🎵")
        self.statusBar().showMessage("分析完成")

        if not self.analysis_buffer: return
        raw_matrix = np.array(self.analysis_buffer)
        avg_spectrum = np.mean(raw_matrix, axis=0) 
        
        idx_bass_end = int(150 / self.freq_scale)    
        idx_mid_end = int(1200 / self.freq_scale)    
        
        energy_bass = np.sum(avg_spectrum[:idx_bass_end])
        energy_mid = np.sum(avg_spectrum[idx_bass_end:idx_mid_end])
        energy_high = np.sum(avg_spectrum[idx_mid_end:])
        energy_total = energy_bass + energy_mid + energy_high

        if energy_total < 300: 
            result = "静音 / 极低底噪 (Silence)"
            detail = "未检测到明显音频信号。"
        else:
            ratio_bass = energy_bass / energy_total
            ratio_mid = energy_mid / energy_total
            ratio_high = energy_high / energy_total
            peak_idx = np.argmax(avg_spectrum)
            peak_freq = self.freq_axis[peak_idx]

            if ratio_mid > 0.5:
                result = "人声 (Voice / Speech)"
                detail = f"中频能量显著 ({ratio_mid:.1%})，符合人声特征。"
            elif ratio_bass > 0.6:
                result = "低音 / 节奏 (Bass / Drum)"
                detail = f"低频能量占主导 ({ratio_bass:.1%})。"
            elif ratio_high > 0.5:
                result = "高频噪声 / 金属乐器 (High Freq)"
                detail = f"高频能量显著 ({ratio_high:.1%})。"
            elif peak_freq < 150: 
                result = "低频主导 (Low Frequency)"
                detail = "能量较分散，但主峰位于低频区。"
            else:
                result = "混合音乐 / 全频段音频 (Music)"
                detail = "各频段能量分布较均匀。"

            msg_box = QMessageBox(self)
            msg_box.setWindowTitle("分析报告")
            msg_box.setText(f"<b>分析结果: {result}</b>")
            msg_box.setInformativeText(
                f"采集帧数: {len(self.analysis_buffer)} 帧\n"
                f"主峰频率: {peak_freq:.1f} Hz\n\n"
                f"低频占比 (<150Hz): {ratio_bass:.1%}\n"
                f"中频占比 (人声段): {ratio_mid:.1%}\n"
                f"高频占比 (>1kHz): {ratio_high:.1%}\n"
                f"详细推断: {detail}"
            )
            msg_box.setIcon(QMessageBox.Information)
            msg_box.exec_()

    def handle_incoming_data(self, data):
        if self.is_playback or self.is_paused: return
        if self.is_analyzing:
            self.analysis_buffer.append(data)
            if len(self.analysis_buffer) >= self.ANALYSIS_FRAMES:
                self.finalize_analysis()
        if self.is_recording: self.recorded_data_buffer.append(data)
        self.update_ui_graphics(data)

    def update_ui_graphics(self, data):
        # 模式判定
        if self.is_immersion_mode:
            self.immer_data = (self.immer_smooth * data) + ((1 - self.immer_smooth) * self.immer_data)
            num_points = 256
            spec_data = self.immer_data[:num_points] 
            full_circle = np.concatenate([spec_data[::-1], spec_data])
            R = 250.0 
            Scale = 0.5 
            self.rot_angle += 0.01
            if self.center_item:
                # 将弧度转换为角度
                rot_degrees = np.degrees(self.rot_angle)
                # 设置图片的旋转角度，方向与频谱一致
                self.center_item.setRotation(rot_degrees)
            angles = np.linspace(0, 2*np.pi, len(full_circle)) + self.rot_angle
            r = R + (full_circle * Scale)
            x = r * np.cos(angles)
            y = r * np.sin(angles)
            x = np.append(x, x[0])
            y = np.append(y, y[0])
            self.immer_curve.setData(x, y)
        else:
            # Professional Mode
            self.pro_data = (self.pro_smooth * data) + ((1 - self.pro_smooth) * self.pro_data)
            self.pro_curve.setData(self.freq_axis, self.pro_data)
            self.waterfall_history = np.roll(self.waterfall_history, 1, axis=0)
            self.waterfall_history[0] = self.pro_data
            img_data = np.ascontiguousarray(self.waterfall_history.T)
            self.img_item.setImage(img_data, autoLevels=False, levels=(10, 120))
            
            # --- [新增] 实时峰值检测 ---
            # 找到当前频谱的最大值索引
            max_idx = np.argmax(self.pro_data)
            max_freq = self.freq_axis[max_idx]
            max_amp = self.pro_data[max_idx]
            
            # 更新红点位置
            self.peak_point.setData([max_freq], [max_amp])
            
            # 更新文本位置和内容 (防止文本跑出边界，可做简单限制)
            self.peak_text.setText(f"Peak: {max_freq:.1f} Hz\nAmp: {max_amp:.1f}")
            self.peak_text.setPos(max_freq, max_amp)
    
    def toggle_record(self):
        self.is_recording = self.btn_record.isChecked()
        if self.is_recording: self.recorded_data_buffer=[]; self.btn_record.setText("Stop"); self.statusBar().showMessage("Recording...")
        else: self.btn_record.setText("REC"); self.save_recorded_data()

    def save_recorded_data(self):
        if not self.recorded_data_buffer: return
        f, _ = QFileDialog.getSaveFileName(self, "Save", "", "Numpy(*.npy);;CSV(*.csv)")
        if f: 
            try: np.save(f, np.array(self.recorded_data_buffer)) if f.endswith('.npy') else np.savetxt(f, np.array(self.recorded_data_buffer), delimiter=',')
            except Exception as e: QMessageBox.critical(self, "Error", str(e))

    def toggle_pause(self): self.is_paused = self.btn_pause.isChecked(); self.btn_pause.setText("Resume" if self.is_paused else "Pause")
    
    def load_and_play(self):
        f, _ = QFileDialog.getOpenFileName(self, "Load", "", "Data(*.npy *.csv)")
        if f:
            try:
                self.playback_data = np.loadtxt(f, delimiter=',') if f.endswith('.csv') else np.load(f)
                self.is_playback=True; self.playback_index=0; self.playback_timer.start()
                self.btn_load.setText("Stop"); self.btn_load.clicked.disconnect(); self.btn_load.clicked.connect(self.stop_playback)
            except Exception as e: QMessageBox.critical(self, "Error", str(e))
    
    def stop_playback(self):
        self.is_playback=False; self.playback_timer.stop(); self.btn_load.setText("Load")
        self.btn_load.clicked.disconnect(); self.btn_load.clicked.connect(self.load_and_play)
    
    def update_playback_frame(self):
        if self.playback_index >= len(self.playback_data): self.stop_playback(); return
        self.update_ui_graphics(self.playback_data[self.playback_index]); self.playback_index+=1

    def toggle_mode(self):
        self.is_immersion_mode = not self.is_immersion_mode
        self.stack.setCurrentIndex(1 if self.is_immersion_mode else 0)
        if self.is_immersion_mode: self.btn_mode.setText("📊 专业模式"); self.lbl_title.setText("")
        else: self.btn_mode.setText("✨ 沉浸模式"); self.lbl_title.setText("PYNQ AUDIO ANALYZER")

    def mouse_moved(self, evt):
        pos = evt[0]
        if self.wave_plot.sceneBoundingRect().contains(pos):
            pt = self.wave_plot.getPlotItem().getViewBox().mapSceneToView(pos)
            self.vLine.setPos(pt.x()); self.hLine.setPos(pt.y())
            self.cursor_label.setText(f"{pt.x():.0f}Hz | {pt.y():.1f}"); self.cursor_label.setPos(pt.x(), pt.y())

if __name__ == '__main__':
    QApplication.setAttribute(Qt.AA_EnableHighDpiScaling)
    QApplication.setAttribute(Qt.AA_UseHighDpiPixmaps)
    app = QApplication(sys.argv)
    window = FFTWindow()
    window.show()
    sys.exit(app.exec_())