## model deployment

选定先尝试部署[Xilinx/QNN-MO-PYNQ](https://github.com/Xilinx/QNN-MO-PYNQ)此项目到开发板上

具体部署流程详见该仓库的`README.md`文档

zmx：也可以用知乎写的这个https://zhuanlan.zhihu.com/p/41372775
## 目标

* 按照教程实现在PYNQ-Z2开发板上部署好模型且能在运行测试文件时得到预期结果
* 对源代码文件进行学习，并尝试通过Vitis HLS开发得到对应Overlay部署到开发板上，再使用自行编写的python脚本调用其模块
* 尝试对源代码中部分模块进行优化