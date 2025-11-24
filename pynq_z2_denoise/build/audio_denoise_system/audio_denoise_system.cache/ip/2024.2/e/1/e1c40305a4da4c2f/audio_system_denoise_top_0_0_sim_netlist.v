// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Nov 23 20:47:35 2025
// Host        : Vincent_TB14 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ audio_system_denoise_top_0_0_sim_netlist.v
// Design      : audio_system_denoise_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "audio_system_denoise_top_0_0,denoise_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "denoise_top,Vivado 2024.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_control_ARADDR,
    s_axi_control_ARREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWADDR,
    s_axi_control_AWREADY,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_RDATA,
    s_axi_control_RREADY,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_WDATA,
    s_axi_control_WREADY,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    ap_clk,
    ap_rst_n,
    interrupt,
    fft_in_TDATA,
    fft_in_TKEEP,
    fft_in_TLAST,
    fft_in_TREADY,
    fft_in_TSTRB,
    fft_in_TVALID,
    clean_out_TDATA,
    clean_out_TKEEP,
    clean_out_TLAST,
    clean_out_TREADY,
    clean_out_TSTRB,
    clean_out_TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN audio_system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [5:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [5:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:fft_in:clean_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN audio_system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fft_in, TUSER_WIDTH 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN audio_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [63:0]fft_in_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in TKEEP" *) input [7:0]fft_in_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in TLAST" *) input [0:0]fft_in_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in TREADY" *) output fft_in_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in TSTRB" *) input [7:0]fft_in_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fft_in TVALID" *) input fft_in_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 clean_out TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clean_out, TUSER_WIDTH 0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN audio_system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [63:0]clean_out_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 clean_out TKEEP" *) output [7:0]clean_out_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 clean_out TLAST" *) output [0:0]clean_out_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 clean_out TREADY" *) input clean_out_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 clean_out TSTRB" *) output [7:0]clean_out_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 clean_out TVALID" *) output clean_out_TVALID;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]clean_out_TDATA;
  wire [7:0]clean_out_TKEEP;
  wire [0:0]clean_out_TLAST;
  wire clean_out_TREADY;
  wire [7:0]clean_out_TSTRB;
  wire clean_out_TVALID;
  wire [63:0]fft_in_TDATA;
  wire [0:0]fft_in_TLAST;
  wire fft_in_TREADY;
  wire fft_in_TVALID;
  wire interrupt;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [23:0]\^s_axi_control_RDATA ;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [31:24]NLW_inst_s_axi_control_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RDATA[31] = \<const0> ;
  assign s_axi_control_RDATA[30] = \<const0> ;
  assign s_axi_control_RDATA[29] = \<const0> ;
  assign s_axi_control_RDATA[28] = \<const0> ;
  assign s_axi_control_RDATA[27] = \<const0> ;
  assign s_axi_control_RDATA[26] = \<const0> ;
  assign s_axi_control_RDATA[25] = \<const0> ;
  assign s_axi_control_RDATA[24] = \<const0> ;
  assign s_axi_control_RDATA[23:0] = \^s_axi_control_RDATA [23:0];
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .clean_out_TDATA(clean_out_TDATA),
        .clean_out_TKEEP(clean_out_TKEEP),
        .clean_out_TLAST(clean_out_TLAST),
        .clean_out_TREADY(clean_out_TREADY),
        .clean_out_TSTRB(clean_out_TSTRB),
        .clean_out_TVALID(clean_out_TVALID),
        .fft_in_TDATA(fft_in_TDATA),
        .fft_in_TKEEP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fft_in_TLAST(fft_in_TLAST),
        .fft_in_TREADY(fft_in_TREADY),
        .fft_in_TSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fft_in_TVALID(fft_in_TVALID),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR({s_axi_control_AWADDR[5:2],1'b0,1'b0}),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA({NLW_inst_s_axi_control_RDATA_UNCONNECTED[31:24],\^s_axi_control_RDATA }),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[23:0]}),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB({1'b0,s_axi_control_WSTRB[2:0]}),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "6" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top
   (s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    ap_clk,
    ap_rst_n,
    interrupt,
    fft_in_TDATA,
    fft_in_TKEEP,
    fft_in_TSTRB,
    fft_in_TLAST,
    clean_out_TDATA,
    clean_out_TKEEP,
    clean_out_TSTRB,
    clean_out_TLAST,
    fft_in_TVALID,
    fft_in_TREADY,
    clean_out_TVALID,
    clean_out_TREADY);
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [5:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input [63:0]fft_in_TDATA;
  input [7:0]fft_in_TKEEP;
  input [7:0]fft_in_TSTRB;
  input [0:0]fft_in_TLAST;
  output [63:0]clean_out_TDATA;
  output [7:0]clean_out_TKEEP;
  output [7:0]clean_out_TSTRB;
  output [0:0]clean_out_TLAST;
  input fft_in_TVALID;
  output fft_in_TREADY;
  output clean_out_TVALID;
  input clean_out_TREADY;

  wire \<const0> ;
  wire Block_entry_frame_counter_wr_proc_U0_ap_start;
  wire Block_entry_frame_counter_wr_proc_U0_n_0;
  wire Block_entry_frame_counter_wr_proc_U0_n_2;
  wire Block_entry_frame_counter_wr_proc_U0_n_3;
  wire Block_entry_frame_counter_wr_proc_U0_n_6;
  wire alpha_c_empty_n;
  wire alpha_c_full_n;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state2_3;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_sig_allocacmp_i1_load1;
  wire ap_start;
  wire ap_sync_axi_to_internal_U0_ap_ready;
  wire ap_sync_entry_proc_U0_ap_ready;
  wire ap_sync_reg_Block_entry_proc_U0_ap_ready;
  wire ap_sync_reg_axi_to_internal_U0_ap_ready;
  wire ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0;
  wire axi_to_internal_U0_ap_ready;
  wire [64:0]axi_to_internal_U0_stream1_din;
  wire beta_c_U_n_2;
  wire beta_c_empty_n;
  wire [63:0]clean_out_TDATA;
  wire [0:0]clean_out_TLAST;
  wire clean_out_TREADY;
  wire [6:6]\^clean_out_TSTRB ;
  wire clean_out_TVALID;
  wire cmp_i97_loc_empty_n;
  wire cmp_i97_loc_full_n;
  wire compute_magnitude_square_U0_ap_ready;
  wire compute_magnitude_square_U0_ap_start;
  wire compute_magnitude_square_U0_n_1;
  wire compute_magnitude_square_U0_n_11;
  wire compute_magnitude_square_U0_n_14;
  wire compute_magnitude_square_U0_n_15;
  wire compute_magnitude_square_U0_n_16;
  wire compute_magnitude_square_U0_n_17;
  wire compute_magnitude_square_U0_n_18;
  wire compute_magnitude_square_U0_n_19;
  wire compute_magnitude_square_U0_n_20;
  wire compute_magnitude_square_U0_n_21;
  wire compute_magnitude_square_U0_n_22;
  wire compute_magnitude_square_U0_n_23;
  wire compute_magnitude_square_U0_n_24;
  wire compute_magnitude_square_U0_n_25;
  wire compute_magnitude_square_U0_n_26;
  wire compute_magnitude_square_U0_n_27;
  wire compute_magnitude_square_U0_n_28;
  wire compute_magnitude_square_U0_n_3;
  wire compute_magnitude_square_U0_n_5;
  wire compute_magnitude_square_U0_n_6;
  wire compute_magnitude_square_U0_n_7;
  wire compute_magnitude_square_U0_n_9;
  wire compute_magnitude_square_U0_stream2_write;
  wire control_s_axi_U_n_1;
  wire control_s_axi_U_n_14;
  wire control_s_axi_U_n_15;
  wire control_s_axi_U_n_16;
  wire control_s_axi_U_n_6;
  wire empty_n;
  wire empty_n_8;
  wire entry_proc_U0_noise_frame_count_c_write;
  wire [63:0]fft_in_TDATA;
  wire [0:0]fft_in_TLAST;
  wire fft_in_TREADY;
  wire fft_in_TVALID;
  wire \grp_spectral_subtract_fu_262/ap_block_pp0_stage0_11001 ;
  wire \grp_spectral_subtract_fu_262/ap_enable_reg_pp0_iter4 ;
  wire internal_to_axi_U0_ap_ready;
  wire internal_to_axi_U0_ap_start;
  wire internal_to_axi_U0_n_8;
  wire interrupt;
  wire mOutPtr111_out;
  wire [11:0]mOutPtr_reg;
  wire [3:0]noise_frame_count;
  wire noise_frame_count_c_U_n_1;
  wire [3:0]noise_frame_count_c_dout;
  wire noise_frame_count_c_full_n;
  wire p_6_in;
  wire p_8_in;
  wire p_8_in_5;
  wire p_9_in;
  wire pop;
  wire pop_4;
  wire push;
  wire push_1;
  wire push_6;
  wire push__0;
  wire reconstruct_signal_U0_ap_ready;
  wire reconstruct_signal_U0_ap_start;
  wire reconstruct_signal_U0_n_1;
  wire reconstruct_signal_U0_n_11;
  wire reconstruct_signal_U0_n_4;
  wire reconstruct_signal_U0_n_7;
  wire reconstruct_signal_U0_n_8;
  wire reconstruct_signal_U0_stream6_write;
  wire reset_noise;
  wire reset_noise_c_dout;
  wire reset_noise_c_empty_n;
  wire reset_noise_c_full_n;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [5:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [23:0]\^s_axi_control_RDATA ;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire start_for_Block_entry_frame_counter_wr_proc_U0_U_n_2;
  wire start_for_Block_entry_frame_counter_wr_proc_U0_full_n;
  wire start_for_compute_magnitude_square_U0_full_n;
  wire start_for_internal_to_axi_U0_full_n;
  wire start_for_reconstruct_signal_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_0;
  wire start_once_reg_2;
  wire start_once_reg_7;
  wire [64:54]stream1_dout;
  wire stream1_empty_n;
  wire stream1_full_n;
  wire [64:64]stream2_dout;
  wire stream2_empty_n;
  wire stream2_full_n;
  wire stream3_empty_n;
  wire stream3_full_n;
  wire stream4_i_full_n;
  wire stream5_empty_n;
  wire stream5_full_n;
  wire [63:0]stream6_dout;
  wire stream6_empty_n;
  wire stream6_full_n;

  assign clean_out_TKEEP[7] = \^clean_out_TSTRB [6];
  assign clean_out_TKEEP[6] = \^clean_out_TSTRB [6];
  assign clean_out_TKEEP[5] = \^clean_out_TSTRB [6];
  assign clean_out_TKEEP[4] = \^clean_out_TSTRB [6];
  assign clean_out_TKEEP[3] = \^clean_out_TSTRB [6];
  assign clean_out_TKEEP[2] = \^clean_out_TSTRB [6];
  assign clean_out_TKEEP[1] = \^clean_out_TSTRB [6];
  assign clean_out_TKEEP[0] = \^clean_out_TSTRB [6];
  assign clean_out_TSTRB[7] = \^clean_out_TSTRB [6];
  assign clean_out_TSTRB[6] = \^clean_out_TSTRB [6];
  assign clean_out_TSTRB[5] = \^clean_out_TSTRB [6];
  assign clean_out_TSTRB[4] = \^clean_out_TSTRB [6];
  assign clean_out_TSTRB[3] = \^clean_out_TSTRB [6];
  assign clean_out_TSTRB[2] = \^clean_out_TSTRB [6];
  assign clean_out_TSTRB[1] = \^clean_out_TSTRB [6];
  assign clean_out_TSTRB[0] = \^clean_out_TSTRB [6];
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RDATA[31] = \<const0> ;
  assign s_axi_control_RDATA[30] = \<const0> ;
  assign s_axi_control_RDATA[29] = \<const0> ;
  assign s_axi_control_RDATA[28] = \<const0> ;
  assign s_axi_control_RDATA[27] = \<const0> ;
  assign s_axi_control_RDATA[26] = \<const0> ;
  assign s_axi_control_RDATA[25] = \<const0> ;
  assign s_axi_control_RDATA[24] = \<const0> ;
  assign s_axi_control_RDATA[23:0] = \^s_axi_control_RDATA [23:0];
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc Block_entry_frame_counter_wr_proc_U0
       (.Q(Block_entry_frame_counter_wr_proc_U0_n_2),
        .\ap_CS_fsm_reg[0]_0 (Block_entry_frame_counter_wr_proc_U0_n_0),
        .\ap_CS_fsm_reg[50]_0 (Block_entry_frame_counter_wr_proc_U0_n_3),
        .ap_block_pp0_stage0_11001(\grp_spectral_subtract_fu_262/ap_block_pp0_stage0_11001 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1_reg(Block_entry_frame_counter_wr_proc_U0_n_6),
        .ap_enable_reg_pp0_iter4(\grp_spectral_subtract_fu_262/ap_enable_reg_pp0_iter4 ),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .compute_magnitude_square_U0_stream2_write(compute_magnitude_square_U0_stream2_write),
        .full_n_reg(ap_CS_fsm_state2),
        .full_n_reg_0(ap_CS_fsm_state2_3),
        .\noise_frame_count_read_reg_372_reg[0]_0 (noise_frame_count_c_U_n_1),
        .out(noise_frame_count_c_dout),
        .p_6_in(p_6_in),
        .p_9_in(p_9_in),
        .reconstruct_signal_U0_stream6_write(reconstruct_signal_U0_stream6_write),
        .reset_noise_c_dout(reset_noise_c_dout),
        .stream3_empty_n(stream3_empty_n),
        .stream3_full_n(stream3_full_n),
        .stream4_i_full_n(stream4_i_full_n),
        .stream5_empty_n(stream5_empty_n),
        .stream5_full_n(stream5_full_n));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S alpha_c_U
       (.SR(ap_rst_n_inv),
        .alpha_c_empty_n(alpha_c_empty_n),
        .alpha_c_full_n(alpha_c_full_n),
        .ap_clk(ap_clk),
        .entry_proc_U0_noise_frame_count_c_write(entry_proc_U0_noise_frame_count_c_write),
        .full_n_reg_0(Block_entry_frame_counter_wr_proc_U0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_sync_reg_Block_entry_proc_U0_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_14),
        .Q(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_sync_reg_axi_to_internal_U0_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_16),
        .Q(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_sync_reg_entry_proc_U0_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_15),
        .Q(ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_axi_to_internal axi_to_internal_U0
       (.E(push),
        .SR(ap_rst_n_inv),
        .ack_in_t_reg(fft_in_TREADY),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .ap_sync_axi_to_internal_U0_ap_ready(ap_sync_axi_to_internal_U0_ap_ready),
        .ap_sync_reg_axi_to_internal_U0_ap_ready(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .axi_to_internal_U0_ap_ready(axi_to_internal_U0_ap_ready),
        .axi_to_internal_U0_stream1_din(axi_to_internal_U0_stream1_din),
        .fft_in_TDATA(fft_in_TDATA),
        .fft_in_TLAST(fft_in_TLAST),
        .fft_in_TVALID(fft_in_TVALID),
        .mOutPtr111_out(mOutPtr111_out),
        .pop(pop),
        .start_for_compute_magnitude_square_U0_full_n(start_for_compute_magnitude_square_U0_full_n),
        .start_once_reg(start_once_reg_0),
        .stream1_full_n(stream1_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S_0 beta_c_U
       (.SR(ap_rst_n_inv),
        .alpha_c_full_n(alpha_c_full_n),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .ap_sync_entry_proc_U0_ap_ready(ap_sync_entry_proc_U0_ap_ready),
        .ap_sync_reg_Block_entry_proc_U0_ap_ready(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .ap_sync_reg_entry_proc_U0_ap_ready_reg(beta_c_U_n_2),
        .beta_c_empty_n(beta_c_empty_n),
        .cmp_i97_loc_full_n(cmp_i97_loc_full_n),
        .entry_proc_U0_noise_frame_count_c_write(entry_proc_U0_noise_frame_count_c_write),
        .full_n_reg_0(Block_entry_frame_counter_wr_proc_U0_n_0),
        .full_n_reg_1(control_s_axi_U_n_6),
        .int_ap_start_reg(ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0),
        .noise_frame_count_c_full_n(noise_frame_count_c_full_n),
        .reset_noise_c_full_n(reset_noise_c_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S cmp_i97_loc_U
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .ap_sync_reg_Block_entry_proc_U0_ap_ready(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .cmp_i97_loc_empty_n(cmp_i97_loc_empty_n),
        .cmp_i97_loc_full_n(cmp_i97_loc_full_n),
        .full_n_reg_0(Block_entry_frame_counter_wr_proc_U0_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_compute_magnitude_square compute_magnitude_square_U0
       (.Block_entry_frame_counter_wr_proc_U0_ap_start(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .DI(compute_magnitude_square_U0_n_14),
        .E(compute_magnitude_square_U0_n_1),
        .O({compute_magnitude_square_U0_n_15,compute_magnitude_square_U0_n_16,compute_magnitude_square_U0_n_17,compute_magnitude_square_U0_n_18}),
        .Q({ap_CS_fsm_state2,compute_magnitude_square_U0_n_3}),
        .\ap_CS_fsm_reg[0]_0 (compute_magnitude_square_U0_n_5),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(compute_magnitude_square_U0_n_27),
        .ap_rst_n_inv(ap_rst_n_inv),
        .compute_magnitude_square_U0_ap_ready(compute_magnitude_square_U0_ap_ready),
        .compute_magnitude_square_U0_ap_start(compute_magnitude_square_U0_ap_start),
        .compute_magnitude_square_U0_stream2_write(compute_magnitude_square_U0_stream2_write),
        .dout_vld_reg(compute_magnitude_square_U0_n_7),
        .dout_vld_reg_0(compute_magnitude_square_U0_n_9),
        .dout_vld_reg_1(compute_magnitude_square_U0_n_11),
        .dout_vld_reg_2(compute_magnitude_square_U0_n_28),
        .empty_n(empty_n),
        .int_ap_idle_reg(reconstruct_signal_U0_n_7),
        .int_ap_idle_reg_0(Block_entry_frame_counter_wr_proc_U0_n_2),
        .mOutPtr_reg(mOutPtr_reg),
        .\mOutPtr_reg[10] ({compute_magnitude_square_U0_n_23,compute_magnitude_square_U0_n_24,compute_magnitude_square_U0_n_25,compute_magnitude_square_U0_n_26}),
        .\mOutPtr_reg[7] ({compute_magnitude_square_U0_n_19,compute_magnitude_square_U0_n_20,compute_magnitude_square_U0_n_21,compute_magnitude_square_U0_n_22}),
        .mOutPtr_reg_0_sp_1(Block_entry_frame_counter_wr_proc_U0_n_6),
        .\num_data_cnt_reg[0] (push),
        .p_8_in(p_8_in),
        .pop(pop),
        .pop_0(pop_4),
        .push(push_1),
        .reconstruct_signal_U0_stream6_write(reconstruct_signal_U0_stream6_write),
        .start_for_reconstruct_signal_U0_full_n(start_for_reconstruct_signal_U0_full_n),
        .start_once_reg(start_once_reg_2),
        .start_once_reg_reg_0(compute_magnitude_square_U0_n_6),
        .stream1_empty_n(stream1_empty_n),
        .stream2_empty_n(stream2_empty_n),
        .stream2_full_n(stream2_full_n),
        .stream3_empty_n(stream3_empty_n),
        .stream3_full_n(stream3_full_n),
        .stream4_i_full_n(stream4_i_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_control_s_axi control_s_axi_U
       (.\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q(noise_frame_count),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(control_s_axi_U_n_14),
        .ap_rst_n_1(control_s_axi_U_n_15),
        .ap_rst_n_2(control_s_axi_U_n_16),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .ap_sync_axi_to_internal_U0_ap_ready(ap_sync_axi_to_internal_U0_ap_ready),
        .ap_sync_entry_proc_U0_ap_ready(ap_sync_entry_proc_U0_ap_ready),
        .ap_sync_reg_Block_entry_proc_U0_ap_ready(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .ap_sync_reg_axi_to_internal_U0_ap_ready(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .ap_sync_reg_entry_proc_U0_ap_ready_reg(control_s_axi_U_n_6),
        .auto_restart_status_reg_0(control_s_axi_U_n_1),
        .axi_to_internal_U0_ap_ready(axi_to_internal_U0_ap_ready),
        .cmp_i97_loc_full_n(cmp_i97_loc_full_n),
        .int_ap_idle_reg_0(compute_magnitude_square_U0_n_5),
        .int_ap_idle_reg_1(compute_magnitude_square_U0_n_6),
        .int_ap_start_reg_0(beta_c_U_n_2),
        .int_task_ap_done_reg_0(internal_to_axi_U0_n_8),
        .internal_to_axi_U0_ap_start(internal_to_axi_U0_ap_start),
        .interrupt(interrupt),
        .\mOutPtr_reg[0] (ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0),
        .reconstruct_signal_U0_ap_start(reconstruct_signal_U0_ap_start),
        .reset_noise(reset_noise),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR[5:2]),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(\^s_axi_control_RDATA ),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA[23:0]),
        .s_axi_control_WSTRB(s_axi_control_WSTRB[2:0]),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .start_for_Block_entry_frame_counter_wr_proc_U0_full_n(start_for_Block_entry_frame_counter_wr_proc_U0_full_n),
        .start_for_compute_magnitude_square_U0_full_n(start_for_compute_magnitude_square_U0_full_n),
        .start_for_internal_to_axi_U0_full_n(start_for_internal_to_axi_U0_full_n),
        .start_once_reg(start_once_reg),
        .start_once_reg_0(start_once_reg_7),
        .start_once_reg_1(start_once_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_entry_proc entry_proc_U0
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .start_once_reg(start_once_reg),
        .start_once_reg_reg_0(start_for_Block_entry_frame_counter_wr_proc_U0_U_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_internal_to_axi internal_to_axi_U0
       (.D(stream6_dout),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_init(ap_loop_init),
        .ap_ready_int(ap_ready_int),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_i1_load1(ap_sig_allocacmp_i1_load1),
        .auto_restart_status_reg(internal_to_axi_U0_n_8),
        .clean_out_TDATA(clean_out_TDATA),
        .clean_out_TLAST(clean_out_TLAST),
        .clean_out_TREADY(clean_out_TREADY),
        .clean_out_TSTRB(\^clean_out_TSTRB ),
        .clean_out_TVALID(clean_out_TVALID),
        .int_task_ap_done_reg(control_s_axi_U_n_1),
        .internal_to_axi_U0_ap_ready(internal_to_axi_U0_ap_ready),
        .internal_to_axi_U0_ap_start(internal_to_axi_U0_ap_start),
        .stream6_empty_n(stream6_empty_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S noise_frame_count_c_U
       (.Block_entry_frame_counter_wr_proc_U0_ap_start(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .\addr_reg[0]_0 (Block_entry_frame_counter_wr_proc_U0_n_0),
        .alpha_c_empty_n(alpha_c_empty_n),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .beta_c_empty_n(beta_c_empty_n),
        .cmp_i97_loc_empty_n(cmp_i97_loc_empty_n),
        .empty_n_reg_0(noise_frame_count_c_U_n_1),
        .entry_proc_U0_noise_frame_count_c_write(entry_proc_U0_noise_frame_count_c_write),
        .in(noise_frame_count),
        .noise_frame_count_c_full_n(noise_frame_count_c_full_n),
        .out(noise_frame_count_c_dout),
        .reset_noise_c_empty_n(reset_noise_c_empty_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_reconstruct_signal reconstruct_signal_U0
       (.E(reconstruct_signal_U0_n_1),
        .Q({ap_CS_fsm_state2_3,reconstruct_signal_U0_n_7}),
        .ap_clk(ap_clk),
        .ap_ready_int(ap_ready_int),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(reconstruct_signal_U0_n_11),
        .ap_rst_n_inv(ap_rst_n_inv),
        .dout_vld_reg(reconstruct_signal_U0_n_4),
        .empty_n(empty_n_8),
        .p_8_in(p_8_in_5),
        .pop(pop_4),
        .push(push_6),
        .push_0(push_1),
        .reconstruct_signal_U0_ap_ready(reconstruct_signal_U0_ap_ready),
        .reconstruct_signal_U0_ap_start(reconstruct_signal_U0_ap_start),
        .reconstruct_signal_U0_stream6_write(reconstruct_signal_U0_stream6_write),
        .start_for_internal_to_axi_U0_full_n(start_for_internal_to_axi_U0_full_n),
        .start_once_reg(start_once_reg_7),
        .start_once_reg_reg_0(reconstruct_signal_U0_n_8),
        .stream2_empty_n(stream2_empty_n),
        .stream5_empty_n(stream5_empty_n),
        .stream6_empty_n(stream6_empty_n),
        .stream6_full_n(stream6_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_1 reset_noise_c_U
       (.\addr_reg[0]_0 (Block_entry_frame_counter_wr_proc_U0_n_0),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .entry_proc_U0_noise_frame_count_c_write(entry_proc_U0_noise_frame_count_c_write),
        .reset_noise(reset_noise),
        .reset_noise_c_dout(reset_noise_c_dout),
        .reset_noise_c_empty_n(reset_noise_c_empty_n),
        .reset_noise_c_full_n(reset_noise_c_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_Block_entry_frame_counter_wr_proc_U0 start_for_Block_entry_frame_counter_wr_proc_U0_U
       (.Block_entry_frame_counter_wr_proc_U0_ap_start(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .entry_proc_U0_noise_frame_count_c_write(entry_proc_U0_noise_frame_count_c_write),
        .full_n_reg_0(start_for_Block_entry_frame_counter_wr_proc_U0_U_n_2),
        .\mOutPtr_reg[0]_0 (Block_entry_frame_counter_wr_proc_U0_n_3),
        .\mOutPtr_reg[0]_1 (control_s_axi_U_n_6),
        .start_for_Block_entry_frame_counter_wr_proc_U0_full_n(start_for_Block_entry_frame_counter_wr_proc_U0_full_n),
        .start_once_reg(start_once_reg),
        .start_once_reg_reg(ap_sync_reg_entry_proc_U0_ap_ready_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_compute_magnitude_square_U0 start_for_compute_magnitude_square_U0_U
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_start(ap_start),
        .ap_sync_reg_axi_to_internal_U0_ap_ready(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .compute_magnitude_square_U0_ap_ready(compute_magnitude_square_U0_ap_ready),
        .compute_magnitude_square_U0_ap_start(compute_magnitude_square_U0_ap_start),
        .start_for_compute_magnitude_square_U0_full_n(start_for_compute_magnitude_square_U0_full_n),
        .start_once_reg(start_once_reg_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_internal_to_axi_U0 start_for_internal_to_axi_U0_U
       (.ap_clk(ap_clk),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ap_sig_allocacmp_i1_load1(ap_sig_allocacmp_i1_load1),
        .internal_to_axi_U0_ap_ready(internal_to_axi_U0_ap_ready),
        .internal_to_axi_U0_ap_start(internal_to_axi_U0_ap_start),
        .push__0(push__0),
        .reconstruct_signal_U0_ap_start(reconstruct_signal_U0_ap_start),
        .start_for_internal_to_axi_U0_full_n(start_for_internal_to_axi_U0_full_n),
        .start_once_reg(start_once_reg_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_reconstruct_signal_U0 start_for_reconstruct_signal_U0_U
       (.ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .compute_magnitude_square_U0_ap_start(compute_magnitude_square_U0_ap_start),
        .push__0(push__0),
        .reconstruct_signal_U0_ap_ready(reconstruct_signal_U0_ap_ready),
        .reconstruct_signal_U0_ap_start(reconstruct_signal_U0_ap_start),
        .start_for_internal_to_axi_U0_full_n(start_for_internal_to_axi_U0_full_n),
        .start_for_reconstruct_signal_U0_full_n(start_for_reconstruct_signal_U0_full_n),
        .start_once_reg(start_once_reg_2),
        .start_once_reg_0(start_once_reg_7));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A stream1_U
       (.DIADI(stream1_dout),
        .E(push),
        .Q(compute_magnitude_square_U0_n_3),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_to_internal_U0_stream1_din(axi_to_internal_U0_stream1_din),
        .compute_magnitude_square_U0_stream2_write(compute_magnitude_square_U0_stream2_write),
        .dout_vld_reg_0(compute_magnitude_square_U0_n_6),
        .empty_n(empty_n),
        .mOutPtr111_out(mOutPtr111_out),
        .\mOutPtr_reg[0]_0 (compute_magnitude_square_U0_n_11),
        .mem_reg(compute_magnitude_square_U0_n_27),
        .\num_data_cnt_reg[0]_0 (compute_magnitude_square_U0_n_9),
        .p_8_in(p_8_in),
        .pop(pop),
        .stream1_empty_n(stream1_empty_n),
        .stream1_full_n(stream1_full_n),
        .stream2_full_n(stream2_full_n),
        .stream3_full_n(stream3_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A stream2_U
       (.DI(compute_magnitude_square_U0_n_14),
        .DIADI(stream1_dout),
        .DOBDO(stream2_dout),
        .E(pop_4),
        .O({compute_magnitude_square_U0_n_15,compute_magnitude_square_U0_n_16,compute_magnitude_square_U0_n_17,compute_magnitude_square_U0_n_18}),
        .Q(reconstruct_signal_U0_n_7),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .dout_vld_reg_0(reconstruct_signal_U0_n_8),
        .empty_n(empty_n_8),
        .mOutPtr_reg(mOutPtr_reg),
        .\mOutPtr_reg[0]_0 (reconstruct_signal_U0_n_4),
        .\mOutPtr_reg[11]_0 ({compute_magnitude_square_U0_n_23,compute_magnitude_square_U0_n_24,compute_magnitude_square_U0_n_25,compute_magnitude_square_U0_n_26}),
        .\mOutPtr_reg[7]_0 ({compute_magnitude_square_U0_n_19,compute_magnitude_square_U0_n_20,compute_magnitude_square_U0_n_21,compute_magnitude_square_U0_n_22}),
        .mem_reg_3(reconstruct_signal_U0_n_11),
        .\num_data_cnt_reg[0]_0 (compute_magnitude_square_U0_n_7),
        .\num_data_cnt_reg[3]_0 (compute_magnitude_square_U0_n_28),
        .push(push_1),
        .reconstruct_signal_U0_stream6_write(reconstruct_signal_U0_stream6_write),
        .stream2_empty_n(stream2_empty_n),
        .stream2_full_n(stream2_full_n),
        .stream5_empty_n(stream5_empty_n),
        .stream6_full_n(stream6_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x stream3_U
       (.E(compute_magnitude_square_U0_n_1),
        .Q(ap_CS_fsm_state2),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .compute_magnitude_square_U0_stream2_write(compute_magnitude_square_U0_stream2_write),
        .\mOutPtr_reg[4]_0 (Block_entry_frame_counter_wr_proc_U0_n_6),
        .p_6_in(p_6_in),
        .stream3_empty_n(stream3_empty_n),
        .stream3_full_n(stream3_full_n),
        .stream4_i_full_n(stream4_i_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x_2 stream5_U
       (.Q(ap_CS_fsm_state2_3),
        .ap_block_pp0_stage0_11001(\grp_spectral_subtract_fu_262/ap_block_pp0_stage0_11001 ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4(\grp_spectral_subtract_fu_262/ap_enable_reg_pp0_iter4 ),
        .ap_rst_n_inv(ap_rst_n_inv),
        .p_9_in(p_9_in),
        .reconstruct_signal_U0_stream6_write(reconstruct_signal_U0_stream6_write),
        .stream5_empty_n(stream5_empty_n),
        .stream5_full_n(stream5_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_3 stream6_U
       (.D(stream6_dout),
        .DOBDO(stream2_dout),
        .E(reconstruct_signal_U0_n_1),
        .ap_clk(ap_clk),
        .ap_ready_int(ap_ready_int),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .p_8_in(p_8_in_5),
        .push(push_6),
        .stream6_empty_n(stream6_empty_n),
        .stream6_full_n(stream6_full_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc
   (\ap_CS_fsm_reg[0]_0 ,
    ap_rst_n_inv,
    Q,
    \ap_CS_fsm_reg[50]_0 ,
    ap_block_pp0_stage0_11001,
    p_6_in,
    ap_enable_reg_pp0_iter1_reg,
    stream4_i_full_n,
    p_9_in,
    ap_enable_reg_pp0_iter4,
    reset_noise_c_dout,
    ap_clk,
    stream3_empty_n,
    stream3_full_n,
    compute_magnitude_square_U0_stream2_write,
    full_n_reg,
    stream5_full_n,
    stream5_empty_n,
    reconstruct_signal_U0_stream6_write,
    full_n_reg_0,
    ap_rst_n,
    \noise_frame_count_read_reg_372_reg[0]_0 ,
    out);
  output \ap_CS_fsm_reg[0]_0 ;
  output ap_rst_n_inv;
  output [0:0]Q;
  output \ap_CS_fsm_reg[50]_0 ;
  output ap_block_pp0_stage0_11001;
  output p_6_in;
  output ap_enable_reg_pp0_iter1_reg;
  output stream4_i_full_n;
  output p_9_in;
  output ap_enable_reg_pp0_iter4;
  input reset_noise_c_dout;
  input ap_clk;
  input stream3_empty_n;
  input stream3_full_n;
  input compute_magnitude_square_U0_stream2_write;
  input [0:0]full_n_reg;
  input stream5_full_n;
  input stream5_empty_n;
  input reconstruct_signal_U0_stream6_write;
  input [0:0]full_n_reg_0;
  input ap_rst_n;
  input \noise_frame_count_read_reg_372_reg[0]_0 ;
  input [3:0]out;

  wire [0:0]Q;
  wire [3:3]add_ln324_fu_327_p2;
  wire \ap_CS_fsm[1]_i_10_n_0 ;
  wire \ap_CS_fsm[1]_i_11_n_0 ;
  wire \ap_CS_fsm[1]_i_13_n_0 ;
  wire \ap_CS_fsm[1]_i_14_n_0 ;
  wire \ap_CS_fsm[1]_i_16_n_0 ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm[1]_i_3_n_0 ;
  wire \ap_CS_fsm[1]_i_5_n_0 ;
  wire \ap_CS_fsm[1]_i_6_n_0 ;
  wire \ap_CS_fsm[1]_i_7_n_0 ;
  wire \ap_CS_fsm[1]_i_8_n_0 ;
  wire \ap_CS_fsm[1]_i_9_n_0 ;
  wire \ap_CS_fsm[50]_i_2_n_0 ;
  wire \ap_CS_fsm[6]_i_3_n_0 ;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[50]_0 ;
  wire \ap_CS_fsm_reg_n_0_[10] ;
  wire \ap_CS_fsm_reg_n_0_[11] ;
  wire \ap_CS_fsm_reg_n_0_[12] ;
  wire \ap_CS_fsm_reg_n_0_[13] ;
  wire \ap_CS_fsm_reg_n_0_[14] ;
  wire \ap_CS_fsm_reg_n_0_[15] ;
  wire \ap_CS_fsm_reg_n_0_[16] ;
  wire \ap_CS_fsm_reg_n_0_[17] ;
  wire \ap_CS_fsm_reg_n_0_[18] ;
  wire \ap_CS_fsm_reg_n_0_[19] ;
  wire \ap_CS_fsm_reg_n_0_[20] ;
  wire \ap_CS_fsm_reg_n_0_[21] ;
  wire \ap_CS_fsm_reg_n_0_[22] ;
  wire \ap_CS_fsm_reg_n_0_[23] ;
  wire \ap_CS_fsm_reg_n_0_[24] ;
  wire \ap_CS_fsm_reg_n_0_[25] ;
  wire \ap_CS_fsm_reg_n_0_[26] ;
  wire \ap_CS_fsm_reg_n_0_[27] ;
  wire \ap_CS_fsm_reg_n_0_[28] ;
  wire \ap_CS_fsm_reg_n_0_[29] ;
  wire \ap_CS_fsm_reg_n_0_[30] ;
  wire \ap_CS_fsm_reg_n_0_[31] ;
  wire \ap_CS_fsm_reg_n_0_[32] ;
  wire \ap_CS_fsm_reg_n_0_[33] ;
  wire \ap_CS_fsm_reg_n_0_[34] ;
  wire \ap_CS_fsm_reg_n_0_[35] ;
  wire \ap_CS_fsm_reg_n_0_[36] ;
  wire \ap_CS_fsm_reg_n_0_[37] ;
  wire \ap_CS_fsm_reg_n_0_[38] ;
  wire \ap_CS_fsm_reg_n_0_[39] ;
  wire \ap_CS_fsm_reg_n_0_[40] ;
  wire \ap_CS_fsm_reg_n_0_[41] ;
  wire \ap_CS_fsm_reg_n_0_[42] ;
  wire \ap_CS_fsm_reg_n_0_[43] ;
  wire \ap_CS_fsm_reg_n_0_[44] ;
  wire \ap_CS_fsm_reg_n_0_[45] ;
  wire \ap_CS_fsm_reg_n_0_[46] ;
  wire \ap_CS_fsm_reg_n_0_[47] ;
  wire \ap_CS_fsm_reg_n_0_[48] ;
  wire \ap_CS_fsm_reg_n_0_[6] ;
  wire \ap_CS_fsm_reg_n_0_[7] ;
  wire \ap_CS_fsm_reg_n_0_[8] ;
  wire \ap_CS_fsm_reg_n_0_[9] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state50;
  wire ap_CS_fsm_state51;
  wire ap_CS_fsm_state6;
  wire [50:0]ap_NS_fsm;
  wire ap_block_pp0_stage0_11001;
  wire ap_block_pp0_stage0_11001_1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter4;
  wire [3:0]ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6;
  wire ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire compute_magnitude_square_U0_stream2_write;
  wire \empty_62_reg_411[0]_i_1_n_0 ;
  wire \empty_62_reg_411[0]_i_2_n_0 ;
  wire \empty_62_reg_411_reg_n_0_[0] ;
  wire [3:0]frame_counter;
  wire frame_counter0;
  wire frame_counter_flag_0_i_reg_169;
  wire frame_counter_flag_0_i_reg_1692;
  wire frame_counter_flag_0_i_reg_169221_out;
  wire frame_counter_flag_1_i_reg_155;
  wire [3:0]frame_counter_loc_0_i_reg_132;
  wire [3:0]frame_counter_new_0_i_reg_184;
  wire [0:0]full_n_reg;
  wire [0:0]full_n_reg_0;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_10;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_11;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_3;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_4;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_5;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_6;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_8;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_3;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_4;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_5;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_6;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_7;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_8;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_9;
  wire [23:20]grp_fu_349_p1;
  wire grp_noise_estimation_accumulate_fu_246_ap_start_reg;
  wire grp_noise_estimation_accumulate_fu_246_n_4;
  wire grp_noise_estimation_accumulate_fu_246_n_5;
  wire grp_spectral_subtract_fu_262_ap_start_reg;
  wire grp_spectral_subtract_fu_262_n_0;
  wire grp_spectral_subtract_fu_262_n_6;
  wire grp_spectral_subtract_fu_262_n_7;
  wire grp_spectral_subtract_fu_262_n_8;
  wire icmp_ln326_fu_333_p224_in;
  wire icmp_ln326_reg_421;
  wire noise_estimated;
  wire noise_estimated_flag_0_i_reg_197;
  wire \noise_estimated_loc_0_i_reg_144_reg_n_0_[0] ;
  wire \noise_estimated_new_0_i_reg_211_reg_n_0_[0] ;
  wire \noise_frame_count_read_reg_372_reg[0]_0 ;
  wire [3:0]out;
  wire p_23_in;
  wire p_6_in;
  wire p_6_in_0;
  wire p_9_in;
  wire pop;
  wire reconstruct_signal_U0_stream6_write;
  wire reset_noise_c_dout;
  wire reset_noise_read_reg_380;
  wire stream3_empty_n;
  wire stream3_full_n;
  wire stream4_i_empty_n;
  wire stream4_i_full_n;
  wire stream5_empty_n;
  wire stream5_full_n;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_10 
       (.I0(\ap_CS_fsm_reg_n_0_[12] ),
        .I1(\ap_CS_fsm_reg_n_0_[13] ),
        .I2(\ap_CS_fsm_reg_n_0_[10] ),
        .I3(\ap_CS_fsm_reg_n_0_[11] ),
        .O(\ap_CS_fsm[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_11 
       (.I0(\ap_CS_fsm_reg_n_0_[8] ),
        .I1(\ap_CS_fsm_reg_n_0_[9] ),
        .I2(\ap_CS_fsm_reg_n_0_[6] ),
        .I3(\ap_CS_fsm_reg_n_0_[7] ),
        .O(\ap_CS_fsm[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_13 
       (.I0(\ap_CS_fsm_reg_n_0_[28] ),
        .I1(\ap_CS_fsm_reg_n_0_[29] ),
        .I2(\ap_CS_fsm_reg_n_0_[26] ),
        .I3(\ap_CS_fsm_reg_n_0_[27] ),
        .O(\ap_CS_fsm[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ap_CS_fsm[1]_i_14 
       (.I0(\ap_CS_fsm_reg_n_0_[23] ),
        .I1(\ap_CS_fsm_reg_n_0_[22] ),
        .I2(\ap_CS_fsm_reg_n_0_[25] ),
        .I3(\ap_CS_fsm_reg_n_0_[24] ),
        .I4(\ap_CS_fsm[1]_i_16_n_0 ),
        .O(\ap_CS_fsm[1]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_16 
       (.I0(\ap_CS_fsm_reg_n_0_[20] ),
        .I1(\ap_CS_fsm_reg_n_0_[21] ),
        .I2(\ap_CS_fsm_reg_n_0_[18] ),
        .I3(\ap_CS_fsm_reg_n_0_[19] ),
        .O(\ap_CS_fsm[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state51),
        .I2(\ap_CS_fsm[1]_i_6_n_0 ),
        .I3(\ap_CS_fsm[1]_i_7_n_0 ),
        .I4(\ap_CS_fsm[1]_i_8_n_0 ),
        .I5(\ap_CS_fsm[1]_i_9_n_0 ),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ap_CS_fsm[1]_i_3 
       (.I0(\ap_CS_fsm_reg_n_0_[15] ),
        .I1(\ap_CS_fsm_reg_n_0_[14] ),
        .I2(\ap_CS_fsm_reg_n_0_[17] ),
        .I3(\ap_CS_fsm_reg_n_0_[16] ),
        .I4(\ap_CS_fsm[1]_i_10_n_0 ),
        .O(\ap_CS_fsm[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[1]_i_5 
       (.I0(\ap_CS_fsm[1]_i_13_n_0 ),
        .I1(\ap_CS_fsm_reg_n_0_[32] ),
        .I2(\ap_CS_fsm_reg_n_0_[33] ),
        .I3(\ap_CS_fsm_reg_n_0_[30] ),
        .I4(\ap_CS_fsm_reg_n_0_[31] ),
        .I5(\ap_CS_fsm[1]_i_14_n_0 ),
        .O(\ap_CS_fsm[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_6 
       (.I0(\ap_CS_fsm_reg_n_0_[40] ),
        .I1(\ap_CS_fsm_reg_n_0_[41] ),
        .I2(\ap_CS_fsm_reg_n_0_[38] ),
        .I3(\ap_CS_fsm_reg_n_0_[39] ),
        .O(\ap_CS_fsm[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_7 
       (.I0(\ap_CS_fsm_reg_n_0_[36] ),
        .I1(\ap_CS_fsm_reg_n_0_[37] ),
        .I2(\ap_CS_fsm_reg_n_0_[34] ),
        .I3(\ap_CS_fsm_reg_n_0_[35] ),
        .O(\ap_CS_fsm[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_8 
       (.I0(\ap_CS_fsm_reg_n_0_[48] ),
        .I1(ap_CS_fsm_state50),
        .I2(\ap_CS_fsm_reg_n_0_[46] ),
        .I3(\ap_CS_fsm_reg_n_0_[47] ),
        .O(\ap_CS_fsm[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ap_CS_fsm[1]_i_9 
       (.I0(\ap_CS_fsm_reg_n_0_[44] ),
        .I1(\ap_CS_fsm_reg_n_0_[45] ),
        .I2(\ap_CS_fsm_reg_n_0_[42] ),
        .I3(\ap_CS_fsm_reg_n_0_[43] ),
        .O(\ap_CS_fsm[1]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[50]_i_2 
       (.I0(icmp_ln326_fu_333_p224_in),
        .I1(\empty_62_reg_411_reg_n_0_[0] ),
        .O(\ap_CS_fsm[50]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F80807F00000000)) 
    \ap_CS_fsm[6]_i_2 
       (.I0(frame_counter_loc_0_i_reg_132[1]),
        .I1(frame_counter_loc_0_i_reg_132[0]),
        .I2(frame_counter_loc_0_i_reg_132[2]),
        .I3(frame_counter_loc_0_i_reg_132[3]),
        .I4(grp_fu_349_p1[23]),
        .I5(\ap_CS_fsm[6]_i_3_n_0 ),
        .O(icmp_ln326_fu_333_p224_in));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    \ap_CS_fsm[6]_i_3 
       (.I0(grp_fu_349_p1[20]),
        .I1(grp_fu_349_p1[22]),
        .I2(frame_counter_loc_0_i_reg_132[2]),
        .I3(frame_counter_loc_0_i_reg_132[1]),
        .I4(frame_counter_loc_0_i_reg_132[0]),
        .I5(grp_fu_349_p1[21]),
        .O(\ap_CS_fsm[6]_i_3_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .PRE(ap_rst_n_inv),
        .Q(Q));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[9] ),
        .Q(\ap_CS_fsm_reg_n_0_[10] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[10] ),
        .Q(\ap_CS_fsm_reg_n_0_[11] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[11] ),
        .Q(\ap_CS_fsm_reg_n_0_[12] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[12] ),
        .Q(\ap_CS_fsm_reg_n_0_[13] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[13] ),
        .Q(\ap_CS_fsm_reg_n_0_[14] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[14] ),
        .Q(\ap_CS_fsm_reg_n_0_[15] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[15] ),
        .Q(\ap_CS_fsm_reg_n_0_[16] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[16] ),
        .Q(\ap_CS_fsm_reg_n_0_[17] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[17] ),
        .Q(\ap_CS_fsm_reg_n_0_[18] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[18] ),
        .Q(\ap_CS_fsm_reg_n_0_[19] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[19] ),
        .Q(\ap_CS_fsm_reg_n_0_[20] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[20] ),
        .Q(\ap_CS_fsm_reg_n_0_[21] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[21] ),
        .Q(\ap_CS_fsm_reg_n_0_[22] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[22] ),
        .Q(\ap_CS_fsm_reg_n_0_[23] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[23] ),
        .Q(\ap_CS_fsm_reg_n_0_[24] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[24] ),
        .Q(\ap_CS_fsm_reg_n_0_[25] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[25] ),
        .Q(\ap_CS_fsm_reg_n_0_[26] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[26] ),
        .Q(\ap_CS_fsm_reg_n_0_[27] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[27] ),
        .Q(\ap_CS_fsm_reg_n_0_[28] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[28] ),
        .Q(\ap_CS_fsm_reg_n_0_[29] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[29] ),
        .Q(\ap_CS_fsm_reg_n_0_[30] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[30] ),
        .Q(\ap_CS_fsm_reg_n_0_[31] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[32] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[31] ),
        .Q(\ap_CS_fsm_reg_n_0_[32] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[33] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[32] ),
        .Q(\ap_CS_fsm_reg_n_0_[33] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[34] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[33] ),
        .Q(\ap_CS_fsm_reg_n_0_[34] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[35] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[34] ),
        .Q(\ap_CS_fsm_reg_n_0_[35] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[36] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[35] ),
        .Q(\ap_CS_fsm_reg_n_0_[36] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[37] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[36] ),
        .Q(\ap_CS_fsm_reg_n_0_[37] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[38] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[37] ),
        .Q(\ap_CS_fsm_reg_n_0_[38] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[39] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[38] ),
        .Q(\ap_CS_fsm_reg_n_0_[39] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[40] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[39] ),
        .Q(\ap_CS_fsm_reg_n_0_[40] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[41] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[40] ),
        .Q(\ap_CS_fsm_reg_n_0_[41] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[42] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[41] ),
        .Q(\ap_CS_fsm_reg_n_0_[42] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[43] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[42] ),
        .Q(\ap_CS_fsm_reg_n_0_[43] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[44] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[43] ),
        .Q(\ap_CS_fsm_reg_n_0_[44] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[45] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[44] ),
        .Q(\ap_CS_fsm_reg_n_0_[45] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[46] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[45] ),
        .Q(\ap_CS_fsm_reg_n_0_[46] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[47] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[46] ),
        .Q(\ap_CS_fsm_reg_n_0_[47] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[48] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[47] ),
        .Q(\ap_CS_fsm_reg_n_0_[48] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[49] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[48] ),
        .Q(ap_CS_fsm_state50));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[50] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(ap_NS_fsm[50]),
        .Q(ap_CS_fsm_state51));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(ap_NS_fsm[6]),
        .Q(\ap_CS_fsm_reg_n_0_[6] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[6] ),
        .Q(\ap_CS_fsm_reg_n_0_[7] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[7] ),
        .Q(\ap_CS_fsm_reg_n_0_[8] ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\ap_CS_fsm_reg_n_0_[8] ),
        .Q(\ap_CS_fsm_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h00B2FFFF00B20000)) 
    \empty_62_reg_411[0]_i_1 
       (.I0(grp_fu_349_p1[23]),
        .I1(frame_counter_loc_0_i_reg_132[3]),
        .I2(\empty_62_reg_411[0]_i_2_n_0 ),
        .I3(\noise_estimated_loc_0_i_reg_144_reg_n_0_[0] ),
        .I4(ap_CS_fsm_state3),
        .I5(\empty_62_reg_411_reg_n_0_[0] ),
        .O(\empty_62_reg_411[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2F02FFFF00002F02)) 
    \empty_62_reg_411[0]_i_2 
       (.I0(grp_fu_349_p1[20]),
        .I1(frame_counter_loc_0_i_reg_132[0]),
        .I2(frame_counter_loc_0_i_reg_132[1]),
        .I3(grp_fu_349_p1[21]),
        .I4(frame_counter_loc_0_i_reg_132[2]),
        .I5(grp_fu_349_p1[22]),
        .O(\empty_62_reg_411[0]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \empty_62_reg_411_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(\empty_62_reg_411[0]_i_1_n_0 ),
        .Q(\empty_62_reg_411_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \frame_counter[0]_i_1 
       (.I0(grp_fu_349_p1[20]),
        .I1(ap_CS_fsm_state51),
        .I2(icmp_ln326_reg_421),
        .I3(\empty_62_reg_411_reg_n_0_[0] ),
        .I4(frame_counter_new_0_i_reg_184[0]),
        .O(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6[0]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \frame_counter[1]_i_1 
       (.I0(grp_fu_349_p1[21]),
        .I1(ap_CS_fsm_state51),
        .I2(icmp_ln326_reg_421),
        .I3(\empty_62_reg_411_reg_n_0_[0] ),
        .I4(frame_counter_new_0_i_reg_184[1]),
        .O(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6[1]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \frame_counter[2]_i_1 
       (.I0(grp_fu_349_p1[22]),
        .I1(ap_CS_fsm_state51),
        .I2(icmp_ln326_reg_421),
        .I3(\empty_62_reg_411_reg_n_0_[0] ),
        .I4(frame_counter_new_0_i_reg_184[2]),
        .O(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6[2]));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \frame_counter[3]_i_2 
       (.I0(grp_fu_349_p1[23]),
        .I1(ap_CS_fsm_state51),
        .I2(icmp_ln326_reg_421),
        .I3(\empty_62_reg_411_reg_n_0_[0] ),
        .I4(frame_counter_new_0_i_reg_184[3]),
        .O(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6[3]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_flag_0_i_reg_169_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(grp_spectral_subtract_fu_262_n_7),
        .Q(frame_counter_flag_0_i_reg_169));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_flag_1_i_reg_155_reg[0] 
       (.C(ap_clk),
        .CE(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_3),
        .Q(frame_counter_flag_1_i_reg_155));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_loc_0_i_reg_132_reg[0] 
       (.C(ap_clk),
        .CE(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_9),
        .Q(frame_counter_loc_0_i_reg_132[0]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_loc_0_i_reg_132_reg[1] 
       (.C(ap_clk),
        .CE(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_8),
        .Q(frame_counter_loc_0_i_reg_132[1]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_loc_0_i_reg_132_reg[2] 
       (.C(ap_clk),
        .CE(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_7),
        .Q(frame_counter_loc_0_i_reg_132[2]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_loc_0_i_reg_132_reg[3] 
       (.C(ap_clk),
        .CE(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_6),
        .Q(frame_counter_loc_0_i_reg_132[3]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \frame_counter_new_0_i_reg_184[3]_i_5 
       (.I0(frame_counter_loc_0_i_reg_132[1]),
        .I1(frame_counter_loc_0_i_reg_132[0]),
        .I2(frame_counter_loc_0_i_reg_132[2]),
        .I3(frame_counter_loc_0_i_reg_132[3]),
        .O(add_ln324_fu_327_p2));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_new_0_i_reg_184_reg[0] 
       (.C(ap_clk),
        .CE(grp_spectral_subtract_fu_262_n_0),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_6),
        .Q(frame_counter_new_0_i_reg_184[0]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_new_0_i_reg_184_reg[1] 
       (.C(ap_clk),
        .CE(grp_spectral_subtract_fu_262_n_0),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_5),
        .Q(frame_counter_new_0_i_reg_184[1]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_new_0_i_reg_184_reg[2] 
       (.C(ap_clk),
        .CE(grp_spectral_subtract_fu_262_n_0),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_4),
        .Q(frame_counter_new_0_i_reg_184[2]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_new_0_i_reg_184_reg[3] 
       (.C(ap_clk),
        .CE(grp_spectral_subtract_fu_262_n_0),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_3),
        .Q(frame_counter_new_0_i_reg_184[3]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_reg[0] 
       (.C(ap_clk),
        .CE(frame_counter0),
        .CLR(ap_rst_n_inv),
        .D(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6[0]),
        .Q(frame_counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_reg[1] 
       (.C(ap_clk),
        .CE(frame_counter0),
        .CLR(ap_rst_n_inv),
        .D(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6[1]),
        .Q(frame_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_reg[2] 
       (.C(ap_clk),
        .CE(frame_counter0),
        .CLR(ap_rst_n_inv),
        .D(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6[2]),
        .Q(frame_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_counter_reg[3] 
       (.C(ap_clk),
        .CE(frame_counter0),
        .CLR(ap_rst_n_inv),
        .D(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p6[3]),
        .Q(frame_counter[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280
       (.AR(ap_rst_n_inv),
        .D({ap_NS_fsm[50],ap_NS_fsm[0]}),
        .E(frame_counter0),
        .Q({ap_CS_fsm_state51,ap_CS_fsm_state50,ap_CS_fsm_state6,Q}),
        .add_ln324_fu_327_p2(add_ln324_fu_327_p2),
        .\ap_CS_fsm_reg[0] (\ap_CS_fsm_reg[0]_0 ),
        .\ap_CS_fsm_reg[49] (grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_10),
        .\ap_CS_fsm_reg[50] (\ap_CS_fsm_reg[50]_0 ),
        .\ap_CS_fsm_reg[50]_0 (\ap_CS_fsm[50]_i_2_n_0 ),
        .ap_clk(ap_clk),
        .ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61),
        .ap_rst_n(ap_rst_n),
        .frame_counter_flag_0_i_reg_169(frame_counter_flag_0_i_reg_169),
        .frame_counter_flag_0_i_reg_1692(frame_counter_flag_0_i_reg_1692),
        .frame_counter_flag_0_i_reg_169221_out(frame_counter_flag_0_i_reg_169221_out),
        .frame_counter_flag_1_i_reg_155(frame_counter_flag_1_i_reg_155),
        .\frame_counter_flag_1_i_reg_155_reg[0] (grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_8),
        .\frame_counter_new_0_i_reg_184_reg[2] (frame_counter_loc_0_i_reg_132[2:0]),
        .\frame_counter_new_0_i_reg_184_reg[3] (grp_fu_349_p1),
        .\frame_counter_reg[0] (\empty_62_reg_411_reg_n_0_[0] ),
        .grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .icmp_ln326_reg_421(icmp_ln326_reg_421),
        .noise_estimated(noise_estimated),
        .noise_estimated_flag_0_i_reg_197(noise_estimated_flag_0_i_reg_197),
        .\noise_estimated_new_0_i_reg_211_reg[0] (grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_11),
        .\noise_estimated_reg[0] (\noise_estimated_new_0_i_reg_211_reg_n_0_[0] ),
        .\noise_frame_count_read_reg_372_reg[3] ({grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_3,grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_4,grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_5,grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_6}),
        .p_23_in(p_23_in));
  FDCE #(
    .INIT(1'b0)) 
    grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_10),
        .Q(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226
       (.AR(ap_rst_n_inv),
        .D(ap_NS_fsm[2:1]),
        .E(\ap_CS_fsm_reg[0]_0 ),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state2,Q}),
        .\ap_CS_fsm_reg[1] (grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2),
        .\ap_CS_fsm_reg[1]_0 (grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_3),
        .\ap_CS_fsm_reg[1]_1 (\ap_CS_fsm[1]_i_2_n_0 ),
        .\ap_CS_fsm_reg[1]_2 (\ap_CS_fsm[1]_i_3_n_0 ),
        .\ap_CS_fsm_reg[1]_3 (\ap_CS_fsm[1]_i_5_n_0 ),
        .\ap_CS_fsm_reg[1]_4 (\ap_CS_fsm[1]_i_11_n_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\frame_counter_loc_0_i_reg_132_reg[3] (frame_counter),
        .\frame_counter_reg[3] ({grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_6,grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_7,grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_8,grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_9}),
        .grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_5),
        .noise_estimated(noise_estimated),
        .\noise_estimated_reg[0] (grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_4),
        .reset_noise_c_dout(reset_noise_c_dout),
        .reset_noise_read_reg_380(reset_noise_read_reg_380));
  FDCE #(
    .INIT(1'b0)) 
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_5),
        .Q(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_noise_estimation_accumulate grp_noise_estimation_accumulate_fu_246
       (.AR(ap_rst_n_inv),
        .D(ap_NS_fsm[4:3]),
        .E(grp_noise_estimation_accumulate_fu_246_n_5),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001_1),
        .ap_clk(ap_clk),
        .ap_done_cache_reg(stream4_i_full_n),
        .ap_enable_reg_pp0_iter1_reg_0(ap_enable_reg_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .compute_magnitude_square_U0_stream2_write(compute_magnitude_square_U0_stream2_write),
        .full_n_reg(full_n_reg),
        .grp_noise_estimation_accumulate_fu_246_ap_start_reg(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg(grp_noise_estimation_accumulate_fu_246_n_4),
        .p_6_in(p_6_in),
        .pop(pop),
        .stream3_empty_n(stream3_empty_n),
        .stream3_full_n(stream3_full_n));
  FDCE #(
    .INIT(1'b0)) 
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(grp_noise_estimation_accumulate_fu_246_n_4),
        .Q(grp_noise_estimation_accumulate_fu_246_ap_start_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_spectral_subtract grp_spectral_subtract_fu_262
       (.AR(ap_rst_n_inv),
        .D(ap_NS_fsm[6:5]),
        .E(grp_spectral_subtract_fu_262_n_0),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_state5,ap_CS_fsm_state4}),
        .\ap_CS_fsm_reg[4] (grp_spectral_subtract_fu_262_n_6),
        .\ap_CS_fsm_reg[6] (\empty_62_reg_411_reg_n_0_[0] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter4_reg_0(ap_enable_reg_pp0_iter4),
        .ap_rst_n(ap_rst_n),
        .empty_n_reg(stream4_i_full_n),
        .empty_n_reg_0(ap_enable_reg_pp0_iter1_reg),
        .frame_counter_flag_0_i_reg_169(frame_counter_flag_0_i_reg_169),
        .frame_counter_flag_0_i_reg_1692(frame_counter_flag_0_i_reg_1692),
        .frame_counter_flag_0_i_reg_169221_out(frame_counter_flag_0_i_reg_169221_out),
        .frame_counter_flag_1_i_reg_155(frame_counter_flag_1_i_reg_155),
        .\frame_counter_flag_1_i_reg_155_reg[0] (grp_spectral_subtract_fu_262_n_7),
        .full_n_reg(ap_block_pp0_stage0_11001),
        .full_n_reg_0(full_n_reg_0),
        .grp_spectral_subtract_fu_262_ap_start_reg(grp_spectral_subtract_fu_262_ap_start_reg),
        .icmp_ln326_fu_333_p224_in(icmp_ln326_fu_333_p224_in),
        .icmp_ln326_reg_421(icmp_ln326_reg_421),
        .\icmp_ln326_reg_421_reg[0] (grp_spectral_subtract_fu_262_n_8),
        .p_23_in(p_23_in),
        .p_6_in(p_6_in_0),
        .p_9_in(p_9_in),
        .pop(pop),
        .reconstruct_signal_U0_stream6_write(reconstruct_signal_U0_stream6_write),
        .stream3_empty_n(stream3_empty_n),
        .stream4_i_empty_n(stream4_i_empty_n),
        .stream5_empty_n(stream5_empty_n),
        .stream5_full_n(stream5_full_n));
  FDCE #(
    .INIT(1'b0)) 
    grp_spectral_subtract_fu_262_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(grp_spectral_subtract_fu_262_n_6),
        .Q(grp_spectral_subtract_fu_262_ap_start_reg));
  FDCE #(
    .INIT(1'b0)) 
    \icmp_ln326_reg_421_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(grp_spectral_subtract_fu_262_n_8),
        .Q(icmp_ln326_reg_421));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \noise_estimated[0]_i_2 
       (.I0(ap_CS_fsm_state51),
        .I1(icmp_ln326_reg_421),
        .I2(\empty_62_reg_411_reg_n_0_[0] ),
        .O(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61));
  FDCE #(
    .INIT(1'b0)) 
    \noise_estimated_flag_0_i_reg_197_reg[0] 
       (.C(ap_clk),
        .CE(grp_spectral_subtract_fu_262_n_0),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_8),
        .Q(noise_estimated_flag_0_i_reg_197));
  FDCE #(
    .INIT(1'b0)) 
    \noise_estimated_loc_0_i_reg_144_reg[0] 
       (.C(ap_clk),
        .CE(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_2),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_n_4),
        .Q(\noise_estimated_loc_0_i_reg_144_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \noise_estimated_new_0_i_reg_211_reg[0] 
       (.C(ap_clk),
        .CE(grp_spectral_subtract_fu_262_n_0),
        .CLR(ap_rst_n_inv),
        .D(frame_counter_flag_0_i_reg_169221_out),
        .Q(\noise_estimated_new_0_i_reg_211_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \noise_estimated_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_n_11),
        .Q(noise_estimated));
  FDCE #(
    .INIT(1'b0)) 
    \noise_frame_count_read_reg_372_reg[0] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[0]_0 ),
        .CLR(ap_rst_n_inv),
        .D(out[0]),
        .Q(grp_fu_349_p1[20]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_frame_count_read_reg_372_reg[1] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[0]_0 ),
        .CLR(ap_rst_n_inv),
        .D(out[1]),
        .Q(grp_fu_349_p1[21]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_frame_count_read_reg_372_reg[2] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[0]_0 ),
        .CLR(ap_rst_n_inv),
        .D(out[2]),
        .Q(grp_fu_349_p1[22]));
  FDCE #(
    .INIT(1'b0)) 
    \noise_frame_count_read_reg_372_reg[3] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[0]_0 ),
        .CLR(ap_rst_n_inv),
        .D(out[3]),
        .Q(grp_fu_349_p1[23]));
  LUT2 #(
    .INIT(4'h2)) 
    \reset_noise_read_reg_380[0]_i_1 
       (.I0(Q),
        .I1(\noise_frame_count_read_reg_372_reg[0]_0 ),
        .O(\ap_CS_fsm_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \reset_noise_read_reg_380_reg[0] 
       (.C(ap_clk),
        .CE(\ap_CS_fsm_reg[0]_0 ),
        .CLR(ap_rst_n_inv),
        .D(reset_noise_c_dout),
        .Q(reset_noise_read_reg_380));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S stream4_i_fifo_U
       (.AR(ap_rst_n_inv),
        .E(grp_noise_estimation_accumulate_fu_246_n_5),
        .Q(ap_CS_fsm_state4),
        .\ap_CS_fsm_reg[4] (ap_enable_reg_pp0_iter1_reg),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001_1),
        .ap_clk(ap_clk),
        .full_n_reg_0(stream4_i_full_n),
        .p_6_in(p_6_in_0),
        .pop(pop),
        .stream3_empty_n(stream3_empty_n),
        .stream4_i_empty_n(stream4_i_empty_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE
   (D,
    \ap_CS_fsm_reg[50] ,
    \noise_frame_count_read_reg_372_reg[3] ,
    frame_counter_flag_0_i_reg_169221_out,
    \frame_counter_flag_1_i_reg_155_reg[0] ,
    E,
    \ap_CS_fsm_reg[49] ,
    \noise_estimated_new_0_i_reg_211_reg[0] ,
    Q,
    p_23_in,
    \ap_CS_fsm_reg[50]_0 ,
    \frame_counter_new_0_i_reg_184_reg[3] ,
    frame_counter_flag_0_i_reg_1692,
    \frame_counter_new_0_i_reg_184_reg[2] ,
    add_ln324_fu_327_p2,
    frame_counter_flag_1_i_reg_155,
    grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
    icmp_ln326_reg_421,
    \frame_counter_reg[0] ,
    frame_counter_flag_0_i_reg_169,
    \ap_CS_fsm_reg[0] ,
    \noise_estimated_reg[0] ,
    noise_estimated_flag_0_i_reg_197,
    ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61,
    noise_estimated,
    ap_clk,
    AR,
    ap_rst_n);
  output [1:0]D;
  output \ap_CS_fsm_reg[50] ;
  output [3:0]\noise_frame_count_read_reg_372_reg[3] ;
  output frame_counter_flag_0_i_reg_169221_out;
  output \frame_counter_flag_1_i_reg_155_reg[0] ;
  output [0:0]E;
  output \ap_CS_fsm_reg[49] ;
  output \noise_estimated_new_0_i_reg_211_reg[0] ;
  input [3:0]Q;
  input p_23_in;
  input \ap_CS_fsm_reg[50]_0 ;
  input [3:0]\frame_counter_new_0_i_reg_184_reg[3] ;
  input frame_counter_flag_0_i_reg_1692;
  input [2:0]\frame_counter_new_0_i_reg_184_reg[2] ;
  input [0:0]add_ln324_fu_327_p2;
  input frame_counter_flag_1_i_reg_155;
  input grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg;
  input icmp_ln326_reg_421;
  input \frame_counter_reg[0] ;
  input frame_counter_flag_0_i_reg_169;
  input [0:0]\ap_CS_fsm_reg[0] ;
  input \noise_estimated_reg[0] ;
  input noise_estimated_flag_0_i_reg_197;
  input ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61;
  input noise_estimated;
  input ap_clk;
  input [0:0]AR;
  input ap_rst_n;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]add_ln324_fu_327_p2;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[49] ;
  wire \ap_CS_fsm_reg[50] ;
  wire \ap_CS_fsm_reg[50]_0 ;
  wire ap_clk;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61;
  wire ap_rst_n;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_20;
  wire flow_control_loop_pipe_sequential_init_U_n_21;
  wire flow_control_loop_pipe_sequential_init_U_n_22;
  wire flow_control_loop_pipe_sequential_init_U_n_24;
  wire frame_counter_flag_0_i_reg_169;
  wire frame_counter_flag_0_i_reg_1692;
  wire frame_counter_flag_0_i_reg_169221_out;
  wire frame_counter_flag_1_i_reg_155;
  wire \frame_counter_flag_1_i_reg_155_reg[0] ;
  wire [2:0]\frame_counter_new_0_i_reg_184_reg[2] ;
  wire [3:0]\frame_counter_new_0_i_reg_184_reg[3] ;
  wire \frame_counter_reg[0] ;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg;
  wire \i_fu_76[0]_i_2_n_0 ;
  wire \i_fu_76[10]_i_3_n_0 ;
  wire \i_fu_76[10]_i_4_n_0 ;
  wire \i_fu_76[10]_i_6_n_0 ;
  wire \i_fu_76[5]_i_2_n_0 ;
  wire \i_fu_76[6]_i_2_n_0 ;
  wire \i_fu_76[9]_i_2_n_0 ;
  wire \i_fu_76_reg_n_0_[0] ;
  wire \i_fu_76_reg_n_0_[10] ;
  wire \i_fu_76_reg_n_0_[1] ;
  wire \i_fu_76_reg_n_0_[2] ;
  wire \i_fu_76_reg_n_0_[3] ;
  wire \i_fu_76_reg_n_0_[4] ;
  wire \i_fu_76_reg_n_0_[5] ;
  wire \i_fu_76_reg_n_0_[6] ;
  wire \i_fu_76_reg_n_0_[7] ;
  wire \i_fu_76_reg_n_0_[8] ;
  wire \i_fu_76_reg_n_0_[9] ;
  wire icmp_ln326_reg_421;
  wire noise_estimated;
  wire noise_estimated_flag_0_i_reg_197;
  wire \noise_estimated_new_0_i_reg_211_reg[0] ;
  wire \noise_estimated_reg[0] ;
  wire [3:0]\noise_frame_count_read_reg_372_reg[3] ;
  wire p_23_in;

  FDCE #(
    .INIT(1'b0)) 
    ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter1_reg));
  FDCE #(
    .INIT(1'b0)) 
    ap_loop_exit_ready_pp0_iter2_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(ap_loop_exit_ready_pp0_iter1_reg),
        .Q(ap_loop_exit_ready_pp0_iter2_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_12 flow_control_loop_pipe_sequential_init_U
       (.AR(AR),
        .D(D),
        .E(E),
        .Q(Q),
        .add_ln324_fu_327_p2(add_ln324_fu_327_p2),
        .\ap_CS_fsm_reg[0] (\ap_CS_fsm_reg[0] ),
        .\ap_CS_fsm_reg[49] (\ap_CS_fsm_reg[49] ),
        .\ap_CS_fsm_reg[50] (\ap_CS_fsm_reg[50] ),
        .\ap_CS_fsm_reg[50]_0 (\ap_CS_fsm_reg[50]_0 ),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter2_reg(ap_loop_exit_ready_pp0_iter2_reg),
        .ap_loop_exit_ready_pp0_iter2_reg_reg(frame_counter_flag_0_i_reg_169221_out),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_24),
        .ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61),
        .ap_rst_n(ap_rst_n),
        .frame_counter_flag_0_i_reg_169(frame_counter_flag_0_i_reg_169),
        .frame_counter_flag_0_i_reg_1692(frame_counter_flag_0_i_reg_1692),
        .frame_counter_flag_1_i_reg_155(frame_counter_flag_1_i_reg_155),
        .\frame_counter_flag_1_i_reg_155_reg[0] (\frame_counter_flag_1_i_reg_155_reg[0] ),
        .\frame_counter_new_0_i_reg_184_reg[2] (\frame_counter_new_0_i_reg_184_reg[2] ),
        .\frame_counter_new_0_i_reg_184_reg[3] (\frame_counter_new_0_i_reg_184_reg[3] ),
        .\frame_counter_reg[0] (\frame_counter_reg[0] ),
        .grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready),
        .grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .\i_fu_76_reg[0] (\i_fu_76[0]_i_2_n_0 ),
        .\i_fu_76_reg[10] (\i_fu_76[10]_i_3_n_0 ),
        .\i_fu_76_reg[10]_0 ({\i_fu_76_reg_n_0_[10] ,\i_fu_76_reg_n_0_[9] ,\i_fu_76_reg_n_0_[8] ,\i_fu_76_reg_n_0_[7] ,\i_fu_76_reg_n_0_[6] ,\i_fu_76_reg_n_0_[5] ,\i_fu_76_reg_n_0_[4] ,\i_fu_76_reg_n_0_[3] ,\i_fu_76_reg_n_0_[2] ,\i_fu_76_reg_n_0_[1] ,\i_fu_76_reg_n_0_[0] }),
        .\i_fu_76_reg[10]_1 (\i_fu_76[10]_i_4_n_0 ),
        .\i_fu_76_reg[5] (\i_fu_76[5]_i_2_n_0 ),
        .\i_fu_76_reg[6] (\i_fu_76[6]_i_2_n_0 ),
        .\i_fu_76_reg[9] ({flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19,flow_control_loop_pipe_sequential_init_U_n_20,flow_control_loop_pipe_sequential_init_U_n_21,flow_control_loop_pipe_sequential_init_U_n_22}),
        .\i_fu_76_reg[9]_0 (\i_fu_76[9]_i_2_n_0 ),
        .icmp_ln326_reg_421(icmp_ln326_reg_421),
        .noise_estimated(noise_estimated),
        .noise_estimated_flag_0_i_reg_197(noise_estimated_flag_0_i_reg_197),
        .\noise_estimated_new_0_i_reg_211_reg[0] (\noise_estimated_new_0_i_reg_211_reg[0] ),
        .\noise_estimated_reg[0] (\noise_estimated_reg[0] ),
        .\noise_frame_count_read_reg_372_reg[3] (\noise_frame_count_read_reg_372_reg[3] ),
        .p_23_in(p_23_in));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \i_fu_76[0]_i_2 
       (.I0(\i_fu_76_reg_n_0_[4] ),
        .I1(\i_fu_76_reg_n_0_[5] ),
        .I2(\i_fu_76_reg_n_0_[2] ),
        .I3(\i_fu_76_reg_n_0_[3] ),
        .I4(\i_fu_76[10]_i_6_n_0 ),
        .O(\i_fu_76[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \i_fu_76[10]_i_3 
       (.I0(\i_fu_76[10]_i_6_n_0 ),
        .I1(\i_fu_76_reg_n_0_[3] ),
        .I2(\i_fu_76_reg_n_0_[2] ),
        .I3(\i_fu_76_reg_n_0_[5] ),
        .I4(\i_fu_76_reg_n_0_[4] ),
        .I5(\i_fu_76_reg_n_0_[0] ),
        .O(\i_fu_76[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \i_fu_76[10]_i_4 
       (.I0(\i_fu_76_reg_n_0_[7] ),
        .I1(\i_fu_76[9]_i_2_n_0 ),
        .I2(\i_fu_76_reg_n_0_[8] ),
        .O(\i_fu_76[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \i_fu_76[10]_i_6 
       (.I0(\i_fu_76_reg_n_0_[7] ),
        .I1(\i_fu_76_reg_n_0_[6] ),
        .I2(\i_fu_76_reg_n_0_[9] ),
        .I3(\i_fu_76_reg_n_0_[8] ),
        .O(\i_fu_76[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \i_fu_76[5]_i_2 
       (.I0(\i_fu_76_reg_n_0_[3] ),
        .I1(\i_fu_76_reg_n_0_[0] ),
        .I2(\i_fu_76_reg_n_0_[2] ),
        .I3(\i_fu_76_reg_n_0_[4] ),
        .O(\i_fu_76[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \i_fu_76[6]_i_2 
       (.I0(\i_fu_76_reg_n_0_[4] ),
        .I1(\i_fu_76_reg_n_0_[2] ),
        .I2(\i_fu_76_reg_n_0_[0] ),
        .I3(\i_fu_76_reg_n_0_[3] ),
        .I4(\i_fu_76_reg_n_0_[5] ),
        .O(\i_fu_76[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \i_fu_76[9]_i_2 
       (.I0(\i_fu_76_reg_n_0_[5] ),
        .I1(\i_fu_76_reg_n_0_[3] ),
        .I2(\i_fu_76_reg_n_0_[0] ),
        .I3(\i_fu_76_reg_n_0_[2] ),
        .I4(\i_fu_76_reg_n_0_[4] ),
        .I5(\i_fu_76_reg_n_0_[6] ),
        .O(\i_fu_76[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_22),
        .Q(\i_fu_76_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[10] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_12),
        .Q(\i_fu_76_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_21),
        .Q(\i_fu_76_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_20),
        .Q(\i_fu_76_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_19),
        .Q(\i_fu_76_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_18),
        .Q(\i_fu_76_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_17),
        .Q(\i_fu_76_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_16),
        .Q(\i_fu_76_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_15),
        .Q(\i_fu_76_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_14),
        .Q(\i_fu_76_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_76_reg[9] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_24),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_13),
        .Q(\i_fu_76_reg_n_0_[9] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE
   (D,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[1]_0 ,
    \noise_estimated_reg[0] ,
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg,
    \frame_counter_reg[3] ,
    E,
    \ap_CS_fsm_reg[1]_1 ,
    \ap_CS_fsm_reg[1]_2 ,
    \ap_CS_fsm_reg[1]_3 ,
    Q,
    \ap_CS_fsm_reg[1]_4 ,
    reset_noise_read_reg_380,
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
    reset_noise_c_dout,
    noise_estimated,
    \frame_counter_loc_0_i_reg_132_reg[3] ,
    ap_clk,
    AR,
    ap_rst_n);
  output [1:0]D;
  output [0:0]\ap_CS_fsm_reg[1] ;
  output \ap_CS_fsm_reg[1]_0 ;
  output \noise_estimated_reg[0] ;
  output grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg;
  output [3:0]\frame_counter_reg[3] ;
  input [0:0]E;
  input \ap_CS_fsm_reg[1]_1 ;
  input \ap_CS_fsm_reg[1]_2 ;
  input \ap_CS_fsm_reg[1]_3 ;
  input [4:0]Q;
  input \ap_CS_fsm_reg[1]_4 ;
  input reset_noise_read_reg_380;
  input grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg;
  input reset_noise_c_dout;
  input noise_estimated;
  input [3:0]\frame_counter_loc_0_i_reg_132_reg[3] ;
  input ap_clk;
  input [0:0]AR;
  input ap_rst_n;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire \ap_CS_fsm_reg[1]_2 ;
  wire \ap_CS_fsm_reg[1]_3 ;
  wire \ap_CS_fsm_reg[1]_4 ;
  wire ap_clk;
  wire ap_rst_n;
  wire flow_control_loop_pipe_sequential_init_U_n_20;
  wire [3:0]\frame_counter_loc_0_i_reg_132_reg[3] ;
  wire [3:0]\frame_counter_reg[3] ;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg;
  wire i_fu_62;
  wire \i_fu_62_reg_n_0_[0] ;
  wire \i_fu_62_reg_n_0_[10] ;
  wire \i_fu_62_reg_n_0_[1] ;
  wire \i_fu_62_reg_n_0_[2] ;
  wire \i_fu_62_reg_n_0_[3] ;
  wire \i_fu_62_reg_n_0_[4] ;
  wire \i_fu_62_reg_n_0_[5] ;
  wire \i_fu_62_reg_n_0_[6] ;
  wire \i_fu_62_reg_n_0_[7] ;
  wire \i_fu_62_reg_n_0_[8] ;
  wire \i_fu_62_reg_n_0_[9] ;
  wire noise_estimated;
  wire \noise_estimated_reg[0] ;
  wire [10:1]p_0_in;
  wire reset_noise_c_dout;
  wire reset_noise_read_reg_380;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_11 flow_control_loop_pipe_sequential_init_U
       (.AR(AR),
        .D(D),
        .E(E),
        .Q(Q),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[1]_0 (\ap_CS_fsm_reg[1]_0 ),
        .\ap_CS_fsm_reg[1]_1 (\ap_CS_fsm_reg[1]_1 ),
        .\ap_CS_fsm_reg[1]_2 (\ap_CS_fsm_reg[1]_2 ),
        .\ap_CS_fsm_reg[1]_3 (\ap_CS_fsm_reg[1]_3 ),
        .\ap_CS_fsm_reg[1]_4 (\ap_CS_fsm_reg[1]_4 ),
        .ap_clk(ap_clk),
        .ap_loop_init_int_reg_0(i_fu_62),
        .ap_rst_n(ap_rst_n),
        .\frame_counter_loc_0_i_reg_132_reg[3] (\frame_counter_loc_0_i_reg_132_reg[3] ),
        .\frame_counter_reg[3] (\frame_counter_reg[3] ),
        .grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg),
        .\i_fu_62_reg[10] ({p_0_in,flow_control_loop_pipe_sequential_init_U_n_20}),
        .\i_fu_62_reg[10]_0 ({\i_fu_62_reg_n_0_[10] ,\i_fu_62_reg_n_0_[9] ,\i_fu_62_reg_n_0_[8] ,\i_fu_62_reg_n_0_[7] ,\i_fu_62_reg_n_0_[6] ,\i_fu_62_reg_n_0_[5] ,\i_fu_62_reg_n_0_[4] ,\i_fu_62_reg_n_0_[3] ,\i_fu_62_reg_n_0_[2] ,\i_fu_62_reg_n_0_[1] ,\i_fu_62_reg_n_0_[0] }),
        .noise_estimated(noise_estimated),
        .\noise_estimated_reg[0] (\noise_estimated_reg[0] ),
        .reset_noise_c_dout(reset_noise_c_dout),
        .reset_noise_read_reg_380(reset_noise_read_reg_380));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_20),
        .Q(\i_fu_62_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[10] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[10]),
        .Q(\i_fu_62_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(\i_fu_62_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(\i_fu_62_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(\i_fu_62_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(\i_fu_62_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[5] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(\i_fu_62_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[6] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(\i_fu_62_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[7] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(\i_fu_62_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[8] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(\i_fu_62_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_62_reg[9] 
       (.C(ap_clk),
        .CE(i_fu_62),
        .CLR(AR),
        .D(p_0_in[9]),
        .Q(\i_fu_62_reg_n_0_[9] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_axi_to_internal
   (ack_in_t_reg,
    axi_to_internal_U0_stream1_din,
    start_once_reg,
    mOutPtr111_out,
    E,
    axi_to_internal_U0_ap_ready,
    ap_sync_axi_to_internal_U0_ap_ready,
    ap_clk,
    SR,
    pop,
    ap_rst_n,
    ap_sync_reg_axi_to_internal_U0_ap_ready,
    ap_start,
    start_for_compute_magnitude_square_U0_full_n,
    stream1_full_n,
    fft_in_TVALID,
    fft_in_TLAST,
    fft_in_TDATA);
  output ack_in_t_reg;
  output [64:0]axi_to_internal_U0_stream1_din;
  output start_once_reg;
  output mOutPtr111_out;
  output [0:0]E;
  output axi_to_internal_U0_ap_ready;
  output ap_sync_axi_to_internal_U0_ap_ready;
  input ap_clk;
  input [0:0]SR;
  input pop;
  input ap_rst_n;
  input ap_sync_reg_axi_to_internal_U0_ap_ready;
  input ap_start;
  input start_for_compute_magnitude_square_U0_full_n;
  input stream1_full_n;
  input fft_in_TVALID;
  input [0:0]fft_in_TLAST;
  input [63:0]fft_in_TDATA;

  wire [0:0]E;
  wire [0:0]SR;
  wire ack_in_t_reg;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_start;
  wire ap_sync_axi_to_internal_U0_ap_ready;
  wire ap_sync_reg_axi_to_internal_U0_ap_ready;
  wire axi_to_internal_U0_ap_ready;
  wire [64:0]axi_to_internal_U0_stream1_din;
  wire [63:0]fft_in_TDATA;
  wire [0:0]fft_in_TLAST;
  wire fft_in_TVALID;
  wire flow_control_loop_pipe_U_n_11;
  wire [8:0]i1_fu_54;
  wire [8:0]i_fu_102_p2;
  wire mOutPtr111_out;
  wire pop;
  wire regslice_both_fft_in_V_data_V_U_n_3;
  wire start_for_compute_magnitude_square_U0_full_n;
  wire start_once_reg;
  wire stream1_full_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_7 flow_control_loop_pipe_U
       (.D(i_fu_102_p2),
        .Q(i1_fu_54),
        .ap_clk(ap_clk),
        .ap_loop_init_reg_0(regslice_both_fft_in_V_data_V_U_n_3),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .ap_sync_axi_to_internal_U0_ap_ready(ap_sync_axi_to_internal_U0_ap_ready),
        .ap_sync_reg_axi_to_internal_U0_ap_ready(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .axi_to_internal_U0_ap_ready(axi_to_internal_U0_ap_ready),
        .full_n_reg(flow_control_loop_pipe_U_n_11),
        .start_for_compute_magnitude_square_U0_full_n(start_for_compute_magnitude_square_U0_full_n),
        .start_once_reg_reg(start_once_reg));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(i_fu_102_p2[0]),
        .Q(i1_fu_54[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(i_fu_102_p2[1]),
        .Q(i1_fu_54[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(i_fu_102_p2[2]),
        .Q(i1_fu_54[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(i_fu_102_p2[3]),
        .Q(i1_fu_54[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(i_fu_102_p2[4]),
        .Q(i1_fu_54[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(i_fu_102_p2[5]),
        .Q(i1_fu_54[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(i_fu_102_p2[6]),
        .Q(i1_fu_54[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(i_fu_102_p2[7]),
        .Q(i1_fu_54[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(i_fu_102_p2[8]),
        .Q(i1_fu_54[8]),
        .R(SR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both_8 regslice_both_fft_in_V_data_V_U
       (.E(E),
        .SR(SR),
        .ack_in_t_reg_0(ack_in_t_reg),
        .ap_clk(ap_clk),
        .ap_start(ap_start),
        .ap_sync_reg_axi_to_internal_U0_ap_ready(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .axi_to_internal_U0_stream1_din(axi_to_internal_U0_stream1_din[63:0]),
        .fft_in_TDATA(fft_in_TDATA),
        .fft_in_TVALID(fft_in_TVALID),
        .full_n_reg(regslice_both_fft_in_V_data_V_U_n_3),
        .\i1_fu_54_reg[8] (start_once_reg),
        .mOutPtr111_out(mOutPtr111_out),
        .pop(pop),
        .start_for_compute_magnitude_square_U0_full_n(start_for_compute_magnitude_square_U0_full_n),
        .stream1_full_n(stream1_full_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1_9 regslice_both_fft_in_V_last_V_U
       (.SR(SR),
        .ap_clk(ap_clk),
        .axi_to_internal_U0_stream1_din(axi_to_internal_U0_stream1_din[64]),
        .\data_p1_reg[0]_0 (regslice_both_fft_in_V_data_V_U_n_3),
        .fft_in_TLAST(fft_in_TLAST),
        .fft_in_TVALID(fft_in_TVALID));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_11),
        .Q(start_once_reg),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_compute_magnitude_square
   (start_once_reg,
    E,
    Q,
    compute_magnitude_square_U0_stream2_write,
    \ap_CS_fsm_reg[0]_0 ,
    start_once_reg_reg_0,
    dout_vld_reg,
    push,
    dout_vld_reg_0,
    p_8_in,
    dout_vld_reg_1,
    pop,
    compute_magnitude_square_U0_ap_ready,
    DI,
    O,
    \mOutPtr_reg[7] ,
    \mOutPtr_reg[10] ,
    ap_rst_n_0,
    dout_vld_reg_2,
    ap_clk,
    ap_rst_n_inv,
    stream3_full_n,
    stream3_empty_n,
    stream4_i_full_n,
    mOutPtr_reg_0_sp_1,
    int_ap_idle_reg,
    Block_entry_frame_counter_wr_proc_U0_ap_start,
    int_ap_idle_reg_0,
    stream1_empty_n,
    stream2_full_n,
    stream2_empty_n,
    reconstruct_signal_U0_stream6_write,
    \num_data_cnt_reg[0] ,
    empty_n,
    start_for_reconstruct_signal_U0_full_n,
    compute_magnitude_square_U0_ap_start,
    ap_rst_n,
    pop_0,
    mOutPtr_reg);
  output start_once_reg;
  output [0:0]E;
  output [1:0]Q;
  output compute_magnitude_square_U0_stream2_write;
  output \ap_CS_fsm_reg[0]_0 ;
  output start_once_reg_reg_0;
  output dout_vld_reg;
  output push;
  output [0:0]dout_vld_reg_0;
  output p_8_in;
  output [0:0]dout_vld_reg_1;
  output pop;
  output compute_magnitude_square_U0_ap_ready;
  output [0:0]DI;
  output [3:0]O;
  output [3:0]\mOutPtr_reg[7] ;
  output [3:0]\mOutPtr_reg[10] ;
  output ap_rst_n_0;
  output dout_vld_reg_2;
  input ap_clk;
  input ap_rst_n_inv;
  input stream3_full_n;
  input stream3_empty_n;
  input stream4_i_full_n;
  input mOutPtr_reg_0_sp_1;
  input [0:0]int_ap_idle_reg;
  input Block_entry_frame_counter_wr_proc_U0_ap_start;
  input [0:0]int_ap_idle_reg_0;
  input stream1_empty_n;
  input stream2_full_n;
  input stream2_empty_n;
  input reconstruct_signal_U0_stream6_write;
  input [0:0]\num_data_cnt_reg[0] ;
  input empty_n;
  input start_for_reconstruct_signal_U0_full_n;
  input compute_magnitude_square_U0_ap_start;
  input ap_rst_n;
  input pop_0;
  input [11:0]mOutPtr_reg;

  wire Block_entry_frame_counter_wr_proc_U0_ap_start;
  wire [0:0]DI;
  wire [0:0]E;
  wire [3:0]O;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire compute_magnitude_square_U0_ap_ready;
  wire compute_magnitude_square_U0_ap_start;
  wire compute_magnitude_square_U0_stream2_write;
  wire dout_vld_reg;
  wire [0:0]dout_vld_reg_0;
  wire [0:0]dout_vld_reg_1;
  wire dout_vld_reg_2;
  wire empty_n;
  wire flow_control_loop_pipe_U_n_9;
  wire [8:0]i_021_fu_42;
  wire \i_021_fu_42[5]_i_2_n_0 ;
  wire \i_021_fu_42[8]_i_4_n_0 ;
  wire [0:0]int_ap_idle_reg;
  wire [0:0]int_ap_idle_reg_0;
  wire \mOutPtr[0]_i_3_n_0 ;
  wire \mOutPtr[0]_i_4_n_0 ;
  wire \mOutPtr[0]_i_5_n_0 ;
  wire \mOutPtr[0]_i_6_n_0 ;
  wire \mOutPtr[0]_i_7_n_0 ;
  wire \mOutPtr[0]_i_8_n_0 ;
  wire \mOutPtr[4]_i_2__4_n_0 ;
  wire \mOutPtr[4]_i_3__4_n_0 ;
  wire \mOutPtr[4]_i_4__0_n_0 ;
  wire \mOutPtr[4]_i_5_n_0 ;
  wire \mOutPtr[8]_i_2_n_0 ;
  wire \mOutPtr[8]_i_3_n_0 ;
  wire \mOutPtr[8]_i_4_n_0 ;
  wire \mOutPtr[8]_i_5_n_0 ;
  wire [11:0]mOutPtr_reg;
  wire \mOutPtr_reg[0]_i_2_n_0 ;
  wire \mOutPtr_reg[0]_i_2_n_1 ;
  wire \mOutPtr_reg[0]_i_2_n_2 ;
  wire \mOutPtr_reg[0]_i_2_n_3 ;
  wire [3:0]\mOutPtr_reg[10] ;
  wire \mOutPtr_reg[4]_i_1_n_0 ;
  wire \mOutPtr_reg[4]_i_1_n_1 ;
  wire \mOutPtr_reg[4]_i_1_n_2 ;
  wire \mOutPtr_reg[4]_i_1_n_3 ;
  wire [3:0]\mOutPtr_reg[7] ;
  wire \mOutPtr_reg[8]_i_1_n_1 ;
  wire \mOutPtr_reg[8]_i_1_n_2 ;
  wire \mOutPtr_reg[8]_i_1_n_3 ;
  wire mOutPtr_reg_0_sn_1;
  wire [0:0]\num_data_cnt_reg[0] ;
  wire [8:0]p_1_in;
  wire p_8_in;
  wire pop;
  wire pop_0;
  wire push;
  wire reconstruct_signal_U0_stream6_write;
  wire start_for_reconstruct_signal_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1__0_n_0;
  wire start_once_reg_reg_0;
  wire stream1_empty_n;
  wire stream2_empty_n;
  wire stream2_full_n;
  wire stream3_empty_n;
  wire stream3_full_n;
  wire stream4_i_full_n;
  wire [3:3]\NLW_mOutPtr_reg[8]_i_1_CO_UNCONNECTED ;

  assign mOutPtr_reg_0_sn_1 = mOutPtr_reg_0_sp_1;
  LUT6 #(
    .INIT(64'h2EEEEEEECCCCCCCC)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(start_once_reg_reg_0),
        .I3(stream1_empty_n),
        .I4(stream2_full_n),
        .I5(stream3_full_n),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hD111111133333333)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(start_once_reg_reg_0),
        .I3(stream1_empty_n),
        .I4(stream2_full_n),
        .I5(stream3_full_n),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \ap_CS_fsm[1]_i_2__0 
       (.I0(start_once_reg),
        .I1(start_for_reconstruct_signal_U0_full_n),
        .I2(compute_magnitude_square_U0_ap_start),
        .O(start_once_reg_reg_0));
  (* FSM_ENCODING = "none" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .PRE(ap_rst_n_inv),
        .Q(Q[0]));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(ap_NS_fsm[1]),
        .Q(Q[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_6 flow_control_loop_pipe_U
       (.D(p_1_in),
        .E(flow_control_loop_pipe_U_n_9),
        .Q(i_021_fu_42),
        .ap_clk(ap_clk),
        .ap_loop_init_reg_0(Q),
        .ap_rst_n(ap_rst_n),
        .compute_magnitude_square_U0_ap_ready(compute_magnitude_square_U0_ap_ready),
        .\i_021_fu_42_reg[0] (start_once_reg_reg_0),
        .\i_021_fu_42_reg[5] (\i_021_fu_42[5]_i_2_n_0 ),
        .\i_021_fu_42_reg[6] (\i_021_fu_42[8]_i_4_n_0 ),
        .stream1_empty_n(stream1_empty_n),
        .stream2_full_n(stream2_full_n),
        .stream3_full_n(stream3_full_n));
  LUT5 #(
    .INIT(32'h80000000)) 
    \i_021_fu_42[5]_i_2 
       (.I0(i_021_fu_42[4]),
        .I1(i_021_fu_42[2]),
        .I2(i_021_fu_42[0]),
        .I3(i_021_fu_42[1]),
        .I4(i_021_fu_42[3]),
        .O(\i_021_fu_42[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_021_fu_42[8]_i_4 
       (.I0(i_021_fu_42[5]),
        .I1(i_021_fu_42[3]),
        .I2(i_021_fu_42[1]),
        .I3(i_021_fu_42[0]),
        .I4(i_021_fu_42[2]),
        .I5(i_021_fu_42[4]),
        .O(\i_021_fu_42[8]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i_021_fu_42_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[0]),
        .Q(i_021_fu_42[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i_021_fu_42_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[1]),
        .Q(i_021_fu_42[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i_021_fu_42_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[2]),
        .Q(i_021_fu_42[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i_021_fu_42_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[3]),
        .Q(i_021_fu_42[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i_021_fu_42_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[4]),
        .Q(i_021_fu_42[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i_021_fu_42_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[5]),
        .Q(i_021_fu_42[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i_021_fu_42_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[6]),
        .Q(i_021_fu_42[6]));
  FDCE #(
    .INIT(1'b0)) 
    \i_021_fu_42_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[7]),
        .Q(i_021_fu_42[7]));
  FDCE #(
    .INIT(1'b0)) 
    \i_021_fu_42_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[8]),
        .Q(i_021_fu_42[8]));
  LUT4 #(
    .INIT(16'h0800)) 
    int_ap_idle_i_3
       (.I0(Q[0]),
        .I1(int_ap_idle_reg),
        .I2(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .I3(int_ap_idle_reg_0),
        .O(\ap_CS_fsm_reg[0]_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \mOutPtr[0]_i_3 
       (.I0(push),
        .I1(pop_0),
        .O(\mOutPtr[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mOutPtr[0]_i_4 
       (.I0(push),
        .I1(pop_0),
        .O(\mOutPtr[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[0]_i_5 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[3]),
        .O(\mOutPtr[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[0]_i_6 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[2]),
        .O(\mOutPtr[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[0]_i_7 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[1]),
        .O(\mOutPtr[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \mOutPtr[0]_i_8 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[0]),
        .O(\mOutPtr[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1FE0E0E0E0E0E0E0)) 
    \mOutPtr[4]_i_1__0 
       (.I0(Q[1]),
        .I1(compute_magnitude_square_U0_stream2_write),
        .I2(stream3_full_n),
        .I3(stream3_empty_n),
        .I4(stream4_i_full_n),
        .I5(mOutPtr_reg_0_sn_1),
        .O(E));
  LUT2 #(
    .INIT(4'h6)) 
    \mOutPtr[4]_i_1__3 
       (.I0(pop),
        .I1(\num_data_cnt_reg[0] ),
        .O(dout_vld_reg_1));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[4]_i_2__4 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[7]),
        .O(\mOutPtr[4]_i_2__4_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[4]_i_3__4 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[6]),
        .O(\mOutPtr[4]_i_3__4_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[4]_i_4__0 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[5]),
        .O(\mOutPtr[4]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[4]_i_5 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[4]),
        .O(\mOutPtr[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[8]_i_2 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[11]),
        .O(\mOutPtr[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[8]_i_3 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[10]),
        .O(\mOutPtr[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[8]_i_4 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[9]),
        .O(\mOutPtr[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    \mOutPtr[8]_i_5 
       (.I0(push),
        .I1(pop_0),
        .I2(mOutPtr_reg[8]),
        .O(\mOutPtr[8]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mOutPtr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\mOutPtr_reg[0]_i_2_n_0 ,\mOutPtr_reg[0]_i_2_n_1 ,\mOutPtr_reg[0]_i_2_n_2 ,\mOutPtr_reg[0]_i_2_n_3 }),
        .CYINIT(\mOutPtr[0]_i_3_n_0 ),
        .DI({mOutPtr_reg[3:1],\mOutPtr[0]_i_4_n_0 }),
        .O(O),
        .S({\mOutPtr[0]_i_5_n_0 ,\mOutPtr[0]_i_6_n_0 ,\mOutPtr[0]_i_7_n_0 ,\mOutPtr[0]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mOutPtr_reg[4]_i_1 
       (.CI(\mOutPtr_reg[0]_i_2_n_0 ),
        .CO({\mOutPtr_reg[4]_i_1_n_0 ,\mOutPtr_reg[4]_i_1_n_1 ,\mOutPtr_reg[4]_i_1_n_2 ,\mOutPtr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(mOutPtr_reg[7:4]),
        .O(\mOutPtr_reg[7] ),
        .S({\mOutPtr[4]_i_2__4_n_0 ,\mOutPtr[4]_i_3__4_n_0 ,\mOutPtr[4]_i_4__0_n_0 ,\mOutPtr[4]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \mOutPtr_reg[8]_i_1 
       (.CI(\mOutPtr_reg[4]_i_1_n_0 ),
        .CO({\NLW_mOutPtr_reg[8]_i_1_CO_UNCONNECTED [3],\mOutPtr_reg[8]_i_1_n_1 ,\mOutPtr_reg[8]_i_1_n_2 ,\mOutPtr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mOutPtr_reg[10:8]}),
        .O(\mOutPtr_reg[10] ),
        .S({\mOutPtr[8]_i_2_n_0 ,\mOutPtr[8]_i_3_n_0 ,\mOutPtr[8]_i_4_n_0 ,\mOutPtr[8]_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_reg_3_i_1
       (.I0(start_once_reg_reg_0),
        .I1(stream1_empty_n),
        .I2(stream2_full_n),
        .I3(Q[0]),
        .I4(stream3_full_n),
        .O(push));
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_i_1__0
       (.I0(pop),
        .I1(ap_rst_n),
        .O(ap_rst_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    \num_data_cnt[0]_i_1 
       (.I0(push),
        .I1(stream2_empty_n),
        .I2(reconstruct_signal_U0_stream6_write),
        .O(dout_vld_reg));
  LUT3 #(
    .INIT(8'hD5)) 
    \num_data_cnt[0]_i_4 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .O(dout_vld_reg_2));
  LUT3 #(
    .INIT(8'h2A)) 
    \num_data_cnt[0]_i_5 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .O(DI));
  LUT5 #(
    .INIT(32'h80000000)) 
    \num_data_cnt[2]_i_2 
       (.I0(stream3_full_n),
        .I1(Q[0]),
        .I2(stream2_full_n),
        .I3(stream1_empty_n),
        .I4(start_once_reg_reg_0),
        .O(compute_magnitude_square_U0_stream2_write));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \num_data_cnt[4]_i_1__0 
       (.I0(\num_data_cnt_reg[0] ),
        .I1(start_once_reg_reg_0),
        .I2(stream1_empty_n),
        .I3(stream2_full_n),
        .I4(Q[0]),
        .I5(stream3_full_n),
        .O(dout_vld_reg_0));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \num_data_cnt[4]_i_3__0 
       (.I0(\num_data_cnt_reg[0] ),
        .I1(stream3_full_n),
        .I2(Q[0]),
        .I3(stream2_full_n),
        .I4(stream1_empty_n),
        .I5(start_once_reg_reg_0),
        .O(p_8_in));
  LUT6 #(
    .INIT(64'hB333333300000000)) 
    \raddr[3]_i_1__0 
       (.I0(start_once_reg_reg_0),
        .I1(stream1_empty_n),
        .I2(stream2_full_n),
        .I3(Q[0]),
        .I4(stream3_full_n),
        .I5(empty_n),
        .O(pop));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h5540)) 
    start_once_reg_i_1__0
       (.I0(compute_magnitude_square_U0_ap_ready),
        .I1(compute_magnitude_square_U0_ap_start),
        .I2(start_for_reconstruct_signal_U0_full_n),
        .I3(start_once_reg),
        .O(start_once_reg_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(start_once_reg_i_1__0_n_0),
        .Q(start_once_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_control_s_axi
   (interrupt,
    auto_restart_status_reg_0,
    reset_noise,
    \FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    ap_start,
    ap_sync_reg_entry_proc_U0_ap_ready_reg,
    Q,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_RVALID,
    ap_rst_n_0,
    ap_rst_n_1,
    ap_rst_n_2,
    s_axi_control_RDATA,
    ap_rst_n_inv,
    ap_clk,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    int_ap_idle_reg_0,
    ap_sync_reg_Block_entry_proc_U0_ap_ready,
    ap_enable_reg_pp0_iter1,
    internal_to_axi_U0_ap_start,
    cmp_i97_loc_full_n,
    start_once_reg_0,
    start_for_internal_to_axi_U0_full_n,
    reconstruct_signal_U0_ap_start,
    int_ap_idle_reg_1,
    \mOutPtr_reg[0] ,
    start_once_reg,
    start_for_Block_entry_frame_counter_wr_proc_U0_full_n,
    ap_sync_reg_axi_to_internal_U0_ap_ready,
    start_once_reg_1,
    start_for_compute_magnitude_square_U0_full_n,
    s_axi_control_BREADY,
    s_axi_control_AWVALID,
    s_axi_control_RREADY,
    int_task_ap_done_reg_0,
    int_ap_start_reg_0,
    axi_to_internal_U0_ap_ready,
    ap_rst_n,
    ap_sync_entry_proc_U0_ap_ready,
    s_axi_control_AWADDR,
    ap_block_pp0_stage0_11001,
    ap_loop_exit_ready_pp0_iter1_reg,
    ap_sync_axi_to_internal_U0_ap_ready);
  output interrupt;
  output auto_restart_status_reg_0;
  output reset_noise;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output ap_start;
  output ap_sync_reg_entry_proc_U0_ap_ready_reg;
  output [3:0]Q;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output ap_rst_n_0;
  output ap_rst_n_1;
  output ap_rst_n_2;
  output [23:0]s_axi_control_RDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_WVALID;
  input [2:0]s_axi_control_WSTRB;
  input [23:0]s_axi_control_WDATA;
  input int_ap_idle_reg_0;
  input ap_sync_reg_Block_entry_proc_U0_ap_ready;
  input ap_enable_reg_pp0_iter1;
  input internal_to_axi_U0_ap_start;
  input cmp_i97_loc_full_n;
  input start_once_reg_0;
  input start_for_internal_to_axi_U0_full_n;
  input reconstruct_signal_U0_ap_start;
  input int_ap_idle_reg_1;
  input \mOutPtr_reg[0] ;
  input start_once_reg;
  input start_for_Block_entry_frame_counter_wr_proc_U0_full_n;
  input ap_sync_reg_axi_to_internal_U0_ap_ready;
  input start_once_reg_1;
  input start_for_compute_magnitude_square_U0_full_n;
  input s_axi_control_BREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_RREADY;
  input int_task_ap_done_reg_0;
  input int_ap_start_reg_0;
  input axi_to_internal_U0_ap_ready;
  input ap_rst_n;
  input ap_sync_entry_proc_U0_ap_ready;
  input [3:0]s_axi_control_AWADDR;
  input ap_block_pp0_stage0_11001;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input ap_sync_axi_to_internal_U0_ap_ready;

  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [3:0]Q;
  wire [23:0]alpha;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_idle;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_2;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ap_sync_Block_entry_proc_U0_ap_ready;
  wire ap_sync_axi_to_internal_U0_ap_ready;
  wire ap_sync_entry_proc_U0_ap_ready;
  wire ap_sync_reg_Block_entry_proc_U0_ap_ready;
  wire ap_sync_reg_axi_to_internal_U0_ap_ready;
  wire ap_sync_reg_entry_proc_U0_ap_ready_reg;
  wire ar_hs;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_0;
  wire axi_to_internal_U0_ap_ready;
  wire [23:0]beta;
  wire cmp_i97_loc_full_n;
  wire enable;
  wire [23:0]int_alpha0;
  wire \int_alpha[23]_i_1_n_0 ;
  wire int_ap_idle_i_2_n_0;
  wire int_ap_idle_i_4_n_0;
  wire int_ap_idle_reg_0;
  wire int_ap_idle_reg_1;
  wire int_ap_ready__0;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_start5_out;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_reg_0;
  wire int_auto_restart_i_1_n_0;
  wire [23:0]int_beta0;
  wire \int_beta[23]_i_1_n_0 ;
  wire \int_enable[0]_i_1_n_0 ;
  wire \int_enable[0]_i_2_n_0 ;
  wire int_gie_i_1_n_0;
  wire int_gie_i_3_n_0;
  wire int_gie_reg_n_0;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier[1]_i_2_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire \int_isr_reg_n_0_[0] ;
  wire \int_isr_reg_n_0_[1] ;
  wire \int_noise_frame_count[0]_i_1_n_0 ;
  wire \int_noise_frame_count[1]_i_1_n_0 ;
  wire \int_noise_frame_count[2]_i_1_n_0 ;
  wire \int_noise_frame_count[3]_i_1_n_0 ;
  wire \int_noise_frame_count[3]_i_2_n_0 ;
  wire \int_reset_noise[0]_i_1_n_0 ;
  wire int_task_ap_done0__3;
  wire int_task_ap_done__0;
  wire int_task_ap_done_i_1_n_0;
  wire int_task_ap_done_reg_0;
  wire internal_to_axi_U0_ap_start;
  wire interrupt;
  wire \mOutPtr_reg[0] ;
  wire p_0_in;
  wire [6:6]p_0_out__0;
  wire [7:2]p_5_in;
  wire [23:0]rdata;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[1]_i_4_n_0 ;
  wire \rdata[1]_i_5_n_0 ;
  wire \rdata[23]_i_3_n_0 ;
  wire \rdata[23]_i_4_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[3]_i_3_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire reconstruct_signal_U0_ap_start;
  wire reset_noise;
  wire [5:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [3:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [23:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [23:0]s_axi_control_WDATA;
  wire [2:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire start_for_Block_entry_frame_counter_wr_proc_U0_full_n;
  wire start_for_compute_magnitude_square_U0_full_n;
  wire start_for_internal_to_axi_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_0;
  wire start_once_reg_1;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;

  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF277)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hC0FFD1D1)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_BVALID),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_AWVALID),
        .I4(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h02AA0000AAAA0000)) 
    ap_sync_reg_Block_entry_proc_U0_ap_ready_i_1
       (.I0(ap_rst_n),
        .I1(axi_to_internal_U0_ap_ready),
        .I2(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .I3(ap_sync_entry_proc_U0_ap_ready),
        .I4(ap_sync_Block_entry_proc_U0_ap_ready),
        .I5(ap_start),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'h00A8A8A8A8A8A8A8)) 
    ap_sync_reg_axi_to_internal_U0_ap_ready_i_1
       (.I0(ap_rst_n),
        .I1(axi_to_internal_U0_ap_ready),
        .I2(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .I3(ap_sync_entry_proc_U0_ap_ready),
        .I4(ap_sync_Block_entry_proc_U0_ap_ready),
        .I5(ap_start),
        .O(ap_rst_n_2));
  LUT3 #(
    .INIT(8'hF8)) 
    ap_sync_reg_axi_to_internal_U0_ap_ready_i_3
       (.I0(ap_start),
        .I1(cmp_i97_loc_full_n),
        .I2(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .O(ap_sync_Block_entry_proc_U0_ap_ready));
  LUT6 #(
    .INIT(64'h0200AA00AA00AA00)) 
    ap_sync_reg_entry_proc_U0_ap_ready_i_1
       (.I0(ap_rst_n),
        .I1(axi_to_internal_U0_ap_ready),
        .I2(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .I3(ap_sync_entry_proc_U0_ap_ready),
        .I4(ap_sync_Block_entry_proc_U0_ap_ready),
        .I5(ap_start),
        .O(ap_rst_n_1));
  LUT3 #(
    .INIT(8'hBA)) 
    auto_restart_status_i_1
       (.I0(p_5_in[7]),
        .I1(ap_idle),
        .I2(auto_restart_status_reg_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_alpha[0]_i_1 
       (.I0(alpha[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_alpha0[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(alpha[10]),
        .O(int_alpha0[10]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(alpha[11]),
        .O(int_alpha0[11]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(alpha[12]),
        .O(int_alpha0[12]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(alpha[13]),
        .O(int_alpha0[13]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(alpha[14]),
        .O(int_alpha0[14]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(alpha[15]),
        .O(int_alpha0[15]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(alpha[16]),
        .O(int_alpha0[16]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(alpha[17]),
        .O(int_alpha0[17]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(alpha[18]),
        .O(int_alpha0[18]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(alpha[19]),
        .O(int_alpha0[19]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_alpha[1]_i_1 
       (.I0(alpha[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_alpha0[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(alpha[20]),
        .O(int_alpha0[20]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(alpha[21]),
        .O(int_alpha0[21]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(alpha[22]),
        .O(int_alpha0[22]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \int_alpha[23]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(\waddr_reg_n_0_[2] ),
        .O(\int_alpha[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[23]_i_2 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(alpha[23]),
        .O(int_alpha0[23]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_alpha[2]_i_1 
       (.I0(alpha[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_alpha0[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_alpha[3]_i_1 
       (.I0(alpha[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_alpha0[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(alpha[4]),
        .O(int_alpha0[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(alpha[5]),
        .O(int_alpha0[5]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(alpha[6]),
        .O(int_alpha0[6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(alpha[7]),
        .O(int_alpha0[7]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(alpha[8]),
        .O(int_alpha0[8]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_alpha[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(alpha[9]),
        .O(int_alpha0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[0] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[0]),
        .Q(alpha[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[10] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[10]),
        .Q(alpha[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[11] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[11]),
        .Q(alpha[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[12] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[12]),
        .Q(alpha[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[13] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[13]),
        .Q(alpha[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[14] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[14]),
        .Q(alpha[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[15] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[15]),
        .Q(alpha[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[16] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[16]),
        .Q(alpha[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[17] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[17]),
        .Q(alpha[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[18] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[18]),
        .Q(alpha[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[19] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[19]),
        .Q(alpha[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[1] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[1]),
        .Q(alpha[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[20] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[20]),
        .Q(alpha[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[21] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[21]),
        .Q(alpha[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[22] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[22]),
        .Q(alpha[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[23] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[23]),
        .Q(alpha[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[2] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[2]),
        .Q(alpha[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[3] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[3]),
        .Q(alpha[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[4] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[4]),
        .Q(alpha[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[5] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[5]),
        .Q(alpha[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[6] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[6]),
        .Q(alpha[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[7] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[7]),
        .Q(alpha[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[8] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[8]),
        .Q(alpha[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_alpha_reg[9] 
       (.C(ap_clk),
        .CE(\int_alpha[23]_i_1_n_0 ),
        .D(int_alpha0[9]),
        .Q(alpha[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h0000000000008808)) 
    int_ap_idle_i_1
       (.I0(int_ap_idle_i_2_n_0),
        .I1(int_ap_idle_reg_0),
        .I2(ap_start),
        .I3(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(internal_to_axi_U0_ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h000000000000001F)) 
    int_ap_idle_i_2
       (.I0(start_once_reg_0),
        .I1(start_for_internal_to_axi_U0_full_n),
        .I2(reconstruct_signal_U0_ap_start),
        .I3(int_ap_idle_i_4_n_0),
        .I4(int_ap_idle_reg_1),
        .I5(ap_sync_reg_entry_proc_U0_ap_ready_reg),
        .O(int_ap_idle_i_2_n_0));
  LUT4 #(
    .INIT(16'h4440)) 
    int_ap_idle_i_4
       (.I0(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .I1(ap_start),
        .I2(start_once_reg_1),
        .I3(start_for_compute_magnitude_square_U0_full_n),
        .O(int_ap_idle_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_5_in[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h4440FFFF44404440)) 
    int_ap_ready_i_1
       (.I0(p_5_in[7]),
        .I1(int_ap_start_reg_0),
        .I2(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .I3(axi_to_internal_U0_ap_ready),
        .I4(int_task_ap_done0__3),
        .I5(int_ap_ready__0),
        .O(int_ap_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready__0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFABFFFFFFA800)) 
    int_ap_start_i_1
       (.I0(p_5_in[7]),
        .I1(axi_to_internal_U0_ap_ready),
        .I2(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .I3(int_ap_start_reg_0),
        .I4(int_ap_start5_out),
        .I5(ap_start),
        .O(int_ap_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    int_ap_start_i_4
       (.I0(s_axi_control_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_0 ),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(s_axi_control_WSTRB[0]),
        .O(int_ap_start5_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(p_5_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_5_in[7]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_beta[0]_i_1 
       (.I0(beta[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(int_beta0[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(beta[10]),
        .O(int_beta0[10]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(beta[11]),
        .O(int_beta0[11]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(beta[12]),
        .O(int_beta0[12]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(beta[13]),
        .O(int_beta0[13]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(beta[14]),
        .O(int_beta0[14]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(beta[15]),
        .O(int_beta0[15]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(beta[16]),
        .O(int_beta0[16]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(beta[17]),
        .O(int_beta0[17]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(beta[18]),
        .O(int_beta0[18]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(beta[19]),
        .O(int_beta0[19]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_beta[1]_i_1 
       (.I0(beta[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(int_beta0[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(beta[20]),
        .O(int_beta0[20]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(beta[21]),
        .O(int_beta0[21]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(beta[22]),
        .O(int_beta0[22]));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \int_beta[23]_i_1 
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(\waddr_reg_n_0_[2] ),
        .O(\int_beta[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[23]_i_2 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(beta[23]),
        .O(int_beta0[23]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_beta[2]_i_1 
       (.I0(beta[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(int_beta0[2]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_beta[3]_i_1 
       (.I0(beta[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(int_beta0[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(beta[4]),
        .O(int_beta0[4]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(beta[5]),
        .O(int_beta0[5]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(beta[6]),
        .O(int_beta0[6]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(beta[7]),
        .O(int_beta0[7]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(beta[8]),
        .O(int_beta0[8]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_beta[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(beta[9]),
        .O(int_beta0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[0] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[0]),
        .Q(beta[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[10] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[10]),
        .Q(beta[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[11] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[11]),
        .Q(beta[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[12] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[12]),
        .Q(beta[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[13] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[13]),
        .Q(beta[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[14] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[14]),
        .Q(beta[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[15] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[15]),
        .Q(beta[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[16] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[16]),
        .Q(beta[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[17] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[17]),
        .Q(beta[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[18] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[18]),
        .Q(beta[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[19] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[19]),
        .Q(beta[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[1] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[1]),
        .Q(beta[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[20] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[20]),
        .Q(beta[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[21] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[21]),
        .Q(beta[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[22] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[22]),
        .Q(beta[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[23] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[23]),
        .Q(beta[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[2] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[2]),
        .Q(beta[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[3] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[3]),
        .Q(beta[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[4] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[4]),
        .Q(beta[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[5] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[5]),
        .Q(beta[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[6] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[6]),
        .Q(beta[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[7] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[7]),
        .Q(beta[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[8] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[8]),
        .Q(beta[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_beta_reg[9] 
       (.C(ap_clk),
        .CE(\int_beta[23]_i_1_n_0 ),
        .D(int_beta0[9]),
        .Q(beta[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \int_enable[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_enable[0]_i_2_n_0 ),
        .I5(enable),
        .O(\int_enable[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \int_enable[0]_i_2 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .O(\int_enable[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_enable_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_enable[0]_i_1_n_0 ),
        .Q(enable),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(p_0_out__0),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(int_gie_i_3_n_0),
        .I5(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    int_gie_i_2
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .O(p_0_out__0));
  LUT3 #(
    .INIT(8'h10)) 
    int_gie_i_3
       (.I0(\waddr_reg_n_0_[5] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[2] ),
        .O(int_gie_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[4] ),
        .I4(\int_ier[1]_i_2_n_0 ),
        .I5(p_0_in),
        .O(\int_ier[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[5] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .O(\int_ier[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_0_[1] ),
        .I1(\int_isr_reg_n_0_[0] ),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7F7777778F888888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr7_out),
        .I2(ap_block_pp0_stage0_11001),
        .I3(\int_ier_reg_n_0_[0] ),
        .I4(ap_loop_exit_ready_pp0_iter1_reg),
        .I5(\int_isr_reg_n_0_[0] ),
        .O(\int_isr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \int_isr[0]_i_2 
       (.I0(p_0_out__0),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[4] ),
        .I5(\waddr_reg_n_0_[5] ),
        .O(int_isr7_out));
  LUT6 #(
    .INIT(64'hF7777777F8888888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr7_out),
        .I2(p_0_in),
        .I3(int_ap_start_reg_0),
        .I4(ap_sync_axi_to_internal_U0_ap_ready),
        .I5(\int_isr_reg_n_0_[1] ),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(\int_isr_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_noise_frame_count[0]_i_1 
       (.I0(Q[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[0]),
        .O(\int_noise_frame_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_noise_frame_count[1]_i_1 
       (.I0(Q[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[1]),
        .O(\int_noise_frame_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_noise_frame_count[2]_i_1 
       (.I0(Q[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[2]),
        .O(\int_noise_frame_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \int_noise_frame_count[3]_i_1 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(\waddr_reg_n_0_[2] ),
        .O(\int_noise_frame_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \int_noise_frame_count[3]_i_2 
       (.I0(Q[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(s_axi_control_WDATA[3]),
        .O(\int_noise_frame_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_noise_frame_count_reg[0] 
       (.C(ap_clk),
        .CE(\int_noise_frame_count[3]_i_1_n_0 ),
        .D(\int_noise_frame_count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_noise_frame_count_reg[1] 
       (.C(ap_clk),
        .CE(\int_noise_frame_count[3]_i_1_n_0 ),
        .D(\int_noise_frame_count[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_noise_frame_count_reg[2] 
       (.C(ap_clk),
        .CE(\int_noise_frame_count[3]_i_1_n_0 ),
        .D(\int_noise_frame_count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_noise_frame_count_reg[3] 
       (.C(ap_clk),
        .CE(\int_noise_frame_count[3]_i_1_n_0 ),
        .D(\int_noise_frame_count[3]_i_2_n_0 ),
        .Q(Q[3]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \int_reset_noise[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\waddr_reg_n_0_[4] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\int_enable[0]_i_2_n_0 ),
        .I5(reset_noise),
        .O(\int_reset_noise[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_reset_noise_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_reset_noise[0]_i_1_n_0 ),
        .Q(reset_noise),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hBAAAFFFFBAAABAAA)) 
    int_task_ap_done_i_1
       (.I0(int_task_ap_done_reg_0),
        .I1(p_5_in[2]),
        .I2(auto_restart_status_reg_0),
        .I3(ap_idle),
        .I4(int_task_ap_done0__3),
        .I5(int_task_ap_done__0),
        .O(int_task_ap_done_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    int_task_ap_done_i_3
       (.I0(\rdata[1]_i_2_n_0 ),
        .I1(ar_hs),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[1]),
        .I5(s_axi_control_ARADDR[0]),
        .O(int_task_ap_done0__3));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done__0),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h4440)) 
    \mOutPtr[0]_i_2 
       (.I0(\mOutPtr_reg[0] ),
        .I1(ap_start),
        .I2(start_once_reg),
        .I3(start_for_Block_entry_frame_counter_wr_proc_U0_full_n),
        .O(ap_sync_reg_entry_proc_U0_ap_ready_reg));
  LUT6 #(
    .INIT(64'h000000000000FF40)) 
    \rdata[0]_i_1 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(\rdata[0]_i_2_n_0 ),
        .I3(\rdata[0]_i_3_n_0 ),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[1]),
        .O(rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \rdata[0]_i_2 
       (.I0(beta[0]),
        .I1(\int_ier_reg_n_0_[0] ),
        .I2(reset_noise),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[4]),
        .O(\rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A00000C0C0FF00)) 
    \rdata[0]_i_3 
       (.I0(\int_isr_reg_n_0_[0] ),
        .I1(int_gie_reg_n_0),
        .I2(\rdata[1]_i_2_n_0 ),
        .I3(\rdata[0]_i_4_n_0 ),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFCA0FCAF0CA00CA)) 
    \rdata[0]_i_4 
       (.I0(ap_start),
        .I1(enable),
        .I2(s_axi_control_ARADDR[5]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(Q[0]),
        .I5(alpha[0]),
        .O(\rdata[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[10]_i_1 
       (.I0(alpha[10]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[10]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[11]_i_1 
       (.I0(alpha[11]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[11]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[12]_i_1 
       (.I0(alpha[12]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[12]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[13]_i_1 
       (.I0(alpha[13]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[13]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[14]_i_1 
       (.I0(alpha[14]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[14]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[14]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[15]_i_1 
       (.I0(alpha[15]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[15]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[15]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[16]_i_1 
       (.I0(alpha[16]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[16]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[17]_i_1 
       (.I0(alpha[17]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[17]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[18]_i_1 
       (.I0(alpha[18]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[18]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[18]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[19]_i_1 
       (.I0(alpha[19]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[19]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[19]));
  LUT6 #(
    .INIT(64'h000080800000FF00)) 
    \rdata[1]_i_1 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(\int_isr_reg_n_0_[1] ),
        .I2(\rdata[1]_i_2_n_0 ),
        .I3(\rdata[1]_i_3_n_0 ),
        .I4(\rdata[1]_i_4_n_0 ),
        .I5(s_axi_control_ARADDR[2]),
        .O(rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rdata[1]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEAAAAAAAEAAAA)) 
    \rdata[1]_i_3 
       (.I0(\rdata[1]_i_5_n_0 ),
        .I1(p_0_in),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(s_axi_control_ARADDR[3]),
        .I5(beta[1]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[1]_i_4 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .O(\rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000D5C49180)) 
    \rdata[1]_i_5 
       (.I0(s_axi_control_ARADDR[5]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(Q[1]),
        .I3(int_task_ap_done__0),
        .I4(alpha[1]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[20]_i_1 
       (.I0(alpha[20]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[20]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[20]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[21]_i_1 
       (.I0(alpha[21]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[21]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[21]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[22]_i_1 
       (.I0(alpha[22]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[22]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[23]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[23]_i_2 
       (.I0(alpha[23]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[23]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[23]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \rdata[23]_i_3 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \rdata[23]_i_4 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20200000FF000000)) 
    \rdata[2]_i_1 
       (.I0(beta[2]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(\rdata[2]_i_2_n_0 ),
        .I4(\rdata[3]_i_3_n_0 ),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[2]));
  LUT5 #(
    .INIT(32'hF000AACC)) 
    \rdata[2]_i_2 
       (.I0(alpha[2]),
        .I1(p_5_in[2]),
        .I2(Q[2]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20200000FF000000)) 
    \rdata[3]_i_1 
       (.I0(beta[3]),
        .I1(s_axi_control_ARADDR[5]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(\rdata[3]_i_2_n_0 ),
        .I4(\rdata[3]_i_3_n_0 ),
        .I5(s_axi_control_ARADDR[3]),
        .O(rdata[3]));
  LUT5 #(
    .INIT(32'hF000AACC)) 
    \rdata[3]_i_2 
       (.I0(alpha[3]),
        .I1(int_ap_ready__0),
        .I2(Q[3]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[5]),
        .O(\rdata[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \rdata[3]_i_3 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[2]),
        .O(\rdata[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[4]_i_1 
       (.I0(alpha[4]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[4]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[5]_i_1 
       (.I0(alpha[5]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[5]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[6]_i_1 
       (.I0(alpha[6]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[6]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'h80AA800A80A08000)) 
    \rdata[7]_i_1 
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(beta[7]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(alpha[7]),
        .I5(p_5_in[7]),
        .O(rdata[7]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[8]_i_1 
       (.I0(alpha[8]),
        .I1(\rdata[23]_i_3_n_0 ),
        .I2(beta[8]),
        .I3(\rdata[23]_i_4_n_0 ),
        .O(rdata[8]));
  LUT6 #(
    .INIT(64'h80AA800A80A08000)) 
    \rdata[9]_i_1 
       (.I0(\rdata[9]_i_2_n_0 ),
        .I1(beta[9]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(alpha[9]),
        .I5(interrupt),
        .O(rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rdata[9]_i_2 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[5]),
        .O(\rdata[9]_i_2_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[16]),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[17]),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[18]),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[19]),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[20]),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[21]),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[22]),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[23]),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[9]),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[5]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_entry_proc
   (start_once_reg,
    start_once_reg_reg_0,
    ap_clk,
    ap_rst_n_inv);
  output start_once_reg;
  input start_once_reg_reg_0;
  input ap_clk;
  input ap_rst_n_inv;

  wire ap_clk;
  wire ap_rst_n_inv;
  wire start_once_reg;
  wire start_once_reg_reg_0;

  FDCE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(start_once_reg_reg_0),
        .Q(start_once_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S
   (cmp_i97_loc_empty_n,
    cmp_i97_loc_full_n,
    ap_rst_n_inv,
    ap_clk,
    ap_start,
    ap_sync_reg_Block_entry_proc_U0_ap_ready,
    full_n_reg_0);
  output cmp_i97_loc_empty_n;
  output cmp_i97_loc_full_n;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_start;
  input ap_sync_reg_Block_entry_proc_U0_ap_ready;
  input full_n_reg_0;

  wire ap_clk;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ap_sync_reg_Block_entry_proc_U0_ap_ready;
  wire cmp_i97_loc_empty_n;
  wire cmp_i97_loc_full_n;
  wire [3:0]cmp_i97_loc_num_data_valid;
  wire empty_n_i_1__3_n_0;
  wire empty_n_i_2__6_n_0;
  wire full_n_i_1__3_n_0;
  wire full_n_i_2__7_n_0;
  wire full_n_reg_0;
  wire \mOutPtr[0]_i_1__9_n_0 ;
  wire \mOutPtr[1]_i_1__1_n_0 ;
  wire \mOutPtr[2]_i_1__2_n_0 ;
  wire \mOutPtr[3]_i_1__2_n_0 ;
  wire \mOutPtr[3]_i_2_n_0 ;
  wire p_9_in;

  LUT6 #(
    .INIT(64'h4C4C4C4CFF4C4C4C)) 
    empty_n_i_1__3
       (.I0(empty_n_i_2__6_n_0),
        .I1(cmp_i97_loc_empty_n),
        .I2(full_n_reg_0),
        .I3(cmp_i97_loc_full_n),
        .I4(ap_start),
        .I5(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .O(empty_n_i_1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    empty_n_i_2__6
       (.I0(cmp_i97_loc_num_data_valid[1]),
        .I1(cmp_i97_loc_num_data_valid[0]),
        .I2(cmp_i97_loc_num_data_valid[3]),
        .I3(cmp_i97_loc_num_data_valid[2]),
        .O(empty_n_i_2__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__3_n_0),
        .Q(cmp_i97_loc_empty_n),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFCC4CCC4CCC4C)) 
    full_n_i_1__3
       (.I0(full_n_i_2__7_n_0),
        .I1(cmp_i97_loc_full_n),
        .I2(ap_start),
        .I3(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .I4(cmp_i97_loc_empty_n),
        .I5(full_n_reg_0),
        .O(full_n_i_1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    full_n_i_2__7
       (.I0(cmp_i97_loc_num_data_valid[1]),
        .I1(cmp_i97_loc_num_data_valid[0]),
        .I2(cmp_i97_loc_num_data_valid[3]),
        .I3(cmp_i97_loc_num_data_valid[2]),
        .O(full_n_i_2__7_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__3_n_0),
        .Q(cmp_i97_loc_full_n),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__9 
       (.I0(cmp_i97_loc_num_data_valid[0]),
        .O(\mOutPtr[0]_i_1__9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__1 
       (.I0(cmp_i97_loc_num_data_valid[0]),
        .I1(p_9_in),
        .I2(cmp_i97_loc_num_data_valid[1]),
        .O(\mOutPtr[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \mOutPtr[2]_i_1__2 
       (.I0(p_9_in),
        .I1(cmp_i97_loc_num_data_valid[0]),
        .I2(cmp_i97_loc_num_data_valid[2]),
        .I3(cmp_i97_loc_num_data_valid[1]),
        .O(\mOutPtr[2]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hF7080808)) 
    \mOutPtr[3]_i_1__2 
       (.I0(cmp_i97_loc_full_n),
        .I1(ap_start),
        .I2(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .I3(cmp_i97_loc_empty_n),
        .I4(full_n_reg_0),
        .O(\mOutPtr[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_2 
       (.I0(p_9_in),
        .I1(cmp_i97_loc_num_data_valid[0]),
        .I2(cmp_i97_loc_num_data_valid[1]),
        .I3(cmp_i97_loc_num_data_valid[3]),
        .I4(cmp_i97_loc_num_data_valid[2]),
        .O(\mOutPtr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00404040)) 
    \mOutPtr[3]_i_3 
       (.I0(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .I1(ap_start),
        .I2(cmp_i97_loc_full_n),
        .I3(full_n_reg_0),
        .I4(cmp_i97_loc_empty_n),
        .O(p_9_in));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__2_n_0 ),
        .D(\mOutPtr[0]_i_1__9_n_0 ),
        .Q(cmp_i97_loc_num_data_valid[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__2_n_0 ),
        .D(\mOutPtr[1]_i_1__1_n_0 ),
        .Q(cmp_i97_loc_num_data_valid[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__2_n_0 ),
        .D(\mOutPtr[2]_i_1__2_n_0 ),
        .Q(cmp_i97_loc_num_data_valid[2]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__2_n_0 ),
        .D(\mOutPtr[3]_i_2_n_0 ),
        .Q(cmp_i97_loc_num_data_valid[3]),
        .R(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "denoise_top_fifo_w1_d8_S" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_1
   (reset_noise_c_dout,
    reset_noise_c_empty_n,
    reset_noise_c_full_n,
    reset_noise,
    ap_clk,
    ap_rst_n_inv,
    entry_proc_U0_noise_frame_count_c_write,
    \addr_reg[0]_0 );
  output reset_noise_c_dout;
  output reset_noise_c_empty_n;
  output reset_noise_c_full_n;
  input reset_noise;
  input ap_clk;
  input ap_rst_n_inv;
  input entry_proc_U0_noise_frame_count_c_write;
  input \addr_reg[0]_0 ;

  wire [2:0]addr;
  wire addr110_out;
  wire \addr[0]_i_1_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[2]_i_2_n_0 ;
  wire \addr_reg[0]_0 ;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire empty_n_i_1__5_n_0;
  wire entry_proc_U0_noise_frame_count_c_write;
  wire full_n_i_1__5_n_0;
  wire full_n_i_2__3_n_0;
  wire \mOutPtr[0]_i_1__7_n_0 ;
  wire \mOutPtr[1]_i_1__3_n_0 ;
  wire \mOutPtr[2]_i_1__4_n_0 ;
  wire \mOutPtr[3]_i_1__4_n_0 ;
  wire \mOutPtr[3]_i_2__1_n_0 ;
  wire p_6_in;
  wire p_9_in;
  wire reset_noise;
  wire reset_noise_c_dout;
  wire reset_noise_c_empty_n;
  wire reset_noise_c_full_n;
  wire [3:0]reset_noise_c_num_data_valid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_ShiftReg U_denoise_top_fifo_w1_d8_S_ShiftReg
       (.addr(addr),
        .ap_clk(ap_clk),
        .entry_proc_U0_noise_frame_count_c_write(entry_proc_U0_noise_frame_count_c_write),
        .reset_noise(reset_noise),
        .reset_noise_c_dout(reset_noise_c_dout),
        .\reset_noise_read_reg_380_reg[0] (reset_noise_c_full_n));
  LUT6 #(
    .INIT(64'hBFFF95FF40006A00)) 
    \addr[0]_i_1 
       (.I0(\addr_reg[0]_0 ),
        .I1(reset_noise_c_full_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(reset_noise_c_empty_n),
        .I4(\addr[2]_i_2_n_0 ),
        .I5(addr[0]),
        .O(\addr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55EFEFEFAA101010)) 
    \addr[1]_i_1 
       (.I0(addr[0]),
        .I1(\addr[2]_i_2_n_0 ),
        .I2(p_6_in),
        .I3(reset_noise_c_empty_n),
        .I4(p_9_in),
        .I5(addr[1]),
        .O(\addr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0888)) 
    \addr[1]_i_2 
       (.I0(entry_proc_U0_noise_frame_count_c_write),
        .I1(reset_noise_c_full_n),
        .I2(\addr_reg[0]_0 ),
        .I3(reset_noise_c_empty_n),
        .O(p_9_in));
  LUT6 #(
    .INIT(64'h7777FEFF88880100)) 
    \addr[2]_i_1 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(\addr[2]_i_2_n_0 ),
        .I3(p_6_in),
        .I4(addr110_out),
        .I5(addr[2]),
        .O(\addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \addr[2]_i_2 
       (.I0(reset_noise_c_num_data_valid[1]),
        .I1(reset_noise_c_num_data_valid[0]),
        .I2(reset_noise_c_num_data_valid[3]),
        .I3(reset_noise_c_num_data_valid[2]),
        .O(\addr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \addr[2]_i_3__0 
       (.I0(\addr_reg[0]_0 ),
        .I1(reset_noise_c_empty_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(reset_noise_c_full_n),
        .O(p_6_in));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \addr[2]_i_4__0 
       (.I0(\addr_reg[0]_0 ),
        .I1(reset_noise_c_full_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(reset_noise_c_empty_n),
        .O(addr110_out));
  FDRE \addr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\addr[0]_i_1_n_0 ),
        .Q(addr[0]),
        .R(ap_rst_n_inv));
  FDRE \addr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\addr[1]_i_1_n_0 ),
        .Q(addr[1]),
        .R(ap_rst_n_inv));
  FDRE \addr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\addr[2]_i_1_n_0 ),
        .Q(addr[2]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    empty_n_i_1__5
       (.I0(\addr[2]_i_2_n_0 ),
        .I1(reset_noise_c_empty_n),
        .I2(\addr_reg[0]_0 ),
        .I3(reset_noise_c_full_n),
        .I4(entry_proc_U0_noise_frame_count_c_write),
        .O(empty_n_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__5_n_0),
        .Q(reset_noise_c_empty_n),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    full_n_i_1__5
       (.I0(full_n_i_2__3_n_0),
        .I1(reset_noise_c_full_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(reset_noise_c_empty_n),
        .I4(\addr_reg[0]_0 ),
        .O(full_n_i_1__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    full_n_i_2__3
       (.I0(reset_noise_c_num_data_valid[1]),
        .I1(reset_noise_c_num_data_valid[0]),
        .I2(reset_noise_c_num_data_valid[3]),
        .I3(reset_noise_c_num_data_valid[2]),
        .O(full_n_i_2__3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__5_n_0),
        .Q(reset_noise_c_full_n),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__7 
       (.I0(reset_noise_c_num_data_valid[0]),
        .O(\mOutPtr[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__3 
       (.I0(reset_noise_c_num_data_valid[0]),
        .I1(p_9_in),
        .I2(reset_noise_c_num_data_valid[1]),
        .O(\mOutPtr[1]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \mOutPtr[2]_i_1__4 
       (.I0(p_9_in),
        .I1(reset_noise_c_num_data_valid[0]),
        .I2(reset_noise_c_num_data_valid[2]),
        .I3(reset_noise_c_num_data_valid[1]),
        .O(\mOutPtr[2]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mOutPtr[3]_i_1__4 
       (.I0(reset_noise_c_full_n),
        .I1(entry_proc_U0_noise_frame_count_c_write),
        .I2(reset_noise_c_empty_n),
        .I3(\addr_reg[0]_0 ),
        .O(\mOutPtr[3]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_2__1 
       (.I0(p_9_in),
        .I1(reset_noise_c_num_data_valid[0]),
        .I2(reset_noise_c_num_data_valid[1]),
        .I3(reset_noise_c_num_data_valid[3]),
        .I4(reset_noise_c_num_data_valid[2]),
        .O(\mOutPtr[3]_i_2__1_n_0 ));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__4_n_0 ),
        .D(\mOutPtr[0]_i_1__7_n_0 ),
        .Q(reset_noise_c_num_data_valid[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__4_n_0 ),
        .D(\mOutPtr[1]_i_1__3_n_0 ),
        .Q(reset_noise_c_num_data_valid[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__4_n_0 ),
        .D(\mOutPtr[2]_i_1__4_n_0 ),
        .Q(reset_noise_c_num_data_valid[2]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__4_n_0 ),
        .D(\mOutPtr[3]_i_2__1_n_0 ),
        .Q(reset_noise_c_num_data_valid[3]),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w1_d8_S_ShiftReg
   (reset_noise_c_dout,
    reset_noise,
    addr,
    ap_clk,
    \reset_noise_read_reg_380_reg[0] ,
    entry_proc_U0_noise_frame_count_c_write);
  output reset_noise_c_dout;
  input reset_noise;
  input [2:0]addr;
  input ap_clk;
  input \reset_noise_read_reg_380_reg[0] ;
  input entry_proc_U0_noise_frame_count_c_write;

  wire [2:0]addr;
  wire ap_clk;
  wire entry_proc_U0_noise_frame_count_c_write;
  wire push;
  wire reset_noise;
  wire reset_noise_c_dout;
  wire \reset_noise_read_reg_380_reg[0] ;

  (* srl_bus_name = "inst/\\reset_noise_c_U/U_denoise_top_fifo_w1_d8_S_ShiftReg/SRL_SIG_reg[7] " *) 
  (* srl_name = "inst/\\reset_noise_c_U/U_denoise_top_fifo_w1_d8_S_ShiftReg/SRL_SIG_reg[7][0]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[7][0]_srl8 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(reset_noise),
        .Q(reset_noise_c_dout));
  LUT2 #(
    .INIT(4'h8)) 
    \SRL_SIG_reg[7][0]_srl8_i_1__0 
       (.I0(\reset_noise_read_reg_380_reg[0] ),
        .I1(entry_proc_U0_noise_frame_count_c_write),
        .O(push));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S
   (stream4_i_empty_n,
    full_n_reg_0,
    ap_block_pp0_stage0_11001,
    ap_clk,
    AR,
    stream3_empty_n,
    \ap_CS_fsm_reg[4] ,
    Q,
    pop,
    p_6_in,
    E);
  output stream4_i_empty_n;
  output full_n_reg_0;
  output ap_block_pp0_stage0_11001;
  input ap_clk;
  input [0:0]AR;
  input stream3_empty_n;
  input \ap_CS_fsm_reg[4] ;
  input [0:0]Q;
  input pop;
  input p_6_in;
  input [0:0]E;

  wire [0:0]AR;
  wire [0:0]E;
  wire [0:0]Q;
  wire \ap_CS_fsm_reg[4] ;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire empty_n1;
  wire empty_n_i_1_n_0;
  wire full_n1;
  wire full_n_i_1_n_0;
  wire full_n_reg_0;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1__8_n_0 ;
  wire \mOutPtr[2]_i_1_n_0 ;
  wire \mOutPtr[3]_i_1_n_0 ;
  wire \mOutPtr[4]_i_2_n_0 ;
  wire [4:0]mOutPtr_reg;
  wire p_6_in;
  wire p_9_in;
  wire pop;
  wire stream3_empty_n;
  wire stream4_i_empty_n;

  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h70)) 
    ap_loop_init_int_i_2
       (.I0(stream3_empty_n),
        .I1(full_n_reg_0),
        .I2(\ap_CS_fsm_reg[4] ),
        .O(ap_block_pp0_stage0_11001));
  LUT4 #(
    .INIT(16'hBFAA)) 
    empty_n_i_1
       (.I0(p_9_in),
        .I1(empty_n1),
        .I2(p_6_in),
        .I3(stream4_i_empty_n),
        .O(empty_n_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    empty_n_i_2
       (.I0(mOutPtr_reg[0]),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[1]),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[4]),
        .O(empty_n1));
  FDCE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(empty_n_i_1_n_0),
        .Q(stream4_i_empty_n));
  LUT3 #(
    .INIT(8'h54)) 
    full_n_i_1
       (.I0(full_n1),
        .I1(p_6_in),
        .I2(full_n_reg_0),
        .O(full_n_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    full_n_i_2
       (.I0(p_9_in),
        .I1(mOutPtr_reg[2]),
        .I2(mOutPtr_reg[3]),
        .I3(mOutPtr_reg[0]),
        .I4(mOutPtr_reg[1]),
        .I5(mOutPtr_reg[4]),
        .O(full_n1));
  FDPE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1_n_0),
        .PRE(AR),
        .Q(full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(mOutPtr_reg[0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__8 
       (.I0(mOutPtr_reg[0]),
        .I1(p_9_in),
        .I2(mOutPtr_reg[1]),
        .O(\mOutPtr[1]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \mOutPtr[2]_i_1 
       (.I0(mOutPtr_reg[0]),
        .I1(p_9_in),
        .I2(mOutPtr_reg[2]),
        .I3(mOutPtr_reg[1]),
        .O(\mOutPtr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_1 
       (.I0(p_9_in),
        .I1(mOutPtr_reg[0]),
        .I2(mOutPtr_reg[1]),
        .I3(mOutPtr_reg[3]),
        .I4(mOutPtr_reg[2]),
        .O(\mOutPtr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \mOutPtr[4]_i_2 
       (.I0(mOutPtr_reg[1]),
        .I1(mOutPtr_reg[0]),
        .I2(p_9_in),
        .I3(mOutPtr_reg[2]),
        .I4(mOutPtr_reg[4]),
        .I5(mOutPtr_reg[3]),
        .O(\mOutPtr[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \mOutPtr[4]_i_4 
       (.I0(Q),
        .I1(stream3_empty_n),
        .I2(full_n_reg_0),
        .I3(\ap_CS_fsm_reg[4] ),
        .I4(pop),
        .O(p_9_in));
  FDCE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .CLR(AR),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(mOutPtr_reg[0]));
  FDCE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .CLR(AR),
        .D(\mOutPtr[1]_i_1__8_n_0 ),
        .Q(mOutPtr_reg[1]));
  FDCE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .CLR(AR),
        .D(\mOutPtr[2]_i_1_n_0 ),
        .Q(mOutPtr_reg[2]));
  FDCE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .CLR(AR),
        .D(\mOutPtr[3]_i_1_n_0 ),
        .Q(mOutPtr_reg[3]));
  FDCE \mOutPtr_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .CLR(AR),
        .D(\mOutPtr[4]_i_2_n_0 ),
        .Q(mOutPtr_reg[4]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x
   (stream3_empty_n,
    stream3_full_n,
    ap_rst_n_inv,
    ap_clk,
    compute_magnitude_square_U0_stream2_write,
    Q,
    \mOutPtr_reg[4]_0 ,
    stream4_i_full_n,
    p_6_in,
    E);
  output stream3_empty_n;
  output stream3_full_n;
  input ap_rst_n_inv;
  input ap_clk;
  input compute_magnitude_square_U0_stream2_write;
  input [0:0]Q;
  input \mOutPtr_reg[4]_0 ;
  input stream4_i_full_n;
  input p_6_in;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire compute_magnitude_square_U0_stream2_write;
  wire empty_n_i_1__0_n_0;
  wire empty_n_i_3__1_n_0;
  wire full_n_i_1__0_n_0;
  wire full_n_i_2__6_n_0;
  wire \mOutPtr[0]_i_1__2_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[2]_i_1__0_n_0 ;
  wire \mOutPtr[3]_i_1__0_n_0 ;
  wire \mOutPtr[4]_i_2__0_n_0 ;
  wire \mOutPtr_reg[4]_0 ;
  wire p_6_in;
  wire p_9_in;
  wire stream3_empty_n;
  wire stream3_full_n;
  wire [4:0]stream3_num_data_valid;
  wire stream4_i_full_n;

  LUT4 #(
    .INIT(16'hF7F0)) 
    empty_n_i_1__0
       (.I0(p_6_in),
        .I1(empty_n_i_3__1_n_0),
        .I2(p_9_in),
        .I3(stream3_empty_n),
        .O(empty_n_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    empty_n_i_3__1
       (.I0(stream3_num_data_valid[0]),
        .I1(stream3_num_data_valid[1]),
        .I2(stream3_num_data_valid[2]),
        .I3(stream3_num_data_valid[4]),
        .I4(stream3_num_data_valid[3]),
        .O(empty_n_i_3__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__0_n_0),
        .Q(stream3_empty_n),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h7770)) 
    full_n_i_1__0
       (.I0(p_9_in),
        .I1(full_n_i_2__6_n_0),
        .I2(p_6_in),
        .I3(stream3_full_n),
        .O(full_n_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    full_n_i_2__6
       (.I0(stream3_num_data_valid[0]),
        .I1(stream3_num_data_valid[1]),
        .I2(stream3_num_data_valid[2]),
        .I3(stream3_num_data_valid[4]),
        .I4(stream3_num_data_valid[3]),
        .O(full_n_i_2__6_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__0_n_0),
        .Q(stream3_full_n),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__2 
       (.I0(stream3_num_data_valid[0]),
        .O(\mOutPtr[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1 
       (.I0(stream3_num_data_valid[0]),
        .I1(p_9_in),
        .I2(stream3_num_data_valid[1]),
        .O(\mOutPtr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \mOutPtr[2]_i_1__0 
       (.I0(p_9_in),
        .I1(stream3_num_data_valid[0]),
        .I2(stream3_num_data_valid[2]),
        .I3(stream3_num_data_valid[1]),
        .O(\mOutPtr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_1__0 
       (.I0(p_9_in),
        .I1(stream3_num_data_valid[0]),
        .I2(stream3_num_data_valid[1]),
        .I3(stream3_num_data_valid[3]),
        .I4(stream3_num_data_valid[2]),
        .O(\mOutPtr[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \mOutPtr[4]_i_2__0 
       (.I0(p_9_in),
        .I1(stream3_num_data_valid[0]),
        .I2(stream3_num_data_valid[1]),
        .I3(stream3_num_data_valid[2]),
        .I4(stream3_num_data_valid[4]),
        .I5(stream3_num_data_valid[3]),
        .O(\mOutPtr[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A8A8A8A8A8)) 
    \mOutPtr[4]_i_3__0 
       (.I0(stream3_full_n),
        .I1(compute_magnitude_square_U0_stream2_write),
        .I2(Q),
        .I3(\mOutPtr_reg[4]_0 ),
        .I4(stream4_i_full_n),
        .I5(stream3_empty_n),
        .O(p_9_in));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__2_n_0 ),
        .Q(stream3_num_data_valid[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(stream3_num_data_valid[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[2]_i_1__0_n_0 ),
        .Q(stream3_num_data_valid[2]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[3]_i_1__0_n_0 ),
        .Q(stream3_num_data_valid[3]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[4]_i_2__0_n_0 ),
        .Q(stream3_num_data_valid[4]),
        .R(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "denoise_top_fifo_w24_d16_S_x" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d16_S_x_2
   (stream5_empty_n,
    stream5_full_n,
    ap_rst_n_inv,
    ap_clk,
    ap_block_pp0_stage0_11001,
    ap_enable_reg_pp0_iter4,
    Q,
    reconstruct_signal_U0_stream6_write,
    p_9_in);
  output stream5_empty_n;
  output stream5_full_n;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_block_pp0_stage0_11001;
  input ap_enable_reg_pp0_iter4;
  input [0:0]Q;
  input reconstruct_signal_U0_stream6_write;
  input p_9_in;

  wire [4:0]Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid;
  wire [0:0]Q;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter4;
  wire ap_rst_n_inv;
  wire empty_n_i_1__1_n_0;
  wire empty_n_i_3__2_n_0;
  wire full_n_i_1__1_n_0;
  wire full_n_i_2__8_n_0;
  wire \mOutPtr[0]_i_1__3_n_0 ;
  wire \mOutPtr[1]_i_1__0_n_0 ;
  wire \mOutPtr[2]_i_1__1_n_0 ;
  wire \mOutPtr[3]_i_1__1_n_0 ;
  wire \mOutPtr[4]_i_1__1_n_0 ;
  wire \mOutPtr[4]_i_2__1_n_0 ;
  wire p_6_in;
  wire p_9_in;
  wire reconstruct_signal_U0_stream6_write;
  wire stream5_empty_n;
  wire stream5_full_n;

  LUT4 #(
    .INIT(16'hF7F0)) 
    empty_n_i_1__1
       (.I0(p_6_in),
        .I1(empty_n_i_3__2_n_0),
        .I2(p_9_in),
        .I3(stream5_empty_n),
        .O(empty_n_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hA8A800A8A8A8A8A8)) 
    empty_n_i_2__1
       (.I0(stream5_empty_n),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(Q),
        .I3(ap_enable_reg_pp0_iter4),
        .I4(ap_block_pp0_stage0_11001),
        .I5(stream5_full_n),
        .O(p_6_in));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    empty_n_i_3__2
       (.I0(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[0]),
        .I1(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[1]),
        .I2(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[2]),
        .I3(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[4]),
        .I4(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[3]),
        .O(empty_n_i_3__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__1_n_0),
        .Q(stream5_empty_n),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h7770)) 
    full_n_i_1__1
       (.I0(p_9_in),
        .I1(full_n_i_2__8_n_0),
        .I2(p_6_in),
        .I3(stream5_full_n),
        .O(full_n_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    full_n_i_2__8
       (.I0(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[0]),
        .I1(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[1]),
        .I2(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[2]),
        .I3(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[4]),
        .I4(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[3]),
        .O(full_n_i_2__8_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__1_n_0),
        .Q(stream5_full_n),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__3 
       (.I0(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[0]),
        .O(\mOutPtr[0]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__0 
       (.I0(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[0]),
        .I1(p_9_in),
        .I2(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[1]),
        .O(\mOutPtr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \mOutPtr[2]_i_1__1 
       (.I0(p_9_in),
        .I1(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[0]),
        .I2(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[2]),
        .I3(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[1]),
        .O(\mOutPtr[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_1__1 
       (.I0(p_9_in),
        .I1(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[0]),
        .I2(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[1]),
        .I3(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[3]),
        .I4(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[2]),
        .O(\mOutPtr[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hDFDFDF2020202020)) 
    \mOutPtr[4]_i_1__1 
       (.I0(stream5_full_n),
        .I1(ap_block_pp0_stage0_11001),
        .I2(ap_enable_reg_pp0_iter4),
        .I3(Q),
        .I4(reconstruct_signal_U0_stream6_write),
        .I5(stream5_empty_n),
        .O(\mOutPtr[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \mOutPtr[4]_i_2__1 
       (.I0(p_9_in),
        .I1(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[0]),
        .I2(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[1]),
        .I3(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[2]),
        .I4(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[4]),
        .I5(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[3]),
        .O(\mOutPtr[4]_i_2__1_n_0 ));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__1_n_0 ),
        .D(\mOutPtr[0]_i_1__3_n_0 ),
        .Q(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__1_n_0 ),
        .D(\mOutPtr[1]_i_1__0_n_0 ),
        .Q(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__1_n_0 ),
        .D(\mOutPtr[2]_i_1__1_n_0 ),
        .Q(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[2]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__1_n_0 ),
        .D(\mOutPtr[3]_i_1__1_n_0 ),
        .Q(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[3]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[4] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__1_n_0 ),
        .D(\mOutPtr[4]_i_2__1_n_0 ),
        .Q(Block_entry_frame_counter_wr_proc_U0_stream5_num_data_valid[4]),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S
   (alpha_c_empty_n,
    alpha_c_full_n,
    SR,
    ap_clk,
    entry_proc_U0_noise_frame_count_c_write,
    full_n_reg_0);
  output alpha_c_empty_n;
  output alpha_c_full_n;
  input [0:0]SR;
  input ap_clk;
  input entry_proc_U0_noise_frame_count_c_write;
  input full_n_reg_0;

  wire [0:0]SR;
  wire alpha_c_empty_n;
  wire alpha_c_full_n;
  wire [3:0]alpha_c_num_data_valid;
  wire ap_clk;
  wire empty_n_i_1__7_n_0;
  wire empty_n_i_2__2_n_0;
  wire entry_proc_U0_noise_frame_count_c_write;
  wire full_n_i_1__7_n_0;
  wire full_n_i_2__1_n_0;
  wire full_n_reg_0;
  wire \mOutPtr[0]_i_1__5_n_0 ;
  wire \mOutPtr[1]_i_1__5_n_0 ;
  wire \mOutPtr[2]_i_1__6_n_0 ;
  wire \mOutPtr[3]_i_1__6_n_0 ;
  wire \mOutPtr[3]_i_2__3_n_0 ;
  wire p_9_in;

  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    empty_n_i_1__7
       (.I0(empty_n_i_2__2_n_0),
        .I1(alpha_c_empty_n),
        .I2(full_n_reg_0),
        .I3(alpha_c_full_n),
        .I4(entry_proc_U0_noise_frame_count_c_write),
        .O(empty_n_i_1__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    empty_n_i_2__2
       (.I0(alpha_c_num_data_valid[1]),
        .I1(alpha_c_num_data_valid[0]),
        .I2(alpha_c_num_data_valid[3]),
        .I3(alpha_c_num_data_valid[2]),
        .O(empty_n_i_2__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__7_n_0),
        .Q(alpha_c_empty_n),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    full_n_i_1__7
       (.I0(full_n_i_2__1_n_0),
        .I1(alpha_c_full_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(alpha_c_empty_n),
        .I4(full_n_reg_0),
        .O(full_n_i_1__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    full_n_i_2__1
       (.I0(alpha_c_num_data_valid[1]),
        .I1(alpha_c_num_data_valid[0]),
        .I2(alpha_c_num_data_valid[3]),
        .I3(alpha_c_num_data_valid[2]),
        .O(full_n_i_2__1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__7_n_0),
        .Q(alpha_c_full_n),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__5 
       (.I0(alpha_c_num_data_valid[0]),
        .O(\mOutPtr[0]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__5 
       (.I0(alpha_c_num_data_valid[0]),
        .I1(p_9_in),
        .I2(alpha_c_num_data_valid[1]),
        .O(\mOutPtr[1]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \mOutPtr[2]_i_1__6 
       (.I0(p_9_in),
        .I1(alpha_c_num_data_valid[0]),
        .I2(alpha_c_num_data_valid[2]),
        .I3(alpha_c_num_data_valid[1]),
        .O(\mOutPtr[2]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mOutPtr[3]_i_1__6 
       (.I0(alpha_c_full_n),
        .I1(entry_proc_U0_noise_frame_count_c_write),
        .I2(alpha_c_empty_n),
        .I3(full_n_reg_0),
        .O(\mOutPtr[3]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_2__3 
       (.I0(p_9_in),
        .I1(alpha_c_num_data_valid[0]),
        .I2(alpha_c_num_data_valid[1]),
        .I3(alpha_c_num_data_valid[3]),
        .I4(alpha_c_num_data_valid[2]),
        .O(\mOutPtr[3]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \mOutPtr[3]_i_3__2 
       (.I0(entry_proc_U0_noise_frame_count_c_write),
        .I1(alpha_c_full_n),
        .I2(full_n_reg_0),
        .I3(alpha_c_empty_n),
        .O(p_9_in));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__6_n_0 ),
        .D(\mOutPtr[0]_i_1__5_n_0 ),
        .Q(alpha_c_num_data_valid[0]),
        .R(SR));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__6_n_0 ),
        .D(\mOutPtr[1]_i_1__5_n_0 ),
        .Q(alpha_c_num_data_valid[1]),
        .R(SR));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__6_n_0 ),
        .D(\mOutPtr[2]_i_1__6_n_0 ),
        .Q(alpha_c_num_data_valid[2]),
        .R(SR));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__6_n_0 ),
        .D(\mOutPtr[3]_i_2__3_n_0 ),
        .Q(alpha_c_num_data_valid[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "denoise_top_fifo_w24_d8_S" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w24_d8_S_0
   (beta_c_empty_n,
    entry_proc_U0_noise_frame_count_c_write,
    ap_sync_reg_entry_proc_U0_ap_ready_reg,
    ap_sync_entry_proc_U0_ap_ready,
    SR,
    ap_clk,
    full_n_reg_0,
    int_ap_start_reg,
    ap_sync_reg_Block_entry_proc_U0_ap_ready,
    cmp_i97_loc_full_n,
    ap_start,
    alpha_c_full_n,
    noise_frame_count_c_full_n,
    reset_noise_c_full_n,
    full_n_reg_1);
  output beta_c_empty_n;
  output entry_proc_U0_noise_frame_count_c_write;
  output ap_sync_reg_entry_proc_U0_ap_ready_reg;
  output ap_sync_entry_proc_U0_ap_ready;
  input [0:0]SR;
  input ap_clk;
  input full_n_reg_0;
  input int_ap_start_reg;
  input ap_sync_reg_Block_entry_proc_U0_ap_ready;
  input cmp_i97_loc_full_n;
  input ap_start;
  input alpha_c_full_n;
  input noise_frame_count_c_full_n;
  input reset_noise_c_full_n;
  input full_n_reg_1;

  wire [0:0]SR;
  wire alpha_c_full_n;
  wire ap_clk;
  wire ap_start;
  wire ap_sync_entry_proc_U0_ap_ready;
  wire ap_sync_reg_Block_entry_proc_U0_ap_ready;
  wire ap_sync_reg_entry_proc_U0_ap_ready_reg;
  wire beta_c_empty_n;
  wire beta_c_full_n;
  wire [3:0]beta_c_num_data_valid;
  wire cmp_i97_loc_full_n;
  wire empty_n_i_1__6_n_0;
  wire empty_n_i_2__3_n_0;
  wire entry_proc_U0_noise_frame_count_c_write;
  wire full_n_i_1__6_n_0;
  wire full_n_i_2__2_n_0;
  wire full_n_reg_0;
  wire full_n_reg_1;
  wire int_ap_start_reg;
  wire \mOutPtr[0]_i_1__6_n_0 ;
  wire \mOutPtr[1]_i_1__4_n_0 ;
  wire \mOutPtr[2]_i_1__5_n_0 ;
  wire \mOutPtr[3]_i_1__5_n_0 ;
  wire \mOutPtr[3]_i_2__2_n_0 ;
  wire noise_frame_count_c_full_n;
  wire p_9_in;
  wire reset_noise_c_full_n;

  LUT5 #(
    .INIT(32'h80000000)) 
    \SRL_SIG_reg[7][0]_srl8_i_2 
       (.I0(beta_c_full_n),
        .I1(alpha_c_full_n),
        .I2(noise_frame_count_c_full_n),
        .I3(reset_noise_c_full_n),
        .I4(full_n_reg_1),
        .O(entry_proc_U0_noise_frame_count_c_write));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ap_sync_reg_axi_to_internal_U0_ap_ready_i_2
       (.I0(entry_proc_U0_noise_frame_count_c_write),
        .I1(int_ap_start_reg),
        .O(ap_sync_entry_proc_U0_ap_ready));
  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    empty_n_i_1__6
       (.I0(empty_n_i_2__3_n_0),
        .I1(beta_c_empty_n),
        .I2(full_n_reg_0),
        .I3(beta_c_full_n),
        .I4(entry_proc_U0_noise_frame_count_c_write),
        .O(empty_n_i_1__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    empty_n_i_2__3
       (.I0(beta_c_num_data_valid[1]),
        .I1(beta_c_num_data_valid[0]),
        .I2(beta_c_num_data_valid[3]),
        .I3(beta_c_num_data_valid[2]),
        .O(empty_n_i_2__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__6_n_0),
        .Q(beta_c_empty_n),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    full_n_i_1__6
       (.I0(full_n_i_2__2_n_0),
        .I1(beta_c_full_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(beta_c_empty_n),
        .I4(full_n_reg_0),
        .O(full_n_i_1__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    full_n_i_2__2
       (.I0(beta_c_num_data_valid[1]),
        .I1(beta_c_num_data_valid[0]),
        .I2(beta_c_num_data_valid[3]),
        .I3(beta_c_num_data_valid[2]),
        .O(full_n_i_2__2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__6_n_0),
        .Q(beta_c_full_n),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hEEE0E0E0)) 
    int_ap_start_i_3
       (.I0(int_ap_start_reg),
        .I1(entry_proc_U0_noise_frame_count_c_write),
        .I2(ap_sync_reg_Block_entry_proc_U0_ap_ready),
        .I3(cmp_i97_loc_full_n),
        .I4(ap_start),
        .O(ap_sync_reg_entry_proc_U0_ap_ready_reg));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__6 
       (.I0(beta_c_num_data_valid[0]),
        .O(\mOutPtr[0]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__4 
       (.I0(beta_c_num_data_valid[0]),
        .I1(p_9_in),
        .I2(beta_c_num_data_valid[1]),
        .O(\mOutPtr[1]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \mOutPtr[2]_i_1__5 
       (.I0(p_9_in),
        .I1(beta_c_num_data_valid[0]),
        .I2(beta_c_num_data_valid[2]),
        .I3(beta_c_num_data_valid[1]),
        .O(\mOutPtr[2]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mOutPtr[3]_i_1__5 
       (.I0(beta_c_full_n),
        .I1(entry_proc_U0_noise_frame_count_c_write),
        .I2(beta_c_empty_n),
        .I3(full_n_reg_0),
        .O(\mOutPtr[3]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_2__2 
       (.I0(p_9_in),
        .I1(beta_c_num_data_valid[0]),
        .I2(beta_c_num_data_valid[1]),
        .I3(beta_c_num_data_valid[3]),
        .I4(beta_c_num_data_valid[2]),
        .O(\mOutPtr[3]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \mOutPtr[3]_i_3__1 
       (.I0(entry_proc_U0_noise_frame_count_c_write),
        .I1(beta_c_full_n),
        .I2(full_n_reg_0),
        .I3(beta_c_empty_n),
        .O(p_9_in));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__5_n_0 ),
        .D(\mOutPtr[0]_i_1__6_n_0 ),
        .Q(beta_c_num_data_valid[0]),
        .R(SR));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__5_n_0 ),
        .D(\mOutPtr[1]_i_1__4_n_0 ),
        .Q(beta_c_num_data_valid[1]),
        .R(SR));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__5_n_0 ),
        .D(\mOutPtr[2]_i_1__5_n_0 ),
        .Q(beta_c_num_data_valid[2]),
        .R(SR));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__5_n_0 ),
        .D(\mOutPtr[3]_i_2__2_n_0 ),
        .Q(beta_c_num_data_valid[3]),
        .R(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S
   (noise_frame_count_c_full_n,
    empty_n_reg_0,
    out,
    ap_rst_n_inv,
    ap_clk,
    beta_c_empty_n,
    cmp_i97_loc_empty_n,
    reset_noise_c_empty_n,
    alpha_c_empty_n,
    Block_entry_frame_counter_wr_proc_U0_ap_start,
    entry_proc_U0_noise_frame_count_c_write,
    \addr_reg[0]_0 ,
    in);
  output noise_frame_count_c_full_n;
  output empty_n_reg_0;
  output [3:0]out;
  input ap_rst_n_inv;
  input ap_clk;
  input beta_c_empty_n;
  input cmp_i97_loc_empty_n;
  input reset_noise_c_empty_n;
  input alpha_c_empty_n;
  input Block_entry_frame_counter_wr_proc_U0_ap_start;
  input entry_proc_U0_noise_frame_count_c_write;
  input \addr_reg[0]_0 ;
  input [3:0]in;

  wire Block_entry_frame_counter_wr_proc_U0_ap_start;
  wire [2:0]addr;
  wire addr110_out;
  wire \addr[0]_i_1_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[2]_i_2__0_n_0 ;
  wire \addr_reg[0]_0 ;
  wire alpha_c_empty_n;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire beta_c_empty_n;
  wire cmp_i97_loc_empty_n;
  wire empty_n_i_1__4_n_0;
  wire empty_n_reg_0;
  wire entry_proc_U0_noise_frame_count_c_write;
  wire full_n_i_1__4_n_0;
  wire full_n_i_2__4_n_0;
  wire [3:0]in;
  wire \mOutPtr[0]_i_1__8_n_0 ;
  wire \mOutPtr[1]_i_1__2_n_0 ;
  wire \mOutPtr[2]_i_1__3_n_0 ;
  wire \mOutPtr[3]_i_1__3_n_0 ;
  wire \mOutPtr[3]_i_2__0_n_0 ;
  wire noise_frame_count_c_empty_n;
  wire noise_frame_count_c_full_n;
  wire [3:0]noise_frame_count_c_num_data_valid;
  wire [3:0]out;
  wire p_6_in;
  wire p_9_in;
  wire push;
  wire reset_noise_c_empty_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S_ShiftReg U_denoise_top_fifo_w4_d8_S_ShiftReg
       (.addr(addr),
        .ap_clk(ap_clk),
        .entry_proc_U0_noise_frame_count_c_write(entry_proc_U0_noise_frame_count_c_write),
        .in(in),
        .\noise_frame_count_read_reg_372_reg[3] (noise_frame_count_c_full_n),
        .out(out),
        .push(push));
  LUT6 #(
    .INIT(64'hBFFF95FF40006A00)) 
    \addr[0]_i_1 
       (.I0(\addr_reg[0]_0 ),
        .I1(noise_frame_count_c_full_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(noise_frame_count_c_empty_n),
        .I4(\addr[2]_i_2__0_n_0 ),
        .I5(addr[0]),
        .O(\addr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF5FFF0010A000)) 
    \addr[1]_i_1 
       (.I0(addr[0]),
        .I1(\addr[2]_i_2__0_n_0 ),
        .I2(noise_frame_count_c_empty_n),
        .I3(push),
        .I4(\addr_reg[0]_0 ),
        .I5(addr[1]),
        .O(\addr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777FEFF88880100)) 
    \addr[2]_i_1 
       (.I0(addr[1]),
        .I1(addr[0]),
        .I2(\addr[2]_i_2__0_n_0 ),
        .I3(p_6_in),
        .I4(addr110_out),
        .I5(addr[2]),
        .O(\addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \addr[2]_i_2__0 
       (.I0(noise_frame_count_c_num_data_valid[1]),
        .I1(noise_frame_count_c_num_data_valid[0]),
        .I2(noise_frame_count_c_num_data_valid[3]),
        .I3(noise_frame_count_c_num_data_valid[2]),
        .O(\addr[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \addr[2]_i_3 
       (.I0(\addr_reg[0]_0 ),
        .I1(noise_frame_count_c_empty_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(noise_frame_count_c_full_n),
        .O(p_6_in));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \addr[2]_i_4 
       (.I0(\addr_reg[0]_0 ),
        .I1(noise_frame_count_c_full_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(noise_frame_count_c_empty_n),
        .O(addr110_out));
  FDRE \addr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\addr[0]_i_1_n_0 ),
        .Q(addr[0]),
        .R(ap_rst_n_inv));
  FDRE \addr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\addr[1]_i_1_n_0 ),
        .Q(addr[1]),
        .R(ap_rst_n_inv));
  FDRE \addr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\addr[2]_i_1_n_0 ),
        .Q(addr[2]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    empty_n_i_1__4
       (.I0(\addr[2]_i_2__0_n_0 ),
        .I1(noise_frame_count_c_empty_n),
        .I2(\addr_reg[0]_0 ),
        .I3(noise_frame_count_c_full_n),
        .I4(entry_proc_U0_noise_frame_count_c_write),
        .O(empty_n_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__4_n_0),
        .Q(noise_frame_count_c_empty_n),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hFF4C4C4C)) 
    full_n_i_1__4
       (.I0(full_n_i_2__4_n_0),
        .I1(noise_frame_count_c_full_n),
        .I2(entry_proc_U0_noise_frame_count_c_write),
        .I3(noise_frame_count_c_empty_n),
        .I4(\addr_reg[0]_0 ),
        .O(full_n_i_1__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    full_n_i_2__4
       (.I0(noise_frame_count_c_num_data_valid[1]),
        .I1(noise_frame_count_c_num_data_valid[0]),
        .I2(noise_frame_count_c_num_data_valid[3]),
        .I3(noise_frame_count_c_num_data_valid[2]),
        .O(full_n_i_2__4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__4_n_0),
        .Q(noise_frame_count_c_full_n),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__8 
       (.I0(noise_frame_count_c_num_data_valid[0]),
        .O(\mOutPtr[0]_i_1__8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \mOutPtr[1]_i_1__2 
       (.I0(noise_frame_count_c_num_data_valid[0]),
        .I1(p_9_in),
        .I2(noise_frame_count_c_num_data_valid[1]),
        .O(\mOutPtr[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h78E1)) 
    \mOutPtr[2]_i_1__3 
       (.I0(p_9_in),
        .I1(noise_frame_count_c_num_data_valid[0]),
        .I2(noise_frame_count_c_num_data_valid[2]),
        .I3(noise_frame_count_c_num_data_valid[1]),
        .O(\mOutPtr[2]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \mOutPtr[3]_i_1__3 
       (.I0(noise_frame_count_c_full_n),
        .I1(entry_proc_U0_noise_frame_count_c_write),
        .I2(noise_frame_count_c_empty_n),
        .I3(\addr_reg[0]_0 ),
        .O(\mOutPtr[3]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \mOutPtr[3]_i_2__0 
       (.I0(p_9_in),
        .I1(noise_frame_count_c_num_data_valid[0]),
        .I2(noise_frame_count_c_num_data_valid[1]),
        .I3(noise_frame_count_c_num_data_valid[3]),
        .I4(noise_frame_count_c_num_data_valid[2]),
        .O(\mOutPtr[3]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0888)) 
    \mOutPtr[3]_i_3__0 
       (.I0(entry_proc_U0_noise_frame_count_c_write),
        .I1(noise_frame_count_c_full_n),
        .I2(\addr_reg[0]_0 ),
        .I3(noise_frame_count_c_empty_n),
        .O(p_9_in));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__3_n_0 ),
        .D(\mOutPtr[0]_i_1__8_n_0 ),
        .Q(noise_frame_count_c_num_data_valid[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__3_n_0 ),
        .D(\mOutPtr[1]_i_1__2_n_0 ),
        .Q(noise_frame_count_c_num_data_valid[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__3_n_0 ),
        .D(\mOutPtr[2]_i_1__3_n_0 ),
        .Q(noise_frame_count_c_num_data_valid[2]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr[3]_i_1__3_n_0 ),
        .D(\mOutPtr[3]_i_2__0_n_0 ),
        .Q(noise_frame_count_c_num_data_valid[3]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \reset_noise_read_reg_380[0]_i_2 
       (.I0(noise_frame_count_c_empty_n),
        .I1(beta_c_empty_n),
        .I2(cmp_i97_loc_empty_n),
        .I3(reset_noise_c_empty_n),
        .I4(alpha_c_empty_n),
        .I5(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .O(empty_n_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w4_d8_S_ShiftReg
   (push,
    out,
    \noise_frame_count_read_reg_372_reg[3] ,
    entry_proc_U0_noise_frame_count_c_write,
    in,
    addr,
    ap_clk);
  output push;
  output [3:0]out;
  input \noise_frame_count_read_reg_372_reg[3] ;
  input entry_proc_U0_noise_frame_count_c_write;
  input [3:0]in;
  input [2:0]addr;
  input ap_clk;

  wire [2:0]addr;
  wire ap_clk;
  wire entry_proc_U0_noise_frame_count_c_write;
  wire [3:0]in;
  wire \noise_frame_count_read_reg_372_reg[3] ;
  wire [3:0]out;
  wire push;

  (* srl_bus_name = "inst/\\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7] " *) 
  (* srl_name = "inst/\\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7][0]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[7][0]_srl8 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[0]),
        .Q(out[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \SRL_SIG_reg[7][0]_srl8_i_1 
       (.I0(\noise_frame_count_read_reg_372_reg[3] ),
        .I1(entry_proc_U0_noise_frame_count_c_write),
        .O(push));
  (* srl_bus_name = "inst/\\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7] " *) 
  (* srl_name = "inst/\\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7][1]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[7][1]_srl8 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[1]),
        .Q(out[1]));
  (* srl_bus_name = "inst/\\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7] " *) 
  (* srl_name = "inst/\\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7][2]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[7][2]_srl8 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[2]),
        .Q(out[2]));
  (* srl_bus_name = "inst/\\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7] " *) 
  (* srl_name = "inst/\\noise_frame_count_c_U/U_denoise_top_fifo_w4_d8_S_ShiftReg/SRL_SIG_reg[7][3]_srl8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SRL_SIG_reg[7][3]_srl8 
       (.A0(addr[0]),
        .A1(addr[1]),
        .A2(addr[2]),
        .A3(1'b0),
        .CE(push),
        .CLK(ap_clk),
        .D(in[3]),
        .Q(out[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A
   (DIADI,
    empty_n,
    stream1_empty_n,
    stream1_full_n,
    ap_clk,
    mem_reg,
    ap_rst_n_inv,
    axi_to_internal_U0_stream1_din,
    E,
    compute_magnitude_square_U0_stream2_write,
    p_8_in,
    pop,
    mOutPtr111_out,
    stream3_full_n,
    Q,
    stream2_full_n,
    dout_vld_reg_0,
    \mOutPtr_reg[0]_0 ,
    \num_data_cnt_reg[0]_0 );
  output [10:0]DIADI;
  output empty_n;
  output stream1_empty_n;
  output stream1_full_n;
  input ap_clk;
  input mem_reg;
  input ap_rst_n_inv;
  input [64:0]axi_to_internal_U0_stream1_din;
  input [0:0]E;
  input compute_magnitude_square_U0_stream2_write;
  input p_8_in;
  input pop;
  input mOutPtr111_out;
  input stream3_full_n;
  input [0:0]Q;
  input stream2_full_n;
  input dout_vld_reg_0;
  input [0:0]\mOutPtr_reg[0]_0 ;
  input [0:0]\num_data_cnt_reg[0]_0 ;

  wire [10:0]DIADI;
  wire [0:0]E;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire [64:0]axi_to_internal_U0_stream1_din;
  wire compute_magnitude_square_U0_stream2_write;
  wire dout_vld_i_1_n_0;
  wire dout_vld_reg_0;
  wire empty_n;
  wire empty_n_i_1__8_n_0;
  wire empty_n_i_2__4_n_0;
  wire full_n1__4;
  wire full_n_i_1__8_n_0;
  wire mOutPtr111_out;
  wire \mOutPtr[0]_i_1__1_n_0 ;
  wire \mOutPtr[1]_i_1__7_n_0 ;
  wire \mOutPtr[2]_i_1__8_n_0 ;
  wire \mOutPtr[3]_i_1__8_n_0 ;
  wire \mOutPtr[4]_i_2__3_n_0 ;
  wire [4:0]mOutPtr_reg;
  wire [0:0]\mOutPtr_reg[0]_0 ;
  wire mem_reg;
  wire \num_data_cnt[0]_i_1__0_n_0 ;
  wire \num_data_cnt[1]_i_1__0_n_0 ;
  wire \num_data_cnt[2]_i_1__0_n_0 ;
  wire \num_data_cnt[3]_i_1__0_n_0 ;
  wire \num_data_cnt[4]_i_2__0_n_0 ;
  wire [4:0]num_data_cnt_reg;
  wire [0:0]\num_data_cnt_reg[0]_0 ;
  wire p_8_in;
  wire pop;
  wire [3:0]raddr;
  wire \raddr[0]_i_1__0_n_0 ;
  wire \raddr[1]_i_1_n_0 ;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_2_n_0 ;
  wire stream1_empty_n;
  wire stream1_full_n;
  wire stream2_full_n;
  wire stream3_full_n;
  wire [3:0]waddr;
  wire \waddr[0]_i_1__0_n_0 ;
  wire \waddr[1]_i_1_n_0 ;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[3]_i_1_n_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram_4 U_denoise_top_fifo_w65_d16_A_ram
       (.DIADI(DIADI),
        .E(E),
        .Q(raddr),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_to_internal_U0_stream1_din(axi_to_internal_U0_stream1_din),
        .mem_reg_0(mem_reg),
        .mem_reg_1(waddr));
  LUT6 #(
    .INIT(64'hBFFFAAAAFFFFAAAA)) 
    dout_vld_i_1
       (.I0(empty_n),
        .I1(stream3_full_n),
        .I2(Q),
        .I3(stream2_full_n),
        .I4(stream1_empty_n),
        .I5(dout_vld_reg_0),
        .O(dout_vld_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dout_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_vld_i_1_n_0),
        .Q(stream1_empty_n),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hF730)) 
    empty_n_i_1__8
       (.I0(empty_n_i_2__4_n_0),
        .I1(pop),
        .I2(E),
        .I3(empty_n),
        .O(empty_n_i_1__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    empty_n_i_2__4
       (.I0(mOutPtr_reg[0]),
        .I1(mOutPtr_reg[1]),
        .I2(mOutPtr_reg[2]),
        .I3(mOutPtr_reg[4]),
        .I4(mOutPtr_reg[3]),
        .O(empty_n_i_2__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__8_n_0),
        .Q(empty_n),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h55551000)) 
    full_n_i_1__8
       (.I0(full_n1__4),
        .I1(E),
        .I2(stream1_empty_n),
        .I3(compute_magnitude_square_U0_stream2_write),
        .I4(stream1_full_n),
        .O(full_n_i_1__8_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    full_n_i_2__0
       (.I0(num_data_cnt_reg[3]),
        .I1(num_data_cnt_reg[4]),
        .I2(num_data_cnt_reg[2]),
        .I3(num_data_cnt_reg[1]),
        .I4(num_data_cnt_reg[0]),
        .I5(p_8_in),
        .O(full_n1__4));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__8_n_0),
        .Q(stream1_full_n),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__1 
       (.I0(mOutPtr_reg[0]),
        .O(\mOutPtr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h9A65)) 
    \mOutPtr[1]_i_1__7 
       (.I0(mOutPtr_reg[0]),
        .I1(pop),
        .I2(E),
        .I3(mOutPtr_reg[1]),
        .O(\mOutPtr[1]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hBF40F40B)) 
    \mOutPtr[2]_i_1__8 
       (.I0(pop),
        .I1(E),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[2]),
        .I4(mOutPtr_reg[1]),
        .O(\mOutPtr[2]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF4000FFF4000B)) 
    \mOutPtr[3]_i_1__8 
       (.I0(pop),
        .I1(E),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[1]),
        .I4(mOutPtr_reg[3]),
        .I5(mOutPtr_reg[2]),
        .O(\mOutPtr[3]_i_1__8_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \mOutPtr[4]_i_2__3 
       (.I0(mOutPtr111_out),
        .I1(mOutPtr_reg[0]),
        .I2(mOutPtr_reg[1]),
        .I3(mOutPtr_reg[2]),
        .I4(mOutPtr_reg[4]),
        .I5(mOutPtr_reg[3]),
        .O(\mOutPtr[4]_i_2__3_n_0 ));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr[0]_i_1__1_n_0 ),
        .Q(mOutPtr_reg[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr[1]_i_1__7_n_0 ),
        .Q(mOutPtr_reg[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr[2]_i_1__8_n_0 ),
        .Q(mOutPtr_reg[2]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr[3]_i_1__8_n_0 ),
        .Q(mOutPtr_reg[3]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[4] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr[4]_i_2__3_n_0 ),
        .Q(mOutPtr_reg[4]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \num_data_cnt[0]_i_1__0 
       (.I0(num_data_cnt_reg[0]),
        .O(\num_data_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h95AA6A55)) 
    \num_data_cnt[1]_i_1__0 
       (.I0(num_data_cnt_reg[0]),
        .I1(stream1_empty_n),
        .I2(compute_magnitude_square_U0_stream2_write),
        .I3(E),
        .I4(num_data_cnt_reg[1]),
        .O(\num_data_cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF7000FF70008F)) 
    \num_data_cnt[2]_i_1__0 
       (.I0(stream1_empty_n),
        .I1(compute_magnitude_square_U0_stream2_write),
        .I2(E),
        .I3(num_data_cnt_reg[0]),
        .I4(num_data_cnt_reg[2]),
        .I5(num_data_cnt_reg[1]),
        .O(\num_data_cnt[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \num_data_cnt[3]_i_1__0 
       (.I0(p_8_in),
        .I1(num_data_cnt_reg[0]),
        .I2(num_data_cnt_reg[1]),
        .I3(num_data_cnt_reg[3]),
        .I4(num_data_cnt_reg[2]),
        .O(\num_data_cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \num_data_cnt[4]_i_2__0 
       (.I0(p_8_in),
        .I1(num_data_cnt_reg[0]),
        .I2(num_data_cnt_reg[1]),
        .I3(num_data_cnt_reg[2]),
        .I4(num_data_cnt_reg[4]),
        .I5(num_data_cnt_reg[3]),
        .O(\num_data_cnt[4]_i_2__0_n_0 ));
  FDRE \num_data_cnt_reg[0] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt[0]_i_1__0_n_0 ),
        .Q(num_data_cnt_reg[0]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[1] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt[1]_i_1__0_n_0 ),
        .Q(num_data_cnt_reg[1]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[2] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt[2]_i_1__0_n_0 ),
        .Q(num_data_cnt_reg[2]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[3] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt[3]_i_1__0_n_0 ),
        .Q(num_data_cnt_reg[3]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[4] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt[4]_i_2__0_n_0 ),
        .Q(num_data_cnt_reg[4]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \raddr[0]_i_1__0 
       (.I0(raddr[1]),
        .I1(raddr[2]),
        .I2(raddr[3]),
        .I3(raddr[0]),
        .O(\raddr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h2666)) 
    \raddr[1]_i_1 
       (.I0(raddr[0]),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .O(\raddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h3878)) 
    \raddr[2]_i_1 
       (.I0(raddr[0]),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .O(\raddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \raddr[3]_i_2 
       (.I0(raddr[0]),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .O(\raddr[3]_i_2_n_0 ));
  FDRE \raddr_reg[0] 
       (.C(ap_clk),
        .CE(pop),
        .D(\raddr[0]_i_1__0_n_0 ),
        .Q(raddr[0]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[1] 
       (.C(ap_clk),
        .CE(pop),
        .D(\raddr[1]_i_1_n_0 ),
        .Q(raddr[1]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[2] 
       (.C(ap_clk),
        .CE(pop),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(raddr[2]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[3] 
       (.C(ap_clk),
        .CE(pop),
        .D(\raddr[3]_i_2_n_0 ),
        .Q(raddr[3]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \waddr[0]_i_1__0 
       (.I0(waddr[1]),
        .I1(waddr[2]),
        .I2(waddr[3]),
        .I3(waddr[0]),
        .O(\waddr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h2666)) 
    \waddr[1]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .I3(waddr[3]),
        .O(\waddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h3878)) 
    \waddr[2]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .I3(waddr[3]),
        .O(\waddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \waddr[3]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .I3(waddr[3]),
        .O(\waddr[3]_i_1_n_0 ));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\waddr[0]_i_1__0_n_0 ),
        .Q(waddr[0]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\waddr[1]_i_1_n_0 ),
        .Q(waddr[1]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(waddr[2]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(waddr[3]),
        .R(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "denoise_top_fifo_w65_d16_A" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_3
   (D,
    stream6_empty_n,
    stream6_full_n,
    ap_clk,
    ap_rst_n_inv,
    DOBDO,
    push,
    ap_ready_int,
    p_8_in,
    ap_rst_n,
    E);
  output [63:0]D;
  output stream6_empty_n;
  output stream6_full_n;
  input ap_clk;
  input ap_rst_n_inv;
  input [0:0]DOBDO;
  input push;
  input ap_ready_int;
  input p_8_in;
  input ap_rst_n;
  input [0:0]E;

  wire [63:0]D;
  wire [0:0]DOBDO;
  wire [0:0]E;
  wire ap_clk;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire dout_vld_i_1__1_n_0;
  wire empty_n;
  wire empty_n_i_1__10_n_0;
  wire empty_n_i_2__7_n_0;
  wire full_n_i_1__10_n_0;
  wire full_n_i_2__9_n_0;
  wire mOutPtr111_out;
  wire \mOutPtr[0]_i_1__4_n_0 ;
  wire \mOutPtr[1]_i_1__6_n_0 ;
  wire \mOutPtr[2]_i_1__7_n_0 ;
  wire \mOutPtr[3]_i_1__7_n_0 ;
  wire \mOutPtr[4]_i_1__2_n_0 ;
  wire \mOutPtr[4]_i_2__2_n_0 ;
  wire [4:0]mOutPtr_reg;
  wire \num_data_cnt[0]_i_1__1_n_0 ;
  wire \num_data_cnt[1]_i_1_n_0 ;
  wire \num_data_cnt[2]_i_1_n_0 ;
  wire \num_data_cnt[3]_i_1_n_0 ;
  wire \num_data_cnt[4]_i_2_n_0 ;
  wire [4:0]num_data_cnt_reg;
  wire p_8_in;
  wire pop;
  wire push;
  wire [3:0]raddr;
  wire \raddr[0]_i_1__1_n_0 ;
  wire \raddr[1]_i_1_n_0 ;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[3]_i_2_n_0 ;
  wire stream6_empty_n;
  wire stream6_full_n;
  wire [3:0]waddr;
  wire \waddr[0]_i_1__1_n_0 ;
  wire \waddr[1]_i_1_n_0 ;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[3]_i_1_n_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram U_denoise_top_fifo_w65_d16_A_ram
       (.D(D),
        .DOBDO(DOBDO),
        .Q(raddr),
        .ap_clk(ap_clk),
        .ap_ready_int(ap_ready_int),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_inv(ap_rst_n_inv),
        .empty_n(empty_n),
        .mem_reg_0(waddr),
        .mem_reg_1(stream6_empty_n),
        .push(push));
  LUT3 #(
    .INIT(8'hBA)) 
    dout_vld_i_1__1
       (.I0(empty_n),
        .I1(ap_ready_int),
        .I2(stream6_empty_n),
        .O(dout_vld_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dout_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_vld_i_1__1_n_0),
        .Q(stream6_empty_n),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'hFFFF5D00)) 
    empty_n_i_1__10
       (.I0(empty_n_i_2__7_n_0),
        .I1(stream6_empty_n),
        .I2(ap_ready_int),
        .I3(empty_n),
        .I4(push),
        .O(empty_n_i_1__10_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    empty_n_i_2__7
       (.I0(mOutPtr_reg[0]),
        .I1(mOutPtr_reg[1]),
        .I2(mOutPtr_reg[2]),
        .I3(mOutPtr_reg[4]),
        .I4(mOutPtr_reg[3]),
        .O(empty_n_i_2__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__10_n_0),
        .Q(empty_n),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7773000)) 
    full_n_i_1__10
       (.I0(full_n_i_2__9_n_0),
        .I1(push),
        .I2(stream6_empty_n),
        .I3(ap_ready_int),
        .I4(stream6_full_n),
        .O(full_n_i_1__10_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    full_n_i_2__9
       (.I0(num_data_cnt_reg[0]),
        .I1(num_data_cnt_reg[1]),
        .I2(num_data_cnt_reg[2]),
        .I3(num_data_cnt_reg[4]),
        .I4(num_data_cnt_reg[3]),
        .O(full_n_i_2__9_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__10_n_0),
        .Q(stream6_full_n),
        .S(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__4 
       (.I0(mOutPtr_reg[0]),
        .O(\mOutPtr[0]_i_1__4_n_0 ));
  LUT6 #(
    .INIT(64'hA655AAAA59AA5555)) 
    \mOutPtr[1]_i_1__6 
       (.I0(mOutPtr_reg[0]),
        .I1(stream6_empty_n),
        .I2(ap_ready_int),
        .I3(empty_n),
        .I4(push),
        .I5(mOutPtr_reg[1]),
        .O(\mOutPtr[1]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'hBF40F40B)) 
    \mOutPtr[2]_i_1__7 
       (.I0(pop),
        .I1(push),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[2]),
        .I4(mOutPtr_reg[1]),
        .O(\mOutPtr[2]_i_1__7_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF4000FFF4000B)) 
    \mOutPtr[3]_i_1__7 
       (.I0(pop),
        .I1(push),
        .I2(mOutPtr_reg[0]),
        .I3(mOutPtr_reg[1]),
        .I4(mOutPtr_reg[3]),
        .I5(mOutPtr_reg[2]),
        .O(\mOutPtr[3]_i_1__7_n_0 ));
  LUT4 #(
    .INIT(16'h2FD0)) 
    \mOutPtr[4]_i_1__2 
       (.I0(stream6_empty_n),
        .I1(ap_ready_int),
        .I2(empty_n),
        .I3(push),
        .O(\mOutPtr[4]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \mOutPtr[4]_i_2__2 
       (.I0(mOutPtr111_out),
        .I1(mOutPtr_reg[0]),
        .I2(mOutPtr_reg[1]),
        .I3(mOutPtr_reg[2]),
        .I4(mOutPtr_reg[4]),
        .I5(mOutPtr_reg[3]),
        .O(\mOutPtr[4]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT4 #(
    .INIT(16'h2A22)) 
    \mOutPtr[4]_i_3__2 
       (.I0(push),
        .I1(empty_n),
        .I2(ap_ready_int),
        .I3(stream6_empty_n),
        .O(mOutPtr111_out));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__2_n_0 ),
        .D(\mOutPtr[0]_i_1__4_n_0 ),
        .Q(mOutPtr_reg[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__2_n_0 ),
        .D(\mOutPtr[1]_i_1__6_n_0 ),
        .Q(mOutPtr_reg[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__2_n_0 ),
        .D(\mOutPtr[2]_i_1__7_n_0 ),
        .Q(mOutPtr_reg[2]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__2_n_0 ),
        .D(\mOutPtr[3]_i_1__7_n_0 ),
        .Q(mOutPtr_reg[3]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[4] 
       (.C(ap_clk),
        .CE(\mOutPtr[4]_i_1__2_n_0 ),
        .D(\mOutPtr[4]_i_2__2_n_0 ),
        .Q(mOutPtr_reg[4]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \num_data_cnt[0]_i_1__1 
       (.I0(num_data_cnt_reg[0]),
        .O(\num_data_cnt[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h95AA6A55)) 
    \num_data_cnt[1]_i_1 
       (.I0(num_data_cnt_reg[0]),
        .I1(stream6_empty_n),
        .I2(ap_ready_int),
        .I3(push),
        .I4(num_data_cnt_reg[1]),
        .O(\num_data_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF7000FF70008F)) 
    \num_data_cnt[2]_i_1 
       (.I0(stream6_empty_n),
        .I1(ap_ready_int),
        .I2(push),
        .I3(num_data_cnt_reg[0]),
        .I4(num_data_cnt_reg[2]),
        .I5(num_data_cnt_reg[1]),
        .O(\num_data_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \num_data_cnt[3]_i_1 
       (.I0(p_8_in),
        .I1(num_data_cnt_reg[0]),
        .I2(num_data_cnt_reg[1]),
        .I3(num_data_cnt_reg[3]),
        .I4(num_data_cnt_reg[2]),
        .O(\num_data_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFE0001)) 
    \num_data_cnt[4]_i_2 
       (.I0(p_8_in),
        .I1(num_data_cnt_reg[0]),
        .I2(num_data_cnt_reg[1]),
        .I3(num_data_cnt_reg[2]),
        .I4(num_data_cnt_reg[4]),
        .I5(num_data_cnt_reg[3]),
        .O(\num_data_cnt[4]_i_2_n_0 ));
  FDRE \num_data_cnt_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\num_data_cnt[0]_i_1__1_n_0 ),
        .Q(num_data_cnt_reg[0]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\num_data_cnt[1]_i_1_n_0 ),
        .Q(num_data_cnt_reg[1]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\num_data_cnt[2]_i_1_n_0 ),
        .Q(num_data_cnt_reg[2]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\num_data_cnt[3]_i_1_n_0 ),
        .Q(num_data_cnt_reg[3]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\num_data_cnt[4]_i_2_n_0 ),
        .Q(num_data_cnt_reg[4]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \raddr[0]_i_1__1 
       (.I0(raddr[1]),
        .I1(raddr[2]),
        .I2(raddr[3]),
        .I3(raddr[0]),
        .O(\raddr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h2666)) 
    \raddr[1]_i_1 
       (.I0(raddr[0]),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .O(\raddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h3878)) 
    \raddr[2]_i_1 
       (.I0(raddr[0]),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .O(\raddr[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD0)) 
    \raddr[3]_i_1 
       (.I0(stream6_empty_n),
        .I1(ap_ready_int),
        .I2(empty_n),
        .O(pop));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \raddr[3]_i_2 
       (.I0(raddr[0]),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(raddr[3]),
        .O(\raddr[3]_i_2_n_0 ));
  FDRE \raddr_reg[0] 
       (.C(ap_clk),
        .CE(pop),
        .D(\raddr[0]_i_1__1_n_0 ),
        .Q(raddr[0]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[1] 
       (.C(ap_clk),
        .CE(pop),
        .D(\raddr[1]_i_1_n_0 ),
        .Q(raddr[1]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[2] 
       (.C(ap_clk),
        .CE(pop),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(raddr[2]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[3] 
       (.C(ap_clk),
        .CE(pop),
        .D(\raddr[3]_i_2_n_0 ),
        .Q(raddr[3]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \waddr[0]_i_1__1 
       (.I0(waddr[1]),
        .I1(waddr[2]),
        .I2(waddr[3]),
        .I3(waddr[0]),
        .O(\waddr[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'h2666)) 
    \waddr[1]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .I3(waddr[3]),
        .O(\waddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h3878)) 
    \waddr[2]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .I3(waddr[3]),
        .O(\waddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \waddr[3]_i_1 
       (.I0(waddr[0]),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .I3(waddr[3]),
        .O(\waddr[3]_i_1_n_0 ));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[0]_i_1__1_n_0 ),
        .Q(waddr[0]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[1]_i_1_n_0 ),
        .Q(waddr[1]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(waddr[2]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(waddr[3]),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram
   (D,
    ap_clk,
    ap_rst_n_inv,
    Q,
    mem_reg_0,
    DOBDO,
    push,
    empty_n,
    ap_ready_int,
    mem_reg_1,
    ap_rst_n);
  output [63:0]D;
  input ap_clk;
  input ap_rst_n_inv;
  input [3:0]Q;
  input [3:0]mem_reg_0;
  input [0:0]DOBDO;
  input push;
  input empty_n;
  input ap_ready_int;
  input mem_reg_1;
  input ap_rst_n;

  wire [63:0]D;
  wire [0:0]DOBDO;
  wire [3:0]Q;
  wire ap_clk;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire empty_n;
  wire [3:0]mem_reg_0;
  wire mem_reg_1;
  wire mem_reg_i_1_n_0;
  wire mem_reg_n_71;
  wire push;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:1]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "975" *) 
  (* RTL_RAM_NAME = "denoise_top/stream6_U/U_denoise_top_fifo_w65_d16_A_ram/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "496" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "64" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b1,1'b1,1'b1,DOBDO}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(D[31:0]),
        .DOBDO(D[63:32]),
        .DOPADOP({NLW_mem_reg_DOPADOP_UNCONNECTED[3:1],mem_reg_n_71}),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_i_1_n_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(ap_rst_n_inv),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({push,push,push,push,push,push,push,push}));
  LUT4 #(
    .INIT(16'h8AFF)) 
    mem_reg_i_1
       (.I0(empty_n),
        .I1(ap_ready_int),
        .I2(mem_reg_1),
        .I3(ap_rst_n),
        .O(mem_reg_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "denoise_top_fifo_w65_d16_A_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d16_A_ram_4
   (DIADI,
    ap_clk,
    mem_reg_0,
    ap_rst_n_inv,
    Q,
    mem_reg_1,
    axi_to_internal_U0_stream1_din,
    E);
  output [10:0]DIADI;
  input ap_clk;
  input mem_reg_0;
  input ap_rst_n_inv;
  input [3:0]Q;
  input [3:0]mem_reg_1;
  input [64:0]axi_to_internal_U0_stream1_din;
  input [0:0]E;

  wire [10:0]DIADI;
  wire [0:0]E;
  wire [3:0]Q;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire [64:0]axi_to_internal_U0_stream1_din;
  wire mem_reg_0;
  wire [3:0]mem_reg_1;
  wire mem_reg_n_10;
  wire mem_reg_n_11;
  wire mem_reg_n_12;
  wire mem_reg_n_13;
  wire mem_reg_n_14;
  wire mem_reg_n_15;
  wire mem_reg_n_16;
  wire mem_reg_n_17;
  wire mem_reg_n_18;
  wire mem_reg_n_19;
  wire mem_reg_n_20;
  wire mem_reg_n_21;
  wire mem_reg_n_22;
  wire mem_reg_n_23;
  wire mem_reg_n_24;
  wire mem_reg_n_25;
  wire mem_reg_n_26;
  wire mem_reg_n_27;
  wire mem_reg_n_28;
  wire mem_reg_n_29;
  wire mem_reg_n_30;
  wire mem_reg_n_31;
  wire mem_reg_n_32;
  wire mem_reg_n_33;
  wire mem_reg_n_34;
  wire mem_reg_n_35;
  wire mem_reg_n_4;
  wire mem_reg_n_46;
  wire mem_reg_n_47;
  wire mem_reg_n_48;
  wire mem_reg_n_49;
  wire mem_reg_n_5;
  wire mem_reg_n_50;
  wire mem_reg_n_51;
  wire mem_reg_n_52;
  wire mem_reg_n_53;
  wire mem_reg_n_54;
  wire mem_reg_n_55;
  wire mem_reg_n_56;
  wire mem_reg_n_57;
  wire mem_reg_n_58;
  wire mem_reg_n_59;
  wire mem_reg_n_6;
  wire mem_reg_n_60;
  wire mem_reg_n_61;
  wire mem_reg_n_62;
  wire mem_reg_n_63;
  wire mem_reg_n_64;
  wire mem_reg_n_65;
  wire mem_reg_n_66;
  wire mem_reg_n_67;
  wire mem_reg_n_7;
  wire mem_reg_n_8;
  wire mem_reg_n_9;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [3:1]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d64" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d64" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "975" *) 
  (* RTL_RAM_NAME = "denoise_top/stream1_U/U_denoise_top_fifo_w65_d16_A_ram/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "496" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "64" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    mem_reg
       (.ADDRARDADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,mem_reg_1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI(axi_to_internal_U0_stream1_din[31:0]),
        .DIBDI(axi_to_internal_U0_stream1_din[63:32]),
        .DIPADIP({1'b1,1'b1,1'b1,axi_to_internal_U0_stream1_din[64]}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({mem_reg_n_4,mem_reg_n_5,mem_reg_n_6,mem_reg_n_7,mem_reg_n_8,mem_reg_n_9,mem_reg_n_10,mem_reg_n_11,mem_reg_n_12,mem_reg_n_13,mem_reg_n_14,mem_reg_n_15,mem_reg_n_16,mem_reg_n_17,mem_reg_n_18,mem_reg_n_19,mem_reg_n_20,mem_reg_n_21,mem_reg_n_22,mem_reg_n_23,mem_reg_n_24,mem_reg_n_25,mem_reg_n_26,mem_reg_n_27,mem_reg_n_28,mem_reg_n_29,mem_reg_n_30,mem_reg_n_31,mem_reg_n_32,mem_reg_n_33,mem_reg_n_34,mem_reg_n_35}),
        .DOBDO({DIADI[9:0],mem_reg_n_46,mem_reg_n_47,mem_reg_n_48,mem_reg_n_49,mem_reg_n_50,mem_reg_n_51,mem_reg_n_52,mem_reg_n_53,mem_reg_n_54,mem_reg_n_55,mem_reg_n_56,mem_reg_n_57,mem_reg_n_58,mem_reg_n_59,mem_reg_n_60,mem_reg_n_61,mem_reg_n_62,mem_reg_n_63,mem_reg_n_64,mem_reg_n_65,mem_reg_n_66,mem_reg_n_67}),
        .DOPADOP({NLW_mem_reg_DOPADOP_UNCONNECTED[3:1],DIADI[10]}),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(ap_rst_n_inv),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({E,E,E,E,E,E,E,E}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A
   (DOBDO,
    mOutPtr_reg,
    empty_n,
    stream2_empty_n,
    stream2_full_n,
    ap_clk,
    push,
    mem_reg_3,
    ap_rst_n_inv,
    DIADI,
    \mOutPtr_reg[0]_0 ,
    O,
    \mOutPtr_reg[7]_0 ,
    \mOutPtr_reg[11]_0 ,
    \num_data_cnt_reg[0]_0 ,
    \num_data_cnt_reg[3]_0 ,
    DI,
    E,
    stream5_empty_n,
    Q,
    stream6_full_n,
    dout_vld_reg_0,
    reconstruct_signal_U0_stream6_write);
  output [0:0]DOBDO;
  output [11:0]mOutPtr_reg;
  output empty_n;
  output stream2_empty_n;
  output stream2_full_n;
  input ap_clk;
  input push;
  input mem_reg_3;
  input ap_rst_n_inv;
  input [10:0]DIADI;
  input \mOutPtr_reg[0]_0 ;
  input [3:0]O;
  input [3:0]\mOutPtr_reg[7]_0 ;
  input [3:0]\mOutPtr_reg[11]_0 ;
  input \num_data_cnt_reg[0]_0 ;
  input \num_data_cnt_reg[3]_0 ;
  input [0:0]DI;
  input [0:0]E;
  input stream5_empty_n;
  input [0:0]Q;
  input stream6_full_n;
  input dout_vld_reg_0;
  input reconstruct_signal_U0_stream6_write;

  wire [0:0]DI;
  wire [10:0]DIADI;
  wire [0:0]DOBDO;
  wire [0:0]E;
  wire [3:0]O;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire dout_vld_i_1__0_n_0;
  wire dout_vld_reg_0;
  wire empty_n;
  wire empty_n_i_1__9_n_0;
  wire empty_n_i_2__5_n_0;
  wire empty_n_i_3__0_n_0;
  wire empty_n_i_4_n_0;
  wire full_n_i_1__9_n_0;
  wire full_n_i_2__5_n_0;
  wire full_n_i_3_n_0;
  wire full_n_i_4_n_0;
  wire [11:0]mOutPtr_reg;
  wire \mOutPtr_reg[0]_0 ;
  wire [3:0]\mOutPtr_reg[11]_0 ;
  wire [3:0]\mOutPtr_reg[7]_0 ;
  wire mem_reg_3;
  wire \num_data_cnt[0]_i_6_n_0 ;
  wire \num_data_cnt[0]_i_7_n_0 ;
  wire \num_data_cnt[0]_i_8_n_0 ;
  wire \num_data_cnt[0]_i_9_n_0 ;
  wire \num_data_cnt[4]_i_2__1_n_0 ;
  wire \num_data_cnt[4]_i_3__1_n_0 ;
  wire \num_data_cnt[4]_i_4_n_0 ;
  wire \num_data_cnt[4]_i_5_n_0 ;
  wire \num_data_cnt[8]_i_2_n_0 ;
  wire \num_data_cnt[8]_i_3_n_0 ;
  wire \num_data_cnt[8]_i_4_n_0 ;
  wire \num_data_cnt[8]_i_5_n_0 ;
  wire [11:0]num_data_cnt_reg;
  wire \num_data_cnt_reg[0]_0 ;
  wire \num_data_cnt_reg[0]_i_2_n_0 ;
  wire \num_data_cnt_reg[0]_i_2_n_1 ;
  wire \num_data_cnt_reg[0]_i_2_n_2 ;
  wire \num_data_cnt_reg[0]_i_2_n_3 ;
  wire \num_data_cnt_reg[0]_i_2_n_4 ;
  wire \num_data_cnt_reg[0]_i_2_n_5 ;
  wire \num_data_cnt_reg[0]_i_2_n_6 ;
  wire \num_data_cnt_reg[0]_i_2_n_7 ;
  wire \num_data_cnt_reg[3]_0 ;
  wire \num_data_cnt_reg[4]_i_1_n_0 ;
  wire \num_data_cnt_reg[4]_i_1_n_1 ;
  wire \num_data_cnt_reg[4]_i_1_n_2 ;
  wire \num_data_cnt_reg[4]_i_1_n_3 ;
  wire \num_data_cnt_reg[4]_i_1_n_4 ;
  wire \num_data_cnt_reg[4]_i_1_n_5 ;
  wire \num_data_cnt_reg[4]_i_1_n_6 ;
  wire \num_data_cnt_reg[4]_i_1_n_7 ;
  wire \num_data_cnt_reg[8]_i_1_n_1 ;
  wire \num_data_cnt_reg[8]_i_1_n_2 ;
  wire \num_data_cnt_reg[8]_i_1_n_3 ;
  wire \num_data_cnt_reg[8]_i_1_n_4 ;
  wire \num_data_cnt_reg[8]_i_1_n_5 ;
  wire \num_data_cnt_reg[8]_i_1_n_6 ;
  wire \num_data_cnt_reg[8]_i_1_n_7 ;
  wire push;
  wire [10:0]raddr;
  wire \raddr[0]_i_1_n_0 ;
  wire \raddr[10]_i_2_n_0 ;
  wire \raddr[10]_i_3_n_0 ;
  wire \raddr[1]_i_1_n_0 ;
  wire \raddr[2]_i_1_n_0 ;
  wire \raddr[2]_i_2_n_0 ;
  wire \raddr[2]_i_3_n_0 ;
  wire \raddr[3]_i_1__1_n_0 ;
  wire \raddr[4]_i_1_n_0 ;
  wire \raddr[4]_i_2_n_0 ;
  wire \raddr[5]_i_1_n_0 ;
  wire \raddr[5]_i_2_n_0 ;
  wire \raddr[5]_i_3_n_0 ;
  wire \raddr[5]_i_4_n_0 ;
  wire \raddr[6]_i_1_n_0 ;
  wire \raddr[6]_i_2_n_0 ;
  wire \raddr[6]_i_3_n_0 ;
  wire \raddr[7]_i_1_n_0 ;
  wire \raddr[8]_i_1_n_0 ;
  wire \raddr[9]_i_1_n_0 ;
  wire reconstruct_signal_U0_stream6_write;
  wire stream2_empty_n;
  wire stream2_full_n;
  wire stream5_empty_n;
  wire stream6_full_n;
  wire [10:0]waddr;
  wire \waddr[0]_i_1_n_0 ;
  wire \waddr[10]_i_1_n_0 ;
  wire \waddr[10]_i_2_n_0 ;
  wire \waddr[1]_i_1_n_0 ;
  wire \waddr[2]_i_1_n_0 ;
  wire \waddr[2]_i_2_n_0 ;
  wire \waddr[2]_i_3_n_0 ;
  wire \waddr[3]_i_1_n_0 ;
  wire \waddr[4]_i_1_n_0 ;
  wire \waddr[4]_i_2_n_0 ;
  wire \waddr[5]_i_1__0_n_0 ;
  wire \waddr[5]_i_2_n_0 ;
  wire \waddr[5]_i_3_n_0 ;
  wire \waddr[5]_i_4_n_0 ;
  wire \waddr[6]_i_1_n_0 ;
  wire \waddr[6]_i_2_n_0 ;
  wire \waddr[6]_i_3_n_0 ;
  wire \waddr[7]_i_1_n_0 ;
  wire \waddr[8]_i_1_n_0 ;
  wire \waddr[9]_i_1_n_0 ;
  wire [3:3]\NLW_num_data_cnt_reg[8]_i_1_CO_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A_ram U_denoise_top_fifo_w65_d2048_A_ram
       (.DIADI(DIADI),
        .DOBDO(DOBDO),
        .Q(waddr),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .mem_reg_3_0(mem_reg_3),
        .mem_reg_3_1(raddr),
        .push(push));
  LUT6 #(
    .INIT(64'hBFFFAAAAFFFFAAAA)) 
    dout_vld_i_1__0
       (.I0(empty_n),
        .I1(stream5_empty_n),
        .I2(Q),
        .I3(stream6_full_n),
        .I4(stream2_empty_n),
        .I5(dout_vld_reg_0),
        .O(dout_vld_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dout_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(dout_vld_i_1__0_n_0),
        .Q(stream2_empty_n),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'hF730)) 
    empty_n_i_1__9
       (.I0(empty_n_i_2__5_n_0),
        .I1(E),
        .I2(push),
        .I3(empty_n),
        .O(empty_n_i_1__9_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    empty_n_i_2__5
       (.I0(empty_n_i_3__0_n_0),
        .I1(mOutPtr_reg[11]),
        .I2(mOutPtr_reg[10]),
        .I3(mOutPtr_reg[9]),
        .I4(mOutPtr_reg[8]),
        .I5(empty_n_i_4_n_0),
        .O(empty_n_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    empty_n_i_3__0
       (.I0(mOutPtr_reg[7]),
        .I1(mOutPtr_reg[6]),
        .I2(mOutPtr_reg[5]),
        .I3(mOutPtr_reg[4]),
        .O(empty_n_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    empty_n_i_4
       (.I0(mOutPtr_reg[1]),
        .I1(mOutPtr_reg[0]),
        .I2(mOutPtr_reg[3]),
        .I3(mOutPtr_reg[2]),
        .O(empty_n_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__9_n_0),
        .Q(empty_n),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7773000)) 
    full_n_i_1__9
       (.I0(full_n_i_2__5_n_0),
        .I1(push),
        .I2(stream2_empty_n),
        .I3(reconstruct_signal_U0_stream6_write),
        .I4(stream2_full_n),
        .O(full_n_i_1__9_n_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    full_n_i_2__5
       (.I0(full_n_i_3_n_0),
        .I1(num_data_cnt_reg[11]),
        .I2(num_data_cnt_reg[10]),
        .I3(num_data_cnt_reg[9]),
        .I4(num_data_cnt_reg[8]),
        .I5(full_n_i_4_n_0),
        .O(full_n_i_2__5_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    full_n_i_3
       (.I0(num_data_cnt_reg[7]),
        .I1(num_data_cnt_reg[6]),
        .I2(num_data_cnt_reg[5]),
        .I3(num_data_cnt_reg[4]),
        .O(full_n_i_3_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    full_n_i_4
       (.I0(num_data_cnt_reg[1]),
        .I1(num_data_cnt_reg[0]),
        .I2(num_data_cnt_reg[3]),
        .I3(num_data_cnt_reg[2]),
        .O(full_n_i_4_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__9_n_0),
        .Q(stream2_full_n),
        .S(ap_rst_n_inv));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(O[0]),
        .Q(mOutPtr_reg[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[10] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr_reg[11]_0 [2]),
        .Q(mOutPtr_reg[10]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[11] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr_reg[11]_0 [3]),
        .Q(mOutPtr_reg[11]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(O[1]),
        .Q(mOutPtr_reg[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(O[2]),
        .Q(mOutPtr_reg[2]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[3] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(O[3]),
        .Q(mOutPtr_reg[3]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[4] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr_reg[7]_0 [0]),
        .Q(mOutPtr_reg[4]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[5] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr_reg[7]_0 [1]),
        .Q(mOutPtr_reg[5]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[6] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr_reg[7]_0 [2]),
        .Q(mOutPtr_reg[6]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[7] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr_reg[7]_0 [3]),
        .Q(mOutPtr_reg[7]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[8] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr_reg[11]_0 [0]),
        .Q(mOutPtr_reg[8]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[9] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr_reg[11]_0 [1]),
        .Q(mOutPtr_reg[9]),
        .R(ap_rst_n_inv));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[0]_i_6 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[3]),
        .O(\num_data_cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[0]_i_7 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[2]),
        .O(\num_data_cnt[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[0]_i_8 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[1]),
        .O(\num_data_cnt[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hD52A)) 
    \num_data_cnt[0]_i_9 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[0]),
        .O(\num_data_cnt[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[4]_i_2__1 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[7]),
        .O(\num_data_cnt[4]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[4]_i_3__1 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[6]),
        .O(\num_data_cnt[4]_i_3__1_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[4]_i_4 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[5]),
        .O(\num_data_cnt[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[4]_i_5 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[4]),
        .O(\num_data_cnt[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[8]_i_2 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[11]),
        .O(\num_data_cnt[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[8]_i_3 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[10]),
        .O(\num_data_cnt[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[8]_i_4 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[9]),
        .O(\num_data_cnt[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AD5)) 
    \num_data_cnt[8]_i_5 
       (.I0(push),
        .I1(reconstruct_signal_U0_stream6_write),
        .I2(stream2_empty_n),
        .I3(num_data_cnt_reg[8]),
        .O(\num_data_cnt[8]_i_5_n_0 ));
  FDRE \num_data_cnt_reg[0] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[0]_i_2_n_7 ),
        .Q(num_data_cnt_reg[0]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \num_data_cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\num_data_cnt_reg[0]_i_2_n_0 ,\num_data_cnt_reg[0]_i_2_n_1 ,\num_data_cnt_reg[0]_i_2_n_2 ,\num_data_cnt_reg[0]_i_2_n_3 }),
        .CYINIT(\num_data_cnt_reg[3]_0 ),
        .DI({num_data_cnt_reg[3:1],DI}),
        .O({\num_data_cnt_reg[0]_i_2_n_4 ,\num_data_cnt_reg[0]_i_2_n_5 ,\num_data_cnt_reg[0]_i_2_n_6 ,\num_data_cnt_reg[0]_i_2_n_7 }),
        .S({\num_data_cnt[0]_i_6_n_0 ,\num_data_cnt[0]_i_7_n_0 ,\num_data_cnt[0]_i_8_n_0 ,\num_data_cnt[0]_i_9_n_0 }));
  FDRE \num_data_cnt_reg[10] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[8]_i_1_n_5 ),
        .Q(num_data_cnt_reg[10]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[11] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[8]_i_1_n_4 ),
        .Q(num_data_cnt_reg[11]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[1] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[0]_i_2_n_6 ),
        .Q(num_data_cnt_reg[1]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[2] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[0]_i_2_n_5 ),
        .Q(num_data_cnt_reg[2]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[3] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[0]_i_2_n_4 ),
        .Q(num_data_cnt_reg[3]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[4] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[4]_i_1_n_7 ),
        .Q(num_data_cnt_reg[4]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \num_data_cnt_reg[4]_i_1 
       (.CI(\num_data_cnt_reg[0]_i_2_n_0 ),
        .CO({\num_data_cnt_reg[4]_i_1_n_0 ,\num_data_cnt_reg[4]_i_1_n_1 ,\num_data_cnt_reg[4]_i_1_n_2 ,\num_data_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(num_data_cnt_reg[7:4]),
        .O({\num_data_cnt_reg[4]_i_1_n_4 ,\num_data_cnt_reg[4]_i_1_n_5 ,\num_data_cnt_reg[4]_i_1_n_6 ,\num_data_cnt_reg[4]_i_1_n_7 }),
        .S({\num_data_cnt[4]_i_2__1_n_0 ,\num_data_cnt[4]_i_3__1_n_0 ,\num_data_cnt[4]_i_4_n_0 ,\num_data_cnt[4]_i_5_n_0 }));
  FDRE \num_data_cnt_reg[5] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[4]_i_1_n_6 ),
        .Q(num_data_cnt_reg[5]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[6] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[4]_i_1_n_5 ),
        .Q(num_data_cnt_reg[6]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[7] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[4]_i_1_n_4 ),
        .Q(num_data_cnt_reg[7]),
        .R(ap_rst_n_inv));
  FDRE \num_data_cnt_reg[8] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[8]_i_1_n_7 ),
        .Q(num_data_cnt_reg[8]),
        .R(ap_rst_n_inv));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \num_data_cnt_reg[8]_i_1 
       (.CI(\num_data_cnt_reg[4]_i_1_n_0 ),
        .CO({\NLW_num_data_cnt_reg[8]_i_1_CO_UNCONNECTED [3],\num_data_cnt_reg[8]_i_1_n_1 ,\num_data_cnt_reg[8]_i_1_n_2 ,\num_data_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,num_data_cnt_reg[10:8]}),
        .O({\num_data_cnt_reg[8]_i_1_n_4 ,\num_data_cnt_reg[8]_i_1_n_5 ,\num_data_cnt_reg[8]_i_1_n_6 ,\num_data_cnt_reg[8]_i_1_n_7 }),
        .S({\num_data_cnt[8]_i_2_n_0 ,\num_data_cnt[8]_i_3_n_0 ,\num_data_cnt[8]_i_4_n_0 ,\num_data_cnt[8]_i_5_n_0 }));
  FDRE \num_data_cnt_reg[9] 
       (.C(ap_clk),
        .CE(\num_data_cnt_reg[0]_0 ),
        .D(\num_data_cnt_reg[8]_i_1_n_6 ),
        .Q(num_data_cnt_reg[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2333333333333333)) 
    \raddr[0]_i_1 
       (.I0(\raddr[10]_i_3_n_0 ),
        .I1(raddr[0]),
        .I2(raddr[8]),
        .I3(raddr[7]),
        .I4(raddr[10]),
        .I5(raddr[9]),
        .O(\raddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF7FF08000000)) 
    \raddr[10]_i_2 
       (.I0(raddr[7]),
        .I1(raddr[8]),
        .I2(\raddr[10]_i_3_n_0 ),
        .I3(raddr[9]),
        .I4(raddr[0]),
        .I5(raddr[10]),
        .O(\raddr[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \raddr[10]_i_3 
       (.I0(raddr[5]),
        .I1(raddr[6]),
        .I2(raddr[3]),
        .I3(raddr[4]),
        .I4(raddr[2]),
        .I5(raddr[1]),
        .O(\raddr[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \raddr[1]_i_1 
       (.I0(\raddr[2]_i_2_n_0 ),
        .I1(raddr[2]),
        .I2(raddr[1]),
        .I3(raddr[0]),
        .O(\raddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h4FA0)) 
    \raddr[2]_i_1 
       (.I0(raddr[0]),
        .I1(\raddr[2]_i_2_n_0 ),
        .I2(raddr[1]),
        .I3(raddr[2]),
        .O(\raddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \raddr[2]_i_2 
       (.I0(raddr[5]),
        .I1(raddr[6]),
        .I2(raddr[3]),
        .I3(raddr[4]),
        .I4(\raddr[2]_i_3_n_0 ),
        .O(\raddr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \raddr[2]_i_3 
       (.I0(raddr[8]),
        .I1(raddr[7]),
        .I2(raddr[10]),
        .I3(raddr[9]),
        .O(\raddr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFB0A0B0A0B0A0B0)) 
    \raddr[3]_i_1__1 
       (.I0(\raddr[4]_i_2_n_0 ),
        .I1(raddr[4]),
        .I2(raddr[3]),
        .I3(raddr[0]),
        .I4(raddr[2]),
        .I5(raddr[1]),
        .O(\raddr[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFC0000000)) 
    \raddr[4]_i_1 
       (.I0(\raddr[4]_i_2_n_0 ),
        .I1(raddr[1]),
        .I2(raddr[2]),
        .I3(raddr[0]),
        .I4(raddr[3]),
        .I5(raddr[4]),
        .O(\raddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15FFFFFF)) 
    \raddr[4]_i_2 
       (.I0(raddr[0]),
        .I1(raddr[5]),
        .I2(raddr[6]),
        .I3(raddr[1]),
        .I4(raddr[2]),
        .I5(\raddr[5]_i_3_n_0 ),
        .O(\raddr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0FCF01C)) 
    \raddr[5]_i_1 
       (.I0(raddr[6]),
        .I1(raddr[0]),
        .I2(raddr[5]),
        .I3(\raddr[5]_i_2_n_0 ),
        .I4(\raddr[5]_i_3_n_0 ),
        .I5(\raddr[5]_i_4_n_0 ),
        .O(\raddr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \raddr[5]_i_2 
       (.I0(raddr[1]),
        .I1(raddr[2]),
        .O(\raddr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \raddr[5]_i_3 
       (.I0(raddr[9]),
        .I1(raddr[10]),
        .I2(raddr[7]),
        .I3(raddr[8]),
        .I4(raddr[0]),
        .O(\raddr[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \raddr[5]_i_4 
       (.I0(raddr[3]),
        .I1(raddr[4]),
        .O(\raddr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF858F0F0F0F0F0F0)) 
    \raddr[6]_i_1 
       (.I0(raddr[5]),
        .I1(\raddr[6]_i_2_n_0 ),
        .I2(raddr[6]),
        .I3(\raddr[6]_i_3_n_0 ),
        .I4(raddr[4]),
        .I5(raddr[3]),
        .O(\raddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \raddr[6]_i_2 
       (.I0(raddr[0]),
        .I1(raddr[2]),
        .I2(raddr[1]),
        .O(\raddr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15555555)) 
    \raddr[6]_i_3 
       (.I0(raddr[0]),
        .I1(raddr[8]),
        .I2(raddr[7]),
        .I3(raddr[10]),
        .I4(raddr[9]),
        .I5(\raddr[5]_i_2_n_0 ),
        .O(\raddr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7F00FF0000)) 
    \raddr[7]_i_1 
       (.I0(raddr[10]),
        .I1(raddr[9]),
        .I2(raddr[8]),
        .I3(\raddr[10]_i_3_n_0 ),
        .I4(raddr[0]),
        .I5(raddr[7]),
        .O(\raddr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFF55000000)) 
    \raddr[8]_i_1 
       (.I0(\raddr[10]_i_3_n_0 ),
        .I1(raddr[10]),
        .I2(raddr[9]),
        .I3(raddr[0]),
        .I4(raddr[7]),
        .I5(raddr[8]),
        .O(\raddr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF01CF0F0F0F0F0F0)) 
    \raddr[9]_i_1 
       (.I0(raddr[10]),
        .I1(raddr[0]),
        .I2(raddr[9]),
        .I3(\raddr[10]_i_3_n_0 ),
        .I4(raddr[8]),
        .I5(raddr[7]),
        .O(\raddr[9]_i_1_n_0 ));
  FDRE \raddr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[0]_i_1_n_0 ),
        .Q(raddr[0]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[10]_i_2_n_0 ),
        .Q(raddr[10]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[1]_i_1_n_0 ),
        .Q(raddr[1]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[2]_i_1_n_0 ),
        .Q(raddr[2]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[3]_i_1__1_n_0 ),
        .Q(raddr[3]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[4]_i_1_n_0 ),
        .Q(raddr[4]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[5]_i_1_n_0 ),
        .Q(raddr[5]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[6]_i_1_n_0 ),
        .Q(raddr[6]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[7]_i_1_n_0 ),
        .Q(raddr[7]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[8]_i_1_n_0 ),
        .Q(raddr[8]),
        .R(ap_rst_n_inv));
  FDRE \raddr_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(\raddr[9]_i_1_n_0 ),
        .Q(raddr[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h2333333333333333)) 
    \waddr[0]_i_1 
       (.I0(\waddr[10]_i_2_n_0 ),
        .I1(waddr[0]),
        .I2(waddr[8]),
        .I3(waddr[7]),
        .I4(waddr[10]),
        .I5(waddr[9]),
        .O(\waddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF7FF08000000)) 
    \waddr[10]_i_1 
       (.I0(waddr[7]),
        .I1(waddr[8]),
        .I2(\waddr[10]_i_2_n_0 ),
        .I3(waddr[9]),
        .I4(waddr[0]),
        .I5(waddr[10]),
        .O(\waddr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \waddr[10]_i_2 
       (.I0(waddr[5]),
        .I1(waddr[6]),
        .I2(waddr[3]),
        .I3(waddr[4]),
        .I4(waddr[2]),
        .I5(waddr[1]),
        .O(\waddr[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \waddr[1]_i_1 
       (.I0(\waddr[2]_i_2_n_0 ),
        .I1(waddr[2]),
        .I2(waddr[1]),
        .I3(waddr[0]),
        .O(\waddr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h4FA0)) 
    \waddr[2]_i_1 
       (.I0(waddr[0]),
        .I1(\waddr[2]_i_2_n_0 ),
        .I2(waddr[1]),
        .I3(waddr[2]),
        .O(\waddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \waddr[2]_i_2 
       (.I0(waddr[5]),
        .I1(waddr[6]),
        .I2(waddr[3]),
        .I3(waddr[4]),
        .I4(\waddr[2]_i_3_n_0 ),
        .O(\waddr[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \waddr[2]_i_3 
       (.I0(waddr[8]),
        .I1(waddr[7]),
        .I2(waddr[10]),
        .I3(waddr[9]),
        .O(\waddr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFB0A0B0A0B0A0B0)) 
    \waddr[3]_i_1 
       (.I0(\waddr[4]_i_2_n_0 ),
        .I1(waddr[4]),
        .I2(waddr[3]),
        .I3(waddr[0]),
        .I4(waddr[2]),
        .I5(waddr[1]),
        .O(\waddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFFC0000000)) 
    \waddr[4]_i_1 
       (.I0(\waddr[4]_i_2_n_0 ),
        .I1(waddr[1]),
        .I2(waddr[2]),
        .I3(waddr[0]),
        .I4(waddr[3]),
        .I5(waddr[4]),
        .O(\waddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15FFFFFF)) 
    \waddr[4]_i_2 
       (.I0(waddr[0]),
        .I1(waddr[5]),
        .I2(waddr[6]),
        .I3(waddr[1]),
        .I4(waddr[2]),
        .I5(\waddr[5]_i_3_n_0 ),
        .O(\waddr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0FCF01C)) 
    \waddr[5]_i_1__0 
       (.I0(waddr[6]),
        .I1(waddr[0]),
        .I2(waddr[5]),
        .I3(\waddr[5]_i_2_n_0 ),
        .I4(\waddr[5]_i_3_n_0 ),
        .I5(\waddr[5]_i_4_n_0 ),
        .O(\waddr[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \waddr[5]_i_2 
       (.I0(waddr[1]),
        .I1(waddr[2]),
        .O(\waddr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \waddr[5]_i_3 
       (.I0(waddr[9]),
        .I1(waddr[10]),
        .I2(waddr[7]),
        .I3(waddr[8]),
        .I4(waddr[0]),
        .O(\waddr[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \waddr[5]_i_4 
       (.I0(waddr[3]),
        .I1(waddr[4]),
        .O(\waddr[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF858F0F0F0F0F0F0)) 
    \waddr[6]_i_1 
       (.I0(waddr[5]),
        .I1(\waddr[6]_i_2_n_0 ),
        .I2(waddr[6]),
        .I3(\waddr[6]_i_3_n_0 ),
        .I4(waddr[4]),
        .I5(waddr[3]),
        .O(\waddr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \waddr[6]_i_2 
       (.I0(waddr[0]),
        .I1(waddr[2]),
        .I2(waddr[1]),
        .O(\waddr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15555555)) 
    \waddr[6]_i_3 
       (.I0(waddr[0]),
        .I1(waddr[8]),
        .I2(waddr[7]),
        .I3(waddr[10]),
        .I4(waddr[9]),
        .I5(\waddr[5]_i_2_n_0 ),
        .O(\waddr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7F00FF0000)) 
    \waddr[7]_i_1 
       (.I0(waddr[10]),
        .I1(waddr[9]),
        .I2(waddr[8]),
        .I3(\waddr[10]_i_2_n_0 ),
        .I4(waddr[0]),
        .I5(waddr[7]),
        .O(\waddr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFF55000000)) 
    \waddr[8]_i_1 
       (.I0(\waddr[10]_i_2_n_0 ),
        .I1(waddr[10]),
        .I2(waddr[9]),
        .I3(waddr[0]),
        .I4(waddr[7]),
        .I5(waddr[8]),
        .O(\waddr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF01CF0F0F0F0F0F0)) 
    \waddr[9]_i_1 
       (.I0(waddr[10]),
        .I1(waddr[0]),
        .I2(waddr[9]),
        .I3(\waddr[10]_i_2_n_0 ),
        .I4(waddr[8]),
        .I5(waddr[7]),
        .O(\waddr[9]_i_1_n_0 ));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[0]_i_1_n_0 ),
        .Q(waddr[0]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[10] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[10]_i_1_n_0 ),
        .Q(waddr[10]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[1]_i_1_n_0 ),
        .Q(waddr[1]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[2]_i_1_n_0 ),
        .Q(waddr[2]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[3]_i_1_n_0 ),
        .Q(waddr[3]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[4]_i_1_n_0 ),
        .Q(waddr[4]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[5]_i_1__0_n_0 ),
        .Q(waddr[5]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[6]_i_1_n_0 ),
        .Q(waddr[6]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[7]_i_1_n_0 ),
        .Q(waddr[7]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[8] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[8]_i_1_n_0 ),
        .Q(waddr[8]),
        .R(ap_rst_n_inv));
  FDRE \waddr_reg[9] 
       (.C(ap_clk),
        .CE(push),
        .D(\waddr[9]_i_1_n_0 ),
        .Q(waddr[9]),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_fifo_w65_d2048_A_ram
   (DOBDO,
    ap_clk,
    push,
    mem_reg_3_0,
    ap_rst_n_inv,
    Q,
    mem_reg_3_1,
    DIADI);
  output [0:0]DOBDO;
  input ap_clk;
  input push;
  input mem_reg_3_0;
  input ap_rst_n_inv;
  input [10:0]Q;
  input [10:0]mem_reg_3_1;
  input [10:0]DIADI;

  wire [10:0]DIADI;
  wire [0:0]DOBDO;
  wire [10:0]Q;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire mem_reg_3_0;
  wire [10:0]mem_reg_3_1;
  wire mem_reg_3_n_58;
  wire mem_reg_3_n_59;
  wire mem_reg_3_n_60;
  wire mem_reg_3_n_61;
  wire mem_reg_3_n_62;
  wire mem_reg_3_n_63;
  wire mem_reg_3_n_64;
  wire mem_reg_3_n_65;
  wire mem_reg_3_n_66;
  wire mem_reg_3_n_67;
  wire push;
  wire NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_DOADO_UNCONNECTED;
  wire [31:11]NLW_mem_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d11" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "133055" *) 
  (* RTL_RAM_NAME = "denoise_top/stream2_U/U_denoise_top_fifo_w65_d2048_A_ram/mem_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "54" *) 
  (* ram_slice_end = "64" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg_3
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,mem_reg_3_1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DIADI}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_3_DOBDO_UNCONNECTED[31:11],DOBDO,mem_reg_3_n_58,mem_reg_3_n_59,mem_reg_3_n_60,mem_reg_3_n_61,mem_reg_3_n_62,mem_reg_3_n_63,mem_reg_3_n_64,mem_reg_3_n_65,mem_reg_3_n_66,mem_reg_3_n_67}),
        .DOPADOP(NLW_mem_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(push),
        .ENBWREN(mem_reg_3_0),
        .INJECTDBITERR(NLW_mem_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(ap_rst_n_inv),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_SBITERR_UNCONNECTED),
        .WEA({push,push,1'b1,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe
   (D,
    E,
    reconstruct_signal_U0_ap_ready,
    ap_clk,
    Q,
    \i1_fu_48_reg[5] ,
    \i1_fu_48_reg[6] ,
    ap_loop_init_reg_0,
    stream5_empty_n,
    \i1_fu_48_reg[0] ,
    stream2_empty_n,
    stream6_full_n,
    ap_rst_n);
  output [8:0]D;
  output [0:0]E;
  output reconstruct_signal_U0_ap_ready;
  input ap_clk;
  input [8:0]Q;
  input \i1_fu_48_reg[5] ;
  input \i1_fu_48_reg[6] ;
  input [1:0]ap_loop_init_reg_0;
  input stream5_empty_n;
  input \i1_fu_48_reg[0] ;
  input stream2_empty_n;
  input stream6_full_n;
  input ap_rst_n;

  wire [8:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire ap_clk;
  wire ap_loop_init;
  wire ap_loop_init_i_1__2_n_0;
  wire ap_loop_init_i_3__0_n_0;
  wire ap_loop_init_i_4__0_n_0;
  wire [1:0]ap_loop_init_reg_0;
  wire ap_rst_n;
  wire i1_fu_481__0;
  wire \i1_fu_48_reg[0] ;
  wire \i1_fu_48_reg[5] ;
  wire \i1_fu_48_reg[6] ;
  wire reconstruct_signal_U0_ap_ready;
  wire stream2_empty_n;
  wire stream5_empty_n;
  wire stream6_full_n;

  LUT5 #(
    .INIT(32'hFFFF5DDD)) 
    ap_loop_init_i_1__2
       (.I0(ap_rst_n),
        .I1(ap_loop_init),
        .I2(ap_loop_init_reg_0[1]),
        .I3(stream5_empty_n),
        .I4(reconstruct_signal_U0_ap_ready),
        .O(ap_loop_init_i_1__2_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    ap_loop_init_i_2__0
       (.I0(ap_loop_init_i_3__0_n_0),
        .I1(ap_loop_init_i_4__0_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(reconstruct_signal_U0_ap_ready));
  LUT4 #(
    .INIT(16'h8000)) 
    ap_loop_init_i_3__0
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(ap_loop_init_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ap_loop_init_i_4__0
       (.I0(ap_loop_init_reg_0[1]),
        .I1(stream5_empty_n),
        .I2(Q[8]),
        .I3(Q[7]),
        .O(ap_loop_init_i_4__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1__2_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \i1_fu_48[0]_i_1 
       (.I0(i1_fu_481__0),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \i1_fu_48[1]_i_1 
       (.I0(i1_fu_481__0),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \i1_fu_48[2]_i_1 
       (.I0(i1_fu_481__0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \i1_fu_48[3]_i_1 
       (.I0(i1_fu_481__0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i1_fu_48[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(i1_fu_481__0),
        .I5(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i1_fu_48[5]_i_1 
       (.I0(\i1_fu_48_reg[5] ),
        .I1(i1_fu_481__0),
        .I2(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i1_fu_48[6]_i_1 
       (.I0(\i1_fu_48_reg[6] ),
        .I1(i1_fu_481__0),
        .I2(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i1_fu_48[7]_i_1 
       (.I0(Q[6]),
        .I1(\i1_fu_48_reg[6] ),
        .I2(i1_fu_481__0),
        .I3(Q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \i1_fu_48[8]_i_1 
       (.I0(i1_fu_481__0),
        .I1(ap_loop_init_reg_0[1]),
        .I2(stream5_empty_n),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i1_fu_48[8]_i_2 
       (.I0(Q[7]),
        .I1(\i1_fu_48_reg[6] ),
        .I2(Q[6]),
        .I3(i1_fu_481__0),
        .I4(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i1_fu_48[8]_i_3 
       (.I0(\i1_fu_48_reg[0] ),
        .I1(stream2_empty_n),
        .I2(stream6_full_n),
        .I3(ap_loop_init_reg_0[0]),
        .I4(stream5_empty_n),
        .I5(ap_loop_init),
        .O(i1_fu_481__0));
endmodule

(* ORIG_REF_NAME = "denoise_top_flow_control_loop_pipe" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_5
   (ap_loop_init_reg_0,
    D,
    axi_val_last_fu_95_p2,
    ap_loop_init_reg_1,
    ap_clk,
    Q,
    ap_sig_allocacmp_i1_load1,
    internal_to_axi_U0_ap_start,
    \i1_fu_54_reg[7] );
  output ap_loop_init_reg_0;
  output [6:0]D;
  output axi_val_last_fu_95_p2;
  input ap_loop_init_reg_1;
  input ap_clk;
  input [8:0]Q;
  input ap_sig_allocacmp_i1_load1;
  input internal_to_axi_U0_ap_start;
  input \i1_fu_54_reg[7] ;

  wire [6:0]D;
  wire [8:0]Q;
  wire ap_clk;
  wire ap_loop_init_reg_0;
  wire ap_loop_init_reg_1;
  wire ap_sig_allocacmp_i1_load1;
  wire axi_val_last_fu_95_p2;
  wire \data_p1[0]_i_4_n_0 ;
  wire \i1_fu_54[5]_i_2__0_n_0 ;
  wire \i1_fu_54[6]_i_2_n_0 ;
  wire \i1_fu_54_reg[7] ;
  wire internal_to_axi_U0_ap_start;

  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_reg_1),
        .Q(ap_loop_init_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \data_p1[0]_i_2__0 
       (.I0(\i1_fu_54[5]_i_2__0_n_0 ),
        .I1(\data_p1[0]_i_4_n_0 ),
        .I2(Q[7]),
        .I3(ap_sig_allocacmp_i1_load1),
        .I4(Q[8]),
        .I5(Q[6]),
        .O(axi_val_last_fu_95_p2));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    \data_p1[0]_i_4 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(ap_loop_init_reg_0),
        .I4(internal_to_axi_U0_ap_start),
        .I5(Q[3]),
        .O(\data_p1[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \i1_fu_54[0]_i_1__0 
       (.I0(ap_loop_init_reg_0),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i1_fu_54[1]_i_1__0 
       (.I0(Q[0]),
        .I1(ap_loop_init_reg_0),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i1_fu_54[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(ap_loop_init_reg_0),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i1_fu_54[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(ap_loop_init_reg_0),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i1_fu_54[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\i1_fu_54[5]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(ap_sig_allocacmp_i1_load1),
        .I5(Q[5]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \i1_fu_54[5]_i_2__0 
       (.I0(Q[1]),
        .I1(internal_to_axi_U0_ap_start),
        .I2(ap_loop_init_reg_0),
        .I3(Q[0]),
        .O(\i1_fu_54[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i1_fu_54[6]_i_1__0 
       (.I0(Q[4]),
        .I1(\i1_fu_54[6]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(ap_loop_init_reg_0),
        .I4(Q[6]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \i1_fu_54[6]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(internal_to_axi_U0_ap_start),
        .I3(ap_loop_init_reg_0),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\i1_fu_54[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i1_fu_54[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\i1_fu_54_reg[7] ),
        .I2(Q[6]),
        .I3(ap_loop_init_reg_0),
        .I4(Q[7]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "denoise_top_flow_control_loop_pipe" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_6
   (D,
    E,
    compute_magnitude_square_U0_ap_ready,
    ap_clk,
    Q,
    \i_021_fu_42_reg[5] ,
    \i_021_fu_42_reg[6] ,
    ap_loop_init_reg_0,
    stream3_full_n,
    \i_021_fu_42_reg[0] ,
    stream1_empty_n,
    stream2_full_n,
    ap_rst_n);
  output [8:0]D;
  output [0:0]E;
  output compute_magnitude_square_U0_ap_ready;
  input ap_clk;
  input [8:0]Q;
  input \i_021_fu_42_reg[5] ;
  input \i_021_fu_42_reg[6] ;
  input [1:0]ap_loop_init_reg_0;
  input stream3_full_n;
  input \i_021_fu_42_reg[0] ;
  input stream1_empty_n;
  input stream2_full_n;
  input ap_rst_n;

  wire [8:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire ap_clk;
  wire ap_loop_init;
  wire ap_loop_init_i_1__1_n_0;
  wire ap_loop_init_i_3_n_0;
  wire ap_loop_init_i_4_n_0;
  wire [1:0]ap_loop_init_reg_0;
  wire ap_rst_n;
  wire compute_magnitude_square_U0_ap_ready;
  wire i_021_fu_421__0;
  wire \i_021_fu_42_reg[0] ;
  wire \i_021_fu_42_reg[5] ;
  wire \i_021_fu_42_reg[6] ;
  wire stream1_empty_n;
  wire stream2_full_n;
  wire stream3_full_n;

  LUT5 #(
    .INIT(32'hFFFF5DDD)) 
    ap_loop_init_i_1__1
       (.I0(ap_rst_n),
        .I1(ap_loop_init),
        .I2(ap_loop_init_reg_0[1]),
        .I3(stream3_full_n),
        .I4(compute_magnitude_square_U0_ap_ready),
        .O(ap_loop_init_i_1__1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    ap_loop_init_i_2
       (.I0(ap_loop_init_i_3_n_0),
        .I1(ap_loop_init_i_4_n_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(compute_magnitude_square_U0_ap_ready));
  LUT4 #(
    .INIT(16'h8000)) 
    ap_loop_init_i_3
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .O(ap_loop_init_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ap_loop_init_i_4
       (.I0(ap_loop_init_reg_0[1]),
        .I1(stream3_full_n),
        .I2(Q[8]),
        .I3(Q[7]),
        .O(ap_loop_init_i_4_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1__1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \i_021_fu_42[0]_i_1 
       (.I0(i_021_fu_421__0),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \i_021_fu_42[1]_i_1 
       (.I0(i_021_fu_421__0),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \i_021_fu_42[2]_i_1 
       (.I0(i_021_fu_421__0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \i_021_fu_42[3]_i_1 
       (.I0(i_021_fu_421__0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i_021_fu_42[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(i_021_fu_421__0),
        .I5(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_021_fu_42[5]_i_1 
       (.I0(\i_021_fu_42_reg[5] ),
        .I1(i_021_fu_421__0),
        .I2(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_021_fu_42[6]_i_1 
       (.I0(\i_021_fu_42_reg[6] ),
        .I1(i_021_fu_421__0),
        .I2(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i_021_fu_42[7]_i_1 
       (.I0(Q[6]),
        .I1(\i_021_fu_42_reg[6] ),
        .I2(i_021_fu_421__0),
        .I3(Q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \i_021_fu_42[8]_i_1 
       (.I0(i_021_fu_421__0),
        .I1(ap_loop_init_reg_0[1]),
        .I2(stream3_full_n),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i_021_fu_42[8]_i_2 
       (.I0(Q[7]),
        .I1(\i_021_fu_42_reg[6] ),
        .I2(Q[6]),
        .I3(i_021_fu_421__0),
        .I4(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_021_fu_42[8]_i_3 
       (.I0(\i_021_fu_42_reg[0] ),
        .I1(stream1_empty_n),
        .I2(stream2_full_n),
        .I3(ap_loop_init_reg_0[0]),
        .I4(stream3_full_n),
        .I5(ap_loop_init),
        .O(i_021_fu_421__0));
endmodule

(* ORIG_REF_NAME = "denoise_top_flow_control_loop_pipe" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_7
   (axi_to_internal_U0_ap_ready,
    ap_sync_axi_to_internal_U0_ap_ready,
    D,
    full_n_reg,
    ap_clk,
    ap_rst_n,
    ap_loop_init_reg_0,
    Q,
    ap_sync_reg_axi_to_internal_U0_ap_ready,
    start_for_compute_magnitude_square_U0_full_n,
    start_once_reg_reg,
    ap_start);
  output axi_to_internal_U0_ap_ready;
  output ap_sync_axi_to_internal_U0_ap_ready;
  output [8:0]D;
  output full_n_reg;
  input ap_clk;
  input ap_rst_n;
  input ap_loop_init_reg_0;
  input [8:0]Q;
  input ap_sync_reg_axi_to_internal_U0_ap_ready;
  input start_for_compute_magnitude_square_U0_full_n;
  input start_once_reg_reg;
  input ap_start;

  wire [8:0]D;
  wire [8:0]Q;
  wire ap_clk;
  wire ap_loop_init;
  wire ap_loop_init_i_1__0_n_0;
  wire ap_loop_init_reg_0;
  wire ap_rst_n;
  wire ap_start;
  wire ap_sync_axi_to_internal_U0_ap_ready;
  wire ap_sync_reg_axi_to_internal_U0_ap_ready;
  wire axi_to_internal_U0_ap_ready;
  wire full_n_reg;
  wire \i1_fu_54[5]_i_2_n_0 ;
  wire \i1_fu_54[8]_i_3__0_n_0 ;
  wire int_ap_start_i_5_n_0;
  wire \int_isr[1]_i_3_n_0 ;
  wire \int_isr[1]_i_4_n_0 ;
  wire start_for_compute_magnitude_square_U0_full_n;
  wire start_once_reg_reg;

  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFFD5)) 
    ap_loop_init_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_loop_init_reg_0),
        .I2(ap_loop_init),
        .I3(axi_to_internal_U0_ap_ready),
        .O(ap_loop_init_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1__0_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i1_fu_54[0]_i_1 
       (.I0(ap_loop_init),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i1_fu_54[1]_i_1 
       (.I0(Q[0]),
        .I1(ap_loop_init),
        .I2(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i1_fu_54[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(ap_loop_init),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i1_fu_54[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(ap_loop_init),
        .I4(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i1_fu_54[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(ap_loop_init),
        .I5(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i1_fu_54[5]_i_1 
       (.I0(Q[3]),
        .I1(\i1_fu_54[5]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(ap_loop_init),
        .I5(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \i1_fu_54[5]_i_2 
       (.I0(Q[1]),
        .I1(ap_loop_init),
        .I2(Q[0]),
        .O(\i1_fu_54[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i1_fu_54[6]_i_1 
       (.I0(\i1_fu_54[8]_i_3__0_n_0 ),
        .I1(Q[5]),
        .I2(ap_loop_init),
        .I3(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i1_fu_54[7]_i_1 
       (.I0(Q[5]),
        .I1(\i1_fu_54[8]_i_3__0_n_0 ),
        .I2(Q[6]),
        .I3(ap_loop_init),
        .I4(Q[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i1_fu_54[8]_i_2 
       (.I0(Q[6]),
        .I1(\i1_fu_54[8]_i_3__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(ap_loop_init),
        .I5(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \i1_fu_54[8]_i_3__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ap_loop_init),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\i1_fu_54[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    int_ap_start_i_2
       (.I0(ap_loop_init_reg_0),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(ap_loop_init),
        .I4(Q[8]),
        .I5(int_ap_start_i_5_n_0),
        .O(axi_to_internal_U0_ap_ready));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    int_ap_start_i_5
       (.I0(Q[2]),
        .I1(ap_loop_init),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[7]),
        .I5(\i1_fu_54[5]_i_2_n_0 ),
        .O(int_ap_start_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF08000000)) 
    \int_isr[1]_i_2 
       (.I0(\int_isr[1]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(ap_loop_init),
        .I3(Q[1]),
        .I4(\int_isr[1]_i_4_n_0 ),
        .I5(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .O(ap_sync_axi_to_internal_U0_ap_ready));
  LUT5 #(
    .INIT(32'h00800000)) 
    \int_isr[1]_i_3 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(ap_loop_init),
        .I4(Q[2]),
        .O(\int_isr[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \int_isr[1]_i_4 
       (.I0(Q[8]),
        .I1(ap_loop_init),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(ap_loop_init_reg_0),
        .O(\int_isr[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h50505450)) 
    start_once_reg_i_1
       (.I0(axi_to_internal_U0_ap_ready),
        .I1(start_for_compute_magnitude_square_U0_full_n),
        .I2(start_once_reg_reg),
        .I3(ap_start),
        .I4(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .O(full_n_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init
   (AR,
    E,
    ap_done_cache_reg_0,
    frame_counter_flag_0_i_reg_1692,
    full_n_reg,
    D,
    \ap_CS_fsm_reg[4] ,
    grp_spectral_subtract_fu_262_ap_ready,
    \frame_counter_flag_1_i_reg_155_reg[0] ,
    \icmp_ln326_reg_421_reg[0] ,
    \i_fu_100_reg[10] ,
    ap_enable_reg_pp0_iter2_reg,
    grp_spectral_subtract_fu_262_ap_start_reg_reg,
    ap_clk,
    frame_counter_flag_0_i_reg_169221_out,
    \ap_CS_fsm_reg[6] ,
    icmp_ln326_fu_333_p224_in,
    grp_spectral_subtract_fu_262_ap_start_reg,
    ap_loop_exit_ready_pp0_iter3_reg,
    Q,
    frame_counter_flag_1_i_reg_155,
    frame_counter_flag_0_i_reg_169,
    icmp_ln326_reg_421,
    ap_rst_n,
    \i_fu_100_reg[10]_0 ,
    ap_enable_reg_pp0_iter2,
    stream4_i_empty_n,
    ap_loop_exit_ready_pp0_iter1_reg_reg,
    stream5_full_n,
    ap_enable_reg_pp0_iter1_reg);
  output [0:0]AR;
  output [0:0]E;
  output ap_done_cache_reg_0;
  output frame_counter_flag_0_i_reg_1692;
  output full_n_reg;
  output [1:0]D;
  output \ap_CS_fsm_reg[4] ;
  output grp_spectral_subtract_fu_262_ap_ready;
  output \frame_counter_flag_1_i_reg_155_reg[0] ;
  output \icmp_ln326_reg_421_reg[0] ;
  output [10:0]\i_fu_100_reg[10] ;
  output [0:0]ap_enable_reg_pp0_iter2_reg;
  output grp_spectral_subtract_fu_262_ap_start_reg_reg;
  input ap_clk;
  input frame_counter_flag_0_i_reg_169221_out;
  input \ap_CS_fsm_reg[6] ;
  input icmp_ln326_fu_333_p224_in;
  input grp_spectral_subtract_fu_262_ap_start_reg;
  input ap_loop_exit_ready_pp0_iter3_reg;
  input [1:0]Q;
  input frame_counter_flag_1_i_reg_155;
  input frame_counter_flag_0_i_reg_169;
  input icmp_ln326_reg_421;
  input ap_rst_n;
  input [10:0]\i_fu_100_reg[10]_0 ;
  input ap_enable_reg_pp0_iter2;
  input stream4_i_empty_n;
  input ap_loop_exit_ready_pp0_iter1_reg_reg;
  input stream5_full_n;
  input ap_enable_reg_pp0_iter1_reg;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[6] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__1_n_0;
  wire ap_done_cache_reg_0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter2;
  wire [0:0]ap_enable_reg_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_i_3_n_0;
  wire ap_loop_exit_ready_pp0_iter1_reg_i_4_n_0;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__1_n_0;
  wire ap_rst_n;
  wire frame_counter_flag_0_i_reg_169;
  wire frame_counter_flag_0_i_reg_1692;
  wire frame_counter_flag_0_i_reg_169221_out;
  wire frame_counter_flag_1_i_reg_155;
  wire \frame_counter_flag_1_i_reg_155_reg[0] ;
  wire full_n_reg;
  wire grp_spectral_subtract_fu_262_ap_ready;
  wire grp_spectral_subtract_fu_262_ap_start_reg;
  wire grp_spectral_subtract_fu_262_ap_start_reg_reg;
  wire i_fu_1001;
  wire \i_fu_100[10]_i_5_n_0 ;
  wire \i_fu_100[5]_i_2_n_0 ;
  wire \i_fu_100[7]_i_2_n_0 ;
  wire \i_fu_100[8]_i_2_n_0 ;
  wire \i_fu_100[9]_i_2_n_0 ;
  wire [10:0]\i_fu_100_reg[10] ;
  wire [10:0]\i_fu_100_reg[10]_0 ;
  wire icmp_ln113_fu_211_p2;
  wire icmp_ln326_fu_333_p224_in;
  wire icmp_ln326_reg_421;
  wire \icmp_ln326_reg_421_reg[0] ;
  wire stream4_i_empty_n;
  wire stream5_full_n;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(AR));
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(Q[0]),
        .I1(ap_done_cache_reg_0),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(ap_done_cache_reg_0),
        .I1(\ap_CS_fsm_reg[6] ),
        .I2(icmp_ln326_fu_333_p224_in),
        .I3(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    ap_done_cache_i_1__1
       (.I0(full_n_reg),
        .I1(ap_loop_exit_ready_pp0_iter3_reg),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__1_n_0),
        .Q(ap_done_cache),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h3202)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(grp_spectral_subtract_fu_262_ap_start_reg),
        .I1(grp_spectral_subtract_fu_262_ap_ready),
        .I2(full_n_reg),
        .I3(ap_enable_reg_pp0_iter1_reg),
        .O(grp_spectral_subtract_fu_262_ap_start_reg_reg));
  LUT6 #(
    .INIT(64'h8A008A8A00000000)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(grp_spectral_subtract_fu_262_ap_start_reg),
        .I1(stream5_full_n),
        .I2(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I3(stream4_i_empty_n),
        .I4(ap_enable_reg_pp0_iter2),
        .I5(icmp_ln113_fu_211_p2),
        .O(grp_spectral_subtract_fu_262_ap_ready));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_2
       (.I0(\i_fu_100_reg[10]_0 [9]),
        .I1(ap_loop_init),
        .I2(\i_fu_100_reg[10]_0 [0]),
        .I3(\i_fu_100_reg[10]_0 [10]),
        .I4(ap_loop_exit_ready_pp0_iter1_reg_i_3_n_0),
        .I5(ap_loop_exit_ready_pp0_iter1_reg_i_4_n_0),
        .O(icmp_ln113_fu_211_p2));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_3
       (.I0(\i_fu_100_reg[10]_0 [3]),
        .I1(\i_fu_100_reg[10]_0 [4]),
        .I2(\i_fu_100_reg[10]_0 [1]),
        .I3(grp_spectral_subtract_fu_262_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\i_fu_100_reg[10]_0 [2]),
        .O(ap_loop_exit_ready_pp0_iter1_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_4
       (.I0(\i_fu_100_reg[10]_0 [7]),
        .I1(\i_fu_100_reg[10]_0 [8]),
        .I2(\i_fu_100_reg[10]_0 [5]),
        .I3(grp_spectral_subtract_fu_262_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\i_fu_100_reg[10]_0 [6]),
        .O(ap_loop_exit_ready_pp0_iter1_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'hCFCFFF4F)) 
    ap_loop_init_int_i_1__1
       (.I0(grp_spectral_subtract_fu_262_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(ap_rst_n),
        .I3(ap_loop_exit_ready_pp0_iter3_reg),
        .I4(full_n_reg),
        .O(ap_loop_init_int_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    ap_loop_init_int_i_2__0
       (.I0(stream5_full_n),
        .I1(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I2(stream4_i_empty_n),
        .I3(ap_enable_reg_pp0_iter2),
        .O(full_n_reg));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFCFEFCFC)) 
    \frame_counter_flag_0_i_reg_169[0]_i_1 
       (.I0(frame_counter_flag_1_i_reg_155),
        .I1(frame_counter_flag_0_i_reg_1692),
        .I2(frame_counter_flag_0_i_reg_169221_out),
        .I3(\ap_CS_fsm_reg[6] ),
        .I4(ap_done_cache_reg_0),
        .I5(frame_counter_flag_0_i_reg_169),
        .O(\frame_counter_flag_1_i_reg_155_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \frame_counter_new_0_i_reg_184[3]_i_1 
       (.I0(frame_counter_flag_0_i_reg_169221_out),
        .I1(ap_done_cache_reg_0),
        .I2(\ap_CS_fsm_reg[6] ),
        .I3(frame_counter_flag_0_i_reg_1692),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h22F20000)) 
    \frame_counter_new_0_i_reg_184[3]_i_3 
       (.I0(ap_done_cache),
        .I1(grp_spectral_subtract_fu_262_ap_start_reg),
        .I2(ap_loop_exit_ready_pp0_iter3_reg),
        .I3(full_n_reg),
        .I4(Q[1]),
        .O(ap_done_cache_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \frame_counter_new_0_i_reg_184[3]_i_4 
       (.I0(ap_done_cache_reg_0),
        .I1(icmp_ln326_fu_333_p224_in),
        .I2(\ap_CS_fsm_reg[6] ),
        .O(frame_counter_flag_0_i_reg_1692));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    grp_spectral_subtract_fu_262_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(grp_spectral_subtract_fu_262_ap_ready),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .O(\ap_CS_fsm_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h80AA)) 
    \i_fu_100[0]_i_1 
       (.I0(i_fu_1001),
        .I1(ap_loop_init_int),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(\i_fu_100_reg[10]_0 [0]),
        .O(\i_fu_100_reg[10] [0]));
  LUT6 #(
    .INIT(64'hEE0EEE0E0000EE0E)) 
    \i_fu_100[10]_i_1 
       (.I0(ap_loop_init),
        .I1(i_fu_1001),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(stream4_i_empty_n),
        .I4(ap_loop_exit_ready_pp0_iter1_reg_reg),
        .I5(stream5_full_n),
        .O(ap_enable_reg_pp0_iter2_reg));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_100[10]_i_2 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [10]),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_100_reg[10]_0 [9]),
        .I5(\i_fu_100[10]_i_5_n_0 ),
        .O(\i_fu_100_reg[10] [10]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_100[10]_i_3 
       (.I0(ap_loop_init_int),
        .I1(grp_spectral_subtract_fu_262_ap_start_reg),
        .O(ap_loop_init));
  LUT2 #(
    .INIT(4'h2)) 
    \i_fu_100[10]_i_4 
       (.I0(grp_spectral_subtract_fu_262_ap_start_reg),
        .I1(icmp_ln113_fu_211_p2),
        .O(i_fu_1001));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \i_fu_100[10]_i_5 
       (.I0(\i_fu_100_reg[10]_0 [8]),
        .I1(\i_fu_100_reg[10]_0 [6]),
        .I2(\i_fu_100[7]_i_2_n_0 ),
        .I3(\i_fu_100_reg[10]_0 [5]),
        .I4(ap_loop_init),
        .I5(\i_fu_100_reg[10]_0 [7]),
        .O(\i_fu_100[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h02220888)) 
    \i_fu_100[1]_i_1 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [1]),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_100_reg[10]_0 [0]),
        .O(\i_fu_100_reg[10] [1]));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_100[2]_i_1 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [2]),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_100_reg[10]_0 [1]),
        .I5(\i_fu_100_reg[10]_0 [0]),
        .O(\i_fu_100_reg[10] [2]));
  LUT6 #(
    .INIT(64'h0208080808080808)) 
    \i_fu_100[3]_i_1 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [3]),
        .I2(ap_loop_init),
        .I3(\i_fu_100_reg[10]_0 [2]),
        .I4(\i_fu_100_reg[10]_0 [0]),
        .I5(\i_fu_100_reg[10]_0 [1]),
        .O(\i_fu_100_reg[10] [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hA2220888)) 
    \i_fu_100[4]_i_1 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [4]),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_100[5]_i_2_n_0 ),
        .O(\i_fu_100_reg[10] [4]));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_100[5]_i_1 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [5]),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_100_reg[10]_0 [4]),
        .I5(\i_fu_100[5]_i_2_n_0 ),
        .O(\i_fu_100_reg[10] [5]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \i_fu_100[5]_i_2 
       (.I0(\i_fu_100_reg[10]_0 [3]),
        .I1(\i_fu_100_reg[10]_0 [1]),
        .I2(ap_loop_init_int),
        .I3(grp_spectral_subtract_fu_262_ap_start_reg),
        .I4(\i_fu_100_reg[10]_0 [0]),
        .I5(\i_fu_100_reg[10]_0 [2]),
        .O(\i_fu_100[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_100[6]_i_1 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [6]),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_100_reg[10]_0 [5]),
        .I5(\i_fu_100[7]_i_2_n_0 ),
        .O(\i_fu_100_reg[10] [6]));
  LUT6 #(
    .INIT(64'h0208080808080808)) 
    \i_fu_100[7]_i_1 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [7]),
        .I2(ap_loop_init),
        .I3(\i_fu_100_reg[10]_0 [6]),
        .I4(\i_fu_100[7]_i_2_n_0 ),
        .I5(\i_fu_100_reg[10]_0 [5]),
        .O(\i_fu_100_reg[10] [7]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \i_fu_100[7]_i_2 
       (.I0(\i_fu_100_reg[10]_0 [4]),
        .I1(\i_fu_100_reg[10]_0 [2]),
        .I2(\i_fu_100_reg[10]_0 [0]),
        .I3(ap_loop_init),
        .I4(\i_fu_100_reg[10]_0 [1]),
        .I5(\i_fu_100_reg[10]_0 [3]),
        .O(\i_fu_100[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_100[8]_i_1 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [8]),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_100_reg[10]_0 [7]),
        .I5(\i_fu_100[8]_i_2_n_0 ),
        .O(\i_fu_100_reg[10] [8]));
  LUT6 #(
    .INIT(64'h2A00000000000000)) 
    \i_fu_100[8]_i_2 
       (.I0(\i_fu_100_reg[10]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(\i_fu_100_reg[10]_0 [4]),
        .I4(\i_fu_100[5]_i_2_n_0 ),
        .I5(\i_fu_100_reg[10]_0 [5]),
        .O(\i_fu_100[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_100[9]_i_1 
       (.I0(i_fu_1001),
        .I1(\i_fu_100_reg[10]_0 [9]),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_100_reg[10]_0 [8]),
        .I5(\i_fu_100[9]_i_2_n_0 ),
        .O(\i_fu_100_reg[10] [9]));
  LUT6 #(
    .INIT(64'h2A00000000000000)) 
    \i_fu_100[9]_i_2 
       (.I0(\i_fu_100_reg[10]_0 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_spectral_subtract_fu_262_ap_start_reg),
        .I3(\i_fu_100_reg[10]_0 [5]),
        .I4(\i_fu_100[7]_i_2_n_0 ),
        .I5(\i_fu_100_reg[10]_0 [6]),
        .O(\i_fu_100[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln326_reg_421[0]_i_1 
       (.I0(icmp_ln326_fu_333_p224_in),
        .I1(ap_done_cache_reg_0),
        .I2(icmp_ln326_reg_421),
        .O(\icmp_ln326_reg_421_reg[0] ));
endmodule

(* ORIG_REF_NAME = "denoise_top_flow_control_loop_pipe_sequential_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_10
   (D,
    \i_fu_84_reg[10] ,
    E,
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg,
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_0,
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_1,
    ap_clk,
    AR,
    Q,
    grp_noise_estimation_accumulate_fu_246_ap_start_reg,
    ap_loop_exit_ready_pp0_iter1_reg,
    ap_block_pp0_stage0_11001,
    \i_fu_84_reg[10]_0 ,
    ap_done_cache_reg_0,
    ap_done_cache_reg_1,
    stream3_empty_n,
    ap_rst_n);
  output [1:0]D;
  output [10:0]\i_fu_84_reg[10] ;
  output [0:0]E;
  output grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg;
  output grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_0;
  output grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_1;
  input ap_clk;
  input [0:0]AR;
  input [1:0]Q;
  input grp_noise_estimation_accumulate_fu_246_ap_start_reg;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input ap_block_pp0_stage0_11001;
  input [10:0]\i_fu_84_reg[10]_0 ;
  input ap_done_cache_reg_0;
  input ap_done_cache_reg_1;
  input stream3_empty_n;
  input ap_rst_n;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_0;
  wire ap_done_cache_reg_0;
  wire ap_done_cache_reg_1;
  wire ap_enable_reg_pp0_iter1_i_3_n_0;
  wire ap_enable_reg_pp0_iter1_i_4_n_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_0;
  wire ap_rst_n;
  wire grp_noise_estimation_accumulate_fu_246_ap_start_reg;
  wire grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg;
  wire grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_0;
  wire grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_1;
  wire i_fu_841;
  wire \i_fu_84[10]_i_4_n_0 ;
  wire \i_fu_84[5]_i_2_n_0 ;
  wire \i_fu_84[7]_i_3_n_0 ;
  wire \i_fu_84[8]_i_2_n_0 ;
  wire \i_fu_84[9]_i_2_n_0 ;
  wire [10:0]\i_fu_84_reg[10] ;
  wire [10:0]\i_fu_84_reg[10]_0 ;
  wire icmp_ln85_fu_184_p2;
  wire stream3_empty_n;

  LUT6 #(
    .INIT(64'hFBFBAAFBAAAAAAAA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(Q[0]),
        .I1(ap_done_cache),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(ap_block_pp0_stage0_11001),
        .I5(Q[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h20AA2020)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(Q[1]),
        .I1(ap_block_pp0_stage0_11001),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I4(ap_done_cache),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8F00FFFF8F008F00)) 
    ap_done_cache_i_1__0
       (.I0(stream3_empty_n),
        .I1(ap_done_cache_reg_1),
        .I2(ap_done_cache_reg_0),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I5(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_0),
        .Q(ap_done_cache),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h3F00BFAA)) 
    ap_enable_reg_pp0_iter1_i_1__1
       (.I0(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I1(stream3_empty_n),
        .I2(ap_done_cache_reg_1),
        .I3(ap_done_cache_reg_0),
        .I4(icmp_ln85_fu_184_p2),
        .O(grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_1));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    ap_enable_reg_pp0_iter1_i_2
       (.I0(\i_fu_84_reg[10]_0 [9]),
        .I1(ap_loop_init),
        .I2(\i_fu_84_reg[10]_0 [0]),
        .I3(\i_fu_84_reg[10]_0 [10]),
        .I4(ap_enable_reg_pp0_iter1_i_3_n_0),
        .I5(ap_enable_reg_pp0_iter1_i_4_n_0),
        .O(icmp_ln85_fu_184_p2));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    ap_enable_reg_pp0_iter1_i_3
       (.I0(\i_fu_84_reg[10]_0 [3]),
        .I1(\i_fu_84_reg[10]_0 [4]),
        .I2(\i_fu_84_reg[10]_0 [1]),
        .I3(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\i_fu_84_reg[10]_0 [2]),
        .O(ap_enable_reg_pp0_iter1_i_3_n_0));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    ap_enable_reg_pp0_iter1_i_4
       (.I0(\i_fu_84_reg[10]_0 [7]),
        .I1(\i_fu_84_reg[10]_0 [8]),
        .I2(\i_fu_84_reg[10]_0 [5]),
        .I3(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\i_fu_84_reg[10]_0 [6]),
        .O(ap_enable_reg_pp0_iter1_i_4_n_0));
  LUT6 #(
    .INIT(64'hBFAA3F0080AA0000)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1__2
       (.I0(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I1(stream3_empty_n),
        .I2(ap_done_cache_reg_1),
        .I3(ap_done_cache_reg_0),
        .I4(icmp_ln85_fu_184_p2),
        .I5(ap_loop_exit_ready_pp0_iter1_reg),
        .O(grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_0));
  LUT5 #(
    .INIT(32'hCFCFFF4F)) 
    ap_loop_init_int_i_1__0
       (.I0(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I1(ap_loop_init_int),
        .I2(ap_rst_n),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(ap_block_pp0_stage0_11001),
        .O(ap_loop_init_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF2A00AAAA)) 
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_i_1
       (.I0(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I1(stream3_empty_n),
        .I2(ap_done_cache_reg_1),
        .I3(ap_done_cache_reg_0),
        .I4(icmp_ln85_fu_184_p2),
        .I5(Q[0]),
        .O(grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h80AA)) 
    \i_fu_84[0]_i_1 
       (.I0(i_fu_841),
        .I1(ap_loop_init_int),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(\i_fu_84_reg[10]_0 [0]),
        .O(\i_fu_84_reg[10] [0]));
  LUT6 #(
    .INIT(64'hF8F800F800F800F8)) 
    \i_fu_84[10]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I2(i_fu_841),
        .I3(ap_done_cache_reg_0),
        .I4(ap_done_cache_reg_1),
        .I5(stream3_empty_n),
        .O(E));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_84[10]_i_2 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [10]),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_84_reg[10]_0 [9]),
        .I5(\i_fu_84[10]_i_4_n_0 ),
        .O(\i_fu_84_reg[10] [10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i_fu_84[10]_i_3 
       (.I0(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I1(icmp_ln85_fu_184_p2),
        .O(i_fu_841));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \i_fu_84[10]_i_4 
       (.I0(\i_fu_84_reg[10]_0 [8]),
        .I1(\i_fu_84_reg[10]_0 [6]),
        .I2(\i_fu_84[7]_i_3_n_0 ),
        .I3(\i_fu_84_reg[10]_0 [5]),
        .I4(ap_loop_init),
        .I5(\i_fu_84_reg[10]_0 [7]),
        .O(\i_fu_84[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h02220888)) 
    \i_fu_84[1]_i_1 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [1]),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_84_reg[10]_0 [0]),
        .O(\i_fu_84_reg[10] [1]));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_84[2]_i_1 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [2]),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_84_reg[10]_0 [1]),
        .I5(\i_fu_84_reg[10]_0 [0]),
        .O(\i_fu_84_reg[10] [2]));
  LUT6 #(
    .INIT(64'h0208080808080808)) 
    \i_fu_84[3]_i_1 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [3]),
        .I2(ap_loop_init),
        .I3(\i_fu_84_reg[10]_0 [2]),
        .I4(\i_fu_84_reg[10]_0 [0]),
        .I5(\i_fu_84_reg[10]_0 [1]),
        .O(\i_fu_84_reg[10] [3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hA2220888)) 
    \i_fu_84[4]_i_1 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [4]),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_84[5]_i_2_n_0 ),
        .O(\i_fu_84_reg[10] [4]));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_84[5]_i_1 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [5]),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_84_reg[10]_0 [4]),
        .I5(\i_fu_84[5]_i_2_n_0 ),
        .O(\i_fu_84_reg[10] [5]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \i_fu_84[5]_i_2 
       (.I0(\i_fu_84_reg[10]_0 [3]),
        .I1(\i_fu_84_reg[10]_0 [1]),
        .I2(ap_loop_init_int),
        .I3(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I4(\i_fu_84_reg[10]_0 [0]),
        .I5(\i_fu_84_reg[10]_0 [2]),
        .O(\i_fu_84[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_84[6]_i_1 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [6]),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_84_reg[10]_0 [5]),
        .I5(\i_fu_84[7]_i_3_n_0 ),
        .O(\i_fu_84_reg[10] [6]));
  LUT6 #(
    .INIT(64'h0208080808080808)) 
    \i_fu_84[7]_i_1 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [7]),
        .I2(ap_loop_init),
        .I3(\i_fu_84_reg[10]_0 [6]),
        .I4(\i_fu_84[7]_i_3_n_0 ),
        .I5(\i_fu_84_reg[10]_0 [5]),
        .O(\i_fu_84_reg[10] [7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_84[7]_i_2 
       (.I0(ap_loop_init_int),
        .I1(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .O(ap_loop_init));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \i_fu_84[7]_i_3 
       (.I0(\i_fu_84_reg[10]_0 [4]),
        .I1(\i_fu_84_reg[10]_0 [2]),
        .I2(\i_fu_84_reg[10]_0 [0]),
        .I3(ap_loop_init),
        .I4(\i_fu_84_reg[10]_0 [1]),
        .I5(\i_fu_84_reg[10]_0 [3]),
        .O(\i_fu_84[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_84[8]_i_1 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [8]),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_84_reg[10]_0 [7]),
        .I5(\i_fu_84[8]_i_2_n_0 ),
        .O(\i_fu_84_reg[10] [8]));
  LUT6 #(
    .INIT(64'h2A00000000000000)) 
    \i_fu_84[8]_i_2 
       (.I0(\i_fu_84_reg[10]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(\i_fu_84_reg[10]_0 [4]),
        .I4(\i_fu_84[5]_i_2_n_0 ),
        .I5(\i_fu_84_reg[10]_0 [5]),
        .O(\i_fu_84[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0222088808880888)) 
    \i_fu_84[9]_i_1 
       (.I0(i_fu_841),
        .I1(\i_fu_84_reg[10]_0 [9]),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_84_reg[10]_0 [8]),
        .I5(\i_fu_84[9]_i_2_n_0 ),
        .O(\i_fu_84_reg[10] [9]));
  LUT6 #(
    .INIT(64'h2A00000000000000)) 
    \i_fu_84[9]_i_2 
       (.I0(\i_fu_84_reg[10]_0 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .I3(\i_fu_84_reg[10]_0 [5]),
        .I4(\i_fu_84[7]_i_3_n_0 ),
        .I5(\i_fu_84_reg[10]_0 [6]),
        .O(\i_fu_84[9]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "denoise_top_flow_control_loop_pipe_sequential_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_11
   (D,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[1]_0 ,
    \noise_estimated_reg[0] ,
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg,
    \frame_counter_reg[3] ,
    \i_fu_62_reg[10] ,
    ap_loop_init_int_reg_0,
    ap_clk,
    AR,
    E,
    \ap_CS_fsm_reg[1]_1 ,
    \ap_CS_fsm_reg[1]_2 ,
    \ap_CS_fsm_reg[1]_3 ,
    Q,
    \ap_CS_fsm_reg[1]_4 ,
    reset_noise_read_reg_380,
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg,
    reset_noise_c_dout,
    noise_estimated,
    \frame_counter_loc_0_i_reg_132_reg[3] ,
    \i_fu_62_reg[10]_0 ,
    ap_rst_n);
  output [1:0]D;
  output [0:0]\ap_CS_fsm_reg[1] ;
  output \ap_CS_fsm_reg[1]_0 ;
  output \noise_estimated_reg[0] ;
  output grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg;
  output [3:0]\frame_counter_reg[3] ;
  output [10:0]\i_fu_62_reg[10] ;
  output [0:0]ap_loop_init_int_reg_0;
  input ap_clk;
  input [0:0]AR;
  input [0:0]E;
  input \ap_CS_fsm_reg[1]_1 ;
  input \ap_CS_fsm_reg[1]_2 ;
  input \ap_CS_fsm_reg[1]_3 ;
  input [4:0]Q;
  input \ap_CS_fsm_reg[1]_4 ;
  input reset_noise_read_reg_380;
  input grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg;
  input reset_noise_c_dout;
  input noise_estimated;
  input [3:0]\frame_counter_loc_0_i_reg_132_reg[3] ;
  input [10:0]\i_fu_62_reg[10]_0 ;
  input ap_rst_n;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire \ap_CS_fsm[1]_i_15_n_0 ;
  wire \ap_CS_fsm[1]_i_4_n_0 ;
  wire [0:0]\ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[1]_1 ;
  wire \ap_CS_fsm_reg[1]_2 ;
  wire \ap_CS_fsm_reg[1]_3 ;
  wire \ap_CS_fsm_reg[1]_4 ;
  wire ap_block_state2_on_subcall_done26_out;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire [3:0]\frame_counter_loc_0_i_reg_132_reg[3] ;
  wire [3:0]\frame_counter_reg[3] ;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg;
  wire \i_fu_62[10]_i_4_n_0 ;
  wire \i_fu_62[10]_i_5_n_0 ;
  wire \i_fu_62[10]_i_6_n_0 ;
  wire \i_fu_62[5]_i_2_n_0 ;
  wire \i_fu_62[7]_i_3_n_0 ;
  wire \i_fu_62[8]_i_2_n_0 ;
  wire \i_fu_62[9]_i_2_n_0 ;
  wire [10:0]\i_fu_62_reg[10] ;
  wire [10:0]\i_fu_62_reg[10]_0 ;
  wire icmp_ln283_fu_218_p2;
  wire noise_estimated;
  wire \noise_estimated_reg[0] ;
  wire reset_noise_c_dout;
  wire reset_noise_read_reg_380;

  LUT6 #(
    .INIT(64'hAAAAAAAA00000003)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(E),
        .I1(\ap_CS_fsm_reg[1]_1 ),
        .I2(\ap_CS_fsm_reg[1]_2 ),
        .I3(\ap_CS_fsm[1]_i_4_n_0 ),
        .I4(\ap_CS_fsm_reg[1]_3 ),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hA2A2A2A2A2A2A202)) 
    \ap_CS_fsm[1]_i_12 
       (.I0(reset_noise_read_reg_380),
        .I1(ap_done_cache),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I3(\ap_CS_fsm[1]_i_15_n_0 ),
        .I4(\i_fu_62[10]_i_5_n_0 ),
        .I5(\i_fu_62[10]_i_6_n_0 ),
        .O(ap_block_state2_on_subcall_done26_out));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFDDD)) 
    \ap_CS_fsm[1]_i_15 
       (.I0(\i_fu_62_reg[10]_0 [10]),
        .I1(\i_fu_62_reg[10]_0 [0]),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I3(ap_loop_init_int),
        .I4(\i_fu_62_reg[10]_0 [9]),
        .O(\ap_CS_fsm[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \ap_CS_fsm[1]_i_4 
       (.I0(\ap_CS_fsm_reg[1]_4 ),
        .I1(Q[2]),
        .I2(ap_block_state2_on_subcall_done26_out),
        .I3(Q[1]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\ap_CS_fsm[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFD5D0000)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(reset_noise_read_reg_380),
        .I1(ap_done_cache),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I3(icmp_ln283_fu_218_p2),
        .I4(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_done_cache_i_1
       (.I0(icmp_ln283_fu_218_p2),
        .I1(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hF3BB)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_init_int),
        .I1(ap_rst_n),
        .I2(icmp_ln283_fu_218_p2),
        .I3(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .O(ap_loop_init_int_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \frame_counter_flag_1_i_reg_155[0]_i_1 
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(reset_noise_c_dout),
        .I2(E),
        .O(\ap_CS_fsm_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8A800000)) 
    \frame_counter_flag_1_i_reg_155[0]_i_2 
       (.I0(Q[1]),
        .I1(icmp_ln283_fu_218_p2),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I3(ap_done_cache),
        .I4(reset_noise_read_reg_380),
        .O(\ap_CS_fsm_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_counter_loc_0_i_reg_132[0]_i_1 
       (.I0(\frame_counter_loc_0_i_reg_132_reg[3] [0]),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .O(\frame_counter_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_counter_loc_0_i_reg_132[1]_i_1 
       (.I0(\frame_counter_loc_0_i_reg_132_reg[3] [1]),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .O(\frame_counter_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_counter_loc_0_i_reg_132[2]_i_1 
       (.I0(\frame_counter_loc_0_i_reg_132_reg[3] [2]),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .O(\frame_counter_reg[3] [2]));
  LUT2 #(
    .INIT(4'h2)) 
    \frame_counter_loc_0_i_reg_132[3]_i_1 
       (.I0(\frame_counter_loc_0_i_reg_132_reg[3] [3]),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .O(\frame_counter_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_i_1
       (.I0(E),
        .I1(reset_noise_c_dout),
        .I2(icmp_ln283_fu_218_p2),
        .I3(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .O(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \i_fu_62[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_62_reg[10]_0 [0]),
        .I2(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \i_fu_62[10]_i_1 
       (.I0(icmp_ln283_fu_218_p2),
        .I1(ap_loop_init_int),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .O(ap_loop_init_int_reg_0));
  LUT5 #(
    .INIT(32'h00001222)) 
    \i_fu_62[10]_i_2 
       (.I0(\i_fu_62_reg[10]_0 [10]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_62_reg[10]_0 [9]),
        .I3(\i_fu_62[10]_i_4_n_0 ),
        .I4(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [10]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \i_fu_62[10]_i_3 
       (.I0(\i_fu_62_reg[10]_0 [9]),
        .I1(ap_loop_init),
        .I2(\i_fu_62_reg[10]_0 [0]),
        .I3(\i_fu_62_reg[10]_0 [10]),
        .I4(\i_fu_62[10]_i_5_n_0 ),
        .I5(\i_fu_62[10]_i_6_n_0 ),
        .O(icmp_ln283_fu_218_p2));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \i_fu_62[10]_i_4 
       (.I0(\i_fu_62_reg[10]_0 [8]),
        .I1(\i_fu_62_reg[10]_0 [6]),
        .I2(\i_fu_62[7]_i_3_n_0 ),
        .I3(\i_fu_62_reg[10]_0 [5]),
        .I4(ap_loop_init),
        .I5(\i_fu_62_reg[10]_0 [7]),
        .O(\i_fu_62[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    \i_fu_62[10]_i_5 
       (.I0(\i_fu_62_reg[10]_0 [3]),
        .I1(\i_fu_62_reg[10]_0 [4]),
        .I2(\i_fu_62_reg[10]_0 [1]),
        .I3(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\i_fu_62_reg[10]_0 [2]),
        .O(\i_fu_62[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF00FEFEFE)) 
    \i_fu_62[10]_i_6 
       (.I0(\i_fu_62_reg[10]_0 [7]),
        .I1(\i_fu_62_reg[10]_0 [8]),
        .I2(\i_fu_62_reg[10]_0 [5]),
        .I3(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\i_fu_62_reg[10]_0 [6]),
        .O(\i_fu_62[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0012)) 
    \i_fu_62[1]_i_1 
       (.I0(\i_fu_62_reg[10]_0 [1]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_62_reg[10]_0 [0]),
        .I3(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00001222)) 
    \i_fu_62[2]_i_1 
       (.I0(\i_fu_62_reg[10]_0 [2]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_62_reg[10]_0 [1]),
        .I3(\i_fu_62_reg[10]_0 [0]),
        .I4(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [2]));
  LUT6 #(
    .INIT(64'h0000000012222222)) 
    \i_fu_62[3]_i_1 
       (.I0(\i_fu_62_reg[10]_0 [3]),
        .I1(ap_loop_init),
        .I2(\i_fu_62_reg[10]_0 [2]),
        .I3(\i_fu_62_reg[10]_0 [0]),
        .I4(\i_fu_62_reg[10]_0 [1]),
        .I5(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \i_fu_62[4]_i_1 
       (.I0(\i_fu_62_reg[10]_0 [4]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_62[5]_i_2_n_0 ),
        .I3(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00001222)) 
    \i_fu_62[5]_i_1 
       (.I0(\i_fu_62_reg[10]_0 [5]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_62_reg[10]_0 [4]),
        .I3(\i_fu_62[5]_i_2_n_0 ),
        .I4(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [5]));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    \i_fu_62[5]_i_2 
       (.I0(\i_fu_62_reg[10]_0 [3]),
        .I1(\i_fu_62_reg[10]_0 [1]),
        .I2(ap_loop_init_int),
        .I3(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I4(\i_fu_62_reg[10]_0 [0]),
        .I5(\i_fu_62_reg[10]_0 [2]),
        .O(\i_fu_62[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00001222)) 
    \i_fu_62[6]_i_1 
       (.I0(\i_fu_62_reg[10]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_62_reg[10]_0 [5]),
        .I3(\i_fu_62[7]_i_3_n_0 ),
        .I4(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [6]));
  LUT6 #(
    .INIT(64'h0000000012222222)) 
    \i_fu_62[7]_i_1 
       (.I0(\i_fu_62_reg[10]_0 [7]),
        .I1(ap_loop_init),
        .I2(\i_fu_62_reg[10]_0 [6]),
        .I3(\i_fu_62[7]_i_3_n_0 ),
        .I4(\i_fu_62_reg[10]_0 [5]),
        .I5(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_62[7]_i_2 
       (.I0(ap_loop_init_int),
        .I1(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .O(ap_loop_init));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \i_fu_62[7]_i_3 
       (.I0(\i_fu_62_reg[10]_0 [4]),
        .I1(\i_fu_62_reg[10]_0 [2]),
        .I2(\i_fu_62_reg[10]_0 [0]),
        .I3(ap_loop_init),
        .I4(\i_fu_62_reg[10]_0 [1]),
        .I5(\i_fu_62_reg[10]_0 [3]),
        .O(\i_fu_62[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00001222)) 
    \i_fu_62[8]_i_1 
       (.I0(\i_fu_62_reg[10]_0 [8]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_62_reg[10]_0 [7]),
        .I3(\i_fu_62[8]_i_2_n_0 ),
        .I4(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [8]));
  LUT6 #(
    .INIT(64'h2A00000000000000)) 
    \i_fu_62[8]_i_2 
       (.I0(\i_fu_62_reg[10]_0 [6]),
        .I1(ap_loop_init_int),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I3(\i_fu_62_reg[10]_0 [4]),
        .I4(\i_fu_62[5]_i_2_n_0 ),
        .I5(\i_fu_62_reg[10]_0 [5]),
        .O(\i_fu_62[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00001222)) 
    \i_fu_62[9]_i_1 
       (.I0(\i_fu_62_reg[10]_0 [9]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_62_reg[10]_0 [8]),
        .I3(\i_fu_62[9]_i_2_n_0 ),
        .I4(icmp_ln283_fu_218_p2),
        .O(\i_fu_62_reg[10] [9]));
  LUT6 #(
    .INIT(64'h2A00000000000000)) 
    \i_fu_62[9]_i_2 
       (.I0(\i_fu_62_reg[10]_0 [7]),
        .I1(ap_loop_init_int),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_RESET_NOISE_fu_226_ap_start_reg),
        .I3(\i_fu_62_reg[10]_0 [5]),
        .I4(\i_fu_62[7]_i_3_n_0 ),
        .I5(\i_fu_62_reg[10]_0 [6]),
        .O(\i_fu_62[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \noise_estimated_loc_0_i_reg_144[0]_i_1 
       (.I0(noise_estimated),
        .I1(\ap_CS_fsm_reg[1]_0 ),
        .O(\noise_estimated_reg[0] ));
endmodule

(* ORIG_REF_NAME = "denoise_top_flow_control_loop_pipe_sequential_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_12
   (D,
    \ap_CS_fsm_reg[50] ,
    \noise_frame_count_read_reg_372_reg[3] ,
    ap_loop_exit_ready_pp0_iter2_reg_reg,
    \frame_counter_flag_1_i_reg_155_reg[0] ,
    E,
    \ap_CS_fsm_reg[49] ,
    \noise_estimated_new_0_i_reg_211_reg[0] ,
    \i_fu_76_reg[9] ,
    grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready,
    ap_loop_init_int_reg_0,
    ap_clk,
    AR,
    Q,
    p_23_in,
    \ap_CS_fsm_reg[50]_0 ,
    \frame_counter_new_0_i_reg_184_reg[3] ,
    frame_counter_flag_0_i_reg_1692,
    \frame_counter_new_0_i_reg_184_reg[2] ,
    add_ln324_fu_327_p2,
    frame_counter_flag_1_i_reg_155,
    ap_loop_exit_ready_pp0_iter2_reg,
    grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg,
    icmp_ln326_reg_421,
    \frame_counter_reg[0] ,
    frame_counter_flag_0_i_reg_169,
    \ap_CS_fsm_reg[0] ,
    \i_fu_76_reg[10] ,
    \i_fu_76_reg[10]_0 ,
    \noise_estimated_reg[0] ,
    noise_estimated_flag_0_i_reg_197,
    ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61,
    noise_estimated,
    \i_fu_76_reg[10]_1 ,
    \i_fu_76_reg[9]_0 ,
    ap_rst_n,
    \i_fu_76_reg[6] ,
    \i_fu_76_reg[5] ,
    \i_fu_76_reg[0] );
  output [1:0]D;
  output \ap_CS_fsm_reg[50] ;
  output [3:0]\noise_frame_count_read_reg_372_reg[3] ;
  output ap_loop_exit_ready_pp0_iter2_reg_reg;
  output \frame_counter_flag_1_i_reg_155_reg[0] ;
  output [0:0]E;
  output \ap_CS_fsm_reg[49] ;
  output \noise_estimated_new_0_i_reg_211_reg[0] ;
  output [10:0]\i_fu_76_reg[9] ;
  output grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready;
  output [0:0]ap_loop_init_int_reg_0;
  input ap_clk;
  input [0:0]AR;
  input [3:0]Q;
  input p_23_in;
  input \ap_CS_fsm_reg[50]_0 ;
  input [3:0]\frame_counter_new_0_i_reg_184_reg[3] ;
  input frame_counter_flag_0_i_reg_1692;
  input [2:0]\frame_counter_new_0_i_reg_184_reg[2] ;
  input [0:0]add_ln324_fu_327_p2;
  input frame_counter_flag_1_i_reg_155;
  input ap_loop_exit_ready_pp0_iter2_reg;
  input grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg;
  input icmp_ln326_reg_421;
  input \frame_counter_reg[0] ;
  input frame_counter_flag_0_i_reg_169;
  input [0:0]\ap_CS_fsm_reg[0] ;
  input \i_fu_76_reg[10] ;
  input [10:0]\i_fu_76_reg[10]_0 ;
  input \noise_estimated_reg[0] ;
  input noise_estimated_flag_0_i_reg_197;
  input ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61;
  input noise_estimated;
  input \i_fu_76_reg[10]_1 ;
  input \i_fu_76_reg[9]_0 ;
  input ap_rst_n;
  input \i_fu_76_reg[6] ;
  input \i_fu_76_reg[5] ;
  input \i_fu_76_reg[0] ;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [0:0]add_ln324_fu_327_p2;
  wire [0:0]\ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[49] ;
  wire \ap_CS_fsm_reg[50] ;
  wire \ap_CS_fsm_reg[50]_0 ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1__2_n_0;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__2_n_0;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61;
  wire ap_rst_n;
  wire frame_counter_flag_0_i_reg_169;
  wire frame_counter_flag_0_i_reg_1692;
  wire frame_counter_flag_1_i_reg_155;
  wire \frame_counter_flag_1_i_reg_155_reg[0] ;
  wire [2:0]\frame_counter_new_0_i_reg_184_reg[2] ;
  wire [3:0]\frame_counter_new_0_i_reg_184_reg[3] ;
  wire \frame_counter_reg[0] ;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready;
  wire grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg;
  wire \i_fu_76[10]_i_5_n_0 ;
  wire \i_fu_76_reg[0] ;
  wire \i_fu_76_reg[10] ;
  wire [10:0]\i_fu_76_reg[10]_0 ;
  wire \i_fu_76_reg[10]_1 ;
  wire \i_fu_76_reg[5] ;
  wire \i_fu_76_reg[6] ;
  wire [10:0]\i_fu_76_reg[9] ;
  wire \i_fu_76_reg[9]_0 ;
  wire icmp_ln326_reg_421;
  wire noise_estimated;
  wire noise_estimated_flag_0_i_reg_197;
  wire \noise_estimated_new_0_i_reg_211_reg[0] ;
  wire \noise_estimated_reg[0] ;
  wire [3:0]\noise_frame_count_read_reg_372_reg[3] ;
  wire p_23_in;

  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(Q[0]),
        .I2(\ap_CS_fsm_reg[50] ),
        .I3(Q[3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAEAEAEAEFFAEAEAE)) 
    \ap_CS_fsm[50]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\ap_CS_fsm_reg[50] ),
        .I3(Q[1]),
        .I4(p_23_in),
        .I5(\ap_CS_fsm_reg[50]_0 ),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hBA)) 
    ap_done_cache_i_1__2
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__2_n_0),
        .Q(ap_done_cache),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1__0
       (.I0(\i_fu_76_reg[10]_0 [10]),
        .I1(ap_loop_init_int),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .I3(\i_fu_76_reg[10]_0 [1]),
        .I4(\i_fu_76_reg[10] ),
        .O(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_ready));
  LUT4 #(
    .INIT(16'hDFDD)) 
    ap_loop_init_int_i_1__2
       (.I0(ap_rst_n),
        .I1(ap_loop_exit_ready_pp0_iter2_reg),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .I3(ap_loop_init_int),
        .O(ap_loop_init_int_i_1__2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__2_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA8888888)) 
    \frame_counter[3]_i_1 
       (.I0(\ap_CS_fsm_reg[50] ),
        .I1(frame_counter_flag_0_i_reg_169),
        .I2(Q[3]),
        .I3(icmp_ln326_reg_421),
        .I4(\frame_counter_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'hAA20AAAAAAAAAAAA)) 
    \frame_counter[3]_i_3 
       (.I0(Q[3]),
        .I1(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .I2(ap_done_cache),
        .I3(ap_loop_exit_ready_pp0_iter2_reg),
        .I4(\frame_counter_reg[0] ),
        .I5(icmp_ln326_reg_421),
        .O(\ap_CS_fsm_reg[50] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \frame_counter_new_0_i_reg_184[0]_i_1 
       (.I0(\frame_counter_new_0_i_reg_184_reg[3] [0]),
        .I1(ap_loop_exit_ready_pp0_iter2_reg_reg),
        .I2(frame_counter_flag_0_i_reg_1692),
        .I3(\frame_counter_new_0_i_reg_184_reg[2] [0]),
        .O(\noise_frame_count_read_reg_372_reg[3] [0]));
  LUT5 #(
    .INIT(32'h88B8B888)) 
    \frame_counter_new_0_i_reg_184[1]_i_1 
       (.I0(\frame_counter_new_0_i_reg_184_reg[3] [1]),
        .I1(ap_loop_exit_ready_pp0_iter2_reg_reg),
        .I2(frame_counter_flag_0_i_reg_1692),
        .I3(\frame_counter_new_0_i_reg_184_reg[2] [1]),
        .I4(\frame_counter_new_0_i_reg_184_reg[2] [0]),
        .O(\noise_frame_count_read_reg_372_reg[3] [1]));
  LUT6 #(
    .INIT(64'h88B8B888B888B888)) 
    \frame_counter_new_0_i_reg_184[2]_i_1 
       (.I0(\frame_counter_new_0_i_reg_184_reg[3] [2]),
        .I1(ap_loop_exit_ready_pp0_iter2_reg_reg),
        .I2(frame_counter_flag_0_i_reg_1692),
        .I3(\frame_counter_new_0_i_reg_184_reg[2] [2]),
        .I4(\frame_counter_new_0_i_reg_184_reg[2] [1]),
        .I5(\frame_counter_new_0_i_reg_184_reg[2] [0]),
        .O(\noise_frame_count_read_reg_372_reg[3] [2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \frame_counter_new_0_i_reg_184[3]_i_2 
       (.I0(\frame_counter_new_0_i_reg_184_reg[3] [3]),
        .I1(ap_loop_exit_ready_pp0_iter2_reg_reg),
        .I2(frame_counter_flag_0_i_reg_1692),
        .I3(add_ln324_fu_327_p2),
        .O(\noise_frame_count_read_reg_372_reg[3] [3]));
  LUT6 #(
    .INIT(64'hFFAAFEAAFFAAFFAA)) 
    grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg_i_1
       (.I0(Q[2]),
        .I1(\i_fu_76_reg[10] ),
        .I2(\i_fu_76_reg[10]_0 [1]),
        .I3(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .I4(ap_loop_init_int),
        .I5(\i_fu_76_reg[10]_0 [10]),
        .O(\ap_CS_fsm_reg[49] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAFFAAFB)) 
    \i_fu_76[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_76_reg[10]_0 [10]),
        .I2(\i_fu_76_reg[10]_0 [1]),
        .I3(\i_fu_76_reg[10]_0 [0]),
        .I4(\i_fu_76_reg[0] ),
        .O(\i_fu_76_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF00FB00)) 
    \i_fu_76[10]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_76_reg[10]_0 [10]),
        .I2(\i_fu_76_reg[10]_0 [1]),
        .I3(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .I4(\i_fu_76_reg[10] ),
        .O(ap_loop_init_int_reg_0));
  LUT6 #(
    .INIT(64'hDF002000D0002000)) 
    \i_fu_76[10]_i_2 
       (.I0(\i_fu_76_reg[10]_0 [9]),
        .I1(\i_fu_76_reg[10]_1 ),
        .I2(\i_fu_76_reg[10]_0 [1]),
        .I3(\i_fu_76[10]_i_5_n_0 ),
        .I4(\i_fu_76_reg[10]_0 [10]),
        .I5(\i_fu_76_reg[10] ),
        .O(\i_fu_76_reg[9] [10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \i_fu_76[10]_i_5 
       (.I0(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .I1(ap_loop_init_int),
        .O(\i_fu_76[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_76[1]_i_1 
       (.I0(\i_fu_76_reg[10]_0 [0]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_76_reg[10]_0 [1]),
        .O(\i_fu_76_reg[9] [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1230)) 
    \i_fu_76[2]_i_1 
       (.I0(\i_fu_76_reg[10]_0 [1]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_76_reg[10]_0 [2]),
        .I3(\i_fu_76_reg[10]_0 [0]),
        .O(\i_fu_76_reg[9] [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i_fu_76[3]_i_1 
       (.I0(\i_fu_76_reg[10]_0 [1]),
        .I1(\i_fu_76_reg[10]_0 [0]),
        .I2(\i_fu_76_reg[10]_0 [2]),
        .I3(ap_loop_init_int),
        .I4(\i_fu_76_reg[10]_0 [3]),
        .O(\i_fu_76_reg[9] [3]));
  LUT6 #(
    .INIT(64'h7F800000FF000000)) 
    \i_fu_76[4]_i_1 
       (.I0(\i_fu_76_reg[10]_0 [3]),
        .I1(\i_fu_76_reg[10]_0 [0]),
        .I2(\i_fu_76_reg[10]_0 [2]),
        .I3(\i_fu_76_reg[10]_0 [4]),
        .I4(\i_fu_76[10]_i_5_n_0 ),
        .I5(\i_fu_76_reg[10]_0 [1]),
        .O(\i_fu_76_reg[9] [4]));
  LUT4 #(
    .INIT(16'h090C)) 
    \i_fu_76[5]_i_1 
       (.I0(\i_fu_76_reg[5] ),
        .I1(\i_fu_76_reg[10]_0 [5]),
        .I2(ap_loop_init_int),
        .I3(\i_fu_76_reg[10]_0 [1]),
        .O(\i_fu_76_reg[9] [5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h090C)) 
    \i_fu_76[6]_i_1 
       (.I0(\i_fu_76_reg[6] ),
        .I1(\i_fu_76_reg[10]_0 [6]),
        .I2(ap_loop_init_int),
        .I3(\i_fu_76_reg[10]_0 [1]),
        .O(\i_fu_76_reg[9] [6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h090C)) 
    \i_fu_76[7]_i_1 
       (.I0(\i_fu_76_reg[9]_0 ),
        .I1(\i_fu_76_reg[10]_0 [7]),
        .I2(ap_loop_init_int),
        .I3(\i_fu_76_reg[10]_0 [1]),
        .O(\i_fu_76_reg[9] [7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00D200F0)) 
    \i_fu_76[8]_i_1 
       (.I0(\i_fu_76_reg[10]_0 [7]),
        .I1(\i_fu_76_reg[9]_0 ),
        .I2(\i_fu_76_reg[10]_0 [8]),
        .I3(ap_loop_init_int),
        .I4(\i_fu_76_reg[10]_0 [1]),
        .O(\i_fu_76_reg[9] [8]));
  LUT6 #(
    .INIT(64'hDF200000FF000000)) 
    \i_fu_76[9]_i_1 
       (.I0(\i_fu_76_reg[10]_0 [8]),
        .I1(\i_fu_76_reg[9]_0 ),
        .I2(\i_fu_76_reg[10]_0 [7]),
        .I3(\i_fu_76_reg[10]_0 [9]),
        .I4(\i_fu_76[10]_i_5_n_0 ),
        .I5(\i_fu_76_reg[10]_0 [1]),
        .O(\i_fu_76_reg[9] [9]));
  LUT5 #(
    .INIT(32'hFFBFCC80)) 
    \noise_estimated[0]_i_1 
       (.I0(\noise_estimated_reg[0] ),
        .I1(\ap_CS_fsm_reg[50] ),
        .I2(noise_estimated_flag_0_i_reg_197),
        .I3(ap_phi_mux_frame_counter_new_0_i_phi_fu_188_p61),
        .I4(noise_estimated),
        .O(\noise_estimated_new_0_i_reg_211_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \noise_estimated_flag_0_i_reg_197[0]_i_1 
       (.I0(ap_loop_exit_ready_pp0_iter2_reg_reg),
        .I1(frame_counter_flag_1_i_reg_155),
        .O(\frame_counter_flag_1_i_reg_155_reg[0] ));
  LUT6 #(
    .INIT(64'hAE00000000000000)) 
    \noise_estimated_new_0_i_reg_211[0]_i_1 
       (.I0(ap_loop_exit_ready_pp0_iter2_reg),
        .I1(ap_done_cache),
        .I2(grp_Block_entry_frame_counter_wr_proc_Pipeline_FINALIZE_NOISE_fu_280_ap_start_reg),
        .I3(Q[3]),
        .I4(icmp_ln326_reg_421),
        .I5(\frame_counter_reg[0] ),
        .O(ap_loop_exit_ready_pp0_iter2_reg_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_internal_to_axi
   (ap_loop_init,
    clean_out_TLAST,
    ap_loop_exit_ready_pp0_iter1_reg,
    ap_enable_reg_pp0_iter1,
    ap_block_pp0_stage0_11001,
    internal_to_axi_U0_ap_ready,
    ap_ready_int,
    clean_out_TVALID,
    auto_restart_status_reg,
    clean_out_TDATA,
    clean_out_TSTRB,
    ap_clk,
    ap_rst_n_inv,
    ap_rst_n,
    clean_out_TREADY,
    stream6_empty_n,
    internal_to_axi_U0_ap_start,
    int_task_ap_done_reg,
    D,
    ap_sig_allocacmp_i1_load1);
  output ap_loop_init;
  output [0:0]clean_out_TLAST;
  output ap_loop_exit_ready_pp0_iter1_reg;
  output ap_enable_reg_pp0_iter1;
  output ap_block_pp0_stage0_11001;
  output internal_to_axi_U0_ap_ready;
  output ap_ready_int;
  output clean_out_TVALID;
  output auto_restart_status_reg;
  output [63:0]clean_out_TDATA;
  output [0:0]clean_out_TSTRB;
  input ap_clk;
  input ap_rst_n_inv;
  input ap_rst_n;
  input clean_out_TREADY;
  input stream6_empty_n;
  input internal_to_axi_U0_ap_start;
  input int_task_ap_done_reg;
  input [63:0]D;
  input ap_sig_allocacmp_i1_load1;

  wire [63:0]D;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire ap_sig_allocacmp_i1_load1;
  wire auto_restart_status_reg;
  wire axi_val_last_fu_95_p2;
  wire [63:0]clean_out_TDATA;
  wire [0:0]clean_out_TLAST;
  wire clean_out_TREADY;
  wire [0:0]clean_out_TSTRB;
  wire clean_out_TVALID;
  wire [8:0]i1_fu_54;
  wire \i1_fu_54[8]_i_4_n_0 ;
  wire [8:0]i_fu_102_p2;
  wire int_task_ap_done_reg;
  wire internal_to_axi_U0_ap_ready;
  wire internal_to_axi_U0_ap_start;
  wire regslice_both_clean_out_V_data_V_U_n_0;
  wire regslice_both_clean_out_V_data_V_U_n_3;
  wire regslice_both_clean_out_V_data_V_U_n_7;
  wire stream6_empty_n;

  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_clean_out_V_data_V_U_n_7),
        .Q(ap_enable_reg_pp0_iter1),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_clean_out_V_data_V_U_n_0),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_5 flow_control_loop_pipe_U
       (.D({i_fu_102_p2[7:5],i_fu_102_p2[3:0]}),
        .Q(i1_fu_54),
        .ap_clk(ap_clk),
        .ap_loop_init_reg_0(ap_loop_init),
        .ap_loop_init_reg_1(regslice_both_clean_out_V_data_V_U_n_3),
        .ap_sig_allocacmp_i1_load1(ap_sig_allocacmp_i1_load1),
        .axi_val_last_fu_95_p2(axi_val_last_fu_95_p2),
        .\i1_fu_54_reg[7] (\i1_fu_54[8]_i_4_n_0 ),
        .internal_to_axi_U0_ap_start(internal_to_axi_U0_ap_start));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i1_fu_54[4]_i_1__0 
       (.I0(i1_fu_54[2]),
        .I1(i1_fu_54[0]),
        .I2(i1_fu_54[1]),
        .I3(i1_fu_54[3]),
        .I4(ap_sig_allocacmp_i1_load1),
        .I5(i1_fu_54[4]),
        .O(i_fu_102_p2[4]));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i1_fu_54[8]_i_2__0 
       (.I0(i1_fu_54[6]),
        .I1(\i1_fu_54[8]_i_4_n_0 ),
        .I2(i1_fu_54[5]),
        .I3(i1_fu_54[7]),
        .I4(ap_sig_allocacmp_i1_load1),
        .I5(i1_fu_54[8]),
        .O(i_fu_102_p2[8]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \i1_fu_54[8]_i_4 
       (.I0(i1_fu_54[4]),
        .I1(i1_fu_54[2]),
        .I2(i1_fu_54[0]),
        .I3(ap_sig_allocacmp_i1_load1),
        .I4(i1_fu_54[1]),
        .I5(i1_fu_54[3]),
        .O(\i1_fu_54[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[0] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_102_p2[0]),
        .Q(i1_fu_54[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[1] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_102_p2[1]),
        .Q(i1_fu_54[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[2] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_102_p2[2]),
        .Q(i1_fu_54[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[3] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_102_p2[3]),
        .Q(i1_fu_54[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[4] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_102_p2[4]),
        .Q(i1_fu_54[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[5] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_102_p2[5]),
        .Q(i1_fu_54[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[6] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_102_p2[6]),
        .Q(i1_fu_54[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[7] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_102_p2[7]),
        .Q(i1_fu_54[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_54_reg[8] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_102_p2[8]),
        .Q(i1_fu_54[8]),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both regslice_both_clean_out_V_data_V_U
       (.D(D),
        .E(ap_ready_int),
        .ap_clk(ap_clk),
        .ap_loop_exit_ready_pp0_iter1_reg_reg(regslice_both_clean_out_V_data_V_U_n_0),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_clean_out_V_data_V_U_n_3),
        .ap_rst_n_inv(ap_rst_n_inv),
        .auto_restart_status_reg(auto_restart_status_reg),
        .axi_val_last_fu_95_p2(axi_val_last_fu_95_p2),
        .clean_out_TDATA(clean_out_TDATA),
        .clean_out_TREADY(clean_out_TREADY),
        .clean_out_TVALID(clean_out_TVALID),
        .empty_n_reg(ap_block_pp0_stage0_11001),
        .empty_n_reg_0(regslice_both_clean_out_V_data_V_U_n_7),
        .\i1_fu_54_reg[0] (ap_loop_exit_ready_pp0_iter1_reg),
        .\i1_fu_54_reg[0]_0 (ap_enable_reg_pp0_iter1),
        .int_task_ap_done_reg(int_task_ap_done_reg),
        .internal_to_axi_U0_ap_ready(internal_to_axi_U0_ap_ready),
        .internal_to_axi_U0_ap_start(internal_to_axi_U0_ap_start),
        .stream6_empty_n(stream6_empty_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized0 regslice_both_clean_out_V_keep_V_U
       (.E(ap_ready_int),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .clean_out_TREADY(clean_out_TREADY),
        .clean_out_TSTRB(clean_out_TSTRB));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1 regslice_both_clean_out_V_last_V_U
       (.E(ap_ready_int),
        .ap_clk(ap_clk),
        .ap_rst_n_inv(ap_rst_n_inv),
        .axi_val_last_fu_95_p2(axi_val_last_fu_95_p2),
        .clean_out_TLAST(clean_out_TLAST),
        .clean_out_TREADY(clean_out_TREADY));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_noise_estimation_accumulate
   (ap_enable_reg_pp0_iter1_reg_0,
    D,
    p_6_in,
    grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg,
    E,
    ap_clk,
    AR,
    Q,
    grp_noise_estimation_accumulate_fu_246_ap_start_reg,
    ap_block_pp0_stage0_11001,
    ap_done_cache_reg,
    stream3_empty_n,
    stream3_full_n,
    compute_magnitude_square_U0_stream2_write,
    full_n_reg,
    ap_rst_n,
    pop);
  output ap_enable_reg_pp0_iter1_reg_0;
  output [1:0]D;
  output p_6_in;
  output grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg;
  output [0:0]E;
  input ap_clk;
  input [0:0]AR;
  input [1:0]Q;
  input grp_noise_estimation_accumulate_fu_246_ap_start_reg;
  input ap_block_pp0_stage0_11001;
  input ap_done_cache_reg;
  input stream3_empty_n;
  input stream3_full_n;
  input compute_magnitude_square_U0_stream2_write;
  input [0:0]full_n_reg;
  input ap_rst_n;
  input pop;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire ap_block_pp0_stage0_11001;
  wire ap_clk;
  wire ap_done_cache_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_rst_n;
  wire compute_magnitude_square_U0_stream2_write;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_2;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire flow_control_loop_pipe_sequential_init_U_n_7;
  wire flow_control_loop_pipe_sequential_init_U_n_8;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire [0:0]full_n_reg;
  wire grp_noise_estimation_accumulate_fu_246_ap_start_reg;
  wire grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg;
  wire \i_fu_84_reg_n_0_[0] ;
  wire \i_fu_84_reg_n_0_[10] ;
  wire \i_fu_84_reg_n_0_[1] ;
  wire \i_fu_84_reg_n_0_[2] ;
  wire \i_fu_84_reg_n_0_[3] ;
  wire \i_fu_84_reg_n_0_[4] ;
  wire \i_fu_84_reg_n_0_[5] ;
  wire \i_fu_84_reg_n_0_[6] ;
  wire \i_fu_84_reg_n_0_[7] ;
  wire \i_fu_84_reg_n_0_[8] ;
  wire \i_fu_84_reg_n_0_[9] ;
  wire [0:0]p_0_in;
  wire p_6_in;
  wire pop;
  wire stream3_empty_n;
  wire stream3_full_n;

  FDCE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_16),
        .Q(ap_enable_reg_pp0_iter1_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_15),
        .Q(ap_loop_exit_ready_pp0_iter1_reg));
  LUT6 #(
    .INIT(64'h0080008000808080)) 
    empty_n_i_2__0
       (.I0(ap_enable_reg_pp0_iter1_reg_0),
        .I1(ap_done_cache_reg),
        .I2(stream3_empty_n),
        .I3(stream3_full_n),
        .I4(compute_magnitude_square_U0_stream2_write),
        .I5(full_n_reg),
        .O(p_6_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init_10 flow_control_loop_pipe_sequential_init_U
       (.AR(AR),
        .D(D),
        .E(flow_control_loop_pipe_sequential_init_U_n_13),
        .Q(Q),
        .ap_block_pp0_stage0_11001(ap_block_pp0_stage0_11001),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(ap_enable_reg_pp0_iter1_reg_0),
        .ap_done_cache_reg_1(ap_done_cache_reg),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_rst_n(ap_rst_n),
        .grp_noise_estimation_accumulate_fu_246_ap_start_reg(grp_noise_estimation_accumulate_fu_246_ap_start_reg),
        .grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg(grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg),
        .grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_0(flow_control_loop_pipe_sequential_init_U_n_15),
        .grp_noise_estimation_accumulate_fu_246_ap_start_reg_reg_1(flow_control_loop_pipe_sequential_init_U_n_16),
        .\i_fu_84_reg[10] ({flow_control_loop_pipe_sequential_init_U_n_2,flow_control_loop_pipe_sequential_init_U_n_3,flow_control_loop_pipe_sequential_init_U_n_4,flow_control_loop_pipe_sequential_init_U_n_5,flow_control_loop_pipe_sequential_init_U_n_6,flow_control_loop_pipe_sequential_init_U_n_7,flow_control_loop_pipe_sequential_init_U_n_8,flow_control_loop_pipe_sequential_init_U_n_9,flow_control_loop_pipe_sequential_init_U_n_10,flow_control_loop_pipe_sequential_init_U_n_11,p_0_in}),
        .\i_fu_84_reg[10]_0 ({\i_fu_84_reg_n_0_[10] ,\i_fu_84_reg_n_0_[9] ,\i_fu_84_reg_n_0_[8] ,\i_fu_84_reg_n_0_[7] ,\i_fu_84_reg_n_0_[6] ,\i_fu_84_reg_n_0_[5] ,\i_fu_84_reg_n_0_[4] ,\i_fu_84_reg_n_0_[3] ,\i_fu_84_reg_n_0_[2] ,\i_fu_84_reg_n_0_[1] ,\i_fu_84_reg_n_0_[0] }),
        .stream3_empty_n(stream3_empty_n));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(p_0_in),
        .Q(\i_fu_84_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[10] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_2),
        .Q(\i_fu_84_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_11),
        .Q(\i_fu_84_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_10),
        .Q(\i_fu_84_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_9),
        .Q(\i_fu_84_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_8),
        .Q(\i_fu_84_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_7),
        .Q(\i_fu_84_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_6),
        .Q(\i_fu_84_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(\i_fu_84_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_4),
        .Q(\i_fu_84_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_84_reg[9] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_13),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_3),
        .Q(\i_fu_84_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \mOutPtr[4]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_0),
        .I1(ap_done_cache_reg),
        .I2(stream3_empty_n),
        .I3(Q[1]),
        .I4(pop),
        .O(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_reconstruct_signal
   (start_once_reg,
    E,
    push,
    p_8_in,
    dout_vld_reg,
    pop,
    Q,
    start_once_reg_reg_0,
    reconstruct_signal_U0_stream6_write,
    reconstruct_signal_U0_ap_ready,
    ap_rst_n_0,
    ap_clk,
    ap_rst_n_inv,
    stream6_empty_n,
    ap_ready_int,
    push_0,
    stream2_empty_n,
    stream6_full_n,
    stream5_empty_n,
    empty_n,
    start_for_internal_to_axi_U0_full_n,
    reconstruct_signal_U0_ap_start,
    ap_rst_n);
  output start_once_reg;
  output [0:0]E;
  output push;
  output p_8_in;
  output dout_vld_reg;
  output pop;
  output [1:0]Q;
  output start_once_reg_reg_0;
  output reconstruct_signal_U0_stream6_write;
  output reconstruct_signal_U0_ap_ready;
  output ap_rst_n_0;
  input ap_clk;
  input ap_rst_n_inv;
  input stream6_empty_n;
  input ap_ready_int;
  input push_0;
  input stream2_empty_n;
  input stream6_full_n;
  input stream5_empty_n;
  input empty_n;
  input start_for_internal_to_axi_U0_full_n;
  input reconstruct_signal_U0_ap_start;
  input ap_rst_n;

  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire dout_vld_reg;
  wire empty_n;
  wire flow_control_loop_pipe_U_n_9;
  wire [8:0]i1_fu_48;
  wire \i1_fu_48[5]_i_2_n_0 ;
  wire \i1_fu_48[8]_i_4_n_0 ;
  wire [8:0]p_1_in;
  wire p_8_in;
  wire pop;
  wire push;
  wire push_0;
  wire reconstruct_signal_U0_ap_ready;
  wire reconstruct_signal_U0_ap_start;
  wire reconstruct_signal_U0_stream6_write;
  wire start_for_internal_to_axi_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1__1_n_0;
  wire start_once_reg_reg_0;
  wire stream2_empty_n;
  wire stream5_empty_n;
  wire stream6_empty_n;
  wire stream6_full_n;

  LUT6 #(
    .INIT(64'h2EEEEEEECCCCCCCC)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(start_once_reg_reg_0),
        .I3(stream2_empty_n),
        .I4(stream6_full_n),
        .I5(stream5_empty_n),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hD111111133333333)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(start_once_reg_reg_0),
        .I3(stream2_empty_n),
        .I4(stream6_full_n),
        .I5(stream5_empty_n),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \ap_CS_fsm[1]_i_2__1 
       (.I0(start_once_reg),
        .I1(start_for_internal_to_axi_U0_full_n),
        .I2(reconstruct_signal_U0_ap_start),
        .O(start_once_reg_reg_0));
  (* FSM_ENCODING = "none" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .PRE(ap_rst_n_inv),
        .Q(Q[0]));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(ap_NS_fsm[1]),
        .Q(Q[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe flow_control_loop_pipe_U
       (.D(p_1_in),
        .E(flow_control_loop_pipe_U_n_9),
        .Q(i1_fu_48),
        .ap_clk(ap_clk),
        .ap_loop_init_reg_0(Q),
        .ap_rst_n(ap_rst_n),
        .\i1_fu_48_reg[0] (start_once_reg_reg_0),
        .\i1_fu_48_reg[5] (\i1_fu_48[5]_i_2_n_0 ),
        .\i1_fu_48_reg[6] (\i1_fu_48[8]_i_4_n_0 ),
        .reconstruct_signal_U0_ap_ready(reconstruct_signal_U0_ap_ready),
        .stream2_empty_n(stream2_empty_n),
        .stream5_empty_n(stream5_empty_n),
        .stream6_full_n(stream6_full_n));
  LUT5 #(
    .INIT(32'h80000000)) 
    \i1_fu_48[5]_i_2 
       (.I0(i1_fu_48[4]),
        .I1(i1_fu_48[2]),
        .I2(i1_fu_48[0]),
        .I3(i1_fu_48[1]),
        .I4(i1_fu_48[3]),
        .O(\i1_fu_48[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i1_fu_48[8]_i_4 
       (.I0(i1_fu_48[5]),
        .I1(i1_fu_48[3]),
        .I2(i1_fu_48[1]),
        .I3(i1_fu_48[0]),
        .I4(i1_fu_48[2]),
        .I5(i1_fu_48[4]),
        .O(\i1_fu_48[8]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[0]),
        .Q(i1_fu_48[0]));
  FDCE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[1]),
        .Q(i1_fu_48[1]));
  FDCE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[2]),
        .Q(i1_fu_48[2]));
  FDCE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[3]),
        .Q(i1_fu_48[3]));
  FDCE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[4]),
        .Q(i1_fu_48[4]));
  FDCE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[5]),
        .Q(i1_fu_48[5]));
  FDCE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[6]),
        .Q(i1_fu_48[6]));
  FDCE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[7]),
        .Q(i1_fu_48[7]));
  FDCE #(
    .INIT(1'b0)) 
    \i1_fu_48_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_9),
        .CLR(ap_rst_n_inv),
        .D(p_1_in[8]),
        .Q(i1_fu_48[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \mOutPtr[0]_i_1__0 
       (.I0(pop),
        .I1(push_0),
        .O(dout_vld_reg));
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_3_i_2
       (.I0(pop),
        .I1(ap_rst_n),
        .O(ap_rst_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    mem_reg_i_2
       (.I0(start_once_reg_reg_0),
        .I1(stream2_empty_n),
        .I2(stream6_full_n),
        .I3(Q[0]),
        .I4(stream5_empty_n),
        .O(push));
  LUT5 #(
    .INIT(32'h80000000)) 
    \num_data_cnt[0]_i_3 
       (.I0(stream5_empty_n),
        .I1(Q[0]),
        .I2(stream6_full_n),
        .I3(stream2_empty_n),
        .I4(start_once_reg_reg_0),
        .O(reconstruct_signal_U0_stream6_write));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \num_data_cnt[4]_i_1 
       (.I0(push),
        .I1(stream6_empty_n),
        .I2(ap_ready_int),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \num_data_cnt[4]_i_3 
       (.I0(push),
        .I1(ap_ready_int),
        .I2(stream6_empty_n),
        .O(p_8_in));
  LUT6 #(
    .INIT(64'hB333333300000000)) 
    \raddr[10]_i_1 
       (.I0(start_once_reg_reg_0),
        .I1(stream2_empty_n),
        .I2(stream6_full_n),
        .I3(Q[0]),
        .I4(stream5_empty_n),
        .I5(empty_n),
        .O(pop));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h5540)) 
    start_once_reg_i_1__1
       (.I0(reconstruct_signal_U0_ap_ready),
        .I1(reconstruct_signal_U0_ap_start),
        .I2(start_for_internal_to_axi_U0_full_n),
        .I3(start_once_reg),
        .O(start_once_reg_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(ap_rst_n_inv),
        .D(start_once_reg_i_1__1_n_0),
        .Q(start_once_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both
   (ap_loop_exit_ready_pp0_iter1_reg_reg,
    empty_n_reg,
    internal_to_axi_U0_ap_ready,
    ap_rst_n_0,
    E,
    clean_out_TVALID,
    auto_restart_status_reg,
    empty_n_reg_0,
    clean_out_TDATA,
    ap_rst_n_inv,
    ap_clk,
    \i1_fu_54_reg[0] ,
    ap_rst_n,
    ap_loop_init,
    axi_val_last_fu_95_p2,
    clean_out_TREADY,
    \i1_fu_54_reg[0]_0 ,
    stream6_empty_n,
    internal_to_axi_U0_ap_start,
    int_task_ap_done_reg,
    D);
  output ap_loop_exit_ready_pp0_iter1_reg_reg;
  output empty_n_reg;
  output internal_to_axi_U0_ap_ready;
  output ap_rst_n_0;
  output [0:0]E;
  output clean_out_TVALID;
  output auto_restart_status_reg;
  output empty_n_reg_0;
  output [63:0]clean_out_TDATA;
  input ap_rst_n_inv;
  input ap_clk;
  input \i1_fu_54_reg[0] ;
  input ap_rst_n;
  input ap_loop_init;
  input axi_val_last_fu_95_p2;
  input clean_out_TREADY;
  input \i1_fu_54_reg[0]_0 ;
  input stream6_empty_n;
  input internal_to_axi_U0_ap_start;
  input int_task_ap_done_reg;
  input [63:0]D;

  wire [63:0]D;
  wire [0:0]E;
  wire ack_in_t_i_1__1_n_0;
  wire ap_clk;
  wire ap_loop_exit_ready_pp0_iter1_reg_reg;
  wire ap_loop_init;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire auto_restart_status_reg;
  wire axi_val_last_fu_95_p2;
  wire [63:0]clean_out_TDATA;
  wire clean_out_TREADY;
  wire clean_out_TREADY_int_regslice;
  wire clean_out_TVALID;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[28] ;
  wire \data_p2_reg_n_0_[29] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[30] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[32] ;
  wire \data_p2_reg_n_0_[33] ;
  wire \data_p2_reg_n_0_[34] ;
  wire \data_p2_reg_n_0_[35] ;
  wire \data_p2_reg_n_0_[36] ;
  wire \data_p2_reg_n_0_[37] ;
  wire \data_p2_reg_n_0_[38] ;
  wire \data_p2_reg_n_0_[39] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[40] ;
  wire \data_p2_reg_n_0_[41] ;
  wire \data_p2_reg_n_0_[42] ;
  wire \data_p2_reg_n_0_[43] ;
  wire \data_p2_reg_n_0_[44] ;
  wire \data_p2_reg_n_0_[45] ;
  wire \data_p2_reg_n_0_[46] ;
  wire \data_p2_reg_n_0_[47] ;
  wire \data_p2_reg_n_0_[48] ;
  wire \data_p2_reg_n_0_[49] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[50] ;
  wire \data_p2_reg_n_0_[51] ;
  wire \data_p2_reg_n_0_[52] ;
  wire \data_p2_reg_n_0_[53] ;
  wire \data_p2_reg_n_0_[54] ;
  wire \data_p2_reg_n_0_[55] ;
  wire \data_p2_reg_n_0_[56] ;
  wire \data_p2_reg_n_0_[57] ;
  wire \data_p2_reg_n_0_[58] ;
  wire \data_p2_reg_n_0_[59] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[60] ;
  wire \data_p2_reg_n_0_[61] ;
  wire \data_p2_reg_n_0_[62] ;
  wire \data_p2_reg_n_0_[63] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire empty_n_reg;
  wire empty_n_reg_0;
  wire \i1_fu_54_reg[0] ;
  wire \i1_fu_54_reg[0]_0 ;
  wire int_task_ap_done_reg;
  wire internal_to_axi_U0_ap_ready;
  wire internal_to_axi_U0_ap_start;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [63:0]p_0_in;
  wire regslice_both_clean_out_V_data_V_U_apdone_blk;
  wire [1:1]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;
  wire stream6_empty_n;

  LUT4 #(
    .INIT(16'hFF5D)) 
    \FSM_sequential_state[0]_i_1__1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(E),
        .I3(clean_out_TREADY),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hDDFFC000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(clean_out_TREADY),
        .I1(E),
        .I2(clean_out_TREADY_int_regslice),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h8AFFEEAA)) 
    ack_in_t_i_1__1
       (.I0(clean_out_TREADY_int_regslice),
        .I1(clean_out_TREADY),
        .I2(E),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__1_n_0),
        .Q(clean_out_TREADY_int_regslice),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(internal_to_axi_U0_ap_start),
        .I1(empty_n_reg),
        .I2(\i1_fu_54_reg[0]_0 ),
        .O(empty_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h8C80)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1__1
       (.I0(\i1_fu_54_reg[0] ),
        .I1(ap_rst_n),
        .I2(empty_n_reg),
        .I3(internal_to_axi_U0_ap_ready),
        .O(ap_loop_exit_ready_pp0_iter1_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    ap_loop_init_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init),
        .I2(E),
        .I3(internal_to_axi_U0_ap_ready),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[10]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[11]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[12]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[14]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_1 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[15]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[16]_i_1 
       (.I0(\data_p2_reg_n_0_[16] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[16]),
        .O(p_0_in[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[17]_i_1 
       (.I0(\data_p2_reg_n_0_[17] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[17]),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[18]_i_1 
       (.I0(\data_p2_reg_n_0_[18] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[18]),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[19]_i_1 
       (.I0(\data_p2_reg_n_0_[19] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[19]),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[20]_i_1 
       (.I0(\data_p2_reg_n_0_[20] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[20]),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[21]_i_1 
       (.I0(\data_p2_reg_n_0_[21] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[21]),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[22]_i_1 
       (.I0(\data_p2_reg_n_0_[22] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[22]),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[23]_i_1 
       (.I0(\data_p2_reg_n_0_[23] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[23]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[24]_i_1 
       (.I0(\data_p2_reg_n_0_[24] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[24]),
        .O(p_0_in[24]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[25]_i_1 
       (.I0(\data_p2_reg_n_0_[25] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[25]),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[26]_i_1 
       (.I0(\data_p2_reg_n_0_[26] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[26]),
        .O(p_0_in[26]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[27]_i_1 
       (.I0(\data_p2_reg_n_0_[27] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[27]),
        .O(p_0_in[27]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[28]_i_1 
       (.I0(\data_p2_reg_n_0_[28] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[28]),
        .O(p_0_in[28]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[29]_i_1 
       (.I0(\data_p2_reg_n_0_[29] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[29]),
        .O(p_0_in[29]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[30]_i_1 
       (.I0(\data_p2_reg_n_0_[30] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[30]),
        .O(p_0_in[30]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[31]_i_1 
       (.I0(\data_p2_reg_n_0_[31] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[31]),
        .O(p_0_in[31]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[32]_i_1 
       (.I0(\data_p2_reg_n_0_[32] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[32]),
        .O(p_0_in[32]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[33]_i_1 
       (.I0(\data_p2_reg_n_0_[33] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[33]),
        .O(p_0_in[33]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[34]_i_1 
       (.I0(\data_p2_reg_n_0_[34] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[34]),
        .O(p_0_in[34]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[35]_i_1 
       (.I0(\data_p2_reg_n_0_[35] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[35]),
        .O(p_0_in[35]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[36]_i_1 
       (.I0(\data_p2_reg_n_0_[36] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[36]),
        .O(p_0_in[36]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[37]_i_1 
       (.I0(\data_p2_reg_n_0_[37] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[37]),
        .O(p_0_in[37]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[38]_i_1 
       (.I0(\data_p2_reg_n_0_[38] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[38]),
        .O(p_0_in[38]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[39]_i_1 
       (.I0(\data_p2_reg_n_0_[39] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[39]),
        .O(p_0_in[39]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[40]_i_1 
       (.I0(\data_p2_reg_n_0_[40] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[40]),
        .O(p_0_in[40]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[41]_i_1 
       (.I0(\data_p2_reg_n_0_[41] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[41]),
        .O(p_0_in[41]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[42]_i_1 
       (.I0(\data_p2_reg_n_0_[42] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[42]),
        .O(p_0_in[42]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[43]_i_1 
       (.I0(\data_p2_reg_n_0_[43] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[43]),
        .O(p_0_in[43]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[44]_i_1 
       (.I0(\data_p2_reg_n_0_[44] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[44]),
        .O(p_0_in[44]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[45]_i_1 
       (.I0(\data_p2_reg_n_0_[45] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[45]),
        .O(p_0_in[45]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[46]_i_1 
       (.I0(\data_p2_reg_n_0_[46] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[46]),
        .O(p_0_in[46]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[47]_i_1 
       (.I0(\data_p2_reg_n_0_[47] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[47]),
        .O(p_0_in[47]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[48]_i_1 
       (.I0(\data_p2_reg_n_0_[48] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[48]),
        .O(p_0_in[48]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[49]_i_1 
       (.I0(\data_p2_reg_n_0_[49] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[49]),
        .O(p_0_in[49]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[50]_i_1 
       (.I0(\data_p2_reg_n_0_[50] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[50]),
        .O(p_0_in[50]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[51]_i_1 
       (.I0(\data_p2_reg_n_0_[51] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[51]),
        .O(p_0_in[51]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[52]_i_1 
       (.I0(\data_p2_reg_n_0_[52] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[52]),
        .O(p_0_in[52]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[53]_i_1 
       (.I0(\data_p2_reg_n_0_[53] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[53]),
        .O(p_0_in[53]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[54]_i_1 
       (.I0(\data_p2_reg_n_0_[54] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[54]),
        .O(p_0_in[54]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[55]_i_1 
       (.I0(\data_p2_reg_n_0_[55] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[55]),
        .O(p_0_in[55]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[56]_i_1 
       (.I0(\data_p2_reg_n_0_[56] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[56]),
        .O(p_0_in[56]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[57]_i_1 
       (.I0(\data_p2_reg_n_0_[57] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[57]),
        .O(p_0_in[57]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[58]_i_1 
       (.I0(\data_p2_reg_n_0_[58] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[58]),
        .O(p_0_in[58]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[59]_i_1 
       (.I0(\data_p2_reg_n_0_[59] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[59]),
        .O(p_0_in[59]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[60]_i_1 
       (.I0(\data_p2_reg_n_0_[60] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[60]),
        .O(p_0_in[60]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[61]_i_1 
       (.I0(\data_p2_reg_n_0_[61] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[61]),
        .O(p_0_in[61]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[62]_i_1 
       (.I0(\data_p2_reg_n_0_[62] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[62]),
        .O(p_0_in[62]));
  LUT4 #(
    .INIT(16'h8AC0)) 
    \data_p1[63]_i_1 
       (.I0(clean_out_TREADY),
        .I1(E),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[63]_i_2 
       (.I0(\data_p2_reg_n_0_[63] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[63]),
        .O(p_0_in[63]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(D[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[0]),
        .Q(clean_out_TDATA[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[10]),
        .Q(clean_out_TDATA[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[11]),
        .Q(clean_out_TDATA[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[12]),
        .Q(clean_out_TDATA[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[13]),
        .Q(clean_out_TDATA[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[14]),
        .Q(clean_out_TDATA[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[15]),
        .Q(clean_out_TDATA[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[16] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[16]),
        .Q(clean_out_TDATA[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[17] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[17]),
        .Q(clean_out_TDATA[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[18] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[18]),
        .Q(clean_out_TDATA[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[19] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[19]),
        .Q(clean_out_TDATA[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[1]),
        .Q(clean_out_TDATA[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[20] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[20]),
        .Q(clean_out_TDATA[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[21] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[21]),
        .Q(clean_out_TDATA[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[22] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[22]),
        .Q(clean_out_TDATA[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[23] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[23]),
        .Q(clean_out_TDATA[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[24] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[24]),
        .Q(clean_out_TDATA[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[25] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[25]),
        .Q(clean_out_TDATA[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[26] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[26]),
        .Q(clean_out_TDATA[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[27] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[27]),
        .Q(clean_out_TDATA[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[28] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[28]),
        .Q(clean_out_TDATA[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[29] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[29]),
        .Q(clean_out_TDATA[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[2]),
        .Q(clean_out_TDATA[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[30] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[30]),
        .Q(clean_out_TDATA[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[31] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[31]),
        .Q(clean_out_TDATA[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[32] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[32]),
        .Q(clean_out_TDATA[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[33] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[33]),
        .Q(clean_out_TDATA[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[34] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[34]),
        .Q(clean_out_TDATA[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[35] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[35]),
        .Q(clean_out_TDATA[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[36] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[36]),
        .Q(clean_out_TDATA[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[37] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[37]),
        .Q(clean_out_TDATA[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[38] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[38]),
        .Q(clean_out_TDATA[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[39] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[39]),
        .Q(clean_out_TDATA[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[3]),
        .Q(clean_out_TDATA[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[40] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[40]),
        .Q(clean_out_TDATA[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[41] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[41]),
        .Q(clean_out_TDATA[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[42] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[42]),
        .Q(clean_out_TDATA[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[43] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[43]),
        .Q(clean_out_TDATA[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[44] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[44]),
        .Q(clean_out_TDATA[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[45] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[45]),
        .Q(clean_out_TDATA[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[46] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[46]),
        .Q(clean_out_TDATA[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[47] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[47]),
        .Q(clean_out_TDATA[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[48] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[48]),
        .Q(clean_out_TDATA[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[49] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[49]),
        .Q(clean_out_TDATA[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[4]),
        .Q(clean_out_TDATA[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[50] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[50]),
        .Q(clean_out_TDATA[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[51] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[51]),
        .Q(clean_out_TDATA[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[52] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[52]),
        .Q(clean_out_TDATA[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[53] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[53]),
        .Q(clean_out_TDATA[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[54] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[54]),
        .Q(clean_out_TDATA[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[55] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[55]),
        .Q(clean_out_TDATA[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[56] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[56]),
        .Q(clean_out_TDATA[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[57] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[57]),
        .Q(clean_out_TDATA[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[58] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[58]),
        .Q(clean_out_TDATA[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[59] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[59]),
        .Q(clean_out_TDATA[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[5]),
        .Q(clean_out_TDATA[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[60] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[60]),
        .Q(clean_out_TDATA[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[61] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[61]),
        .Q(clean_out_TDATA[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[62] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[62]),
        .Q(clean_out_TDATA[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[63] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[63]),
        .Q(clean_out_TDATA[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[6]),
        .Q(clean_out_TDATA[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[7]),
        .Q(clean_out_TDATA[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[8]),
        .Q(clean_out_TDATA[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[9]),
        .Q(clean_out_TDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[63]_i_1 
       (.I0(E),
        .I1(clean_out_TREADY_int_regslice),
        .O(load_p2));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[16] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[17] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[18] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[19] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[20] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[21] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[22] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[23] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[24] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[24]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[25] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[25]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[26] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[26]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[27] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[27]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[28] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[28]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[29] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[29]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[30] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[30]),
        .Q(\data_p2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[31] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[31]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[32] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[32]),
        .Q(\data_p2_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[33] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[33]),
        .Q(\data_p2_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[34] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[34]),
        .Q(\data_p2_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[35] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[35]),
        .Q(\data_p2_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[36] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[36]),
        .Q(\data_p2_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[37] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[37]),
        .Q(\data_p2_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[38] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[38]),
        .Q(\data_p2_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[39] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[39]),
        .Q(\data_p2_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[40] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[40]),
        .Q(\data_p2_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[41] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[41]),
        .Q(\data_p2_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[42] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[42]),
        .Q(\data_p2_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[43] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[43]),
        .Q(\data_p2_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[44] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[44]),
        .Q(\data_p2_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[45] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[45]),
        .Q(\data_p2_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[46] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[46]),
        .Q(\data_p2_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[47] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[47]),
        .Q(\data_p2_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[48] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[48]),
        .Q(\data_p2_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[49] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[49]),
        .Q(\data_p2_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[50] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[50]),
        .Q(\data_p2_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[51] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[51]),
        .Q(\data_p2_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[52] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[52]),
        .Q(\data_p2_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[53] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[53]),
        .Q(\data_p2_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[54] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[54]),
        .Q(\data_p2_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[55] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[55]),
        .Q(\data_p2_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[56] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[56]),
        .Q(\data_p2_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[57] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[57]),
        .Q(\data_p2_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[58] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[58]),
        .Q(\data_p2_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[59] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[59]),
        .Q(\data_p2_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[60] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[60]),
        .Q(\data_p2_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[61] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[61]),
        .Q(\data_p2_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[62] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[62]),
        .Q(\data_p2_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[63] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[63]),
        .Q(\data_p2_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(D[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h3700000000000000)) 
    \i1_fu_54[8]_i_1 
       (.I0(\i1_fu_54_reg[0]_0 ),
        .I1(regslice_both_clean_out_V_data_V_U_apdone_blk),
        .I2(\i1_fu_54_reg[0] ),
        .I3(clean_out_TREADY_int_regslice),
        .I4(stream6_empty_n),
        .I5(internal_to_axi_U0_ap_start),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \i1_fu_54[8]_i_3 
       (.I0(clean_out_TREADY),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(regslice_both_clean_out_V_data_V_U_apdone_blk));
  LUT6 #(
    .INIT(64'hFFFF2F2FFF2A2A2A)) 
    \int_isr[0]_i_3 
       (.I0(internal_to_axi_U0_ap_start),
        .I1(stream6_empty_n),
        .I2(clean_out_TREADY_int_regslice),
        .I3(\i1_fu_54_reg[0] ),
        .I4(regslice_both_clean_out_V_data_V_U_apdone_blk),
        .I5(\i1_fu_54_reg[0]_0 ),
        .O(empty_n_reg));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h04)) 
    int_task_ap_done_i_2
       (.I0(int_task_ap_done_reg),
        .I1(\i1_fu_54_reg[0] ),
        .I2(empty_n_reg),
        .O(auto_restart_status_reg));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mOutPtr[1]_i_3 
       (.I0(E),
        .I1(axi_val_last_fu_95_p2),
        .O(internal_to_axi_U0_ap_ready));
  LUT5 #(
    .INIT(32'hFF5F8800)) 
    \state[0]_i_1 
       (.I0(state),
        .I1(clean_out_TREADY_int_regslice),
        .I2(clean_out_TREADY),
        .I3(E),
        .I4(clean_out_TVALID),
        .O(\state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF5D)) 
    \state[1]_i_1 
       (.I0(clean_out_TVALID),
        .I1(state),
        .I2(E),
        .I3(clean_out_TREADY),
        .O(\state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(clean_out_TVALID),
        .R(ap_rst_n_inv));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(ap_rst_n_inv));
endmodule

(* ORIG_REF_NAME = "denoise_top_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both_8
   (ack_in_t_reg_0,
    mOutPtr111_out,
    E,
    full_n_reg,
    axi_to_internal_U0_stream1_din,
    SR,
    ap_clk,
    pop,
    ap_sync_reg_axi_to_internal_U0_ap_ready,
    ap_start,
    \i1_fu_54_reg[8] ,
    start_for_compute_magnitude_square_U0_full_n,
    stream1_full_n,
    fft_in_TVALID,
    fft_in_TDATA);
  output ack_in_t_reg_0;
  output mOutPtr111_out;
  output [0:0]E;
  output full_n_reg;
  output [63:0]axi_to_internal_U0_stream1_din;
  input [0:0]SR;
  input ap_clk;
  input pop;
  input ap_sync_reg_axi_to_internal_U0_ap_ready;
  input ap_start;
  input \i1_fu_54_reg[8] ;
  input start_for_compute_magnitude_square_U0_full_n;
  input stream1_full_n;
  input fft_in_TVALID;
  input [63:0]fft_in_TDATA;

  wire [0:0]E;
  wire [0:0]SR;
  wire ack_in_t_i_1_n_0;
  wire ack_in_t_reg_0;
  wire ap_clk;
  wire ap_start;
  wire ap_sync_reg_axi_to_internal_U0_ap_ready;
  wire [63:0]axi_to_internal_U0_stream1_din;
  wire \data_p2_reg_n_0_[0] ;
  wire \data_p2_reg_n_0_[10] ;
  wire \data_p2_reg_n_0_[11] ;
  wire \data_p2_reg_n_0_[12] ;
  wire \data_p2_reg_n_0_[13] ;
  wire \data_p2_reg_n_0_[14] ;
  wire \data_p2_reg_n_0_[15] ;
  wire \data_p2_reg_n_0_[16] ;
  wire \data_p2_reg_n_0_[17] ;
  wire \data_p2_reg_n_0_[18] ;
  wire \data_p2_reg_n_0_[19] ;
  wire \data_p2_reg_n_0_[1] ;
  wire \data_p2_reg_n_0_[20] ;
  wire \data_p2_reg_n_0_[21] ;
  wire \data_p2_reg_n_0_[22] ;
  wire \data_p2_reg_n_0_[23] ;
  wire \data_p2_reg_n_0_[24] ;
  wire \data_p2_reg_n_0_[25] ;
  wire \data_p2_reg_n_0_[26] ;
  wire \data_p2_reg_n_0_[27] ;
  wire \data_p2_reg_n_0_[28] ;
  wire \data_p2_reg_n_0_[29] ;
  wire \data_p2_reg_n_0_[2] ;
  wire \data_p2_reg_n_0_[30] ;
  wire \data_p2_reg_n_0_[31] ;
  wire \data_p2_reg_n_0_[32] ;
  wire \data_p2_reg_n_0_[33] ;
  wire \data_p2_reg_n_0_[34] ;
  wire \data_p2_reg_n_0_[35] ;
  wire \data_p2_reg_n_0_[36] ;
  wire \data_p2_reg_n_0_[37] ;
  wire \data_p2_reg_n_0_[38] ;
  wire \data_p2_reg_n_0_[39] ;
  wire \data_p2_reg_n_0_[3] ;
  wire \data_p2_reg_n_0_[40] ;
  wire \data_p2_reg_n_0_[41] ;
  wire \data_p2_reg_n_0_[42] ;
  wire \data_p2_reg_n_0_[43] ;
  wire \data_p2_reg_n_0_[44] ;
  wire \data_p2_reg_n_0_[45] ;
  wire \data_p2_reg_n_0_[46] ;
  wire \data_p2_reg_n_0_[47] ;
  wire \data_p2_reg_n_0_[48] ;
  wire \data_p2_reg_n_0_[49] ;
  wire \data_p2_reg_n_0_[4] ;
  wire \data_p2_reg_n_0_[50] ;
  wire \data_p2_reg_n_0_[51] ;
  wire \data_p2_reg_n_0_[52] ;
  wire \data_p2_reg_n_0_[53] ;
  wire \data_p2_reg_n_0_[54] ;
  wire \data_p2_reg_n_0_[55] ;
  wire \data_p2_reg_n_0_[56] ;
  wire \data_p2_reg_n_0_[57] ;
  wire \data_p2_reg_n_0_[58] ;
  wire \data_p2_reg_n_0_[59] ;
  wire \data_p2_reg_n_0_[5] ;
  wire \data_p2_reg_n_0_[60] ;
  wire \data_p2_reg_n_0_[61] ;
  wire \data_p2_reg_n_0_[62] ;
  wire \data_p2_reg_n_0_[63] ;
  wire \data_p2_reg_n_0_[6] ;
  wire \data_p2_reg_n_0_[7] ;
  wire \data_p2_reg_n_0_[8] ;
  wire \data_p2_reg_n_0_[9] ;
  wire [63:0]fft_in_TDATA;
  wire fft_in_TVALID;
  wire fft_in_TVALID_int_regslice;
  wire full_n_reg;
  wire \i1_fu_54_reg[8] ;
  wire load_p1;
  wire load_p2;
  wire mOutPtr111_out;
  wire [1:0]next__0;
  wire [63:0]p_0_in;
  wire pop;
  wire start_for_compute_magnitude_square_U0_full_n;
  wire [1:1]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire [1:0]state__0;
  wire stream1_full_n;

  LUT4 #(
    .INIT(16'h5FDF)) 
    \FSM_sequential_state[0]_i_1__3 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(full_n_reg),
        .I3(fft_in_TVALID),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFFF58080)) 
    \FSM_sequential_state[1]_i_1__3 
       (.I0(state__0[0]),
        .I1(ack_in_t_reg_0),
        .I2(fft_in_TVALID),
        .I3(full_n_reg),
        .I4(state__0[1]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h2AFFAFAA)) 
    ack_in_t_i_1
       (.I0(ack_in_t_reg_0),
        .I1(fft_in_TVALID),
        .I2(full_n_reg),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF777FFFFF)) 
    ack_in_t_i_2
       (.I0(stream1_full_n),
        .I1(fft_in_TVALID_int_regslice),
        .I2(start_for_compute_magnitude_square_U0_full_n),
        .I3(\i1_fu_54_reg[8] ),
        .I4(ap_start),
        .I5(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .O(full_n_reg));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1_n_0),
        .Q(ack_in_t_reg_0),
        .R(SR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_1__0 
       (.I0(\data_p2_reg_n_0_[0] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[0]),
        .O(p_0_in[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[10]_i_1__0 
       (.I0(\data_p2_reg_n_0_[10] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[10]),
        .O(p_0_in[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[11]_i_1__0 
       (.I0(\data_p2_reg_n_0_[11] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[11]),
        .O(p_0_in[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[12]_i_1__0 
       (.I0(\data_p2_reg_n_0_[12] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[12]),
        .O(p_0_in[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[13]_i_1__0 
       (.I0(\data_p2_reg_n_0_[13] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[13]),
        .O(p_0_in[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[14]_i_1__0 
       (.I0(\data_p2_reg_n_0_[14] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[14]),
        .O(p_0_in[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[15]_i_1__0 
       (.I0(\data_p2_reg_n_0_[15] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[15]),
        .O(p_0_in[15]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[16]_i_1__0 
       (.I0(\data_p2_reg_n_0_[16] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[16]),
        .O(p_0_in[16]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[17]_i_1__0 
       (.I0(\data_p2_reg_n_0_[17] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[17]),
        .O(p_0_in[17]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[18]_i_1__0 
       (.I0(\data_p2_reg_n_0_[18] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[18]),
        .O(p_0_in[18]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[19]_i_1__0 
       (.I0(\data_p2_reg_n_0_[19] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[19]),
        .O(p_0_in[19]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[1]_i_1__0 
       (.I0(\data_p2_reg_n_0_[1] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[1]),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[20]_i_1__0 
       (.I0(\data_p2_reg_n_0_[20] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[20]),
        .O(p_0_in[20]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[21]_i_1__0 
       (.I0(\data_p2_reg_n_0_[21] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[21]),
        .O(p_0_in[21]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[22]_i_1__0 
       (.I0(\data_p2_reg_n_0_[22] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[22]),
        .O(p_0_in[22]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[23]_i_1__0 
       (.I0(\data_p2_reg_n_0_[23] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[23]),
        .O(p_0_in[23]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[24]_i_1__0 
       (.I0(\data_p2_reg_n_0_[24] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[24]),
        .O(p_0_in[24]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[25]_i_1__0 
       (.I0(\data_p2_reg_n_0_[25] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[25]),
        .O(p_0_in[25]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[26]_i_1__0 
       (.I0(\data_p2_reg_n_0_[26] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[26]),
        .O(p_0_in[26]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[27]_i_1__0 
       (.I0(\data_p2_reg_n_0_[27] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[27]),
        .O(p_0_in[27]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[28]_i_1__0 
       (.I0(\data_p2_reg_n_0_[28] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[28]),
        .O(p_0_in[28]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[29]_i_1__0 
       (.I0(\data_p2_reg_n_0_[29] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[29]),
        .O(p_0_in[29]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[2]_i_1__0 
       (.I0(\data_p2_reg_n_0_[2] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[30]_i_1__0 
       (.I0(\data_p2_reg_n_0_[30] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[30]),
        .O(p_0_in[30]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[31]_i_1__0 
       (.I0(\data_p2_reg_n_0_[31] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[31]),
        .O(p_0_in[31]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[32]_i_1__0 
       (.I0(\data_p2_reg_n_0_[32] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[32]),
        .O(p_0_in[32]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[33]_i_1__0 
       (.I0(\data_p2_reg_n_0_[33] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[33]),
        .O(p_0_in[33]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[34]_i_1__0 
       (.I0(\data_p2_reg_n_0_[34] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[34]),
        .O(p_0_in[34]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[35]_i_1__0 
       (.I0(\data_p2_reg_n_0_[35] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[35]),
        .O(p_0_in[35]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[36]_i_1__0 
       (.I0(\data_p2_reg_n_0_[36] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[36]),
        .O(p_0_in[36]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[37]_i_1__0 
       (.I0(\data_p2_reg_n_0_[37] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[37]),
        .O(p_0_in[37]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[38]_i_1__0 
       (.I0(\data_p2_reg_n_0_[38] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[38]),
        .O(p_0_in[38]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[39]_i_1__0 
       (.I0(\data_p2_reg_n_0_[39] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[39]),
        .O(p_0_in[39]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[3]_i_1__0 
       (.I0(\data_p2_reg_n_0_[3] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[3]),
        .O(p_0_in[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[40]_i_1__0 
       (.I0(\data_p2_reg_n_0_[40] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[40]),
        .O(p_0_in[40]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[41]_i_1__0 
       (.I0(\data_p2_reg_n_0_[41] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[41]),
        .O(p_0_in[41]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[42]_i_1__0 
       (.I0(\data_p2_reg_n_0_[42] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[42]),
        .O(p_0_in[42]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[43]_i_1__0 
       (.I0(\data_p2_reg_n_0_[43] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[43]),
        .O(p_0_in[43]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[44]_i_1__0 
       (.I0(\data_p2_reg_n_0_[44] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[44]),
        .O(p_0_in[44]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[45]_i_1__0 
       (.I0(\data_p2_reg_n_0_[45] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[45]),
        .O(p_0_in[45]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[46]_i_1__0 
       (.I0(\data_p2_reg_n_0_[46] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[46]),
        .O(p_0_in[46]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[47]_i_1__0 
       (.I0(\data_p2_reg_n_0_[47] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[47]),
        .O(p_0_in[47]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[48]_i_1__0 
       (.I0(\data_p2_reg_n_0_[48] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[48]),
        .O(p_0_in[48]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[49]_i_1__0 
       (.I0(\data_p2_reg_n_0_[49] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[49]),
        .O(p_0_in[49]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[4]_i_1__0 
       (.I0(\data_p2_reg_n_0_[4] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[4]),
        .O(p_0_in[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[50]_i_1__0 
       (.I0(\data_p2_reg_n_0_[50] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[50]),
        .O(p_0_in[50]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[51]_i_1__0 
       (.I0(\data_p2_reg_n_0_[51] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[51]),
        .O(p_0_in[51]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[52]_i_1__0 
       (.I0(\data_p2_reg_n_0_[52] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[52]),
        .O(p_0_in[52]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[53]_i_1__0 
       (.I0(\data_p2_reg_n_0_[53] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[53]),
        .O(p_0_in[53]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[54]_i_1__0 
       (.I0(\data_p2_reg_n_0_[54] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[54]),
        .O(p_0_in[54]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[55]_i_1__0 
       (.I0(\data_p2_reg_n_0_[55] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[55]),
        .O(p_0_in[55]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[56]_i_1__0 
       (.I0(\data_p2_reg_n_0_[56] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[56]),
        .O(p_0_in[56]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[57]_i_1__0 
       (.I0(\data_p2_reg_n_0_[57] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[57]),
        .O(p_0_in[57]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[58]_i_1__0 
       (.I0(\data_p2_reg_n_0_[58] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[58]),
        .O(p_0_in[58]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[59]_i_1__0 
       (.I0(\data_p2_reg_n_0_[59] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[59]),
        .O(p_0_in[59]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[5]_i_1__0 
       (.I0(\data_p2_reg_n_0_[5] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[5]),
        .O(p_0_in[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[60]_i_1__0 
       (.I0(\data_p2_reg_n_0_[60] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[60]),
        .O(p_0_in[60]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[61]_i_1__0 
       (.I0(\data_p2_reg_n_0_[61] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[61]),
        .O(p_0_in[61]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[62]_i_1__0 
       (.I0(\data_p2_reg_n_0_[62] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[62]),
        .O(p_0_in[62]));
  LUT4 #(
    .INIT(16'h7404)) 
    \data_p1[63]_i_1__0 
       (.I0(full_n_reg),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TVALID),
        .O(load_p1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[63]_i_2__0 
       (.I0(\data_p2_reg_n_0_[63] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[63]),
        .O(p_0_in[63]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[6]_i_1__0 
       (.I0(\data_p2_reg_n_0_[6] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[7]_i_1__0 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[8]_i_1__0 
       (.I0(\data_p2_reg_n_0_[8] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[9]_i_1__0 
       (.I0(\data_p2_reg_n_0_[9] ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TDATA[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[0]),
        .Q(axi_to_internal_U0_stream1_din[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[10]),
        .Q(axi_to_internal_U0_stream1_din[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[11]),
        .Q(axi_to_internal_U0_stream1_din[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[12]),
        .Q(axi_to_internal_U0_stream1_din[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[13]),
        .Q(axi_to_internal_U0_stream1_din[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[14]),
        .Q(axi_to_internal_U0_stream1_din[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[15]),
        .Q(axi_to_internal_U0_stream1_din[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[16] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[16]),
        .Q(axi_to_internal_U0_stream1_din[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[17] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[17]),
        .Q(axi_to_internal_U0_stream1_din[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[18] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[18]),
        .Q(axi_to_internal_U0_stream1_din[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[19] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[19]),
        .Q(axi_to_internal_U0_stream1_din[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[1]),
        .Q(axi_to_internal_U0_stream1_din[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[20] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[20]),
        .Q(axi_to_internal_U0_stream1_din[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[21] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[21]),
        .Q(axi_to_internal_U0_stream1_din[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[22] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[22]),
        .Q(axi_to_internal_U0_stream1_din[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[23] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[23]),
        .Q(axi_to_internal_U0_stream1_din[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[24] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[24]),
        .Q(axi_to_internal_U0_stream1_din[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[25] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[25]),
        .Q(axi_to_internal_U0_stream1_din[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[26] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[26]),
        .Q(axi_to_internal_U0_stream1_din[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[27] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[27]),
        .Q(axi_to_internal_U0_stream1_din[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[28] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[28]),
        .Q(axi_to_internal_U0_stream1_din[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[29] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[29]),
        .Q(axi_to_internal_U0_stream1_din[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[2]),
        .Q(axi_to_internal_U0_stream1_din[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[30] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[30]),
        .Q(axi_to_internal_U0_stream1_din[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[31] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[31]),
        .Q(axi_to_internal_U0_stream1_din[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[32] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[32]),
        .Q(axi_to_internal_U0_stream1_din[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[33] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[33]),
        .Q(axi_to_internal_U0_stream1_din[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[34] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[34]),
        .Q(axi_to_internal_U0_stream1_din[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[35] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[35]),
        .Q(axi_to_internal_U0_stream1_din[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[36] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[36]),
        .Q(axi_to_internal_U0_stream1_din[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[37] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[37]),
        .Q(axi_to_internal_U0_stream1_din[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[38] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[38]),
        .Q(axi_to_internal_U0_stream1_din[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[39] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[39]),
        .Q(axi_to_internal_U0_stream1_din[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[3]),
        .Q(axi_to_internal_U0_stream1_din[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[40] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[40]),
        .Q(axi_to_internal_U0_stream1_din[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[41] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[41]),
        .Q(axi_to_internal_U0_stream1_din[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[42] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[42]),
        .Q(axi_to_internal_U0_stream1_din[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[43] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[43]),
        .Q(axi_to_internal_U0_stream1_din[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[44] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[44]),
        .Q(axi_to_internal_U0_stream1_din[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[45] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[45]),
        .Q(axi_to_internal_U0_stream1_din[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[46] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[46]),
        .Q(axi_to_internal_U0_stream1_din[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[47] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[47]),
        .Q(axi_to_internal_U0_stream1_din[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[48] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[48]),
        .Q(axi_to_internal_U0_stream1_din[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[49] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[49]),
        .Q(axi_to_internal_U0_stream1_din[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[4]),
        .Q(axi_to_internal_U0_stream1_din[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[50] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[50]),
        .Q(axi_to_internal_U0_stream1_din[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[51] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[51]),
        .Q(axi_to_internal_U0_stream1_din[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[52] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[52]),
        .Q(axi_to_internal_U0_stream1_din[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[53] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[53]),
        .Q(axi_to_internal_U0_stream1_din[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[54] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[54]),
        .Q(axi_to_internal_U0_stream1_din[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[55] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[55]),
        .Q(axi_to_internal_U0_stream1_din[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[56] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[56]),
        .Q(axi_to_internal_U0_stream1_din[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[57] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[57]),
        .Q(axi_to_internal_U0_stream1_din[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[58] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[58]),
        .Q(axi_to_internal_U0_stream1_din[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[59] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[59]),
        .Q(axi_to_internal_U0_stream1_din[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[5]),
        .Q(axi_to_internal_U0_stream1_din[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[60] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[60]),
        .Q(axi_to_internal_U0_stream1_din[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[61] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[61]),
        .Q(axi_to_internal_U0_stream1_din[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[62] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[62]),
        .Q(axi_to_internal_U0_stream1_din[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[63] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[63]),
        .Q(axi_to_internal_U0_stream1_din[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[6]),
        .Q(axi_to_internal_U0_stream1_din[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[7]),
        .Q(axi_to_internal_U0_stream1_din[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[8]),
        .Q(axi_to_internal_U0_stream1_din[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(p_0_in[9]),
        .Q(axi_to_internal_U0_stream1_din[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_p2[63]_i_1__0 
       (.I0(fft_in_TVALID),
        .I1(ack_in_t_reg_0),
        .O(load_p2));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[0]),
        .Q(\data_p2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[10]),
        .Q(\data_p2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[11]),
        .Q(\data_p2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[12]),
        .Q(\data_p2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[13]),
        .Q(\data_p2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[14]),
        .Q(\data_p2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[15]),
        .Q(\data_p2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[16] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[16]),
        .Q(\data_p2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[17] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[17]),
        .Q(\data_p2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[18] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[18]),
        .Q(\data_p2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[19] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[19]),
        .Q(\data_p2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[1]),
        .Q(\data_p2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[20] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[20]),
        .Q(\data_p2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[21] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[21]),
        .Q(\data_p2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[22] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[22]),
        .Q(\data_p2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[23] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[23]),
        .Q(\data_p2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[24] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[24]),
        .Q(\data_p2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[25] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[25]),
        .Q(\data_p2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[26] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[26]),
        .Q(\data_p2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[27] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[27]),
        .Q(\data_p2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[28] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[28]),
        .Q(\data_p2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[29] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[29]),
        .Q(\data_p2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[2]),
        .Q(\data_p2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[30] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[30]),
        .Q(\data_p2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[31] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[31]),
        .Q(\data_p2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[32] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[32]),
        .Q(\data_p2_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[33] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[33]),
        .Q(\data_p2_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[34] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[34]),
        .Q(\data_p2_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[35] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[35]),
        .Q(\data_p2_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[36] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[36]),
        .Q(\data_p2_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[37] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[37]),
        .Q(\data_p2_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[38] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[38]),
        .Q(\data_p2_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[39] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[39]),
        .Q(\data_p2_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[3]),
        .Q(\data_p2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[40] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[40]),
        .Q(\data_p2_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[41] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[41]),
        .Q(\data_p2_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[42] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[42]),
        .Q(\data_p2_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[43] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[43]),
        .Q(\data_p2_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[44] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[44]),
        .Q(\data_p2_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[45] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[45]),
        .Q(\data_p2_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[46] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[46]),
        .Q(\data_p2_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[47] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[47]),
        .Q(\data_p2_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[48] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[48]),
        .Q(\data_p2_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[49] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[49]),
        .Q(\data_p2_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[4]),
        .Q(\data_p2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[50] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[50]),
        .Q(\data_p2_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[51] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[51]),
        .Q(\data_p2_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[52] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[52]),
        .Q(\data_p2_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[53] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[53]),
        .Q(\data_p2_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[54] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[54]),
        .Q(\data_p2_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[55] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[55]),
        .Q(\data_p2_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[56] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[56]),
        .Q(\data_p2_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[57] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[57]),
        .Q(\data_p2_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[58] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[58]),
        .Q(\data_p2_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[59] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[59]),
        .Q(\data_p2_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[5]),
        .Q(\data_p2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[60] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[60]),
        .Q(\data_p2_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[61] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[61]),
        .Q(\data_p2_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[62] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[62]),
        .Q(\data_p2_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[63] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[63]),
        .Q(\data_p2_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[6]),
        .Q(\data_p2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[7]),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[8]),
        .Q(\data_p2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(fft_in_TDATA[9]),
        .Q(\data_p2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4440000000000000)) 
    \i1_fu_54[8]_i_1__0 
       (.I0(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .I1(ap_start),
        .I2(\i1_fu_54_reg[8] ),
        .I3(start_for_compute_magnitude_square_U0_full_n),
        .I4(fft_in_TVALID_int_regslice),
        .I5(stream1_full_n),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \mOutPtr[4]_i_3__3 
       (.I0(E),
        .I1(pop),
        .O(mOutPtr111_out));
  LUT5 #(
    .INIT(32'hFFF58080)) 
    \state[0]_i_1__0 
       (.I0(state),
        .I1(ack_in_t_reg_0),
        .I2(fft_in_TVALID),
        .I3(full_n_reg),
        .I4(fft_in_TVALID_int_regslice),
        .O(\state[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h5FDF)) 
    \state[1]_i_1__0 
       (.I0(fft_in_TVALID_int_regslice),
        .I1(state),
        .I2(full_n_reg),
        .I3(fft_in_TVALID),
        .O(\state[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(fft_in_TVALID_int_regslice),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "denoise_top_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized0
   (clean_out_TSTRB,
    ap_rst_n_inv,
    ap_clk,
    clean_out_TREADY,
    E);
  output [0:0]clean_out_TSTRB;
  input ap_rst_n_inv;
  input ap_clk;
  input clean_out_TREADY;
  input [0:0]E;

  wire [0:0]E;
  wire ack_in_t_i_1__2_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire clean_out_TREADY;
  wire [0:0]clean_out_TSTRB;
  wire \data_p1[7]_i_1_n_0 ;
  wire \data_p2[7]_i_1_n_0 ;
  wire \data_p2_reg_n_0_[7] ;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'hFF5D)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(E),
        .I3(clean_out_TREADY),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hFF5F8800)) 
    \FSM_sequential_state[1]_i_1__1 
       (.I0(state__0[0]),
        .I1(ack_in_t_reg_n_0),
        .I2(clean_out_TREADY),
        .I3(E),
        .I4(state__0[1]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h8AFFEEAA)) 
    ack_in_t_i_1__2
       (.I0(ack_in_t_reg_n_0),
        .I1(clean_out_TREADY),
        .I2(E),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__2_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBBFFFFC088F000)) 
    \data_p1[7]_i_1 
       (.I0(\data_p2_reg_n_0_[7] ),
        .I1(clean_out_TREADY),
        .I2(E),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(clean_out_TSTRB),
        .O(\data_p1[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[7]_i_1_n_0 ),
        .Q(clean_out_TSTRB),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF8)) 
    \data_p2[7]_i_1 
       (.I0(ack_in_t_reg_n_0),
        .I1(E),
        .I2(\data_p2_reg_n_0_[7] ),
        .O(\data_p2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[7]_i_1_n_0 ),
        .Q(\data_p2_reg_n_0_[7] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "denoise_top_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1
   (clean_out_TLAST,
    ap_rst_n_inv,
    ap_clk,
    clean_out_TREADY,
    E,
    axi_val_last_fu_95_p2);
  output [0:0]clean_out_TLAST;
  input ap_rst_n_inv;
  input ap_clk;
  input clean_out_TREADY;
  input [0:0]E;
  input axi_val_last_fu_95_p2;

  wire [0:0]E;
  wire ack_in_t_i_1__3_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire axi_val_last_fu_95_p2;
  wire [0:0]clean_out_TLAST;
  wire clean_out_TREADY;
  wire \data_p1[0]_i_1__2_n_0 ;
  wire data_p2;
  wire \data_p2[0]_i_1__0_n_0 ;
  wire load_p1;
  wire [1:0]next__0;
  wire [1:0]state__0;

  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'hFF5D)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(E),
        .I3(clean_out_TREADY),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hFF5F8800)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state__0[0]),
        .I1(ack_in_t_reg_n_0),
        .I2(clean_out_TREADY),
        .I3(E),
        .I4(state__0[1]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h8AFFEEAA)) 
    ack_in_t_i_1__3
       (.I0(ack_in_t_reg_n_0),
        .I1(clean_out_TREADY),
        .I2(E),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__3_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \data_p1[0]_i_1__2 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(axi_val_last_fu_95_p2),
        .I4(load_p1),
        .I5(clean_out_TLAST),
        .O(\data_p1[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h8AC0)) 
    \data_p1[0]_i_3 
       (.I0(clean_out_TREADY),
        .I1(E),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .O(load_p1));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__2_n_0 ),
        .Q(clean_out_TLAST),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1__0 
       (.I0(axi_val_last_fu_95_p2),
        .I1(E),
        .I2(ack_in_t_reg_n_0),
        .I3(data_p2),
        .O(\data_p2[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[0]_i_1__0_n_0 ),
        .Q(data_p2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "denoise_top_regslice_both" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_regslice_both__parameterized1_9
   (axi_to_internal_U0_stream1_din,
    ap_clk,
    SR,
    fft_in_TVALID,
    \data_p1_reg[0]_0 ,
    fft_in_TLAST);
  output [0:0]axi_to_internal_U0_stream1_din;
  input ap_clk;
  input [0:0]SR;
  input fft_in_TVALID;
  input \data_p1_reg[0]_0 ;
  input [0:0]fft_in_TLAST;

  wire [0:0]SR;
  wire ack_in_t_i_1__0_n_0;
  wire ack_in_t_reg_n_0;
  wire ap_clk;
  wire [0:0]axi_to_internal_U0_stream1_din;
  wire \data_p1[0]_i_1__1_n_0 ;
  wire \data_p1[0]_i_2_n_0 ;
  wire \data_p1_reg[0]_0 ;
  wire data_p2;
  wire \data_p2[0]_i_1_n_0 ;
  wire [0:0]fft_in_TLAST;
  wire fft_in_TVALID;
  wire [1:0]next__0;
  wire [1:0]state__0;

  LUT4 #(
    .INIT(16'h5FDF)) 
    \FSM_sequential_state[0]_i_1__2 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\data_p1_reg[0]_0 ),
        .I3(fft_in_TVALID),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFF58080)) 
    \FSM_sequential_state[1]_i_1__2 
       (.I0(state__0[0]),
        .I1(ack_in_t_reg_n_0),
        .I2(fft_in_TVALID),
        .I3(\data_p1_reg[0]_0 ),
        .I4(state__0[1]),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h2AFFAFAA)) 
    ack_in_t_i_1__0
       (.I0(ack_in_t_reg_n_0),
        .I1(fft_in_TVALID),
        .I2(\data_p1_reg[0]_0 ),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ack_in_t_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1__0_n_0),
        .Q(ack_in_t_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hEAEFFFEF2A200020)) 
    \data_p1[0]_i_1__1 
       (.I0(\data_p1[0]_i_2_n_0 ),
        .I1(\data_p1_reg[0]_0 ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(fft_in_TVALID),
        .I5(axi_to_internal_U0_stream1_din),
        .O(\data_p1[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \data_p1[0]_i_2 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(fft_in_TLAST),
        .O(\data_p1[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1__1_n_0 ),
        .Q(axi_to_internal_U0_stream1_din),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \data_p2[0]_i_1 
       (.I0(fft_in_TLAST),
        .I1(fft_in_TVALID),
        .I2(ack_in_t_reg_n_0),
        .I3(data_p2),
        .O(\data_p2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2[0]_i_1_n_0 ),
        .Q(data_p2),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_spectral_subtract
   (E,
    p_23_in,
    frame_counter_flag_0_i_reg_1692,
    full_n_reg,
    D,
    \ap_CS_fsm_reg[4] ,
    \frame_counter_flag_1_i_reg_155_reg[0] ,
    \icmp_ln326_reg_421_reg[0] ,
    p_9_in,
    ap_enable_reg_pp0_iter4_reg_0,
    AR,
    p_6_in,
    pop,
    frame_counter_flag_0_i_reg_169221_out,
    \ap_CS_fsm_reg[6] ,
    icmp_ln326_fu_333_p224_in,
    grp_spectral_subtract_fu_262_ap_start_reg,
    Q,
    frame_counter_flag_1_i_reg_155,
    frame_counter_flag_0_i_reg_169,
    icmp_ln326_reg_421,
    stream5_full_n,
    stream5_empty_n,
    reconstruct_signal_U0_stream6_write,
    full_n_reg_0,
    ap_rst_n,
    stream4_i_empty_n,
    stream3_empty_n,
    empty_n_reg,
    empty_n_reg_0,
    ap_clk);
  output [0:0]E;
  output p_23_in;
  output frame_counter_flag_0_i_reg_1692;
  output full_n_reg;
  output [1:0]D;
  output \ap_CS_fsm_reg[4] ;
  output \frame_counter_flag_1_i_reg_155_reg[0] ;
  output \icmp_ln326_reg_421_reg[0] ;
  output p_9_in;
  output ap_enable_reg_pp0_iter4_reg_0;
  output [0:0]AR;
  output p_6_in;
  output pop;
  input frame_counter_flag_0_i_reg_169221_out;
  input \ap_CS_fsm_reg[6] ;
  input icmp_ln326_fu_333_p224_in;
  input grp_spectral_subtract_fu_262_ap_start_reg;
  input [2:0]Q;
  input frame_counter_flag_1_i_reg_155;
  input frame_counter_flag_0_i_reg_169;
  input icmp_ln326_reg_421;
  input stream5_full_n;
  input stream5_empty_n;
  input reconstruct_signal_U0_stream6_write;
  input [0:0]full_n_reg_0;
  input ap_rst_n;
  input stream4_i_empty_n;
  input stream3_empty_n;
  input empty_n_reg;
  input empty_n_reg_0;
  input ap_clk;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[6] ;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter3;
  wire ap_enable_reg_pp0_iter4_reg_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter2_reg;
  wire ap_loop_exit_ready_pp0_iter3_reg;
  wire ap_rst_n;
  wire empty_n_reg;
  wire empty_n_reg_0;
  wire flow_control_loop_pipe_sequential_init_U_n_11;
  wire flow_control_loop_pipe_sequential_init_U_n_12;
  wire flow_control_loop_pipe_sequential_init_U_n_13;
  wire flow_control_loop_pipe_sequential_init_U_n_14;
  wire flow_control_loop_pipe_sequential_init_U_n_15;
  wire flow_control_loop_pipe_sequential_init_U_n_16;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_19;
  wire flow_control_loop_pipe_sequential_init_U_n_20;
  wire flow_control_loop_pipe_sequential_init_U_n_21;
  wire flow_control_loop_pipe_sequential_init_U_n_22;
  wire flow_control_loop_pipe_sequential_init_U_n_23;
  wire frame_counter_flag_0_i_reg_169;
  wire frame_counter_flag_0_i_reg_1692;
  wire frame_counter_flag_0_i_reg_169221_out;
  wire frame_counter_flag_1_i_reg_155;
  wire \frame_counter_flag_1_i_reg_155_reg[0] ;
  wire full_n_reg;
  wire [0:0]full_n_reg_0;
  wire grp_spectral_subtract_fu_262_ap_ready;
  wire grp_spectral_subtract_fu_262_ap_start_reg;
  wire \i_fu_100_reg_n_0_[0] ;
  wire \i_fu_100_reg_n_0_[10] ;
  wire \i_fu_100_reg_n_0_[1] ;
  wire \i_fu_100_reg_n_0_[2] ;
  wire \i_fu_100_reg_n_0_[3] ;
  wire \i_fu_100_reg_n_0_[4] ;
  wire \i_fu_100_reg_n_0_[5] ;
  wire \i_fu_100_reg_n_0_[6] ;
  wire \i_fu_100_reg_n_0_[7] ;
  wire \i_fu_100_reg_n_0_[8] ;
  wire \i_fu_100_reg_n_0_[9] ;
  wire icmp_ln326_fu_333_p224_in;
  wire icmp_ln326_reg_421;
  wire \icmp_ln326_reg_421_reg[0] ;
  wire p_23_in;
  wire p_6_in;
  wire p_9_in;
  wire pop;
  wire reconstruct_signal_U0_stream6_write;
  wire stream3_empty_n;
  wire stream4_i_empty_n;
  wire stream5_empty_n;
  wire stream5_full_n;

  FDCE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_23),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0));
  LUT4 #(
    .INIT(16'hDD0D)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(stream4_i_empty_n),
        .I2(ap_enable_reg_pp0_iter4_reg_0),
        .I3(stream5_full_n),
        .O(ap_block_pp0_stage0_subdone));
  FDCE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .CLR(AR),
        .D(ap_enable_reg_pp0_iter1_reg_n_0),
        .Q(ap_enable_reg_pp0_iter2));
  FDCE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .CLR(AR),
        .D(ap_enable_reg_pp0_iter2),
        .Q(ap_enable_reg_pp0_iter3));
  FDCE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter4_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .CLR(AR),
        .D(ap_enable_reg_pp0_iter3),
        .Q(ap_enable_reg_pp0_iter4_reg_0));
  FDCE #(
    .INIT(1'b0)) 
    ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .CLR(AR),
        .D(grp_spectral_subtract_fu_262_ap_ready),
        .Q(ap_loop_exit_ready_pp0_iter1_reg));
  FDCE #(
    .INIT(1'b0)) 
    ap_loop_exit_ready_pp0_iter2_reg_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .CLR(AR),
        .D(ap_loop_exit_ready_pp0_iter1_reg),
        .Q(ap_loop_exit_ready_pp0_iter2_reg));
  FDCE #(
    .INIT(1'b0)) 
    ap_loop_exit_ready_pp0_iter3_reg_reg
       (.C(ap_clk),
        .CE(ap_block_pp0_stage0_subdone),
        .CLR(AR),
        .D(ap_loop_exit_ready_pp0_iter2_reg),
        .Q(ap_loop_exit_ready_pp0_iter3_reg));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    empty_n_i_3
       (.I0(pop),
        .I1(Q[0]),
        .I2(stream3_empty_n),
        .I3(empty_n_reg),
        .I4(empty_n_reg_0),
        .O(p_6_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.AR(AR),
        .D(D),
        .E(E),
        .Q(Q[2:1]),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .\ap_CS_fsm_reg[6] (\ap_CS_fsm_reg[6] ),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(p_23_in),
        .ap_enable_reg_pp0_iter1_reg(ap_enable_reg_pp0_iter1_reg_n_0),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ap_enable_reg_pp0_iter2_reg(flow_control_loop_pipe_sequential_init_U_n_22),
        .ap_loop_exit_ready_pp0_iter1_reg_reg(ap_enable_reg_pp0_iter4_reg_0),
        .ap_loop_exit_ready_pp0_iter3_reg(ap_loop_exit_ready_pp0_iter3_reg),
        .ap_rst_n(ap_rst_n),
        .frame_counter_flag_0_i_reg_169(frame_counter_flag_0_i_reg_169),
        .frame_counter_flag_0_i_reg_1692(frame_counter_flag_0_i_reg_1692),
        .frame_counter_flag_0_i_reg_169221_out(frame_counter_flag_0_i_reg_169221_out),
        .frame_counter_flag_1_i_reg_155(frame_counter_flag_1_i_reg_155),
        .\frame_counter_flag_1_i_reg_155_reg[0] (\frame_counter_flag_1_i_reg_155_reg[0] ),
        .full_n_reg(full_n_reg),
        .grp_spectral_subtract_fu_262_ap_ready(grp_spectral_subtract_fu_262_ap_ready),
        .grp_spectral_subtract_fu_262_ap_start_reg(grp_spectral_subtract_fu_262_ap_start_reg),
        .grp_spectral_subtract_fu_262_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_23),
        .\i_fu_100_reg[10] ({flow_control_loop_pipe_sequential_init_U_n_11,flow_control_loop_pipe_sequential_init_U_n_12,flow_control_loop_pipe_sequential_init_U_n_13,flow_control_loop_pipe_sequential_init_U_n_14,flow_control_loop_pipe_sequential_init_U_n_15,flow_control_loop_pipe_sequential_init_U_n_16,flow_control_loop_pipe_sequential_init_U_n_17,flow_control_loop_pipe_sequential_init_U_n_18,flow_control_loop_pipe_sequential_init_U_n_19,flow_control_loop_pipe_sequential_init_U_n_20,flow_control_loop_pipe_sequential_init_U_n_21}),
        .\i_fu_100_reg[10]_0 ({\i_fu_100_reg_n_0_[10] ,\i_fu_100_reg_n_0_[9] ,\i_fu_100_reg_n_0_[8] ,\i_fu_100_reg_n_0_[7] ,\i_fu_100_reg_n_0_[6] ,\i_fu_100_reg_n_0_[5] ,\i_fu_100_reg_n_0_[4] ,\i_fu_100_reg_n_0_[3] ,\i_fu_100_reg_n_0_[2] ,\i_fu_100_reg_n_0_[1] ,\i_fu_100_reg_n_0_[0] }),
        .icmp_ln326_fu_333_p224_in(icmp_ln326_fu_333_p224_in),
        .icmp_ln326_reg_421(icmp_ln326_reg_421),
        .\icmp_ln326_reg_421_reg[0] (\icmp_ln326_reg_421_reg[0] ),
        .stream4_i_empty_n(stream4_i_empty_n),
        .stream5_full_n(stream5_full_n));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_21),
        .Q(\i_fu_100_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[10] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_11),
        .Q(\i_fu_100_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_20),
        .Q(\i_fu_100_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_19),
        .Q(\i_fu_100_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_18),
        .Q(\i_fu_100_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_17),
        .Q(\i_fu_100_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_16),
        .Q(\i_fu_100_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_15),
        .Q(\i_fu_100_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_14),
        .Q(\i_fu_100_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_13),
        .Q(\i_fu_100_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \i_fu_100_reg[9] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_22),
        .CLR(AR),
        .D(flow_control_loop_pipe_sequential_init_U_n_12),
        .Q(\i_fu_100_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h80800080)) 
    \mOutPtr[4]_i_3 
       (.I0(Q[2]),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(stream4_i_empty_n),
        .I3(ap_enable_reg_pp0_iter4_reg_0),
        .I4(stream5_full_n),
        .O(pop));
  LUT6 #(
    .INIT(64'h0020002000202020)) 
    \mOutPtr[4]_i_3__1 
       (.I0(ap_enable_reg_pp0_iter4_reg_0),
        .I1(full_n_reg),
        .I2(stream5_full_n),
        .I3(stream5_empty_n),
        .I4(reconstruct_signal_U0_stream6_write),
        .I5(full_n_reg_0),
        .O(p_9_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_Block_entry_frame_counter_wr_proc_U0
   (Block_entry_frame_counter_wr_proc_U0_ap_start,
    start_for_Block_entry_frame_counter_wr_proc_U0_full_n,
    full_n_reg_0,
    ap_rst_n_inv,
    ap_clk,
    \mOutPtr_reg[0]_0 ,
    start_once_reg_reg,
    ap_start,
    start_once_reg,
    entry_proc_U0_noise_frame_count_c_write,
    \mOutPtr_reg[0]_1 );
  output Block_entry_frame_counter_wr_proc_U0_ap_start;
  output start_for_Block_entry_frame_counter_wr_proc_U0_full_n;
  output full_n_reg_0;
  input ap_rst_n_inv;
  input ap_clk;
  input \mOutPtr_reg[0]_0 ;
  input start_once_reg_reg;
  input ap_start;
  input start_once_reg;
  input entry_proc_U0_noise_frame_count_c_write;
  input \mOutPtr_reg[0]_1 ;

  wire Block_entry_frame_counter_wr_proc_U0_ap_start;
  wire ap_clk;
  wire ap_rst_n_inv;
  wire ap_start;
  wire empty_n_i_1__2_n_0;
  wire entry_proc_U0_noise_frame_count_c_write;
  wire full_n_i_1__2_n_0;
  wire full_n_reg_0;
  wire [2:0]mOutPtr;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[2]_i_1_n_0 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[0]_1 ;
  wire p_6_in;
  wire p_9_in;
  wire start_for_Block_entry_frame_counter_wr_proc_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_reg;

  LUT6 #(
    .INIT(64'hFFFFFDFFFFFF0000)) 
    empty_n_i_1__2
       (.I0(p_6_in),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[0]),
        .I4(p_9_in),
        .I5(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .O(empty_n_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__2_n_0),
        .Q(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFBFFFBF0000)) 
    full_n_i_1__2
       (.I0(mOutPtr[0]),
        .I1(p_9_in),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[2]),
        .I4(p_6_in),
        .I5(start_for_Block_entry_frame_counter_wr_proc_U0_full_n),
        .O(full_n_i_1__2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__2_n_0),
        .Q(start_for_Block_entry_frame_counter_wr_proc_U0_full_n),
        .S(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7777877788887888)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .I2(\mOutPtr_reg[0]_1 ),
        .I3(start_for_Block_entry_frame_counter_wr_proc_U0_full_n),
        .I4(start_once_reg),
        .I5(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h6798)) 
    \mOutPtr[1]_i_1 
       (.I0(mOutPtr[0]),
        .I1(p_9_in),
        .I2(p_6_in),
        .I3(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h7E7F8180)) 
    \mOutPtr[2]_i_1 
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(p_9_in),
        .I3(p_6_in),
        .I4(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004000400)) 
    \mOutPtr[2]_i_2 
       (.I0(start_once_reg_reg),
        .I1(ap_start),
        .I2(start_once_reg),
        .I3(start_for_Block_entry_frame_counter_wr_proc_U0_full_n),
        .I4(\mOutPtr_reg[0]_0 ),
        .I5(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .O(p_9_in));
  LUT6 #(
    .INIT(64'h8888808888888888)) 
    \mOutPtr[2]_i_3 
       (.I0(\mOutPtr_reg[0]_0 ),
        .I1(Block_entry_frame_counter_wr_proc_U0_ap_start),
        .I2(start_once_reg_reg),
        .I3(ap_start),
        .I4(start_once_reg),
        .I5(start_for_Block_entry_frame_counter_wr_proc_U0_full_n),
        .O(p_6_in));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(mOutPtr[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(mOutPtr[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1_n_0 ),
        .Q(mOutPtr[2]),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h0000CCEC)) 
    start_once_reg_i_1__2
       (.I0(start_for_Block_entry_frame_counter_wr_proc_U0_full_n),
        .I1(start_once_reg),
        .I2(ap_start),
        .I3(start_once_reg_reg),
        .I4(entry_proc_U0_noise_frame_count_c_write),
        .O(full_n_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_compute_magnitude_square_U0
   (compute_magnitude_square_U0_ap_start,
    start_for_compute_magnitude_square_U0_full_n,
    ap_rst_n_inv,
    ap_clk,
    compute_magnitude_square_U0_ap_ready,
    ap_sync_reg_axi_to_internal_U0_ap_ready,
    ap_start,
    start_once_reg);
  output compute_magnitude_square_U0_ap_start;
  output start_for_compute_magnitude_square_U0_full_n;
  input ap_rst_n_inv;
  input ap_clk;
  input compute_magnitude_square_U0_ap_ready;
  input ap_sync_reg_axi_to_internal_U0_ap_ready;
  input ap_start;
  input start_once_reg;

  wire ap_clk;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ap_sync_reg_axi_to_internal_U0_ap_ready;
  wire compute_magnitude_square_U0_ap_ready;
  wire compute_magnitude_square_U0_ap_start;
  wire empty_n_i_1__11_n_0;
  wire full_n_i_1__11_n_0;
  wire [1:0]mOutPtr;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire p_6_in;
  wire p_9_in;
  wire start_for_compute_magnitude_square_U0_full_n;
  wire start_once_reg;

  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hFFF7FF00)) 
    empty_n_i_1__11
       (.I0(p_6_in),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(p_9_in),
        .I4(compute_magnitude_square_U0_ap_start),
        .O(empty_n_i_1__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__11_n_0),
        .Q(compute_magnitude_square_U0_ap_start),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hF7F7F700)) 
    full_n_i_1__11
       (.I0(p_9_in),
        .I1(mOutPtr[0]),
        .I2(mOutPtr[1]),
        .I3(p_6_in),
        .I4(start_for_compute_magnitude_square_U0_full_n),
        .O(full_n_i_1__11_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__11_n_0),
        .Q(start_for_compute_magnitude_square_U0_full_n),
        .S(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h1E)) 
    \mOutPtr[0]_i_1 
       (.I0(p_6_in),
        .I1(p_9_in),
        .I2(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h6798)) 
    \mOutPtr[1]_i_1 
       (.I0(mOutPtr[0]),
        .I1(p_9_in),
        .I2(p_6_in),
        .I3(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004000400)) 
    \mOutPtr[1]_i_2__0 
       (.I0(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .I1(ap_start),
        .I2(start_once_reg),
        .I3(start_for_compute_magnitude_square_U0_full_n),
        .I4(compute_magnitude_square_U0_ap_ready),
        .I5(compute_magnitude_square_U0_ap_start),
        .O(p_9_in));
  LUT6 #(
    .INIT(64'h8888808888888888)) 
    \mOutPtr[1]_i_3__0 
       (.I0(compute_magnitude_square_U0_ap_ready),
        .I1(compute_magnitude_square_U0_ap_start),
        .I2(ap_sync_reg_axi_to_internal_U0_ap_ready),
        .I3(ap_start),
        .I4(start_once_reg),
        .I5(start_for_compute_magnitude_square_U0_full_n),
        .O(p_6_in));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(mOutPtr[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(mOutPtr[1]),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_internal_to_axi_U0
   (internal_to_axi_U0_ap_start,
    start_for_internal_to_axi_U0_full_n,
    ap_sig_allocacmp_i1_load1,
    ap_rst_n_inv,
    ap_clk,
    ap_loop_init,
    internal_to_axi_U0_ap_ready,
    push__0,
    start_once_reg,
    reconstruct_signal_U0_ap_start);
  output internal_to_axi_U0_ap_start;
  output start_for_internal_to_axi_U0_full_n;
  output ap_sig_allocacmp_i1_load1;
  input ap_rst_n_inv;
  input ap_clk;
  input ap_loop_init;
  input internal_to_axi_U0_ap_ready;
  input push__0;
  input start_once_reg;
  input reconstruct_signal_U0_ap_start;

  wire ap_clk;
  wire ap_loop_init;
  wire ap_rst_n_inv;
  wire ap_sig_allocacmp_i1_load1;
  wire empty_n_i_1__13_n_0;
  wire full_n_i_1__13_n_0;
  wire internal_to_axi_U0_ap_ready;
  wire internal_to_axi_U0_ap_start;
  wire [1:0]mOutPtr;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire push__0;
  wire reconstruct_signal_U0_ap_start;
  wire start_for_internal_to_axi_U0_full_n;
  wire start_once_reg;

  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hFFFFD0F0)) 
    empty_n_i_1__13
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(internal_to_axi_U0_ap_start),
        .I3(internal_to_axi_U0_ap_ready),
        .I4(push__0),
        .O(empty_n_i_1__13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__13_n_0),
        .Q(internal_to_axi_U0_ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFDFDFDF0F000000)) 
    full_n_i_1__13
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(push__0),
        .I3(internal_to_axi_U0_ap_start),
        .I4(internal_to_axi_U0_ap_ready),
        .I5(start_for_internal_to_axi_U0_full_n),
        .O(full_n_i_1__13_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__13_n_0),
        .Q(start_for_internal_to_axi_U0_full_n),
        .S(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h8)) 
    \i1_fu_54[8]_i_5 
       (.I0(internal_to_axi_U0_ap_start),
        .I1(ap_loop_init),
        .O(ap_sig_allocacmp_i1_load1));
  LUT6 #(
    .INIT(64'h7877777787888888)) 
    \mOutPtr[0]_i_1 
       (.I0(internal_to_axi_U0_ap_ready),
        .I1(internal_to_axi_U0_ap_start),
        .I2(start_once_reg),
        .I3(start_for_internal_to_axi_U0_full_n),
        .I4(reconstruct_signal_U0_ap_start),
        .I5(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hE7771888)) 
    \mOutPtr[1]_i_1 
       (.I0(mOutPtr[0]),
        .I1(push__0),
        .I2(internal_to_axi_U0_ap_start),
        .I3(internal_to_axi_U0_ap_ready),
        .I4(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1_n_0 ));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(mOutPtr[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(mOutPtr[1]),
        .R(ap_rst_n_inv));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_denoise_top_start_for_reconstruct_signal_U0
   (reconstruct_signal_U0_ap_start,
    start_for_reconstruct_signal_U0_full_n,
    push__0,
    ap_rst_n_inv,
    ap_clk,
    reconstruct_signal_U0_ap_ready,
    start_once_reg,
    compute_magnitude_square_U0_ap_start,
    start_for_internal_to_axi_U0_full_n,
    start_once_reg_0);
  output reconstruct_signal_U0_ap_start;
  output start_for_reconstruct_signal_U0_full_n;
  output push__0;
  input ap_rst_n_inv;
  input ap_clk;
  input reconstruct_signal_U0_ap_ready;
  input start_once_reg;
  input compute_magnitude_square_U0_ap_start;
  input start_for_internal_to_axi_U0_full_n;
  input start_once_reg_0;

  wire ap_clk;
  wire ap_rst_n_inv;
  wire compute_magnitude_square_U0_ap_start;
  wire empty_n_i_1__12_n_0;
  wire full_n_i_1__12_n_0;
  wire [2:0]mOutPtr;
  wire \mOutPtr[0]_i_1_n_0 ;
  wire \mOutPtr[1]_i_1_n_0 ;
  wire \mOutPtr[2]_i_1_n_0 ;
  wire p_6_in;
  wire p_9_in;
  wire push__0;
  wire reconstruct_signal_U0_ap_ready;
  wire reconstruct_signal_U0_ap_start;
  wire start_for_internal_to_axi_U0_full_n;
  wire start_for_reconstruct_signal_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_0;

  LUT6 #(
    .INIT(64'hFFFFFDFFFFFF0000)) 
    empty_n_i_1__12
       (.I0(p_6_in),
        .I1(mOutPtr[2]),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[0]),
        .I4(p_9_in),
        .I5(reconstruct_signal_U0_ap_start),
        .O(empty_n_i_1__12_n_0));
  FDRE #(
    .INIT(1'b0)) 
    empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(empty_n_i_1__12_n_0),
        .Q(reconstruct_signal_U0_ap_start),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFBFFFBFFFBF0000)) 
    full_n_i_1__12
       (.I0(mOutPtr[0]),
        .I1(p_9_in),
        .I2(mOutPtr[1]),
        .I3(mOutPtr[2]),
        .I4(p_6_in),
        .I5(start_for_reconstruct_signal_U0_full_n),
        .O(full_n_i_1__12_n_0));
  FDSE #(
    .INIT(1'b1)) 
    full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(full_n_i_1__12_n_0),
        .Q(start_for_reconstruct_signal_U0_full_n),
        .S(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h1E)) 
    \mOutPtr[0]_i_1 
       (.I0(p_6_in),
        .I1(p_9_in),
        .I2(mOutPtr[0]),
        .O(\mOutPtr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h6798)) 
    \mOutPtr[1]_i_1 
       (.I0(mOutPtr[0]),
        .I1(p_9_in),
        .I2(p_6_in),
        .I3(mOutPtr[1]),
        .O(\mOutPtr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \mOutPtr[1]_i_2 
       (.I0(reconstruct_signal_U0_ap_start),
        .I1(start_for_internal_to_axi_U0_full_n),
        .I2(start_once_reg_0),
        .O(push__0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h7E7F8180)) 
    \mOutPtr[2]_i_1 
       (.I0(mOutPtr[0]),
        .I1(mOutPtr[1]),
        .I2(p_9_in),
        .I3(p_6_in),
        .I4(mOutPtr[2]),
        .O(\mOutPtr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00404040)) 
    \mOutPtr[2]_i_2__0 
       (.I0(start_once_reg),
        .I1(start_for_reconstruct_signal_U0_full_n),
        .I2(compute_magnitude_square_U0_ap_start),
        .I3(reconstruct_signal_U0_ap_ready),
        .I4(reconstruct_signal_U0_ap_start),
        .O(p_9_in));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h80888888)) 
    \mOutPtr[2]_i_3__0 
       (.I0(reconstruct_signal_U0_ap_ready),
        .I1(reconstruct_signal_U0_ap_start),
        .I2(start_once_reg),
        .I3(start_for_reconstruct_signal_U0_full_n),
        .I4(compute_magnitude_square_U0_ap_start),
        .O(p_6_in));
  FDRE \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[0]_i_1_n_0 ),
        .Q(mOutPtr[0]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[1]_i_1_n_0 ),
        .Q(mOutPtr[1]),
        .R(ap_rst_n_inv));
  FDRE \mOutPtr_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\mOutPtr[2]_i_1_n_0 ),
        .Q(mOutPtr[2]),
        .R(ap_rst_n_inv));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
