# **以下是设计开发的全流程**

## 下面是基本的加载流程（静态加载，也就是手动复制粘贴）

### 1\.使用Vitis HLS生成ip核

·可实现功能：

&nbsp;	1. 硬件电路的 HDL 代码；

&nbsp;	2. AXI-Lite/Full 接口逻辑；

&nbsp;	3. IP 核的描述文件。

eg:

### 2\.使用vivado将ip核配置到PL部分（zynq板子上）生成overlay

·操作概要：

&nbsp;	1. 导入您在 HLS 中生成的 IP 核。 

&nbsp;		您无需单独复制或导入 component.xml，只需将包含它的**顶层 IP 文件夹**添加到 **Vivado** 的 **IP Repository** 中即可。

&nbsp;	2. 将 IP 核拖入 Block Design 框图中。

&nbsp;	3. 连接您的 IP 核：手动将它的 AXI 接口连接到 Zynq Processing System (PS) 的 AXI 互联总线上。 

&nbsp;	4. 连接外部端口：将 IP 核的 I/O 端口（比如连接到 Pmod 接口的引脚）连接到 PL 的外部引脚上。

eg:

### 3\.将生成的overlay导入PS部分

·操作概要：

&nbsp;	1.将vivado生成的文件复制粘贴到SD卡中

&nbsp;		a.复制文件： 将您的 .bit 文件和 .hwh（或 .tcl）文件从 Vivado 工程目录复制出来。

&nbsp;		b.粘贴到 Pynq： 将这两个文件同时上传到 Pynq-Z2 板卡上（直接在 Jupyter Lab 界面上传），并将它们放在同一个目录下。

&nbsp;		关键点： .bit 和 .hwh (或 .tcl) 文件**必须同名**（扩展名除外）**且位于同一目录**，这是 Pynq 库识别 Overlay 的基本要求。

&nbsp;	2.使用指令

&nbsp;		from pynq import Overlay

&nbsp;		ol = Overlay("./my\_project/hardware/my\_overlay.bit")

&nbsp;		注：jupyter运行默认是在.ipynb对应的**那个文件夹**里运行，所以要是直接把上面的 .bit 和 .hwh放到**那个文件夹**中，直接ol = Overlay("my\_overlay.bit")就可以了



