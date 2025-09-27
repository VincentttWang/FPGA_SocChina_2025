BNN-PYNQ
这个项目实现了在PYNQ上部署量化神经网络的任务，目前实现了多种不同精度的量化网络结构：

1 bit weights and 1 bit activation (W1A1) for CNV and LFC
1 bit weights and 2 bit activation (W1A2) for CNV and LFC
2 bit weights and 2 bit activation (W2A2) for CNV
安装
取决于Pynq软件版本的不同，安装方式各有不同。

首先需要打开PYNQ-Z1/Z2板卡上的Linux命令行界面，然后根据不同版本输入如下安装命令：


sudo pip3 install -e 

运行完安装脚本之后就可以在Jupyter界面看到bnn的文件夹

运行Road-Signs路标识别
在bnn文件夹中有一个路标识别的notebook,跟着其中的步骤做就可以了。