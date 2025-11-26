// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module audio (
  IIC_1_sda_i,
  IIC_1_sda_o,
  IIC_1_sda_t,
  IIC_1_scl_i,
  IIC_1_scl_o,
  IIC_1_scl_t,
  FIXED_IO_mio,
  FIXED_IO_ddr_vrn,
  FIXED_IO_ddr_vrp,
  FIXED_IO_ps_srstb,
  FIXED_IO_ps_clk,
  FIXED_IO_ps_porb,
  DDR_cas_n,
  DDR_cke,
  DDR_ck_n,
  DDR_ck_p,
  DDR_cs_n,
  DDR_reset_n,
  DDR_odt,
  DDR_ras_n,
  DDR_we_n,
  DDR_ba,
  DDR_addr,
  DDR_dm,
  DDR_dq,
  DDR_dqs_n,
  DDR_dqs_p,
  leds_4bits_tri_o,
  sws_2bits_tri_i,
  rgbleds_6bits_tri_o,
  btns_4bits_tri_i,
  bclk,
  lrclk,
  sdata_o,
  codec_address,
  sdata_i,
  audio_clk_10MHz
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SDA_I" *)
  (* X_INTERFACE_MODE = "master IIC_1" *)
  input IIC_1_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SDA_O" *)
  output IIC_1_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SDA_T" *)
  output IIC_1_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SCL_I" *)
  input IIC_1_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SCL_O" *)
  output IIC_1_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 IIC_1 SCL_T" *)
  output IIC_1_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *)
  (* X_INTERFACE_MODE = "master FIXED_IO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *)
  inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *)
  inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *)
  inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *)
  inout FIXED_IO_ps_srstb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *)
  inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *)
  inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *)
  (* X_INTERFACE_MODE = "master DDR" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, CAN_DEBUG false, TIMEPERIOD_PS 1250, MEMORY_TYPE COMPONENTS, DATA_WIDTH 8, CS_ENABLED true, DATA_MASK_ENABLED true, SLOT Single, MEM_ADDR_MAP ROW_COLUMN_BANK, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME TDM, CAS_LATENCY 11, CAS_WRITE_LATENCY 11" *)
  inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *)
  inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *)
  inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *)
  inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *)
  inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *)
  inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *)
  inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *)
  inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *)
  inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *)
  inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *)
  inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *)
  inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *)
  inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *)
  inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *)
  inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds_4bits TRI_O" *)
  (* X_INTERFACE_MODE = "master leds_4bits" *)
  output [3:0]leds_4bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 sws_2bits TRI_I" *)
  (* X_INTERFACE_MODE = "master sws_2bits" *)
  input [1:0]sws_2bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 rgbleds_6bits TRI_O" *)
  (* X_INTERFACE_MODE = "master rgbleds_6bits" *)
  output [5:0]rgbleds_6bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 btns_4bits TRI_I" *)
  (* X_INTERFACE_MODE = "master btns_4bits" *)
  input [3:0]btns_4bits_tri_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output bclk;
  (* X_INTERFACE_IGNORE = "true" *)
  output lrclk;
  (* X_INTERFACE_IGNORE = "true" *)
  output sdata_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]codec_address;
  (* X_INTERFACE_IGNORE = "true" *)
  input sdata_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AUDIO_CLK_10MHZ CLK" *)
  (* X_INTERFACE_MODE = "master CLK.AUDIO_CLK_10MHZ" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AUDIO_CLK_10MHZ, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_10MHz_clk_out1, INSERT_VIP 0" *)
  output audio_clk_10MHz;

  // stub module has no contents

endmodule
