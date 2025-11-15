### 音频处理相关

1. 基于zynq-7020的实时音频处理与分类系统。系统以48kHz的采样率捕获音频信号，在FPGA上通过4096点FFT及双阈值峰值检测算法进行实时频谱分析与特征提取，并依据频谱特征将音频状态划分为人声、音乐或静音。处理结果通过ARM处理器封装后，经由UART接口在上位机实时显示。

   优点：移植性强（zynq-7020）；符合赛题要求；今年的amd自主命题赛道作品

   缺点：没有利用jupyter；没有利用vitis library算子；实现较简单；没有神经网络植入；有概率雷同

> https://github.com/lgddyza/FPGA-Based_Audio_Processing_and_Classification.git



2.**基于紫光同创FPGA的音频处理系统**

> https://univ.ciciec.com/nd.jsp?id=731#_jcp=1

采用紫光同创FPGA实现多种功能的音频信号处理，并对处理后的音频效果进行实时展示、对处理前后的音频频谱进行实时展示，基础的语音处理包含音频去噪、实时人声调整（男中音类型音频调整为女低音类型等）、音频回声消除、音乐消除；提高要求包括：将采集后的音频信号通过紫光同创PCIE或者以太网输入到上位机进行更丰富的实时效果展示，如音频人物画像（性别、年龄、情绪等）、采用卷积神经网络对从FPGA采集后的音频进行分类（爆炸、尖叫、唤醒等功能），并进行声纹识别，并给出系统处理延迟数据（声纹识别、音频分类功能不限于FPGA或者通过FPGA采集传输到上位机实现，但将FPGA处理音频识别、音频分类作为加分项，将处理延迟作为加分项）

优点：可参考资料较多；版本较为先进；符合赛题要求、

缺点：板子不同，移植较困难；资源使用量不知道会不会超标（紫光板子相对pynq性能？）；需重构jupyter和ui

> https://www.gitpp.com/readme/projects0601007
>
> https://github.com/MsaysKid/Pango_Voice_MagicBox_Software
>
> https://www.zhihu.com/question/644349597

> https://www.bilibili.com/video/BV11S421c7WX/?vd_source=9ceec336d5f6cf9bb6dd12d7ed876084
>
> https://www.bilibili.com/video/BV1d86MYdEwh/?vd_source=9ceec336d5f6cf9bb6dd12d7ed876084
>
> https://github.com/diqiushangderen/FPGA-AudioProcessingSystem
>
> https://github.com/MongooseOrion/Audio_Time_Freq_Process_and_Trans
>
> https://blog.csdn.net/m0_69065672/article/details/136589453

> 首先呢，一般要将算法移植到FPGA是需要[定点化处理](https://zhida.zhihu.com/search?content_id=647779988&content_type=Answer&match_order=1&q=定点化处理&zhida_source=entity)的，用于降低延迟，提高速度的。所以需要学习浮点，定点转换，还有各种量化方法。
>
> 其次，信号处理算法（或者算法的部分过程）是可以[流水线优化](https://zhida.zhihu.com/search?content_id=647779988&content_type=Answer&match_order=1&q=流水线优化&zhida_source=entity)的，那么就涉及到算法的逻辑拆分，流水处理，这是算法移植到FPGA的重中之重！
>
> 然后，因为FPGA的并行性，一般可以把算法的部分大规模运算并行处理，例如dsp的[滤波器滑窗乘累加](https://zhida.zhihu.com/search?content_id=647779988&content_type=Answer&match_order=1&q=滤波器滑窗乘累加&zhida_source=entity)
>
> 最后，算法移植的万能流程:
>
> 先要把算法Python或[MATLAB](https://zhida.zhihu.com/search?content_id=647779988&content_type=Answer&match_order=1&q=MATLAB&zhida_source=entity)实现无误。
>
> 然后再决定哪些流程串行，哪些流程可以并行加速，有没有不是定向运行的步骤（比如根据条件跳转执行方式）需要用状态机处理跳转等等，确定好信号输入输出的接口（握手，interrupt，ack等），按步骤划分模块，确定模块间耦合的方式（有没有握手，有没有反压），写成文档
>
> 然后就一个个把模块写[verilog](https://zhida.zhihu.com/search?content_id=647779988&content_type=Answer&match_order=1&q=verilog&zhida_source=entity)实现出来，仿真比对处理结果（用MATLAB辅助检验），然后连接模块，封装接口

> 赛题内容里提到的要求都有现成算法, 而国产fpga估计没法像**xilinx fpga那样调ip**. 这就要求参赛选手要有过硬的算法到rtl的功力. 所以我觉得还是增强一下算法--》rtl的能力.