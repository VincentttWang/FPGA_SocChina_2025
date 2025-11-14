# **前置的一些小知识**

###### **0.知乎资料平台**

https://zhuanlan.zhihu.com/p/92935984

###### **1．PYNQ的官网**

https://www.pynq.io/community.html

（这个PYNQ就是用pynq框架直接开发，具体的说就是直接导入官方构建好的硬件系统，然后就可以用python通过一些小学生思想就能完成编程实现你的目的。）

###### **2.PYNQ中文开发教程（写的还不错）\*（我们可以主要看这个）**

https://github.com/louisliuwei/PynqDocs/blob/master/pynq-zhong-wen-zi-liao/01pynqz2-kai-fa-ban-shang-shou.md



PS：1.PYNQ-Z2开发板的PYNQ镜像（他给的链接下不了，用我给的这个）：https://www.pynq.io/boards.html

2.对于这个比赛来说，那个映像基本上应该是够用的了（详情可见这一句：对软件开发者来说，PYNQ框架已经提供了完整的访问FPGA资源的library，让上层应用开发者通过Python编程就可以调用FPGA模块，不需要懂Verilog/VHDL硬件编程就可以享受FPGA可并行计算、接口可方便扩展和可灵活配置带来的诸多好处。）（我感觉挺逆天的，嵌入式设计都快搞成软件开发了）







# **初级开发步骤**

（我觉得可以略过）step1:构建PYNQ的SD映像（就上面PS1的链接下完了考里面）（对于受支持的开发板，PYNQ 镜像以预编译的可下载 SD 卡镜像形式提供，无需重新构建。只有在需要修改 SD 卡内容或针对新开发板时，才需要使用 SD 卡构建流程。）

step2：按照那个中文开发的教程来就行了，直接在jupyter的网页版界面就可以访问到PYNQZ2板卡，应该是写程序直接套他那个start文档的内容就可以开始用了（好像是不需要烧录啥的，写了运行就有，我没用板子试可以先试试）
ps：看完1.2.3.4就可以直接看8上个手


