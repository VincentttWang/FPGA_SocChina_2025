**Overview**
- `Project Files/basic_overlay`: 简单的基础 overlay 示例，包含参考 IP、示例工程和生成的比特流/硬件交付件。

**Directory Structure**
- `audio_codec_ctrl_v1.0/`: 自定义 AXI-Lite audio codec 控制 IP 源码与 IP 描述（`component.xml`, `src/`, `xgui/`）。
- `audio_test/`: Vivado 工程（`.xpr`）、生成的项目文件和运行目录（`*.runs/`, `*.gen/` 等），用于功能/验证测试。
- `Overlay/`: 示例 overlay 的笔记本与导出的比特流/`.hwh`（`audio.bit`, `audio.hwh`）。
- `notebook/`: Jupyter 笔记本（如 `audio_playback.ipynb`）用于演示和交互测试。
- `vivado/constraints/`: 设计约束文件（`base.xdc`）和与板级约束相关的资源。

**Quick Notes**
- 这个目录提供一个可工作的基础 overlay 和示例工程，方便把自定义 IP（例如 `audio_codec_ctrl_v1.0`）集成到更大的系统中。
- 若要在本地复现：打开 `audio_test/audio_test.xpr` 或直接使用 `Overlay` 目录下的 `audio.bit` 加载到 PYNQ/FPGA 板上进行测试。

