// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Nov 27 00:01:45 2025
// Host        : alan-Yilong15-Series-GM5HG0A running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/alan/Learning/FPGA/fpgachina/Audio_migrate/audio_test/audio_test.gen/sources_1/bd/audio/ip/audio_audio_codec_ctrl_0_0/audio_audio_codec_ctrl_0_0_stub.v
// Design      : audio_audio_codec_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "audio_audio_codec_ctrl_0_0,i2s_ctrl,{}" *) (* core_generation_info = "audio_audio_codec_ctrl_0_0,i2s_ctrl,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=audio_codec_ctrl,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=32,C_S_AXI_MIN_SIZE=0x000001FF,C_USE_WSTRB=0,C_DPHASE_TIMEOUT=8,C_BASEADDR=0xFFFFFFFF,C_HIGHADDR=0x00000000,C_FAMILY=zynq,C_NUM_REG=1,C_NUM_MEM=1,C_SLV_AWIDTH=32,C_SLV_DWIDTH=32,C_CODEC_ADDRESS=11}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "package_project" *) (* x_core_info = "i2s_ctrl,Vivado 2024.2" *) 
module audio_audio_codec_ctrl_0_0(bclk, lrclk, sdata_i, sdata_o, codec_address, 
  s_axi_aclk, s_axi_aresetn, s_axi_awaddr, s_axi_awvalid, s_axi_wdata, s_axi_wstrb, 
  s_axi_wvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_rready, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, 
  s_axi_awready)
/* synthesis syn_black_box black_box_pad_pin="bclk,lrclk,sdata_i,sdata_o,codec_address[1:0],s_axi_aresetn,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arvalid,s_axi_rready,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_awready" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */;
  output bclk;
  output lrclk;
  input sdata_i;
  output sdata_o;
  output [1:0]codec_address;
  (* max_fanout = "10000" *) (* sigis = "Clk" *) input s_axi_aclk /* synthesis syn_isclock = 1 */;
  (* max_fanout = "10000" *) (* sigis = "Rst" *) input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  input s_axi_rready;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_awready;
endmodule
