
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [0:0] proc_0_data_FIFO_blk;
    wire [0:0] proc_0_data_PIPO_blk;
    wire [0:0] proc_0_start_FIFO_blk;
    wire [0:0] proc_0_TLF_FIFO_blk;
    wire [0:0] proc_0_input_sync_blk;
    wire [0:0] proc_0_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_0;
    reg [0:0] proc_dep_vld_vec_0_reg;
    wire [0:0] in_chan_dep_vld_vec_0;
    wire [51:0] in_chan_dep_data_vec_0;
    wire [0:0] token_in_vec_0;
    wire [0:0] out_chan_dep_vld_vec_0;
    wire [51:0] out_chan_dep_data_0;
    wire [0:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [51:0] dep_chan_data_1_0;
    wire token_1_0;
    wire [1:0] proc_1_data_FIFO_blk;
    wire [1:0] proc_1_data_PIPO_blk;
    wire [1:0] proc_1_start_FIFO_blk;
    wire [1:0] proc_1_TLF_FIFO_blk;
    wire [1:0] proc_1_input_sync_blk;
    wire [1:0] proc_1_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [103:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [51:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [51:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_51_1;
    wire [51:0] dep_chan_data_51_1;
    wire token_51_1;
    wire [1:0] proc_2_data_FIFO_blk;
    wire [1:0] proc_2_data_PIPO_blk;
    wire [1:0] proc_2_start_FIFO_blk;
    wire [1:0] proc_2_TLF_FIFO_blk;
    wire [1:0] proc_2_input_sync_blk;
    wire [1:0] proc_2_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_2;
    reg [1:0] proc_dep_vld_vec_2_reg;
    wire [1:0] in_chan_dep_vld_vec_2;
    wire [103:0] in_chan_dep_data_vec_2;
    wire [1:0] token_in_vec_2;
    wire [1:0] out_chan_dep_vld_vec_2;
    wire [51:0] out_chan_dep_data_2;
    wire [1:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_3_2;
    wire [51:0] dep_chan_data_3_2;
    wire token_3_2;
    wire dep_chan_vld_4_2;
    wire [51:0] dep_chan_data_4_2;
    wire token_4_2;
    wire [2:0] proc_3_data_FIFO_blk;
    wire [2:0] proc_3_data_PIPO_blk;
    wire [2:0] proc_3_start_FIFO_blk;
    wire [2:0] proc_3_TLF_FIFO_blk;
    wire [2:0] proc_3_input_sync_blk;
    wire [2:0] proc_3_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_3;
    reg [2:0] proc_dep_vld_vec_3_reg;
    wire [2:0] in_chan_dep_vld_vec_3;
    wire [155:0] in_chan_dep_data_vec_3;
    wire [2:0] token_in_vec_3;
    wire [2:0] out_chan_dep_vld_vec_3;
    wire [51:0] out_chan_dep_data_3;
    wire [2:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [51:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_20_3;
    wire [51:0] dep_chan_data_20_3;
    wire token_20_3;
    wire dep_chan_vld_21_3;
    wire [51:0] dep_chan_data_21_3;
    wire token_21_3;
    wire [2:0] proc_4_data_FIFO_blk;
    wire [2:0] proc_4_data_PIPO_blk;
    wire [2:0] proc_4_start_FIFO_blk;
    wire [2:0] proc_4_TLF_FIFO_blk;
    wire [2:0] proc_4_input_sync_blk;
    wire [2:0] proc_4_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_4;
    reg [2:0] proc_dep_vld_vec_4_reg;
    wire [2:0] in_chan_dep_vld_vec_4;
    wire [155:0] in_chan_dep_data_vec_4;
    wire [2:0] token_in_vec_4;
    wire [2:0] out_chan_dep_vld_vec_4;
    wire [51:0] out_chan_dep_data_4;
    wire [2:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_2_4;
    wire [51:0] dep_chan_data_2_4;
    wire token_2_4;
    wire dep_chan_vld_5_4;
    wire [51:0] dep_chan_data_5_4;
    wire token_5_4;
    wire dep_chan_vld_6_4;
    wire [51:0] dep_chan_data_6_4;
    wire token_6_4;
    wire [2:0] proc_5_data_FIFO_blk;
    wire [2:0] proc_5_data_PIPO_blk;
    wire [2:0] proc_5_start_FIFO_blk;
    wire [2:0] proc_5_TLF_FIFO_blk;
    wire [2:0] proc_5_input_sync_blk;
    wire [2:0] proc_5_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_5;
    reg [2:0] proc_dep_vld_vec_5_reg;
    wire [2:0] in_chan_dep_vld_vec_5;
    wire [155:0] in_chan_dep_data_vec_5;
    wire [2:0] token_in_vec_5;
    wire [2:0] out_chan_dep_vld_vec_5;
    wire [51:0] out_chan_dep_data_5;
    wire [2:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_4_5;
    wire [51:0] dep_chan_data_4_5;
    wire token_4_5;
    wire dep_chan_vld_20_5;
    wire [51:0] dep_chan_data_20_5;
    wire token_20_5;
    wire dep_chan_vld_21_5;
    wire [51:0] dep_chan_data_21_5;
    wire token_21_5;
    wire [2:0] proc_6_data_FIFO_blk;
    wire [2:0] proc_6_data_PIPO_blk;
    wire [2:0] proc_6_start_FIFO_blk;
    wire [2:0] proc_6_TLF_FIFO_blk;
    wire [2:0] proc_6_input_sync_blk;
    wire [2:0] proc_6_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_6;
    reg [2:0] proc_dep_vld_vec_6_reg;
    wire [2:0] in_chan_dep_vld_vec_6;
    wire [155:0] in_chan_dep_data_vec_6;
    wire [2:0] token_in_vec_6;
    wire [2:0] out_chan_dep_vld_vec_6;
    wire [51:0] out_chan_dep_data_6;
    wire [2:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_4_6;
    wire [51:0] dep_chan_data_4_6;
    wire token_4_6;
    wire dep_chan_vld_7_6;
    wire [51:0] dep_chan_data_7_6;
    wire token_7_6;
    wire dep_chan_vld_8_6;
    wire [51:0] dep_chan_data_8_6;
    wire token_8_6;
    wire [2:0] proc_7_data_FIFO_blk;
    wire [2:0] proc_7_data_PIPO_blk;
    wire [2:0] proc_7_start_FIFO_blk;
    wire [2:0] proc_7_TLF_FIFO_blk;
    wire [2:0] proc_7_input_sync_blk;
    wire [2:0] proc_7_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_7;
    reg [2:0] proc_dep_vld_vec_7_reg;
    wire [2:0] in_chan_dep_vld_vec_7;
    wire [155:0] in_chan_dep_data_vec_7;
    wire [2:0] token_in_vec_7;
    wire [2:0] out_chan_dep_vld_vec_7;
    wire [51:0] out_chan_dep_data_7;
    wire [2:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_6_7;
    wire [51:0] dep_chan_data_6_7;
    wire token_6_7;
    wire dep_chan_vld_20_7;
    wire [51:0] dep_chan_data_20_7;
    wire token_20_7;
    wire dep_chan_vld_21_7;
    wire [51:0] dep_chan_data_21_7;
    wire token_21_7;
    wire [2:0] proc_8_data_FIFO_blk;
    wire [2:0] proc_8_data_PIPO_blk;
    wire [2:0] proc_8_start_FIFO_blk;
    wire [2:0] proc_8_TLF_FIFO_blk;
    wire [2:0] proc_8_input_sync_blk;
    wire [2:0] proc_8_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_8;
    reg [2:0] proc_dep_vld_vec_8_reg;
    wire [2:0] in_chan_dep_vld_vec_8;
    wire [155:0] in_chan_dep_data_vec_8;
    wire [2:0] token_in_vec_8;
    wire [2:0] out_chan_dep_vld_vec_8;
    wire [51:0] out_chan_dep_data_8;
    wire [2:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_6_8;
    wire [51:0] dep_chan_data_6_8;
    wire token_6_8;
    wire dep_chan_vld_9_8;
    wire [51:0] dep_chan_data_9_8;
    wire token_9_8;
    wire dep_chan_vld_10_8;
    wire [51:0] dep_chan_data_10_8;
    wire token_10_8;
    wire [2:0] proc_9_data_FIFO_blk;
    wire [2:0] proc_9_data_PIPO_blk;
    wire [2:0] proc_9_start_FIFO_blk;
    wire [2:0] proc_9_TLF_FIFO_blk;
    wire [2:0] proc_9_input_sync_blk;
    wire [2:0] proc_9_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_9;
    reg [2:0] proc_dep_vld_vec_9_reg;
    wire [2:0] in_chan_dep_vld_vec_9;
    wire [155:0] in_chan_dep_data_vec_9;
    wire [2:0] token_in_vec_9;
    wire [2:0] out_chan_dep_vld_vec_9;
    wire [51:0] out_chan_dep_data_9;
    wire [2:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_8_9;
    wire [51:0] dep_chan_data_8_9;
    wire token_8_9;
    wire dep_chan_vld_20_9;
    wire [51:0] dep_chan_data_20_9;
    wire token_20_9;
    wire dep_chan_vld_21_9;
    wire [51:0] dep_chan_data_21_9;
    wire token_21_9;
    wire [2:0] proc_10_data_FIFO_blk;
    wire [2:0] proc_10_data_PIPO_blk;
    wire [2:0] proc_10_start_FIFO_blk;
    wire [2:0] proc_10_TLF_FIFO_blk;
    wire [2:0] proc_10_input_sync_blk;
    wire [2:0] proc_10_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_10;
    reg [2:0] proc_dep_vld_vec_10_reg;
    wire [2:0] in_chan_dep_vld_vec_10;
    wire [155:0] in_chan_dep_data_vec_10;
    wire [2:0] token_in_vec_10;
    wire [2:0] out_chan_dep_vld_vec_10;
    wire [51:0] out_chan_dep_data_10;
    wire [2:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_8_10;
    wire [51:0] dep_chan_data_8_10;
    wire token_8_10;
    wire dep_chan_vld_11_10;
    wire [51:0] dep_chan_data_11_10;
    wire token_11_10;
    wire dep_chan_vld_12_10;
    wire [51:0] dep_chan_data_12_10;
    wire token_12_10;
    wire [2:0] proc_11_data_FIFO_blk;
    wire [2:0] proc_11_data_PIPO_blk;
    wire [2:0] proc_11_start_FIFO_blk;
    wire [2:0] proc_11_TLF_FIFO_blk;
    wire [2:0] proc_11_input_sync_blk;
    wire [2:0] proc_11_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_11;
    reg [2:0] proc_dep_vld_vec_11_reg;
    wire [2:0] in_chan_dep_vld_vec_11;
    wire [155:0] in_chan_dep_data_vec_11;
    wire [2:0] token_in_vec_11;
    wire [2:0] out_chan_dep_vld_vec_11;
    wire [51:0] out_chan_dep_data_11;
    wire [2:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_10_11;
    wire [51:0] dep_chan_data_10_11;
    wire token_10_11;
    wire dep_chan_vld_20_11;
    wire [51:0] dep_chan_data_20_11;
    wire token_20_11;
    wire dep_chan_vld_21_11;
    wire [51:0] dep_chan_data_21_11;
    wire token_21_11;
    wire [2:0] proc_12_data_FIFO_blk;
    wire [2:0] proc_12_data_PIPO_blk;
    wire [2:0] proc_12_start_FIFO_blk;
    wire [2:0] proc_12_TLF_FIFO_blk;
    wire [2:0] proc_12_input_sync_blk;
    wire [2:0] proc_12_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_12;
    reg [2:0] proc_dep_vld_vec_12_reg;
    wire [2:0] in_chan_dep_vld_vec_12;
    wire [155:0] in_chan_dep_data_vec_12;
    wire [2:0] token_in_vec_12;
    wire [2:0] out_chan_dep_vld_vec_12;
    wire [51:0] out_chan_dep_data_12;
    wire [2:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_10_12;
    wire [51:0] dep_chan_data_10_12;
    wire token_10_12;
    wire dep_chan_vld_13_12;
    wire [51:0] dep_chan_data_13_12;
    wire token_13_12;
    wire dep_chan_vld_14_12;
    wire [51:0] dep_chan_data_14_12;
    wire token_14_12;
    wire [2:0] proc_13_data_FIFO_blk;
    wire [2:0] proc_13_data_PIPO_blk;
    wire [2:0] proc_13_start_FIFO_blk;
    wire [2:0] proc_13_TLF_FIFO_blk;
    wire [2:0] proc_13_input_sync_blk;
    wire [2:0] proc_13_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_13;
    reg [2:0] proc_dep_vld_vec_13_reg;
    wire [2:0] in_chan_dep_vld_vec_13;
    wire [155:0] in_chan_dep_data_vec_13;
    wire [2:0] token_in_vec_13;
    wire [2:0] out_chan_dep_vld_vec_13;
    wire [51:0] out_chan_dep_data_13;
    wire [2:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_12_13;
    wire [51:0] dep_chan_data_12_13;
    wire token_12_13;
    wire dep_chan_vld_20_13;
    wire [51:0] dep_chan_data_20_13;
    wire token_20_13;
    wire dep_chan_vld_21_13;
    wire [51:0] dep_chan_data_21_13;
    wire token_21_13;
    wire [2:0] proc_14_data_FIFO_blk;
    wire [2:0] proc_14_data_PIPO_blk;
    wire [2:0] proc_14_start_FIFO_blk;
    wire [2:0] proc_14_TLF_FIFO_blk;
    wire [2:0] proc_14_input_sync_blk;
    wire [2:0] proc_14_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_14;
    reg [2:0] proc_dep_vld_vec_14_reg;
    wire [2:0] in_chan_dep_vld_vec_14;
    wire [155:0] in_chan_dep_data_vec_14;
    wire [2:0] token_in_vec_14;
    wire [2:0] out_chan_dep_vld_vec_14;
    wire [51:0] out_chan_dep_data_14;
    wire [2:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_12_14;
    wire [51:0] dep_chan_data_12_14;
    wire token_12_14;
    wire dep_chan_vld_15_14;
    wire [51:0] dep_chan_data_15_14;
    wire token_15_14;
    wire dep_chan_vld_16_14;
    wire [51:0] dep_chan_data_16_14;
    wire token_16_14;
    wire [2:0] proc_15_data_FIFO_blk;
    wire [2:0] proc_15_data_PIPO_blk;
    wire [2:0] proc_15_start_FIFO_blk;
    wire [2:0] proc_15_TLF_FIFO_blk;
    wire [2:0] proc_15_input_sync_blk;
    wire [2:0] proc_15_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_15;
    reg [2:0] proc_dep_vld_vec_15_reg;
    wire [2:0] in_chan_dep_vld_vec_15;
    wire [155:0] in_chan_dep_data_vec_15;
    wire [2:0] token_in_vec_15;
    wire [2:0] out_chan_dep_vld_vec_15;
    wire [51:0] out_chan_dep_data_15;
    wire [2:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_14_15;
    wire [51:0] dep_chan_data_14_15;
    wire token_14_15;
    wire dep_chan_vld_20_15;
    wire [51:0] dep_chan_data_20_15;
    wire token_20_15;
    wire dep_chan_vld_21_15;
    wire [51:0] dep_chan_data_21_15;
    wire token_21_15;
    wire [2:0] proc_16_data_FIFO_blk;
    wire [2:0] proc_16_data_PIPO_blk;
    wire [2:0] proc_16_start_FIFO_blk;
    wire [2:0] proc_16_TLF_FIFO_blk;
    wire [2:0] proc_16_input_sync_blk;
    wire [2:0] proc_16_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_16;
    reg [2:0] proc_dep_vld_vec_16_reg;
    wire [2:0] in_chan_dep_vld_vec_16;
    wire [155:0] in_chan_dep_data_vec_16;
    wire [2:0] token_in_vec_16;
    wire [2:0] out_chan_dep_vld_vec_16;
    wire [51:0] out_chan_dep_data_16;
    wire [2:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_14_16;
    wire [51:0] dep_chan_data_14_16;
    wire token_14_16;
    wire dep_chan_vld_17_16;
    wire [51:0] dep_chan_data_17_16;
    wire token_17_16;
    wire dep_chan_vld_18_16;
    wire [51:0] dep_chan_data_18_16;
    wire token_18_16;
    wire [2:0] proc_17_data_FIFO_blk;
    wire [2:0] proc_17_data_PIPO_blk;
    wire [2:0] proc_17_start_FIFO_blk;
    wire [2:0] proc_17_TLF_FIFO_blk;
    wire [2:0] proc_17_input_sync_blk;
    wire [2:0] proc_17_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_17;
    reg [2:0] proc_dep_vld_vec_17_reg;
    wire [2:0] in_chan_dep_vld_vec_17;
    wire [155:0] in_chan_dep_data_vec_17;
    wire [2:0] token_in_vec_17;
    wire [2:0] out_chan_dep_vld_vec_17;
    wire [51:0] out_chan_dep_data_17;
    wire [2:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_16_17;
    wire [51:0] dep_chan_data_16_17;
    wire token_16_17;
    wire dep_chan_vld_20_17;
    wire [51:0] dep_chan_data_20_17;
    wire token_20_17;
    wire dep_chan_vld_21_17;
    wire [51:0] dep_chan_data_21_17;
    wire token_21_17;
    wire [1:0] proc_18_data_FIFO_blk;
    wire [1:0] proc_18_data_PIPO_blk;
    wire [1:0] proc_18_start_FIFO_blk;
    wire [1:0] proc_18_TLF_FIFO_blk;
    wire [1:0] proc_18_input_sync_blk;
    wire [1:0] proc_18_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_18;
    reg [1:0] proc_dep_vld_vec_18_reg;
    wire [1:0] in_chan_dep_vld_vec_18;
    wire [103:0] in_chan_dep_data_vec_18;
    wire [1:0] token_in_vec_18;
    wire [1:0] out_chan_dep_vld_vec_18;
    wire [51:0] out_chan_dep_data_18;
    wire [1:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_16_18;
    wire [51:0] dep_chan_data_16_18;
    wire token_16_18;
    wire dep_chan_vld_19_18;
    wire [51:0] dep_chan_data_19_18;
    wire token_19_18;
    wire [2:0] proc_19_data_FIFO_blk;
    wire [2:0] proc_19_data_PIPO_blk;
    wire [2:0] proc_19_start_FIFO_blk;
    wire [2:0] proc_19_TLF_FIFO_blk;
    wire [2:0] proc_19_input_sync_blk;
    wire [2:0] proc_19_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_19;
    reg [2:0] proc_dep_vld_vec_19_reg;
    wire [2:0] in_chan_dep_vld_vec_19;
    wire [155:0] in_chan_dep_data_vec_19;
    wire [2:0] token_in_vec_19;
    wire [2:0] out_chan_dep_vld_vec_19;
    wire [51:0] out_chan_dep_data_19;
    wire [2:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_18_19;
    wire [51:0] dep_chan_data_18_19;
    wire token_18_19;
    wire dep_chan_vld_20_19;
    wire [51:0] dep_chan_data_20_19;
    wire token_20_19;
    wire dep_chan_vld_21_19;
    wire [51:0] dep_chan_data_21_19;
    wire token_21_19;
    wire [8:0] proc_20_data_FIFO_blk;
    wire [8:0] proc_20_data_PIPO_blk;
    wire [8:0] proc_20_start_FIFO_blk;
    wire [8:0] proc_20_TLF_FIFO_blk;
    wire [8:0] proc_20_input_sync_blk;
    wire [8:0] proc_20_output_sync_blk;
    wire [8:0] proc_dep_vld_vec_20;
    reg [8:0] proc_dep_vld_vec_20_reg;
    wire [8:0] in_chan_dep_vld_vec_20;
    wire [467:0] in_chan_dep_data_vec_20;
    wire [8:0] token_in_vec_20;
    wire [8:0] out_chan_dep_vld_vec_20;
    wire [51:0] out_chan_dep_data_20;
    wire [8:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_3_20;
    wire [51:0] dep_chan_data_3_20;
    wire token_3_20;
    wire dep_chan_vld_5_20;
    wire [51:0] dep_chan_data_5_20;
    wire token_5_20;
    wire dep_chan_vld_7_20;
    wire [51:0] dep_chan_data_7_20;
    wire token_7_20;
    wire dep_chan_vld_9_20;
    wire [51:0] dep_chan_data_9_20;
    wire token_9_20;
    wire dep_chan_vld_11_20;
    wire [51:0] dep_chan_data_11_20;
    wire token_11_20;
    wire dep_chan_vld_13_20;
    wire [51:0] dep_chan_data_13_20;
    wire token_13_20;
    wire dep_chan_vld_15_20;
    wire [51:0] dep_chan_data_15_20;
    wire token_15_20;
    wire dep_chan_vld_17_20;
    wire [51:0] dep_chan_data_17_20;
    wire token_17_20;
    wire dep_chan_vld_19_20;
    wire [51:0] dep_chan_data_19_20;
    wire token_19_20;
    wire [9:0] proc_21_data_FIFO_blk;
    wire [9:0] proc_21_data_PIPO_blk;
    wire [9:0] proc_21_start_FIFO_blk;
    wire [9:0] proc_21_TLF_FIFO_blk;
    wire [9:0] proc_21_input_sync_blk;
    wire [9:0] proc_21_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_21;
    reg [9:0] proc_dep_vld_vec_21_reg;
    wire [9:0] in_chan_dep_vld_vec_21;
    wire [519:0] in_chan_dep_data_vec_21;
    wire [9:0] token_in_vec_21;
    wire [9:0] out_chan_dep_vld_vec_21;
    wire [51:0] out_chan_dep_data_21;
    wire [9:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_3_21;
    wire [51:0] dep_chan_data_3_21;
    wire token_3_21;
    wire dep_chan_vld_5_21;
    wire [51:0] dep_chan_data_5_21;
    wire token_5_21;
    wire dep_chan_vld_7_21;
    wire [51:0] dep_chan_data_7_21;
    wire token_7_21;
    wire dep_chan_vld_9_21;
    wire [51:0] dep_chan_data_9_21;
    wire token_9_21;
    wire dep_chan_vld_11_21;
    wire [51:0] dep_chan_data_11_21;
    wire token_11_21;
    wire dep_chan_vld_13_21;
    wire [51:0] dep_chan_data_13_21;
    wire token_13_21;
    wire dep_chan_vld_15_21;
    wire [51:0] dep_chan_data_15_21;
    wire token_15_21;
    wire dep_chan_vld_17_21;
    wire [51:0] dep_chan_data_17_21;
    wire token_17_21;
    wire dep_chan_vld_19_21;
    wire [51:0] dep_chan_data_19_21;
    wire token_19_21;
    wire dep_chan_vld_22_21;
    wire [51:0] dep_chan_data_22_21;
    wire token_22_21;
    wire [2:0] proc_22_data_FIFO_blk;
    wire [2:0] proc_22_data_PIPO_blk;
    wire [2:0] proc_22_start_FIFO_blk;
    wire [2:0] proc_22_TLF_FIFO_blk;
    wire [2:0] proc_22_input_sync_blk;
    wire [2:0] proc_22_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_22;
    reg [2:0] proc_dep_vld_vec_22_reg;
    wire [2:0] in_chan_dep_vld_vec_22;
    wire [155:0] in_chan_dep_data_vec_22;
    wire [2:0] token_in_vec_22;
    wire [2:0] out_chan_dep_vld_vec_22;
    wire [51:0] out_chan_dep_data_22;
    wire [2:0] token_out_vec_22;
    wire dl_detect_out_22;
    wire dep_chan_vld_21_22;
    wire [51:0] dep_chan_data_21_22;
    wire token_21_22;
    wire dep_chan_vld_23_22;
    wire [51:0] dep_chan_data_23_22;
    wire token_23_22;
    wire dep_chan_vld_24_22;
    wire [51:0] dep_chan_data_24_22;
    wire token_24_22;
    wire [0:0] proc_23_data_FIFO_blk;
    wire [0:0] proc_23_data_PIPO_blk;
    wire [0:0] proc_23_start_FIFO_blk;
    wire [0:0] proc_23_TLF_FIFO_blk;
    wire [0:0] proc_23_input_sync_blk;
    wire [0:0] proc_23_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_23;
    reg [0:0] proc_dep_vld_vec_23_reg;
    wire [0:0] in_chan_dep_vld_vec_23;
    wire [51:0] in_chan_dep_data_vec_23;
    wire [0:0] token_in_vec_23;
    wire [0:0] out_chan_dep_vld_vec_23;
    wire [51:0] out_chan_dep_data_23;
    wire [0:0] token_out_vec_23;
    wire dl_detect_out_23;
    wire dep_chan_vld_22_23;
    wire [51:0] dep_chan_data_22_23;
    wire token_22_23;
    wire [1:0] proc_24_data_FIFO_blk;
    wire [1:0] proc_24_data_PIPO_blk;
    wire [1:0] proc_24_start_FIFO_blk;
    wire [1:0] proc_24_TLF_FIFO_blk;
    wire [1:0] proc_24_input_sync_blk;
    wire [1:0] proc_24_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_24;
    reg [1:0] proc_dep_vld_vec_24_reg;
    wire [1:0] in_chan_dep_vld_vec_24;
    wire [103:0] in_chan_dep_data_vec_24;
    wire [1:0] token_in_vec_24;
    wire [1:0] out_chan_dep_vld_vec_24;
    wire [51:0] out_chan_dep_data_24;
    wire [1:0] token_out_vec_24;
    wire dl_detect_out_24;
    wire dep_chan_vld_22_24;
    wire [51:0] dep_chan_data_22_24;
    wire token_22_24;
    wire dep_chan_vld_25_24;
    wire [51:0] dep_chan_data_25_24;
    wire token_25_24;
    wire [2:0] proc_25_data_FIFO_blk;
    wire [2:0] proc_25_data_PIPO_blk;
    wire [2:0] proc_25_start_FIFO_blk;
    wire [2:0] proc_25_TLF_FIFO_blk;
    wire [2:0] proc_25_input_sync_blk;
    wire [2:0] proc_25_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_25;
    reg [2:0] proc_dep_vld_vec_25_reg;
    wire [2:0] in_chan_dep_vld_vec_25;
    wire [155:0] in_chan_dep_data_vec_25;
    wire [2:0] token_in_vec_25;
    wire [2:0] out_chan_dep_vld_vec_25;
    wire [51:0] out_chan_dep_data_25;
    wire [2:0] token_out_vec_25;
    wire dl_detect_out_25;
    wire dep_chan_vld_24_25;
    wire [51:0] dep_chan_data_24_25;
    wire token_24_25;
    wire dep_chan_vld_26_25;
    wire [51:0] dep_chan_data_26_25;
    wire token_26_25;
    wire dep_chan_vld_27_25;
    wire [51:0] dep_chan_data_27_25;
    wire token_27_25;
    wire [0:0] proc_26_data_FIFO_blk;
    wire [0:0] proc_26_data_PIPO_blk;
    wire [0:0] proc_26_start_FIFO_blk;
    wire [0:0] proc_26_TLF_FIFO_blk;
    wire [0:0] proc_26_input_sync_blk;
    wire [0:0] proc_26_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_26;
    reg [0:0] proc_dep_vld_vec_26_reg;
    wire [0:0] in_chan_dep_vld_vec_26;
    wire [51:0] in_chan_dep_data_vec_26;
    wire [0:0] token_in_vec_26;
    wire [0:0] out_chan_dep_vld_vec_26;
    wire [51:0] out_chan_dep_data_26;
    wire [0:0] token_out_vec_26;
    wire dl_detect_out_26;
    wire dep_chan_vld_25_26;
    wire [51:0] dep_chan_data_25_26;
    wire token_25_26;
    wire [1:0] proc_27_data_FIFO_blk;
    wire [1:0] proc_27_data_PIPO_blk;
    wire [1:0] proc_27_start_FIFO_blk;
    wire [1:0] proc_27_TLF_FIFO_blk;
    wire [1:0] proc_27_input_sync_blk;
    wire [1:0] proc_27_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_27;
    reg [1:0] proc_dep_vld_vec_27_reg;
    wire [1:0] in_chan_dep_vld_vec_27;
    wire [103:0] in_chan_dep_data_vec_27;
    wire [1:0] token_in_vec_27;
    wire [1:0] out_chan_dep_vld_vec_27;
    wire [51:0] out_chan_dep_data_27;
    wire [1:0] token_out_vec_27;
    wire dl_detect_out_27;
    wire dep_chan_vld_25_27;
    wire [51:0] dep_chan_data_25_27;
    wire token_25_27;
    wire dep_chan_vld_28_27;
    wire [51:0] dep_chan_data_28_27;
    wire token_28_27;
    wire [2:0] proc_28_data_FIFO_blk;
    wire [2:0] proc_28_data_PIPO_blk;
    wire [2:0] proc_28_start_FIFO_blk;
    wire [2:0] proc_28_TLF_FIFO_blk;
    wire [2:0] proc_28_input_sync_blk;
    wire [2:0] proc_28_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_28;
    reg [2:0] proc_dep_vld_vec_28_reg;
    wire [2:0] in_chan_dep_vld_vec_28;
    wire [155:0] in_chan_dep_data_vec_28;
    wire [2:0] token_in_vec_28;
    wire [2:0] out_chan_dep_vld_vec_28;
    wire [51:0] out_chan_dep_data_28;
    wire [2:0] token_out_vec_28;
    wire dl_detect_out_28;
    wire dep_chan_vld_27_28;
    wire [51:0] dep_chan_data_27_28;
    wire token_27_28;
    wire dep_chan_vld_29_28;
    wire [51:0] dep_chan_data_29_28;
    wire token_29_28;
    wire dep_chan_vld_30_28;
    wire [51:0] dep_chan_data_30_28;
    wire token_30_28;
    wire [0:0] proc_29_data_FIFO_blk;
    wire [0:0] proc_29_data_PIPO_blk;
    wire [0:0] proc_29_start_FIFO_blk;
    wire [0:0] proc_29_TLF_FIFO_blk;
    wire [0:0] proc_29_input_sync_blk;
    wire [0:0] proc_29_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_29;
    reg [0:0] proc_dep_vld_vec_29_reg;
    wire [0:0] in_chan_dep_vld_vec_29;
    wire [51:0] in_chan_dep_data_vec_29;
    wire [0:0] token_in_vec_29;
    wire [0:0] out_chan_dep_vld_vec_29;
    wire [51:0] out_chan_dep_data_29;
    wire [0:0] token_out_vec_29;
    wire dl_detect_out_29;
    wire dep_chan_vld_28_29;
    wire [51:0] dep_chan_data_28_29;
    wire token_28_29;
    wire [1:0] proc_30_data_FIFO_blk;
    wire [1:0] proc_30_data_PIPO_blk;
    wire [1:0] proc_30_start_FIFO_blk;
    wire [1:0] proc_30_TLF_FIFO_blk;
    wire [1:0] proc_30_input_sync_blk;
    wire [1:0] proc_30_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_30;
    reg [1:0] proc_dep_vld_vec_30_reg;
    wire [1:0] in_chan_dep_vld_vec_30;
    wire [103:0] in_chan_dep_data_vec_30;
    wire [1:0] token_in_vec_30;
    wire [1:0] out_chan_dep_vld_vec_30;
    wire [51:0] out_chan_dep_data_30;
    wire [1:0] token_out_vec_30;
    wire dl_detect_out_30;
    wire dep_chan_vld_28_30;
    wire [51:0] dep_chan_data_28_30;
    wire token_28_30;
    wire dep_chan_vld_31_30;
    wire [51:0] dep_chan_data_31_30;
    wire token_31_30;
    wire [2:0] proc_31_data_FIFO_blk;
    wire [2:0] proc_31_data_PIPO_blk;
    wire [2:0] proc_31_start_FIFO_blk;
    wire [2:0] proc_31_TLF_FIFO_blk;
    wire [2:0] proc_31_input_sync_blk;
    wire [2:0] proc_31_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_31;
    reg [2:0] proc_dep_vld_vec_31_reg;
    wire [2:0] in_chan_dep_vld_vec_31;
    wire [155:0] in_chan_dep_data_vec_31;
    wire [2:0] token_in_vec_31;
    wire [2:0] out_chan_dep_vld_vec_31;
    wire [51:0] out_chan_dep_data_31;
    wire [2:0] token_out_vec_31;
    wire dl_detect_out_31;
    wire dep_chan_vld_30_31;
    wire [51:0] dep_chan_data_30_31;
    wire token_30_31;
    wire dep_chan_vld_32_31;
    wire [51:0] dep_chan_data_32_31;
    wire token_32_31;
    wire dep_chan_vld_33_31;
    wire [51:0] dep_chan_data_33_31;
    wire token_33_31;
    wire [0:0] proc_32_data_FIFO_blk;
    wire [0:0] proc_32_data_PIPO_blk;
    wire [0:0] proc_32_start_FIFO_blk;
    wire [0:0] proc_32_TLF_FIFO_blk;
    wire [0:0] proc_32_input_sync_blk;
    wire [0:0] proc_32_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_32;
    reg [0:0] proc_dep_vld_vec_32_reg;
    wire [0:0] in_chan_dep_vld_vec_32;
    wire [51:0] in_chan_dep_data_vec_32;
    wire [0:0] token_in_vec_32;
    wire [0:0] out_chan_dep_vld_vec_32;
    wire [51:0] out_chan_dep_data_32;
    wire [0:0] token_out_vec_32;
    wire dl_detect_out_32;
    wire dep_chan_vld_31_32;
    wire [51:0] dep_chan_data_31_32;
    wire token_31_32;
    wire [1:0] proc_33_data_FIFO_blk;
    wire [1:0] proc_33_data_PIPO_blk;
    wire [1:0] proc_33_start_FIFO_blk;
    wire [1:0] proc_33_TLF_FIFO_blk;
    wire [1:0] proc_33_input_sync_blk;
    wire [1:0] proc_33_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_33;
    reg [1:0] proc_dep_vld_vec_33_reg;
    wire [1:0] in_chan_dep_vld_vec_33;
    wire [103:0] in_chan_dep_data_vec_33;
    wire [1:0] token_in_vec_33;
    wire [1:0] out_chan_dep_vld_vec_33;
    wire [51:0] out_chan_dep_data_33;
    wire [1:0] token_out_vec_33;
    wire dl_detect_out_33;
    wire dep_chan_vld_31_33;
    wire [51:0] dep_chan_data_31_33;
    wire token_31_33;
    wire dep_chan_vld_34_33;
    wire [51:0] dep_chan_data_34_33;
    wire token_34_33;
    wire [2:0] proc_34_data_FIFO_blk;
    wire [2:0] proc_34_data_PIPO_blk;
    wire [2:0] proc_34_start_FIFO_blk;
    wire [2:0] proc_34_TLF_FIFO_blk;
    wire [2:0] proc_34_input_sync_blk;
    wire [2:0] proc_34_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_34;
    reg [2:0] proc_dep_vld_vec_34_reg;
    wire [2:0] in_chan_dep_vld_vec_34;
    wire [155:0] in_chan_dep_data_vec_34;
    wire [2:0] token_in_vec_34;
    wire [2:0] out_chan_dep_vld_vec_34;
    wire [51:0] out_chan_dep_data_34;
    wire [2:0] token_out_vec_34;
    wire dl_detect_out_34;
    wire dep_chan_vld_33_34;
    wire [51:0] dep_chan_data_33_34;
    wire token_33_34;
    wire dep_chan_vld_35_34;
    wire [51:0] dep_chan_data_35_34;
    wire token_35_34;
    wire dep_chan_vld_36_34;
    wire [51:0] dep_chan_data_36_34;
    wire token_36_34;
    wire [0:0] proc_35_data_FIFO_blk;
    wire [0:0] proc_35_data_PIPO_blk;
    wire [0:0] proc_35_start_FIFO_blk;
    wire [0:0] proc_35_TLF_FIFO_blk;
    wire [0:0] proc_35_input_sync_blk;
    wire [0:0] proc_35_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_35;
    reg [0:0] proc_dep_vld_vec_35_reg;
    wire [0:0] in_chan_dep_vld_vec_35;
    wire [51:0] in_chan_dep_data_vec_35;
    wire [0:0] token_in_vec_35;
    wire [0:0] out_chan_dep_vld_vec_35;
    wire [51:0] out_chan_dep_data_35;
    wire [0:0] token_out_vec_35;
    wire dl_detect_out_35;
    wire dep_chan_vld_34_35;
    wire [51:0] dep_chan_data_34_35;
    wire token_34_35;
    wire [1:0] proc_36_data_FIFO_blk;
    wire [1:0] proc_36_data_PIPO_blk;
    wire [1:0] proc_36_start_FIFO_blk;
    wire [1:0] proc_36_TLF_FIFO_blk;
    wire [1:0] proc_36_input_sync_blk;
    wire [1:0] proc_36_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_36;
    reg [1:0] proc_dep_vld_vec_36_reg;
    wire [1:0] in_chan_dep_vld_vec_36;
    wire [103:0] in_chan_dep_data_vec_36;
    wire [1:0] token_in_vec_36;
    wire [1:0] out_chan_dep_vld_vec_36;
    wire [51:0] out_chan_dep_data_36;
    wire [1:0] token_out_vec_36;
    wire dl_detect_out_36;
    wire dep_chan_vld_34_36;
    wire [51:0] dep_chan_data_34_36;
    wire token_34_36;
    wire dep_chan_vld_37_36;
    wire [51:0] dep_chan_data_37_36;
    wire token_37_36;
    wire [2:0] proc_37_data_FIFO_blk;
    wire [2:0] proc_37_data_PIPO_blk;
    wire [2:0] proc_37_start_FIFO_blk;
    wire [2:0] proc_37_TLF_FIFO_blk;
    wire [2:0] proc_37_input_sync_blk;
    wire [2:0] proc_37_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_37;
    reg [2:0] proc_dep_vld_vec_37_reg;
    wire [2:0] in_chan_dep_vld_vec_37;
    wire [155:0] in_chan_dep_data_vec_37;
    wire [2:0] token_in_vec_37;
    wire [2:0] out_chan_dep_vld_vec_37;
    wire [51:0] out_chan_dep_data_37;
    wire [2:0] token_out_vec_37;
    wire dl_detect_out_37;
    wire dep_chan_vld_36_37;
    wire [51:0] dep_chan_data_36_37;
    wire token_36_37;
    wire dep_chan_vld_38_37;
    wire [51:0] dep_chan_data_38_37;
    wire token_38_37;
    wire dep_chan_vld_39_37;
    wire [51:0] dep_chan_data_39_37;
    wire token_39_37;
    wire [0:0] proc_38_data_FIFO_blk;
    wire [0:0] proc_38_data_PIPO_blk;
    wire [0:0] proc_38_start_FIFO_blk;
    wire [0:0] proc_38_TLF_FIFO_blk;
    wire [0:0] proc_38_input_sync_blk;
    wire [0:0] proc_38_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_38;
    reg [0:0] proc_dep_vld_vec_38_reg;
    wire [0:0] in_chan_dep_vld_vec_38;
    wire [51:0] in_chan_dep_data_vec_38;
    wire [0:0] token_in_vec_38;
    wire [0:0] out_chan_dep_vld_vec_38;
    wire [51:0] out_chan_dep_data_38;
    wire [0:0] token_out_vec_38;
    wire dl_detect_out_38;
    wire dep_chan_vld_37_38;
    wire [51:0] dep_chan_data_37_38;
    wire token_37_38;
    wire [1:0] proc_39_data_FIFO_blk;
    wire [1:0] proc_39_data_PIPO_blk;
    wire [1:0] proc_39_start_FIFO_blk;
    wire [1:0] proc_39_TLF_FIFO_blk;
    wire [1:0] proc_39_input_sync_blk;
    wire [1:0] proc_39_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_39;
    reg [1:0] proc_dep_vld_vec_39_reg;
    wire [1:0] in_chan_dep_vld_vec_39;
    wire [103:0] in_chan_dep_data_vec_39;
    wire [1:0] token_in_vec_39;
    wire [1:0] out_chan_dep_vld_vec_39;
    wire [51:0] out_chan_dep_data_39;
    wire [1:0] token_out_vec_39;
    wire dl_detect_out_39;
    wire dep_chan_vld_37_39;
    wire [51:0] dep_chan_data_37_39;
    wire token_37_39;
    wire dep_chan_vld_40_39;
    wire [51:0] dep_chan_data_40_39;
    wire token_40_39;
    wire [2:0] proc_40_data_FIFO_blk;
    wire [2:0] proc_40_data_PIPO_blk;
    wire [2:0] proc_40_start_FIFO_blk;
    wire [2:0] proc_40_TLF_FIFO_blk;
    wire [2:0] proc_40_input_sync_blk;
    wire [2:0] proc_40_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_40;
    reg [2:0] proc_dep_vld_vec_40_reg;
    wire [2:0] in_chan_dep_vld_vec_40;
    wire [155:0] in_chan_dep_data_vec_40;
    wire [2:0] token_in_vec_40;
    wire [2:0] out_chan_dep_vld_vec_40;
    wire [51:0] out_chan_dep_data_40;
    wire [2:0] token_out_vec_40;
    wire dl_detect_out_40;
    wire dep_chan_vld_39_40;
    wire [51:0] dep_chan_data_39_40;
    wire token_39_40;
    wire dep_chan_vld_41_40;
    wire [51:0] dep_chan_data_41_40;
    wire token_41_40;
    wire dep_chan_vld_42_40;
    wire [51:0] dep_chan_data_42_40;
    wire token_42_40;
    wire [0:0] proc_41_data_FIFO_blk;
    wire [0:0] proc_41_data_PIPO_blk;
    wire [0:0] proc_41_start_FIFO_blk;
    wire [0:0] proc_41_TLF_FIFO_blk;
    wire [0:0] proc_41_input_sync_blk;
    wire [0:0] proc_41_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_41;
    reg [0:0] proc_dep_vld_vec_41_reg;
    wire [0:0] in_chan_dep_vld_vec_41;
    wire [51:0] in_chan_dep_data_vec_41;
    wire [0:0] token_in_vec_41;
    wire [0:0] out_chan_dep_vld_vec_41;
    wire [51:0] out_chan_dep_data_41;
    wire [0:0] token_out_vec_41;
    wire dl_detect_out_41;
    wire dep_chan_vld_40_41;
    wire [51:0] dep_chan_data_40_41;
    wire token_40_41;
    wire [1:0] proc_42_data_FIFO_blk;
    wire [1:0] proc_42_data_PIPO_blk;
    wire [1:0] proc_42_start_FIFO_blk;
    wire [1:0] proc_42_TLF_FIFO_blk;
    wire [1:0] proc_42_input_sync_blk;
    wire [1:0] proc_42_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_42;
    reg [1:0] proc_dep_vld_vec_42_reg;
    wire [1:0] in_chan_dep_vld_vec_42;
    wire [103:0] in_chan_dep_data_vec_42;
    wire [1:0] token_in_vec_42;
    wire [1:0] out_chan_dep_vld_vec_42;
    wire [51:0] out_chan_dep_data_42;
    wire [1:0] token_out_vec_42;
    wire dl_detect_out_42;
    wire dep_chan_vld_40_42;
    wire [51:0] dep_chan_data_40_42;
    wire token_40_42;
    wire dep_chan_vld_43_42;
    wire [51:0] dep_chan_data_43_42;
    wire token_43_42;
    wire [2:0] proc_43_data_FIFO_blk;
    wire [2:0] proc_43_data_PIPO_blk;
    wire [2:0] proc_43_start_FIFO_blk;
    wire [2:0] proc_43_TLF_FIFO_blk;
    wire [2:0] proc_43_input_sync_blk;
    wire [2:0] proc_43_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_43;
    reg [2:0] proc_dep_vld_vec_43_reg;
    wire [2:0] in_chan_dep_vld_vec_43;
    wire [155:0] in_chan_dep_data_vec_43;
    wire [2:0] token_in_vec_43;
    wire [2:0] out_chan_dep_vld_vec_43;
    wire [51:0] out_chan_dep_data_43;
    wire [2:0] token_out_vec_43;
    wire dl_detect_out_43;
    wire dep_chan_vld_42_43;
    wire [51:0] dep_chan_data_42_43;
    wire token_42_43;
    wire dep_chan_vld_44_43;
    wire [51:0] dep_chan_data_44_43;
    wire token_44_43;
    wire dep_chan_vld_45_43;
    wire [51:0] dep_chan_data_45_43;
    wire token_45_43;
    wire [0:0] proc_44_data_FIFO_blk;
    wire [0:0] proc_44_data_PIPO_blk;
    wire [0:0] proc_44_start_FIFO_blk;
    wire [0:0] proc_44_TLF_FIFO_blk;
    wire [0:0] proc_44_input_sync_blk;
    wire [0:0] proc_44_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_44;
    reg [0:0] proc_dep_vld_vec_44_reg;
    wire [0:0] in_chan_dep_vld_vec_44;
    wire [51:0] in_chan_dep_data_vec_44;
    wire [0:0] token_in_vec_44;
    wire [0:0] out_chan_dep_vld_vec_44;
    wire [51:0] out_chan_dep_data_44;
    wire [0:0] token_out_vec_44;
    wire dl_detect_out_44;
    wire dep_chan_vld_43_44;
    wire [51:0] dep_chan_data_43_44;
    wire token_43_44;
    wire [1:0] proc_45_data_FIFO_blk;
    wire [1:0] proc_45_data_PIPO_blk;
    wire [1:0] proc_45_start_FIFO_blk;
    wire [1:0] proc_45_TLF_FIFO_blk;
    wire [1:0] proc_45_input_sync_blk;
    wire [1:0] proc_45_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_45;
    reg [1:0] proc_dep_vld_vec_45_reg;
    wire [1:0] in_chan_dep_vld_vec_45;
    wire [103:0] in_chan_dep_data_vec_45;
    wire [1:0] token_in_vec_45;
    wire [1:0] out_chan_dep_vld_vec_45;
    wire [51:0] out_chan_dep_data_45;
    wire [1:0] token_out_vec_45;
    wire dl_detect_out_45;
    wire dep_chan_vld_43_45;
    wire [51:0] dep_chan_data_43_45;
    wire token_43_45;
    wire dep_chan_vld_46_45;
    wire [51:0] dep_chan_data_46_45;
    wire token_46_45;
    wire [2:0] proc_46_data_FIFO_blk;
    wire [2:0] proc_46_data_PIPO_blk;
    wire [2:0] proc_46_start_FIFO_blk;
    wire [2:0] proc_46_TLF_FIFO_blk;
    wire [2:0] proc_46_input_sync_blk;
    wire [2:0] proc_46_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_46;
    reg [2:0] proc_dep_vld_vec_46_reg;
    wire [2:0] in_chan_dep_vld_vec_46;
    wire [155:0] in_chan_dep_data_vec_46;
    wire [2:0] token_in_vec_46;
    wire [2:0] out_chan_dep_vld_vec_46;
    wire [51:0] out_chan_dep_data_46;
    wire [2:0] token_out_vec_46;
    wire dl_detect_out_46;
    wire dep_chan_vld_45_46;
    wire [51:0] dep_chan_data_45_46;
    wire token_45_46;
    wire dep_chan_vld_47_46;
    wire [51:0] dep_chan_data_47_46;
    wire token_47_46;
    wire dep_chan_vld_48_46;
    wire [51:0] dep_chan_data_48_46;
    wire token_48_46;
    wire [0:0] proc_47_data_FIFO_blk;
    wire [0:0] proc_47_data_PIPO_blk;
    wire [0:0] proc_47_start_FIFO_blk;
    wire [0:0] proc_47_TLF_FIFO_blk;
    wire [0:0] proc_47_input_sync_blk;
    wire [0:0] proc_47_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_47;
    reg [0:0] proc_dep_vld_vec_47_reg;
    wire [0:0] in_chan_dep_vld_vec_47;
    wire [51:0] in_chan_dep_data_vec_47;
    wire [0:0] token_in_vec_47;
    wire [0:0] out_chan_dep_vld_vec_47;
    wire [51:0] out_chan_dep_data_47;
    wire [0:0] token_out_vec_47;
    wire dl_detect_out_47;
    wire dep_chan_vld_46_47;
    wire [51:0] dep_chan_data_46_47;
    wire token_46_47;
    wire [1:0] proc_48_data_FIFO_blk;
    wire [1:0] proc_48_data_PIPO_blk;
    wire [1:0] proc_48_start_FIFO_blk;
    wire [1:0] proc_48_TLF_FIFO_blk;
    wire [1:0] proc_48_input_sync_blk;
    wire [1:0] proc_48_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_48;
    reg [1:0] proc_dep_vld_vec_48_reg;
    wire [1:0] in_chan_dep_vld_vec_48;
    wire [103:0] in_chan_dep_data_vec_48;
    wire [1:0] token_in_vec_48;
    wire [1:0] out_chan_dep_vld_vec_48;
    wire [51:0] out_chan_dep_data_48;
    wire [1:0] token_out_vec_48;
    wire dl_detect_out_48;
    wire dep_chan_vld_46_48;
    wire [51:0] dep_chan_data_46_48;
    wire token_46_48;
    wire dep_chan_vld_49_48;
    wire [51:0] dep_chan_data_49_48;
    wire token_49_48;
    wire [1:0] proc_49_data_FIFO_blk;
    wire [1:0] proc_49_data_PIPO_blk;
    wire [1:0] proc_49_start_FIFO_blk;
    wire [1:0] proc_49_TLF_FIFO_blk;
    wire [1:0] proc_49_input_sync_blk;
    wire [1:0] proc_49_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_49;
    reg [1:0] proc_dep_vld_vec_49_reg;
    wire [1:0] in_chan_dep_vld_vec_49;
    wire [103:0] in_chan_dep_data_vec_49;
    wire [1:0] token_in_vec_49;
    wire [1:0] out_chan_dep_vld_vec_49;
    wire [51:0] out_chan_dep_data_49;
    wire [1:0] token_out_vec_49;
    wire dl_detect_out_49;
    wire dep_chan_vld_48_49;
    wire [51:0] dep_chan_data_48_49;
    wire token_48_49;
    wire dep_chan_vld_50_49;
    wire [51:0] dep_chan_data_50_49;
    wire token_50_49;
    wire [0:0] proc_50_data_FIFO_blk;
    wire [0:0] proc_50_data_PIPO_blk;
    wire [0:0] proc_50_start_FIFO_blk;
    wire [0:0] proc_50_TLF_FIFO_blk;
    wire [0:0] proc_50_input_sync_blk;
    wire [0:0] proc_50_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_50;
    reg [0:0] proc_dep_vld_vec_50_reg;
    wire [0:0] in_chan_dep_vld_vec_50;
    wire [51:0] in_chan_dep_data_vec_50;
    wire [0:0] token_in_vec_50;
    wire [0:0] out_chan_dep_vld_vec_50;
    wire [51:0] out_chan_dep_data_50;
    wire [0:0] token_out_vec_50;
    wire dl_detect_out_50;
    wire dep_chan_vld_49_50;
    wire [51:0] dep_chan_data_49_50;
    wire token_49_50;
    wire [0:0] proc_51_data_FIFO_blk;
    wire [0:0] proc_51_data_PIPO_blk;
    wire [0:0] proc_51_start_FIFO_blk;
    wire [0:0] proc_51_TLF_FIFO_blk;
    wire [0:0] proc_51_input_sync_blk;
    wire [0:0] proc_51_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_51;
    reg [0:0] proc_dep_vld_vec_51_reg;
    wire [0:0] in_chan_dep_vld_vec_51;
    wire [51:0] in_chan_dep_data_vec_51;
    wire [0:0] token_in_vec_51;
    wire [0:0] out_chan_dep_vld_vec_51;
    wire [51:0] out_chan_dep_data_51;
    wire [0:0] token_out_vec_51;
    wire dl_detect_out_51;
    wire dep_chan_vld_1_51;
    wire [51:0] dep_chan_data_1_51;
    wire token_1_51;
    wire [51:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [51:0] origin;

reg [15:0] trans_in_cnt_0;// for process unpack_data_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (unpack_data_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process unpack_data_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (unpack_data_U0.ap_done == 1'b1 && unpack_data_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

reg [15:0] trans_in_cnt_4;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_4 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0.start_write == 1'b1) begin
        trans_in_cnt_4 <= trans_in_cnt_4 + 16'h1;
    end
    else begin
        trans_in_cnt_4 <= trans_in_cnt_4;
    end
end

reg [15:0] trans_out_cnt_4;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_4 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0.ap_continue == 1'b1) begin
        trans_out_cnt_4 <= trans_out_cnt_4 + 16'h1;
    end
    else begin
        trans_out_cnt_4 <= trans_out_cnt_4;
    end
end

reg [15:0] trans_in_cnt_5;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_5 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0.start_write == 1'b1) begin
        trans_in_cnt_5 <= trans_in_cnt_5 + 16'h1;
    end
    else begin
        trans_in_cnt_5 <= trans_in_cnt_5;
    end
end

reg [15:0] trans_out_cnt_5;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_5 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0.ap_continue == 1'b1) begin
        trans_out_cnt_5 <= trans_out_cnt_5 + 16'h1;
    end
    else begin
        trans_out_cnt_5 <= trans_out_cnt_5;
    end
end

reg [15:0] trans_in_cnt_6;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_6 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0.start_write == 1'b1) begin
        trans_in_cnt_6 <= trans_in_cnt_6 + 16'h1;
    end
    else begin
        trans_in_cnt_6 <= trans_in_cnt_6;
    end
end

reg [15:0] trans_out_cnt_6;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_6 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0.ap_continue == 1'b1) begin
        trans_out_cnt_6 <= trans_out_cnt_6 + 16'h1;
    end
    else begin
        trans_out_cnt_6 <= trans_out_cnt_6;
    end
end

reg [15:0] trans_in_cnt_7;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_7 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0.start_write == 1'b1) begin
        trans_in_cnt_7 <= trans_in_cnt_7 + 16'h1;
    end
    else begin
        trans_in_cnt_7 <= trans_in_cnt_7;
    end
end

reg [15:0] trans_out_cnt_7;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_7 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0.ap_continue == 1'b1) begin
        trans_out_cnt_7 <= trans_out_cnt_7 + 16'h1;
    end
    else begin
        trans_out_cnt_7 <= trans_out_cnt_7;
    end
end

reg [15:0] trans_in_cnt_8;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_8 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0.start_write == 1'b1) begin
        trans_in_cnt_8 <= trans_in_cnt_8 + 16'h1;
    end
    else begin
        trans_in_cnt_8 <= trans_in_cnt_8;
    end
end

reg [15:0] trans_out_cnt_8;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_8 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0.ap_continue == 1'b1) begin
        trans_out_cnt_8 <= trans_out_cnt_8 + 16'h1;
    end
    else begin
        trans_out_cnt_8 <= trans_out_cnt_8;
    end
end

reg [15:0] trans_in_cnt_9;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_9 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0.start_write == 1'b1) begin
        trans_in_cnt_9 <= trans_in_cnt_9 + 16'h1;
    end
    else begin
        trans_in_cnt_9 <= trans_in_cnt_9;
    end
end

reg [15:0] trans_out_cnt_9;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_9 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0.ap_continue == 1'b1) begin
        trans_out_cnt_9 <= trans_out_cnt_9 + 16'h1;
    end
    else begin
        trans_out_cnt_9 <= trans_out_cnt_9;
    end
end

reg [15:0] trans_in_cnt_10;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_10 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0.start_write == 1'b1) begin
        trans_in_cnt_10 <= trans_in_cnt_10 + 16'h1;
    end
    else begin
        trans_in_cnt_10 <= trans_in_cnt_10;
    end
end

reg [15:0] trans_out_cnt_10;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_10 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0.ap_continue == 1'b1) begin
        trans_out_cnt_10 <= trans_out_cnt_10 + 16'h1;
    end
    else begin
        trans_out_cnt_10 <= trans_out_cnt_10;
    end
end

reg [15:0] trans_in_cnt_11;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_11 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.start_write == 1'b1) begin
        trans_in_cnt_11 <= trans_in_cnt_11 + 16'h1;
    end
    else begin
        trans_in_cnt_11 <= trans_in_cnt_11;
    end
end

reg [15:0] trans_out_cnt_11;// for process fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_11 <= 16'h0;
    end
    else if (fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.ap_done == 1'b1 && fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.ap_continue == 1'b1) begin
        trans_out_cnt_11 <= trans_out_cnt_11 + 16'h1;
    end
    else begin
        trans_out_cnt_11 <= trans_out_cnt_11;
    end
end

    // Process: unpack_data_U0
    fft_top_hls_deadlock_detect_unit #(52, 0, 1, 1) fft_top_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~unpack_data_U0.inD_0_blk_n) | (~unpack_data_U0.inD_1_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0 | (~start_for_fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0_U.if_full_n & unpack_data_U0.ap_start & ~unpack_data_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[51 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 1, 2, 2) fft_top_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.castArrayS2Streaming_1024_2_complex_complex_ap_fixed_16_1_5_3_0_U0.inD_0_blk_n) | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.castArrayS2Streaming_1024_2_complex_complex_ap_fixed_16_1_5_3_0_U0.inD_1_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~start_for_fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.ap_idle & ~start_for_fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0_U.if_write);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0.grp_writeBackCacheDataDR_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_s_fu_64.outD_0_blk_n) | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0.grp_writeBackCacheDataDR_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_s_fu_64.outD_1_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0 | (~start_for_pack_data_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.real_start & (trans_in_cnt_11 == trans_out_cnt_11) & ~start_for_pack_data_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[51 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_51_1;
    assign in_chan_dep_data_vec_1[103 : 52] = dep_chan_data_51_1;
    assign token_in_vec_1[1] = token_51_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_51 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_51 = out_chan_dep_data_1;
    assign token_1_51 = token_out_vec_1[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.castArrayS2Streaming_1024_2_complex_complex_ap_fixed_16_1_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 2, 2, 2) fft_top_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.castArrayS2Streaming_1024_2_complex_complex_ap_fixed_16_1_5_3_0_U0.casted_output_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.castArrayS2Streaming_1024_2_complex_complex_ap_fixed_16_1_5_3_0_U0.casted_output_blk_n);
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[51 : 0] = dep_chan_data_3_2;
    assign token_in_vec_2[0] = token_3_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_4_2;
    assign in_chan_dep_data_vec_2[103 : 52] = dep_chan_data_4_2;
    assign token_in_vec_2[1] = token_4_2;
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[0];
    assign dep_chan_vld_2_4 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_4 = out_chan_dep_data_2;
    assign token_2_4 = token_out_vec_2[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 3, 3, 3) fft_top_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0.casted_output_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    assign proc_3_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_3_data_PIPO_blk[2] = 1'b0;
    assign proc_3_start_FIFO_blk[2] = 1'b0;
    assign proc_3_TLF_FIFO_blk[2] = 1'b0;
    assign proc_3_input_sync_blk[2] = 1'b0;
    assign proc_3_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (proc_3_data_FIFO_blk[2] | proc_3_data_PIPO_blk[2] | proc_3_start_FIFO_blk[2] | proc_3_TLF_FIFO_blk[2] | proc_3_input_sync_blk[2] | proc_3_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[51 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_20_3;
    assign in_chan_dep_data_vec_3[103 : 52] = dep_chan_data_20_3;
    assign token_in_vec_3[1] = token_20_3;
    assign in_chan_dep_vld_vec_3[2] = dep_chan_vld_21_3;
    assign in_chan_dep_data_vec_3[155 : 104] = dep_chan_data_21_3;
    assign token_in_vec_3[2] = token_21_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];
    assign dep_chan_vld_3_20 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_20 = out_chan_dep_data_3;
    assign token_3_20 = token_out_vec_3[1];
    assign dep_chan_vld_3_21 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_21 = out_chan_dep_data_3;
    assign token_3_21 = token_out_vec_3[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 4, 3, 3) fft_top_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0.casted_output_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0.temp_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_1_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_1_U0_U.if_read);
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    assign proc_4_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_U0.temp_blk_n);
    assign proc_4_data_PIPO_blk[2] = 1'b0;
    assign proc_4_start_FIFO_blk[2] = 1'b0;
    assign proc_4_TLF_FIFO_blk[2] = 1'b0;
    assign proc_4_input_sync_blk[2] = 1'b0;
    assign proc_4_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (proc_4_data_FIFO_blk[2] | proc_4_data_PIPO_blk[2] | proc_4_start_FIFO_blk[2] | proc_4_TLF_FIFO_blk[2] | proc_4_input_sync_blk[2] | proc_4_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_2_4;
    assign in_chan_dep_data_vec_4[51 : 0] = dep_chan_data_2_4;
    assign token_in_vec_4[0] = token_2_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[103 : 52] = dep_chan_data_5_4;
    assign token_in_vec_4[1] = token_5_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_6_4;
    assign in_chan_dep_data_vec_4[155 : 104] = dep_chan_data_6_4;
    assign token_in_vec_4[2] = token_6_4;
    assign dep_chan_vld_4_2 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_2 = out_chan_dep_data_4;
    assign token_4_2 = token_out_vec_4[0];
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[1];
    assign dep_chan_vld_4_6 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_6 = out_chan_dep_data_4;
    assign token_4_6 = token_out_vec_4[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0
    fft_top_hls_deadlock_detect_unit #(52, 5, 3, 3) fft_top_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0.temp_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_1_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_1_U0_U.if_write);
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0;
    assign proc_5_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0;
    assign proc_5_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[51 : 0] = dep_chan_data_4_5;
    assign token_in_vec_5[0] = token_4_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_20_5;
    assign in_chan_dep_data_vec_5[103 : 52] = dep_chan_data_20_5;
    assign token_in_vec_5[1] = token_20_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_21_5;
    assign in_chan_dep_data_vec_5[155 : 104] = dep_chan_data_21_5;
    assign token_in_vec_5[2] = token_21_5;
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[0];
    assign dep_chan_vld_5_20 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_20 = out_chan_dep_data_5;
    assign token_5_20 = token_out_vec_5[1];
    assign dep_chan_vld_5_21 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_21 = out_chan_dep_data_5;
    assign token_5_21 = token_out_vec_5[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0
    fft_top_hls_deadlock_detect_unit #(52, 6, 3, 3) fft_top_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0.temp_blk_n);
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0.temp1_blk_n);
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_2_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_2_U0_U.if_read);
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0;
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    assign proc_6_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_1_U0.temp1_blk_n);
    assign proc_6_data_PIPO_blk[2] = 1'b0;
    assign proc_6_start_FIFO_blk[2] = 1'b0;
    assign proc_6_TLF_FIFO_blk[2] = 1'b0;
    assign proc_6_input_sync_blk[2] = 1'b0;
    assign proc_6_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_6[2] = dl_detect_out ? proc_dep_vld_vec_6_reg[2] : (proc_6_data_FIFO_blk[2] | proc_6_data_PIPO_blk[2] | proc_6_start_FIFO_blk[2] | proc_6_TLF_FIFO_blk[2] | proc_6_input_sync_blk[2] | proc_6_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_4_6;
    assign in_chan_dep_data_vec_6[51 : 0] = dep_chan_data_4_6;
    assign token_in_vec_6[0] = token_4_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[103 : 52] = dep_chan_data_7_6;
    assign token_in_vec_6[1] = token_7_6;
    assign in_chan_dep_vld_vec_6[2] = dep_chan_vld_8_6;
    assign in_chan_dep_data_vec_6[155 : 104] = dep_chan_data_8_6;
    assign token_in_vec_6[2] = token_8_6;
    assign dep_chan_vld_6_4 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_4 = out_chan_dep_data_6;
    assign token_6_4 = token_out_vec_6[0];
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[1];
    assign dep_chan_vld_6_8 = out_chan_dep_vld_vec_6[2];
    assign dep_chan_data_6_8 = out_chan_dep_data_6;
    assign token_6_8 = token_out_vec_6[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0
    fft_top_hls_deadlock_detect_unit #(52, 7, 3, 3) fft_top_hls_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0.temp_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_2_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_2_U0_U.if_write);
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0;
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    assign proc_7_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_7_data_PIPO_blk[2] = 1'b0;
    assign proc_7_start_FIFO_blk[2] = 1'b0;
    assign proc_7_TLF_FIFO_blk[2] = 1'b0;
    assign proc_7_input_sync_blk[2] = 1'b0;
    assign proc_7_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_7[2] = dl_detect_out ? proc_dep_vld_vec_7_reg[2] : (proc_7_data_FIFO_blk[2] | proc_7_data_PIPO_blk[2] | proc_7_start_FIFO_blk[2] | proc_7_TLF_FIFO_blk[2] | proc_7_input_sync_blk[2] | proc_7_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[51 : 0] = dep_chan_data_6_7;
    assign token_in_vec_7[0] = token_6_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_20_7;
    assign in_chan_dep_data_vec_7[103 : 52] = dep_chan_data_20_7;
    assign token_in_vec_7[1] = token_20_7;
    assign in_chan_dep_vld_vec_7[2] = dep_chan_vld_21_7;
    assign in_chan_dep_data_vec_7[155 : 104] = dep_chan_data_21_7;
    assign token_in_vec_7[2] = token_21_7;
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[0];
    assign dep_chan_vld_7_20 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_20 = out_chan_dep_data_7;
    assign token_7_20 = token_out_vec_7[1];
    assign dep_chan_vld_7_21 = out_chan_dep_vld_vec_7[2];
    assign dep_chan_data_7_21 = out_chan_dep_data_7;
    assign token_7_21 = token_out_vec_7[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0
    fft_top_hls_deadlock_detect_unit #(52, 8, 3, 3) fft_top_hls_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0.temp_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0.temp1_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_3_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_3_U0_U.if_read);
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    assign proc_8_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_2_U0.temp1_blk_n);
    assign proc_8_data_PIPO_blk[2] = 1'b0;
    assign proc_8_start_FIFO_blk[2] = 1'b0;
    assign proc_8_TLF_FIFO_blk[2] = 1'b0;
    assign proc_8_input_sync_blk[2] = 1'b0;
    assign proc_8_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_8[2] = dl_detect_out ? proc_dep_vld_vec_8_reg[2] : (proc_8_data_FIFO_blk[2] | proc_8_data_PIPO_blk[2] | proc_8_start_FIFO_blk[2] | proc_8_TLF_FIFO_blk[2] | proc_8_input_sync_blk[2] | proc_8_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_6_8;
    assign in_chan_dep_data_vec_8[51 : 0] = dep_chan_data_6_8;
    assign token_in_vec_8[0] = token_6_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[103 : 52] = dep_chan_data_9_8;
    assign token_in_vec_8[1] = token_9_8;
    assign in_chan_dep_vld_vec_8[2] = dep_chan_vld_10_8;
    assign in_chan_dep_data_vec_8[155 : 104] = dep_chan_data_10_8;
    assign token_in_vec_8[2] = token_10_8;
    assign dep_chan_vld_8_6 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_6 = out_chan_dep_data_8;
    assign token_8_6 = token_out_vec_8[0];
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[1];
    assign dep_chan_vld_8_10 = out_chan_dep_vld_vec_8[2];
    assign dep_chan_data_8_10 = out_chan_dep_data_8;
    assign token_8_10 = token_out_vec_8[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0
    fft_top_hls_deadlock_detect_unit #(52, 9, 3, 3) fft_top_hls_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0.temp_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_3_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_3_U0_U.if_write);
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0;
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0;
    assign proc_9_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[51 : 0] = dep_chan_data_8_9;
    assign token_in_vec_9[0] = token_8_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_20_9;
    assign in_chan_dep_data_vec_9[103 : 52] = dep_chan_data_20_9;
    assign token_in_vec_9[1] = token_20_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_21_9;
    assign in_chan_dep_data_vec_9[155 : 104] = dep_chan_data_21_9;
    assign token_in_vec_9[2] = token_21_9;
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[0];
    assign dep_chan_vld_9_20 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_20 = out_chan_dep_data_9;
    assign token_9_20 = token_out_vec_9[1];
    assign dep_chan_vld_9_21 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_21 = out_chan_dep_data_9;
    assign token_9_21 = token_out_vec_9[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0
    fft_top_hls_deadlock_detect_unit #(52, 10, 3, 3) fft_top_hls_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0.temp_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0.temp1_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_4_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_4_U0_U.if_read);
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    assign proc_10_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_3_U0.temp1_blk_n);
    assign proc_10_data_PIPO_blk[2] = 1'b0;
    assign proc_10_start_FIFO_blk[2] = 1'b0;
    assign proc_10_TLF_FIFO_blk[2] = 1'b0;
    assign proc_10_input_sync_blk[2] = 1'b0;
    assign proc_10_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_10[2] = dl_detect_out ? proc_dep_vld_vec_10_reg[2] : (proc_10_data_FIFO_blk[2] | proc_10_data_PIPO_blk[2] | proc_10_start_FIFO_blk[2] | proc_10_TLF_FIFO_blk[2] | proc_10_input_sync_blk[2] | proc_10_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_8_10;
    assign in_chan_dep_data_vec_10[51 : 0] = dep_chan_data_8_10;
    assign token_in_vec_10[0] = token_8_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[103 : 52] = dep_chan_data_11_10;
    assign token_in_vec_10[1] = token_11_10;
    assign in_chan_dep_vld_vec_10[2] = dep_chan_vld_12_10;
    assign in_chan_dep_data_vec_10[155 : 104] = dep_chan_data_12_10;
    assign token_in_vec_10[2] = token_12_10;
    assign dep_chan_vld_10_8 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_8 = out_chan_dep_data_10;
    assign token_10_8 = token_out_vec_10[0];
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[1];
    assign dep_chan_vld_10_12 = out_chan_dep_vld_vec_10[2];
    assign dep_chan_data_10_12 = out_chan_dep_data_10;
    assign token_10_12 = token_out_vec_10[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0
    fft_top_hls_deadlock_detect_unit #(52, 11, 3, 3) fft_top_hls_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0.temp_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_4_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_4_U0_U.if_write);
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    assign proc_11_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_11_data_PIPO_blk[2] = 1'b0;
    assign proc_11_start_FIFO_blk[2] = 1'b0;
    assign proc_11_TLF_FIFO_blk[2] = 1'b0;
    assign proc_11_input_sync_blk[2] = 1'b0;
    assign proc_11_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_11[2] = dl_detect_out ? proc_dep_vld_vec_11_reg[2] : (proc_11_data_FIFO_blk[2] | proc_11_data_PIPO_blk[2] | proc_11_start_FIFO_blk[2] | proc_11_TLF_FIFO_blk[2] | proc_11_input_sync_blk[2] | proc_11_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[51 : 0] = dep_chan_data_10_11;
    assign token_in_vec_11[0] = token_10_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_20_11;
    assign in_chan_dep_data_vec_11[103 : 52] = dep_chan_data_20_11;
    assign token_in_vec_11[1] = token_20_11;
    assign in_chan_dep_vld_vec_11[2] = dep_chan_vld_21_11;
    assign in_chan_dep_data_vec_11[155 : 104] = dep_chan_data_21_11;
    assign token_in_vec_11[2] = token_21_11;
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[0];
    assign dep_chan_vld_11_20 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_20 = out_chan_dep_data_11;
    assign token_11_20 = token_out_vec_11[1];
    assign dep_chan_vld_11_21 = out_chan_dep_vld_vec_11[2];
    assign dep_chan_data_11_21 = out_chan_dep_data_11;
    assign token_11_21 = token_out_vec_11[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0
    fft_top_hls_deadlock_detect_unit #(52, 12, 3, 3) fft_top_hls_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0.temp_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0.temp1_blk_n);
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_5_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_5_U0_U.if_read);
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0;
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_4_U0.temp1_blk_n);
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0;
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0;
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_10_12;
    assign in_chan_dep_data_vec_12[51 : 0] = dep_chan_data_10_12;
    assign token_in_vec_12[0] = token_10_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_13_12;
    assign in_chan_dep_data_vec_12[103 : 52] = dep_chan_data_13_12;
    assign token_in_vec_12[1] = token_13_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_14_12;
    assign in_chan_dep_data_vec_12[155 : 104] = dep_chan_data_14_12;
    assign token_in_vec_12[2] = token_14_12;
    assign dep_chan_vld_12_10 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_10 = out_chan_dep_data_12;
    assign token_12_10 = token_out_vec_12[0];
    assign dep_chan_vld_12_13 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_13 = out_chan_dep_data_12;
    assign token_12_13 = token_out_vec_12[1];
    assign dep_chan_vld_12_14 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_14 = out_chan_dep_data_12;
    assign token_12_14 = token_out_vec_12[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0
    fft_top_hls_deadlock_detect_unit #(52, 13, 3, 3) fft_top_hls_deadlock_detect_unit_13 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0.temp_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_5_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_5_U0_U.if_write);
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0;
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0;
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    assign proc_13_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_13_data_PIPO_blk[2] = 1'b0;
    assign proc_13_start_FIFO_blk[2] = 1'b0;
    assign proc_13_TLF_FIFO_blk[2] = 1'b0;
    assign proc_13_input_sync_blk[2] = 1'b0;
    assign proc_13_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (proc_13_data_FIFO_blk[2] | proc_13_data_PIPO_blk[2] | proc_13_start_FIFO_blk[2] | proc_13_TLF_FIFO_blk[2] | proc_13_input_sync_blk[2] | proc_13_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_12_13;
    assign in_chan_dep_data_vec_13[51 : 0] = dep_chan_data_12_13;
    assign token_in_vec_13[0] = token_12_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_20_13;
    assign in_chan_dep_data_vec_13[103 : 52] = dep_chan_data_20_13;
    assign token_in_vec_13[1] = token_20_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_21_13;
    assign in_chan_dep_data_vec_13[155 : 104] = dep_chan_data_21_13;
    assign token_in_vec_13[2] = token_21_13;
    assign dep_chan_vld_13_12 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_12 = out_chan_dep_data_13;
    assign token_13_12 = token_out_vec_13[0];
    assign dep_chan_vld_13_20 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_20 = out_chan_dep_data_13;
    assign token_13_20 = token_out_vec_13[1];
    assign dep_chan_vld_13_21 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_21 = out_chan_dep_data_13;
    assign token_13_21 = token_out_vec_13[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0
    fft_top_hls_deadlock_detect_unit #(52, 14, 3, 3) fft_top_hls_deadlock_detect_unit_14 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0.temp_blk_n);
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0;
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0.temp1_blk_n);
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_6_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_6_U0_U.if_read);
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0;
    assign proc_14_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    assign proc_14_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_5_U0.temp1_blk_n);
    assign proc_14_data_PIPO_blk[2] = 1'b0;
    assign proc_14_start_FIFO_blk[2] = 1'b0;
    assign proc_14_TLF_FIFO_blk[2] = 1'b0;
    assign proc_14_input_sync_blk[2] = 1'b0;
    assign proc_14_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_14[2] = dl_detect_out ? proc_dep_vld_vec_14_reg[2] : (proc_14_data_FIFO_blk[2] | proc_14_data_PIPO_blk[2] | proc_14_start_FIFO_blk[2] | proc_14_TLF_FIFO_blk[2] | proc_14_input_sync_blk[2] | proc_14_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_12_14;
    assign in_chan_dep_data_vec_14[51 : 0] = dep_chan_data_12_14;
    assign token_in_vec_14[0] = token_12_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_15_14;
    assign in_chan_dep_data_vec_14[103 : 52] = dep_chan_data_15_14;
    assign token_in_vec_14[1] = token_15_14;
    assign in_chan_dep_vld_vec_14[2] = dep_chan_vld_16_14;
    assign in_chan_dep_data_vec_14[155 : 104] = dep_chan_data_16_14;
    assign token_in_vec_14[2] = token_16_14;
    assign dep_chan_vld_14_12 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_12 = out_chan_dep_data_14;
    assign token_14_12 = token_out_vec_14[0];
    assign dep_chan_vld_14_15 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_15 = out_chan_dep_data_14;
    assign token_14_15 = token_out_vec_14[1];
    assign dep_chan_vld_14_16 = out_chan_dep_vld_vec_14[2];
    assign dep_chan_data_14_16 = out_chan_dep_data_14;
    assign token_14_16 = token_out_vec_14[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0
    fft_top_hls_deadlock_detect_unit #(52, 15, 3, 3) fft_top_hls_deadlock_detect_unit_15 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0.temp_blk_n);
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_6_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_6_U0_U.if_write);
    assign proc_15_TLF_FIFO_blk[0] = 1'b0;
    assign proc_15_input_sync_blk[0] = 1'b0;
    assign proc_15_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0;
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0;
    assign proc_15_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    assign proc_15_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_15_data_PIPO_blk[2] = 1'b0;
    assign proc_15_start_FIFO_blk[2] = 1'b0;
    assign proc_15_TLF_FIFO_blk[2] = 1'b0;
    assign proc_15_input_sync_blk[2] = 1'b0;
    assign proc_15_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_15[2] = dl_detect_out ? proc_dep_vld_vec_15_reg[2] : (proc_15_data_FIFO_blk[2] | proc_15_data_PIPO_blk[2] | proc_15_start_FIFO_blk[2] | proc_15_TLF_FIFO_blk[2] | proc_15_input_sync_blk[2] | proc_15_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_14_15;
    assign in_chan_dep_data_vec_15[51 : 0] = dep_chan_data_14_15;
    assign token_in_vec_15[0] = token_14_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_20_15;
    assign in_chan_dep_data_vec_15[103 : 52] = dep_chan_data_20_15;
    assign token_in_vec_15[1] = token_20_15;
    assign in_chan_dep_vld_vec_15[2] = dep_chan_vld_21_15;
    assign in_chan_dep_data_vec_15[155 : 104] = dep_chan_data_21_15;
    assign token_in_vec_15[2] = token_21_15;
    assign dep_chan_vld_15_14 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_14 = out_chan_dep_data_15;
    assign token_15_14 = token_out_vec_15[0];
    assign dep_chan_vld_15_20 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_20 = out_chan_dep_data_15;
    assign token_15_20 = token_out_vec_15[1];
    assign dep_chan_vld_15_21 = out_chan_dep_vld_vec_15[2];
    assign dep_chan_data_15_21 = out_chan_dep_data_15;
    assign token_15_21 = token_out_vec_15[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0
    fft_top_hls_deadlock_detect_unit #(52, 16, 3, 3) fft_top_hls_deadlock_detect_unit_16 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_16_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0.temp_blk_n);
    assign proc_16_data_PIPO_blk[0] = 1'b0;
    assign proc_16_start_FIFO_blk[0] = 1'b0;
    assign proc_16_TLF_FIFO_blk[0] = 1'b0;
    assign proc_16_input_sync_blk[0] = 1'b0;
    assign proc_16_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (proc_16_data_FIFO_blk[0] | proc_16_data_PIPO_blk[0] | proc_16_start_FIFO_blk[0] | proc_16_TLF_FIFO_blk[0] | proc_16_input_sync_blk[0] | proc_16_output_sync_blk[0]);
    assign proc_16_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0.temp1_blk_n);
    assign proc_16_data_PIPO_blk[1] = 1'b0;
    assign proc_16_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_7_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_7_U0_U.if_read);
    assign proc_16_TLF_FIFO_blk[1] = 1'b0;
    assign proc_16_input_sync_blk[1] = 1'b0;
    assign proc_16_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (proc_16_data_FIFO_blk[1] | proc_16_data_PIPO_blk[1] | proc_16_start_FIFO_blk[1] | proc_16_TLF_FIFO_blk[1] | proc_16_input_sync_blk[1] | proc_16_output_sync_blk[1]);
    assign proc_16_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_6_U0.temp1_blk_n);
    assign proc_16_data_PIPO_blk[2] = 1'b0;
    assign proc_16_start_FIFO_blk[2] = 1'b0;
    assign proc_16_TLF_FIFO_blk[2] = 1'b0;
    assign proc_16_input_sync_blk[2] = 1'b0;
    assign proc_16_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_16[2] = dl_detect_out ? proc_dep_vld_vec_16_reg[2] : (proc_16_data_FIFO_blk[2] | proc_16_data_PIPO_blk[2] | proc_16_start_FIFO_blk[2] | proc_16_TLF_FIFO_blk[2] | proc_16_input_sync_blk[2] | proc_16_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_14_16;
    assign in_chan_dep_data_vec_16[51 : 0] = dep_chan_data_14_16;
    assign token_in_vec_16[0] = token_14_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_17_16;
    assign in_chan_dep_data_vec_16[103 : 52] = dep_chan_data_17_16;
    assign token_in_vec_16[1] = token_17_16;
    assign in_chan_dep_vld_vec_16[2] = dep_chan_vld_18_16;
    assign in_chan_dep_data_vec_16[155 : 104] = dep_chan_data_18_16;
    assign token_in_vec_16[2] = token_18_16;
    assign dep_chan_vld_16_14 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_14 = out_chan_dep_data_16;
    assign token_16_14 = token_out_vec_16[0];
    assign dep_chan_vld_16_17 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_17 = out_chan_dep_data_16;
    assign token_16_17 = token_out_vec_16[1];
    assign dep_chan_vld_16_18 = out_chan_dep_vld_vec_16[2];
    assign dep_chan_data_16_18 = out_chan_dep_data_16;
    assign token_16_18 = token_out_vec_16[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0
    fft_top_hls_deadlock_detect_unit #(52, 17, 3, 3) fft_top_hls_deadlock_detect_unit_17 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_17_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0.temp_blk_n);
    assign proc_17_data_PIPO_blk[0] = 1'b0;
    assign proc_17_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_7_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.start_for_swap_complex_ap_fixed_16_1_5_3_0_7_U0_U.if_write);
    assign proc_17_TLF_FIFO_blk[0] = 1'b0;
    assign proc_17_input_sync_blk[0] = 1'b0;
    assign proc_17_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (proc_17_data_FIFO_blk[0] | proc_17_data_PIPO_blk[0] | proc_17_start_FIFO_blk[0] | proc_17_TLF_FIFO_blk[0] | proc_17_input_sync_blk[0] | proc_17_output_sync_blk[0]);
    assign proc_17_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_17_data_PIPO_blk[1] = 1'b0;
    assign proc_17_start_FIFO_blk[1] = 1'b0;
    assign proc_17_TLF_FIFO_blk[1] = 1'b0;
    assign proc_17_input_sync_blk[1] = 1'b0;
    assign proc_17_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (proc_17_data_FIFO_blk[1] | proc_17_data_PIPO_blk[1] | proc_17_start_FIFO_blk[1] | proc_17_TLF_FIFO_blk[1] | proc_17_input_sync_blk[1] | proc_17_output_sync_blk[1]);
    assign proc_17_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_17_data_PIPO_blk[2] = 1'b0;
    assign proc_17_start_FIFO_blk[2] = 1'b0;
    assign proc_17_TLF_FIFO_blk[2] = 1'b0;
    assign proc_17_input_sync_blk[2] = 1'b0;
    assign proc_17_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_17[2] = dl_detect_out ? proc_dep_vld_vec_17_reg[2] : (proc_17_data_FIFO_blk[2] | proc_17_data_PIPO_blk[2] | proc_17_start_FIFO_blk[2] | proc_17_TLF_FIFO_blk[2] | proc_17_input_sync_blk[2] | proc_17_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_16_17;
    assign in_chan_dep_data_vec_17[51 : 0] = dep_chan_data_16_17;
    assign token_in_vec_17[0] = token_16_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_20_17;
    assign in_chan_dep_data_vec_17[103 : 52] = dep_chan_data_20_17;
    assign token_in_vec_17[1] = token_20_17;
    assign in_chan_dep_vld_vec_17[2] = dep_chan_vld_21_17;
    assign in_chan_dep_data_vec_17[155 : 104] = dep_chan_data_21_17;
    assign token_in_vec_17[2] = token_21_17;
    assign dep_chan_vld_17_16 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_16 = out_chan_dep_data_17;
    assign token_17_16 = token_out_vec_17[0];
    assign dep_chan_vld_17_20 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_20 = out_chan_dep_data_17;
    assign token_17_20 = token_out_vec_17[1];
    assign dep_chan_vld_17_21 = out_chan_dep_vld_vec_17[2];
    assign dep_chan_data_17_21 = out_chan_dep_data_17;
    assign token_17_21 = token_out_vec_17[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0
    fft_top_hls_deadlock_detect_unit #(52, 18, 2, 2) fft_top_hls_deadlock_detect_unit_18 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_18_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0.temp_blk_n);
    assign proc_18_data_PIPO_blk[0] = 1'b0;
    assign proc_18_start_FIFO_blk[0] = 1'b0;
    assign proc_18_TLF_FIFO_blk[0] = 1'b0;
    assign proc_18_input_sync_blk[0] = 1'b0;
    assign proc_18_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (proc_18_data_FIFO_blk[0] | proc_18_data_PIPO_blk[0] | proc_18_start_FIFO_blk[0] | proc_18_TLF_FIFO_blk[0] | proc_18_input_sync_blk[0] | proc_18_output_sync_blk[0]);
    assign proc_18_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0.temp1_blk_n);
    assign proc_18_data_PIPO_blk[1] = 1'b0;
    assign proc_18_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.start_for_streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_7_U0.real_start & (trans_in_cnt_8 == trans_out_cnt_8) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.start_for_streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0_U.if_read);
    assign proc_18_TLF_FIFO_blk[1] = 1'b0;
    assign proc_18_input_sync_blk[1] = 1'b0;
    assign proc_18_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (proc_18_data_FIFO_blk[1] | proc_18_data_PIPO_blk[1] | proc_18_start_FIFO_blk[1] | proc_18_TLF_FIFO_blk[1] | proc_18_input_sync_blk[1] | proc_18_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_16_18;
    assign in_chan_dep_data_vec_18[51 : 0] = dep_chan_data_16_18;
    assign token_in_vec_18[0] = token_16_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_19_18;
    assign in_chan_dep_data_vec_18[103 : 52] = dep_chan_data_19_18;
    assign token_in_vec_18[1] = token_19_18;
    assign dep_chan_vld_18_16 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_16 = out_chan_dep_data_18;
    assign token_18_16 = token_out_vec_18[0];
    assign dep_chan_vld_18_19 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_19 = out_chan_dep_data_18;
    assign token_18_19 = token_out_vec_18[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0
    fft_top_hls_deadlock_detect_unit #(52, 19, 3, 3) fft_top_hls_deadlock_detect_unit_19 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_19_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.temp_blk_n);
    assign proc_19_data_PIPO_blk[0] = 1'b0;
    assign proc_19_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.start_for_streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.start_for_streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0_U.if_write);
    assign proc_19_TLF_FIFO_blk[0] = 1'b0;
    assign proc_19_input_sync_blk[0] = 1'b0;
    assign proc_19_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (proc_19_data_FIFO_blk[0] | proc_19_data_PIPO_blk[0] | proc_19_start_FIFO_blk[0] | proc_19_TLF_FIFO_blk[0] | proc_19_input_sync_blk[0] | proc_19_output_sync_blk[0]);
    assign proc_19_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_19_data_PIPO_blk[1] = 1'b0;
    assign proc_19_start_FIFO_blk[1] = 1'b0;
    assign proc_19_TLF_FIFO_blk[1] = 1'b0;
    assign proc_19_input_sync_blk[1] = 1'b0;
    assign proc_19_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (proc_19_data_FIFO_blk[1] | proc_19_data_PIPO_blk[1] | proc_19_start_FIFO_blk[1] | proc_19_TLF_FIFO_blk[1] | proc_19_input_sync_blk[1] | proc_19_output_sync_blk[1]);
    assign proc_19_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.swap_complex_ap_fixed_16_1_5_3_0_U0.swap_complex_ap_fixed_16_1_5_3_0_1_U0.swap_complex_ap_fixed_16_1_5_3_0_2_U0.swap_complex_ap_fixed_16_1_5_3_0_3_U0.swap_complex_ap_fixed_16_1_5_3_0_4_U0.swap_complex_ap_fixed_16_1_5_3_0_5_U0.swap_complex_ap_fixed_16_1_5_3_0_6_U0.swap_complex_ap_fixed_16_1_5_3_0_7_U0.streamingDataCommutor_complex_ap_fixed_16_1_5_3_0_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_19_data_PIPO_blk[2] = 1'b0;
    assign proc_19_start_FIFO_blk[2] = 1'b0;
    assign proc_19_TLF_FIFO_blk[2] = 1'b0;
    assign proc_19_input_sync_blk[2] = 1'b0;
    assign proc_19_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_19[2] = dl_detect_out ? proc_dep_vld_vec_19_reg[2] : (proc_19_data_FIFO_blk[2] | proc_19_data_PIPO_blk[2] | proc_19_start_FIFO_blk[2] | proc_19_TLF_FIFO_blk[2] | proc_19_input_sync_blk[2] | proc_19_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_18_19;
    assign in_chan_dep_data_vec_19[51 : 0] = dep_chan_data_18_19;
    assign token_in_vec_19[0] = token_18_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_20_19;
    assign in_chan_dep_data_vec_19[103 : 52] = dep_chan_data_20_19;
    assign token_in_vec_19[1] = token_20_19;
    assign in_chan_dep_vld_vec_19[2] = dep_chan_vld_21_19;
    assign in_chan_dep_data_vec_19[155 : 104] = dep_chan_data_21_19;
    assign token_in_vec_19[2] = token_21_19;
    assign dep_chan_vld_19_18 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_18 = out_chan_dep_data_19;
    assign token_19_18 = token_out_vec_19[0];
    assign dep_chan_vld_19_20 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_20 = out_chan_dep_data_19;
    assign token_19_20 = token_out_vec_19[1];
    assign dep_chan_vld_19_21 = out_chan_dep_vld_vec_19[2];
    assign dep_chan_data_19_21 = out_chan_dep_data_19;
    assign token_19_21 = token_out_vec_19[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0
    fft_top_hls_deadlock_detect_unit #(52, 20, 9, 9) fft_top_hls_deadlock_detect_unit_20 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_20_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_20_data_PIPO_blk[0] = 1'b0;
    assign proc_20_start_FIFO_blk[0] = 1'b0;
    assign proc_20_TLF_FIFO_blk[0] = 1'b0;
    assign proc_20_input_sync_blk[0] = 1'b0;
    assign proc_20_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (proc_20_data_FIFO_blk[0] | proc_20_data_PIPO_blk[0] | proc_20_start_FIFO_blk[0] | proc_20_TLF_FIFO_blk[0] | proc_20_input_sync_blk[0] | proc_20_output_sync_blk[0]);
    assign proc_20_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_20_data_PIPO_blk[1] = 1'b0;
    assign proc_20_start_FIFO_blk[1] = 1'b0;
    assign proc_20_TLF_FIFO_blk[1] = 1'b0;
    assign proc_20_input_sync_blk[1] = 1'b0;
    assign proc_20_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (proc_20_data_FIFO_blk[1] | proc_20_data_PIPO_blk[1] | proc_20_start_FIFO_blk[1] | proc_20_TLF_FIFO_blk[1] | proc_20_input_sync_blk[1] | proc_20_output_sync_blk[1]);
    assign proc_20_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_20_data_PIPO_blk[2] = 1'b0;
    assign proc_20_start_FIFO_blk[2] = 1'b0;
    assign proc_20_TLF_FIFO_blk[2] = 1'b0;
    assign proc_20_input_sync_blk[2] = 1'b0;
    assign proc_20_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_20[2] = dl_detect_out ? proc_dep_vld_vec_20_reg[2] : (proc_20_data_FIFO_blk[2] | proc_20_data_PIPO_blk[2] | proc_20_start_FIFO_blk[2] | proc_20_TLF_FIFO_blk[2] | proc_20_input_sync_blk[2] | proc_20_output_sync_blk[2]);
    assign proc_20_data_FIFO_blk[3] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_20_data_PIPO_blk[3] = 1'b0;
    assign proc_20_start_FIFO_blk[3] = 1'b0;
    assign proc_20_TLF_FIFO_blk[3] = 1'b0;
    assign proc_20_input_sync_blk[3] = 1'b0;
    assign proc_20_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_20[3] = dl_detect_out ? proc_dep_vld_vec_20_reg[3] : (proc_20_data_FIFO_blk[3] | proc_20_data_PIPO_blk[3] | proc_20_start_FIFO_blk[3] | proc_20_TLF_FIFO_blk[3] | proc_20_input_sync_blk[3] | proc_20_output_sync_blk[3]);
    assign proc_20_data_FIFO_blk[4] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_20_data_PIPO_blk[4] = 1'b0;
    assign proc_20_start_FIFO_blk[4] = 1'b0;
    assign proc_20_TLF_FIFO_blk[4] = 1'b0;
    assign proc_20_input_sync_blk[4] = 1'b0;
    assign proc_20_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_20[4] = dl_detect_out ? proc_dep_vld_vec_20_reg[4] : (proc_20_data_FIFO_blk[4] | proc_20_data_PIPO_blk[4] | proc_20_start_FIFO_blk[4] | proc_20_TLF_FIFO_blk[4] | proc_20_input_sync_blk[4] | proc_20_output_sync_blk[4]);
    assign proc_20_data_FIFO_blk[5] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_20_data_PIPO_blk[5] = 1'b0;
    assign proc_20_start_FIFO_blk[5] = 1'b0;
    assign proc_20_TLF_FIFO_blk[5] = 1'b0;
    assign proc_20_input_sync_blk[5] = 1'b0;
    assign proc_20_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_20[5] = dl_detect_out ? proc_dep_vld_vec_20_reg[5] : (proc_20_data_FIFO_blk[5] | proc_20_data_PIPO_blk[5] | proc_20_start_FIFO_blk[5] | proc_20_TLF_FIFO_blk[5] | proc_20_input_sync_blk[5] | proc_20_output_sync_blk[5]);
    assign proc_20_data_FIFO_blk[6] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_20_data_PIPO_blk[6] = 1'b0;
    assign proc_20_start_FIFO_blk[6] = 1'b0;
    assign proc_20_TLF_FIFO_blk[6] = 1'b0;
    assign proc_20_input_sync_blk[6] = 1'b0;
    assign proc_20_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_20[6] = dl_detect_out ? proc_dep_vld_vec_20_reg[6] : (proc_20_data_FIFO_blk[6] | proc_20_data_PIPO_blk[6] | proc_20_start_FIFO_blk[6] | proc_20_TLF_FIFO_blk[6] | proc_20_input_sync_blk[6] | proc_20_output_sync_blk[6]);
    assign proc_20_data_FIFO_blk[7] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_20_data_PIPO_blk[7] = 1'b0;
    assign proc_20_start_FIFO_blk[7] = 1'b0;
    assign proc_20_TLF_FIFO_blk[7] = 1'b0;
    assign proc_20_input_sync_blk[7] = 1'b0;
    assign proc_20_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_20[7] = dl_detect_out ? proc_dep_vld_vec_20_reg[7] : (proc_20_data_FIFO_blk[7] | proc_20_data_PIPO_blk[7] | proc_20_start_FIFO_blk[7] | proc_20_TLF_FIFO_blk[7] | proc_20_input_sync_blk[7] | proc_20_output_sync_blk[7]);
    assign proc_20_data_FIFO_blk[8] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_20_data_PIPO_blk[8] = 1'b0;
    assign proc_20_start_FIFO_blk[8] = 1'b0;
    assign proc_20_TLF_FIFO_blk[8] = 1'b0;
    assign proc_20_input_sync_blk[8] = 1'b0;
    assign proc_20_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_20[8] = dl_detect_out ? proc_dep_vld_vec_20_reg[8] : (proc_20_data_FIFO_blk[8] | proc_20_data_PIPO_blk[8] | proc_20_start_FIFO_blk[8] | proc_20_TLF_FIFO_blk[8] | proc_20_input_sync_blk[8] | proc_20_output_sync_blk[8]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_3_20;
    assign in_chan_dep_data_vec_20[51 : 0] = dep_chan_data_3_20;
    assign token_in_vec_20[0] = token_3_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_5_20;
    assign in_chan_dep_data_vec_20[103 : 52] = dep_chan_data_5_20;
    assign token_in_vec_20[1] = token_5_20;
    assign in_chan_dep_vld_vec_20[2] = dep_chan_vld_7_20;
    assign in_chan_dep_data_vec_20[155 : 104] = dep_chan_data_7_20;
    assign token_in_vec_20[2] = token_7_20;
    assign in_chan_dep_vld_vec_20[3] = dep_chan_vld_9_20;
    assign in_chan_dep_data_vec_20[207 : 156] = dep_chan_data_9_20;
    assign token_in_vec_20[3] = token_9_20;
    assign in_chan_dep_vld_vec_20[4] = dep_chan_vld_11_20;
    assign in_chan_dep_data_vec_20[259 : 208] = dep_chan_data_11_20;
    assign token_in_vec_20[4] = token_11_20;
    assign in_chan_dep_vld_vec_20[5] = dep_chan_vld_13_20;
    assign in_chan_dep_data_vec_20[311 : 260] = dep_chan_data_13_20;
    assign token_in_vec_20[5] = token_13_20;
    assign in_chan_dep_vld_vec_20[6] = dep_chan_vld_15_20;
    assign in_chan_dep_data_vec_20[363 : 312] = dep_chan_data_15_20;
    assign token_in_vec_20[6] = token_15_20;
    assign in_chan_dep_vld_vec_20[7] = dep_chan_vld_17_20;
    assign in_chan_dep_data_vec_20[415 : 364] = dep_chan_data_17_20;
    assign token_in_vec_20[7] = token_17_20;
    assign in_chan_dep_vld_vec_20[8] = dep_chan_vld_19_20;
    assign in_chan_dep_data_vec_20[467 : 416] = dep_chan_data_19_20;
    assign token_in_vec_20[8] = token_19_20;
    assign dep_chan_vld_20_3 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_3 = out_chan_dep_data_20;
    assign token_20_3 = token_out_vec_20[0];
    assign dep_chan_vld_20_5 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_5 = out_chan_dep_data_20;
    assign token_20_5 = token_out_vec_20[1];
    assign dep_chan_vld_20_7 = out_chan_dep_vld_vec_20[2];
    assign dep_chan_data_20_7 = out_chan_dep_data_20;
    assign token_20_7 = token_out_vec_20[2];
    assign dep_chan_vld_20_9 = out_chan_dep_vld_vec_20[3];
    assign dep_chan_data_20_9 = out_chan_dep_data_20;
    assign token_20_9 = token_out_vec_20[3];
    assign dep_chan_vld_20_11 = out_chan_dep_vld_vec_20[4];
    assign dep_chan_data_20_11 = out_chan_dep_data_20;
    assign token_20_11 = token_out_vec_20[4];
    assign dep_chan_vld_20_13 = out_chan_dep_vld_vec_20[5];
    assign dep_chan_data_20_13 = out_chan_dep_data_20;
    assign token_20_13 = token_out_vec_20[5];
    assign dep_chan_vld_20_15 = out_chan_dep_vld_vec_20[6];
    assign dep_chan_data_20_15 = out_chan_dep_data_20;
    assign token_20_15 = token_out_vec_20[6];
    assign dep_chan_vld_20_17 = out_chan_dep_vld_vec_20[7];
    assign dep_chan_data_20_17 = out_chan_dep_data_20;
    assign token_20_17 = token_out_vec_20[7];
    assign dep_chan_vld_20_19 = out_chan_dep_vld_vec_20[8];
    assign dep_chan_data_20_19 = out_chan_dep_data_20;
    assign token_20_19 = token_out_vec_20[8];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0
    fft_top_hls_deadlock_detect_unit #(52, 21, 10, 10) fft_top_hls_deadlock_detect_unit_21 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_21_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_21_data_PIPO_blk[0] = 1'b0;
    assign proc_21_start_FIFO_blk[0] = 1'b0;
    assign proc_21_TLF_FIFO_blk[0] = 1'b0;
    assign proc_21_input_sync_blk[0] = 1'b0;
    assign proc_21_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (proc_21_data_FIFO_blk[0] | proc_21_data_PIPO_blk[0] | proc_21_start_FIFO_blk[0] | proc_21_TLF_FIFO_blk[0] | proc_21_input_sync_blk[0] | proc_21_output_sync_blk[0]);
    assign proc_21_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_21_data_PIPO_blk[1] = 1'b0;
    assign proc_21_start_FIFO_blk[1] = 1'b0;
    assign proc_21_TLF_FIFO_blk[1] = 1'b0;
    assign proc_21_input_sync_blk[1] = 1'b0;
    assign proc_21_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_21[1] = dl_detect_out ? proc_dep_vld_vec_21_reg[1] : (proc_21_data_FIFO_blk[1] | proc_21_data_PIPO_blk[1] | proc_21_start_FIFO_blk[1] | proc_21_TLF_FIFO_blk[1] | proc_21_input_sync_blk[1] | proc_21_output_sync_blk[1]);
    assign proc_21_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_21_data_PIPO_blk[2] = 1'b0;
    assign proc_21_start_FIFO_blk[2] = 1'b0;
    assign proc_21_TLF_FIFO_blk[2] = 1'b0;
    assign proc_21_input_sync_blk[2] = 1'b0;
    assign proc_21_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_21[2] = dl_detect_out ? proc_dep_vld_vec_21_reg[2] : (proc_21_data_FIFO_blk[2] | proc_21_data_PIPO_blk[2] | proc_21_start_FIFO_blk[2] | proc_21_TLF_FIFO_blk[2] | proc_21_input_sync_blk[2] | proc_21_output_sync_blk[2]);
    assign proc_21_data_FIFO_blk[3] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_21_data_PIPO_blk[3] = 1'b0;
    assign proc_21_start_FIFO_blk[3] = 1'b0;
    assign proc_21_TLF_FIFO_blk[3] = 1'b0;
    assign proc_21_input_sync_blk[3] = 1'b0;
    assign proc_21_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_21[3] = dl_detect_out ? proc_dep_vld_vec_21_reg[3] : (proc_21_data_FIFO_blk[3] | proc_21_data_PIPO_blk[3] | proc_21_start_FIFO_blk[3] | proc_21_TLF_FIFO_blk[3] | proc_21_input_sync_blk[3] | proc_21_output_sync_blk[3]);
    assign proc_21_data_FIFO_blk[4] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_21_data_PIPO_blk[4] = 1'b0;
    assign proc_21_start_FIFO_blk[4] = 1'b0;
    assign proc_21_TLF_FIFO_blk[4] = 1'b0;
    assign proc_21_input_sync_blk[4] = 1'b0;
    assign proc_21_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_21[4] = dl_detect_out ? proc_dep_vld_vec_21_reg[4] : (proc_21_data_FIFO_blk[4] | proc_21_data_PIPO_blk[4] | proc_21_start_FIFO_blk[4] | proc_21_TLF_FIFO_blk[4] | proc_21_input_sync_blk[4] | proc_21_output_sync_blk[4]);
    assign proc_21_data_FIFO_blk[5] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_21_data_PIPO_blk[5] = 1'b0;
    assign proc_21_start_FIFO_blk[5] = 1'b0;
    assign proc_21_TLF_FIFO_blk[5] = 1'b0;
    assign proc_21_input_sync_blk[5] = 1'b0;
    assign proc_21_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_21[5] = dl_detect_out ? proc_dep_vld_vec_21_reg[5] : (proc_21_data_FIFO_blk[5] | proc_21_data_PIPO_blk[5] | proc_21_start_FIFO_blk[5] | proc_21_TLF_FIFO_blk[5] | proc_21_input_sync_blk[5] | proc_21_output_sync_blk[5]);
    assign proc_21_data_FIFO_blk[6] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_21_data_PIPO_blk[6] = 1'b0;
    assign proc_21_start_FIFO_blk[6] = 1'b0;
    assign proc_21_TLF_FIFO_blk[6] = 1'b0;
    assign proc_21_input_sync_blk[6] = 1'b0;
    assign proc_21_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_21[6] = dl_detect_out ? proc_dep_vld_vec_21_reg[6] : (proc_21_data_FIFO_blk[6] | proc_21_data_PIPO_blk[6] | proc_21_start_FIFO_blk[6] | proc_21_TLF_FIFO_blk[6] | proc_21_input_sync_blk[6] | proc_21_output_sync_blk[6]);
    assign proc_21_data_FIFO_blk[7] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_21_data_PIPO_blk[7] = 1'b0;
    assign proc_21_start_FIFO_blk[7] = 1'b0;
    assign proc_21_TLF_FIFO_blk[7] = 1'b0;
    assign proc_21_input_sync_blk[7] = 1'b0;
    assign proc_21_output_sync_blk[7] = 1'b0;
    assign proc_dep_vld_vec_21[7] = dl_detect_out ? proc_dep_vld_vec_21_reg[7] : (proc_21_data_FIFO_blk[7] | proc_21_data_PIPO_blk[7] | proc_21_start_FIFO_blk[7] | proc_21_TLF_FIFO_blk[7] | proc_21_input_sync_blk[7] | proc_21_output_sync_blk[7]);
    assign proc_21_data_FIFO_blk[8] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.p_fftInData_reOrdered_blk_n);
    assign proc_21_data_PIPO_blk[8] = 1'b0;
    assign proc_21_start_FIFO_blk[8] = 1'b0;
    assign proc_21_TLF_FIFO_blk[8] = 1'b0;
    assign proc_21_input_sync_blk[8] = 1'b0;
    assign proc_21_output_sync_blk[8] = 1'b0;
    assign proc_dep_vld_vec_21[8] = dl_detect_out ? proc_dep_vld_vec_21_reg[8] : (proc_21_data_FIFO_blk[8] | proc_21_data_PIPO_blk[8] | proc_21_start_FIFO_blk[8] | proc_21_TLF_FIFO_blk[8] | proc_21_input_sync_blk[8] | proc_21_output_sync_blk[8]);
    assign proc_21_data_FIFO_blk[9] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStageKernelS2S_8_U0.fftOutData_local_blk_n);
    assign proc_21_data_PIPO_blk[9] = 1'b0;
    assign proc_21_start_FIFO_blk[9] = 1'b0;
    assign proc_21_TLF_FIFO_blk[9] = 1'b0;
    assign proc_21_input_sync_blk[9] = 1'b0;
    assign proc_21_output_sync_blk[9] = 1'b0;
    assign proc_dep_vld_vec_21[9] = dl_detect_out ? proc_dep_vld_vec_21_reg[9] : (proc_21_data_FIFO_blk[9] | proc_21_data_PIPO_blk[9] | proc_21_start_FIFO_blk[9] | proc_21_TLF_FIFO_blk[9] | proc_21_input_sync_blk[9] | proc_21_output_sync_blk[9]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_3_21;
    assign in_chan_dep_data_vec_21[51 : 0] = dep_chan_data_3_21;
    assign token_in_vec_21[0] = token_3_21;
    assign in_chan_dep_vld_vec_21[1] = dep_chan_vld_5_21;
    assign in_chan_dep_data_vec_21[103 : 52] = dep_chan_data_5_21;
    assign token_in_vec_21[1] = token_5_21;
    assign in_chan_dep_vld_vec_21[2] = dep_chan_vld_7_21;
    assign in_chan_dep_data_vec_21[155 : 104] = dep_chan_data_7_21;
    assign token_in_vec_21[2] = token_7_21;
    assign in_chan_dep_vld_vec_21[3] = dep_chan_vld_9_21;
    assign in_chan_dep_data_vec_21[207 : 156] = dep_chan_data_9_21;
    assign token_in_vec_21[3] = token_9_21;
    assign in_chan_dep_vld_vec_21[4] = dep_chan_vld_11_21;
    assign in_chan_dep_data_vec_21[259 : 208] = dep_chan_data_11_21;
    assign token_in_vec_21[4] = token_11_21;
    assign in_chan_dep_vld_vec_21[5] = dep_chan_vld_13_21;
    assign in_chan_dep_data_vec_21[311 : 260] = dep_chan_data_13_21;
    assign token_in_vec_21[5] = token_13_21;
    assign in_chan_dep_vld_vec_21[6] = dep_chan_vld_15_21;
    assign in_chan_dep_data_vec_21[363 : 312] = dep_chan_data_15_21;
    assign token_in_vec_21[6] = token_15_21;
    assign in_chan_dep_vld_vec_21[7] = dep_chan_vld_17_21;
    assign in_chan_dep_data_vec_21[415 : 364] = dep_chan_data_17_21;
    assign token_in_vec_21[7] = token_17_21;
    assign in_chan_dep_vld_vec_21[8] = dep_chan_vld_19_21;
    assign in_chan_dep_data_vec_21[467 : 416] = dep_chan_data_19_21;
    assign token_in_vec_21[8] = token_19_21;
    assign in_chan_dep_vld_vec_21[9] = dep_chan_vld_22_21;
    assign in_chan_dep_data_vec_21[519 : 468] = dep_chan_data_22_21;
    assign token_in_vec_21[9] = token_22_21;
    assign dep_chan_vld_21_3 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_3 = out_chan_dep_data_21;
    assign token_21_3 = token_out_vec_21[0];
    assign dep_chan_vld_21_5 = out_chan_dep_vld_vec_21[1];
    assign dep_chan_data_21_5 = out_chan_dep_data_21;
    assign token_21_5 = token_out_vec_21[1];
    assign dep_chan_vld_21_7 = out_chan_dep_vld_vec_21[2];
    assign dep_chan_data_21_7 = out_chan_dep_data_21;
    assign token_21_7 = token_out_vec_21[2];
    assign dep_chan_vld_21_9 = out_chan_dep_vld_vec_21[3];
    assign dep_chan_data_21_9 = out_chan_dep_data_21;
    assign token_21_9 = token_out_vec_21[3];
    assign dep_chan_vld_21_11 = out_chan_dep_vld_vec_21[4];
    assign dep_chan_data_21_11 = out_chan_dep_data_21;
    assign token_21_11 = token_out_vec_21[4];
    assign dep_chan_vld_21_13 = out_chan_dep_vld_vec_21[5];
    assign dep_chan_data_21_13 = out_chan_dep_data_21;
    assign token_21_13 = token_out_vec_21[5];
    assign dep_chan_vld_21_15 = out_chan_dep_vld_vec_21[6];
    assign dep_chan_data_21_15 = out_chan_dep_data_21;
    assign token_21_15 = token_out_vec_21[6];
    assign dep_chan_vld_21_17 = out_chan_dep_vld_vec_21[7];
    assign dep_chan_data_21_17 = out_chan_dep_data_21;
    assign token_21_17 = token_out_vec_21[7];
    assign dep_chan_vld_21_19 = out_chan_dep_vld_vec_21[8];
    assign dep_chan_data_21_19 = out_chan_dep_data_21;
    assign token_21_19 = token_out_vec_21[8];
    assign dep_chan_vld_21_22 = out_chan_dep_vld_vec_21[9];
    assign dep_chan_data_21_22 = out_chan_dep_data_21;
    assign token_21_22 = token_out_vec_21[9];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.streamingDataCommutor_complex_ap_fixed_16_3_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 22, 3, 3) fft_top_hls_deadlock_detect_unit_22 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_22),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_22),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_22),
        .token_in_vec(token_in_vec_22),
        .dl_detect_in(dl_detect_out),
        .origin(origin[22]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_22),
        .out_chan_dep_data(out_chan_dep_data_22),
        .token_out_vec(token_out_vec_22),
        .dl_detect_out(dl_in_vec[22]));

    assign proc_22_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.streamingDataCommutor_complex_ap_fixed_16_3_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_22_data_PIPO_blk[0] = 1'b0;
    assign proc_22_start_FIFO_blk[0] = 1'b0;
    assign proc_22_TLF_FIFO_blk[0] = 1'b0;
    assign proc_22_input_sync_blk[0] = 1'b0;
    assign proc_22_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_22[0] = dl_detect_out ? proc_dep_vld_vec_22_reg[0] : (proc_22_data_FIFO_blk[0] | proc_22_data_PIPO_blk[0] | proc_22_start_FIFO_blk[0] | proc_22_TLF_FIFO_blk[0] | proc_22_input_sync_blk[0] | proc_22_output_sync_blk[0]);
    assign proc_22_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.streamingDataCommutor_complex_ap_fixed_16_3_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_22_data_PIPO_blk[1] = 1'b0;
    assign proc_22_start_FIFO_blk[1] = 1'b0;
    assign proc_22_TLF_FIFO_blk[1] = 1'b0;
    assign proc_22_input_sync_blk[1] = 1'b0;
    assign proc_22_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_22[1] = dl_detect_out ? proc_dep_vld_vec_22_reg[1] : (proc_22_data_FIFO_blk[1] | proc_22_data_PIPO_blk[1] | proc_22_start_FIFO_blk[1] | proc_22_TLF_FIFO_blk[1] | proc_22_input_sync_blk[1] | proc_22_output_sync_blk[1]);
    assign proc_22_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.streamingDataCommutor_complex_ap_fixed_16_3_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_22_data_PIPO_blk[2] = 1'b0;
    assign proc_22_start_FIFO_blk[2] = 1'b0;
    assign proc_22_TLF_FIFO_blk[2] = 1'b0;
    assign proc_22_input_sync_blk[2] = 1'b0;
    assign proc_22_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_22[2] = dl_detect_out ? proc_dep_vld_vec_22_reg[2] : (proc_22_data_FIFO_blk[2] | proc_22_data_PIPO_blk[2] | proc_22_start_FIFO_blk[2] | proc_22_TLF_FIFO_blk[2] | proc_22_input_sync_blk[2] | proc_22_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_22_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_22_reg <= proc_dep_vld_vec_22;
        end
    end
    assign in_chan_dep_vld_vec_22[0] = dep_chan_vld_21_22;
    assign in_chan_dep_data_vec_22[51 : 0] = dep_chan_data_21_22;
    assign token_in_vec_22[0] = token_21_22;
    assign in_chan_dep_vld_vec_22[1] = dep_chan_vld_23_22;
    assign in_chan_dep_data_vec_22[103 : 52] = dep_chan_data_23_22;
    assign token_in_vec_22[1] = token_23_22;
    assign in_chan_dep_vld_vec_22[2] = dep_chan_vld_24_22;
    assign in_chan_dep_data_vec_22[155 : 104] = dep_chan_data_24_22;
    assign token_in_vec_22[2] = token_24_22;
    assign dep_chan_vld_22_21 = out_chan_dep_vld_vec_22[0];
    assign dep_chan_data_22_21 = out_chan_dep_data_22;
    assign token_22_21 = token_out_vec_22[0];
    assign dep_chan_vld_22_23 = out_chan_dep_vld_vec_22[1];
    assign dep_chan_data_22_23 = out_chan_dep_data_22;
    assign token_22_23 = token_out_vec_22[1];
    assign dep_chan_vld_22_24 = out_chan_dep_vld_vec_22[2];
    assign dep_chan_data_22_24 = out_chan_dep_data_22;
    assign token_22_24 = token_out_vec_22[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0
    fft_top_hls_deadlock_detect_unit #(52, 23, 1, 1) fft_top_hls_deadlock_detect_unit_23 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_23),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_23),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_23),
        .token_in_vec(token_in_vec_23),
        .dl_detect_in(dl_detect_out),
        .origin(origin[23]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_23),
        .out_chan_dep_data(out_chan_dep_data_23),
        .token_out_vec(token_out_vec_23),
        .dl_detect_out(dl_in_vec[23]));

    assign proc_23_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStageKernelS2S_U0.fftOutData_local2_blk_n);
    assign proc_23_data_PIPO_blk[0] = 1'b0;
    assign proc_23_start_FIFO_blk[0] = 1'b0;
    assign proc_23_TLF_FIFO_blk[0] = 1'b0;
    assign proc_23_input_sync_blk[0] = 1'b0;
    assign proc_23_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_23[0] = dl_detect_out ? proc_dep_vld_vec_23_reg[0] : (proc_23_data_FIFO_blk[0] | proc_23_data_PIPO_blk[0] | proc_23_start_FIFO_blk[0] | proc_23_TLF_FIFO_blk[0] | proc_23_input_sync_blk[0] | proc_23_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_23_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_23_reg <= proc_dep_vld_vec_23;
        end
    end
    assign in_chan_dep_vld_vec_23[0] = dep_chan_vld_22_23;
    assign in_chan_dep_data_vec_23[51 : 0] = dep_chan_data_22_23;
    assign token_in_vec_23[0] = token_22_23;
    assign dep_chan_vld_23_22 = out_chan_dep_vld_vec_23[0];
    assign dep_chan_data_23_22 = out_chan_dep_data_23;
    assign token_23_22 = token_out_vec_23[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStageKernelS2S_U0
    fft_top_hls_deadlock_detect_unit #(52, 24, 2, 2) fft_top_hls_deadlock_detect_unit_24 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_24),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_24),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_24),
        .token_in_vec(token_in_vec_24),
        .dl_detect_in(dl_detect_out),
        .origin(origin[24]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_24),
        .out_chan_dep_data(out_chan_dep_data_24),
        .token_out_vec(token_out_vec_24),
        .dl_detect_out(dl_in_vec[24]));

    assign proc_24_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStageKernelS2S_U0.fftOutData_local2_blk_n);
    assign proc_24_data_PIPO_blk[0] = 1'b0;
    assign proc_24_start_FIFO_blk[0] = 1'b0;
    assign proc_24_TLF_FIFO_blk[0] = 1'b0;
    assign proc_24_input_sync_blk[0] = 1'b0;
    assign proc_24_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_24[0] = dl_detect_out ? proc_dep_vld_vec_24_reg[0] : (proc_24_data_FIFO_blk[0] | proc_24_data_PIPO_blk[0] | proc_24_start_FIFO_blk[0] | proc_24_TLF_FIFO_blk[0] | proc_24_input_sync_blk[0] | proc_24_output_sync_blk[0]);
    assign proc_24_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStageKernelS2S_U0.fftOutData_local_blk_n);
    assign proc_24_data_PIPO_blk[1] = 1'b0;
    assign proc_24_start_FIFO_blk[1] = 1'b0;
    assign proc_24_TLF_FIFO_blk[1] = 1'b0;
    assign proc_24_input_sync_blk[1] = 1'b0;
    assign proc_24_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_24[1] = dl_detect_out ? proc_dep_vld_vec_24_reg[1] : (proc_24_data_FIFO_blk[1] | proc_24_data_PIPO_blk[1] | proc_24_start_FIFO_blk[1] | proc_24_TLF_FIFO_blk[1] | proc_24_input_sync_blk[1] | proc_24_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_24_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_24_reg <= proc_dep_vld_vec_24;
        end
    end
    assign in_chan_dep_vld_vec_24[0] = dep_chan_vld_22_24;
    assign in_chan_dep_data_vec_24[51 : 0] = dep_chan_data_22_24;
    assign token_in_vec_24[0] = token_22_24;
    assign in_chan_dep_vld_vec_24[1] = dep_chan_vld_25_24;
    assign in_chan_dep_data_vec_24[103 : 52] = dep_chan_data_25_24;
    assign token_in_vec_24[1] = token_25_24;
    assign dep_chan_vld_24_22 = out_chan_dep_vld_vec_24[0];
    assign dep_chan_data_24_22 = out_chan_dep_data_24;
    assign token_24_22 = token_out_vec_24[0];
    assign dep_chan_vld_24_25 = out_chan_dep_vld_vec_24[1];
    assign dep_chan_data_24_25 = out_chan_dep_data_24;
    assign token_24_25 = token_out_vec_24[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.streamingDataCommutor_complex_ap_fixed_16_4_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 25, 3, 3) fft_top_hls_deadlock_detect_unit_25 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_25),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_25),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_25),
        .token_in_vec(token_in_vec_25),
        .dl_detect_in(dl_detect_out),
        .origin(origin[25]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_25),
        .out_chan_dep_data(out_chan_dep_data_25),
        .token_out_vec(token_out_vec_25),
        .dl_detect_out(dl_in_vec[25]));

    assign proc_25_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.streamingDataCommutor_complex_ap_fixed_16_4_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_25_data_PIPO_blk[0] = 1'b0;
    assign proc_25_start_FIFO_blk[0] = 1'b0;
    assign proc_25_TLF_FIFO_blk[0] = 1'b0;
    assign proc_25_input_sync_blk[0] = 1'b0;
    assign proc_25_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_25[0] = dl_detect_out ? proc_dep_vld_vec_25_reg[0] : (proc_25_data_FIFO_blk[0] | proc_25_data_PIPO_blk[0] | proc_25_start_FIFO_blk[0] | proc_25_TLF_FIFO_blk[0] | proc_25_input_sync_blk[0] | proc_25_output_sync_blk[0]);
    assign proc_25_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.streamingDataCommutor_complex_ap_fixed_16_4_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_25_data_PIPO_blk[1] = 1'b0;
    assign proc_25_start_FIFO_blk[1] = 1'b0;
    assign proc_25_TLF_FIFO_blk[1] = 1'b0;
    assign proc_25_input_sync_blk[1] = 1'b0;
    assign proc_25_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_25[1] = dl_detect_out ? proc_dep_vld_vec_25_reg[1] : (proc_25_data_FIFO_blk[1] | proc_25_data_PIPO_blk[1] | proc_25_start_FIFO_blk[1] | proc_25_TLF_FIFO_blk[1] | proc_25_input_sync_blk[1] | proc_25_output_sync_blk[1]);
    assign proc_25_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.streamingDataCommutor_complex_ap_fixed_16_4_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_25_data_PIPO_blk[2] = 1'b0;
    assign proc_25_start_FIFO_blk[2] = 1'b0;
    assign proc_25_TLF_FIFO_blk[2] = 1'b0;
    assign proc_25_input_sync_blk[2] = 1'b0;
    assign proc_25_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_25[2] = dl_detect_out ? proc_dep_vld_vec_25_reg[2] : (proc_25_data_FIFO_blk[2] | proc_25_data_PIPO_blk[2] | proc_25_start_FIFO_blk[2] | proc_25_TLF_FIFO_blk[2] | proc_25_input_sync_blk[2] | proc_25_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_25_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_25_reg <= proc_dep_vld_vec_25;
        end
    end
    assign in_chan_dep_vld_vec_25[0] = dep_chan_vld_24_25;
    assign in_chan_dep_data_vec_25[51 : 0] = dep_chan_data_24_25;
    assign token_in_vec_25[0] = token_24_25;
    assign in_chan_dep_vld_vec_25[1] = dep_chan_vld_26_25;
    assign in_chan_dep_data_vec_25[103 : 52] = dep_chan_data_26_25;
    assign token_in_vec_25[1] = token_26_25;
    assign in_chan_dep_vld_vec_25[2] = dep_chan_vld_27_25;
    assign in_chan_dep_data_vec_25[155 : 104] = dep_chan_data_27_25;
    assign token_in_vec_25[2] = token_27_25;
    assign dep_chan_vld_25_24 = out_chan_dep_vld_vec_25[0];
    assign dep_chan_data_25_24 = out_chan_dep_data_25;
    assign token_25_24 = token_out_vec_25[0];
    assign dep_chan_vld_25_26 = out_chan_dep_vld_vec_25[1];
    assign dep_chan_data_25_26 = out_chan_dep_data_25;
    assign token_25_26 = token_out_vec_25[1];
    assign dep_chan_vld_25_27 = out_chan_dep_vld_vec_25[2];
    assign dep_chan_data_25_27 = out_chan_dep_data_25;
    assign token_25_27 = token_out_vec_25[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0
    fft_top_hls_deadlock_detect_unit #(52, 26, 1, 1) fft_top_hls_deadlock_detect_unit_26 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_26),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_26),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_26),
        .token_in_vec(token_in_vec_26),
        .dl_detect_in(dl_detect_out),
        .origin(origin[26]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_26),
        .out_chan_dep_data(out_chan_dep_data_26),
        .token_out_vec(token_out_vec_26),
        .dl_detect_out(dl_in_vec[26]));

    assign proc_26_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_1_U0.fftOutData_local2_blk_n);
    assign proc_26_data_PIPO_blk[0] = 1'b0;
    assign proc_26_start_FIFO_blk[0] = 1'b0;
    assign proc_26_TLF_FIFO_blk[0] = 1'b0;
    assign proc_26_input_sync_blk[0] = 1'b0;
    assign proc_26_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_26[0] = dl_detect_out ? proc_dep_vld_vec_26_reg[0] : (proc_26_data_FIFO_blk[0] | proc_26_data_PIPO_blk[0] | proc_26_start_FIFO_blk[0] | proc_26_TLF_FIFO_blk[0] | proc_26_input_sync_blk[0] | proc_26_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_26_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_26_reg <= proc_dep_vld_vec_26;
        end
    end
    assign in_chan_dep_vld_vec_26[0] = dep_chan_vld_25_26;
    assign in_chan_dep_data_vec_26[51 : 0] = dep_chan_data_25_26;
    assign token_in_vec_26[0] = token_25_26;
    assign dep_chan_vld_26_25 = out_chan_dep_vld_vec_26[0];
    assign dep_chan_data_26_25 = out_chan_dep_data_26;
    assign token_26_25 = token_out_vec_26[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_1_U0
    fft_top_hls_deadlock_detect_unit #(52, 27, 2, 2) fft_top_hls_deadlock_detect_unit_27 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_27),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_27),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_27),
        .token_in_vec(token_in_vec_27),
        .dl_detect_in(dl_detect_out),
        .origin(origin[27]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_27),
        .out_chan_dep_data(out_chan_dep_data_27),
        .token_out_vec(token_out_vec_27),
        .dl_detect_out(dl_in_vec[27]));

    assign proc_27_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_1_U0.fftOutData_local2_blk_n);
    assign proc_27_data_PIPO_blk[0] = 1'b0;
    assign proc_27_start_FIFO_blk[0] = 1'b0;
    assign proc_27_TLF_FIFO_blk[0] = 1'b0;
    assign proc_27_input_sync_blk[0] = 1'b0;
    assign proc_27_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_27[0] = dl_detect_out ? proc_dep_vld_vec_27_reg[0] : (proc_27_data_FIFO_blk[0] | proc_27_data_PIPO_blk[0] | proc_27_start_FIFO_blk[0] | proc_27_TLF_FIFO_blk[0] | proc_27_input_sync_blk[0] | proc_27_output_sync_blk[0]);
    assign proc_27_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStageKernelS2S_1_U0.fftOutData_local_blk_n);
    assign proc_27_data_PIPO_blk[1] = 1'b0;
    assign proc_27_start_FIFO_blk[1] = 1'b0;
    assign proc_27_TLF_FIFO_blk[1] = 1'b0;
    assign proc_27_input_sync_blk[1] = 1'b0;
    assign proc_27_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_27[1] = dl_detect_out ? proc_dep_vld_vec_27_reg[1] : (proc_27_data_FIFO_blk[1] | proc_27_data_PIPO_blk[1] | proc_27_start_FIFO_blk[1] | proc_27_TLF_FIFO_blk[1] | proc_27_input_sync_blk[1] | proc_27_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_27_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_27_reg <= proc_dep_vld_vec_27;
        end
    end
    assign in_chan_dep_vld_vec_27[0] = dep_chan_vld_25_27;
    assign in_chan_dep_data_vec_27[51 : 0] = dep_chan_data_25_27;
    assign token_in_vec_27[0] = token_25_27;
    assign in_chan_dep_vld_vec_27[1] = dep_chan_vld_28_27;
    assign in_chan_dep_data_vec_27[103 : 52] = dep_chan_data_28_27;
    assign token_in_vec_27[1] = token_28_27;
    assign dep_chan_vld_27_25 = out_chan_dep_vld_vec_27[0];
    assign dep_chan_data_27_25 = out_chan_dep_data_27;
    assign token_27_25 = token_out_vec_27[0];
    assign dep_chan_vld_27_28 = out_chan_dep_vld_vec_27[1];
    assign dep_chan_data_27_28 = out_chan_dep_data_27;
    assign token_27_28 = token_out_vec_27[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_16_5_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 28, 3, 3) fft_top_hls_deadlock_detect_unit_28 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_28),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_28),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_28),
        .token_in_vec(token_in_vec_28),
        .dl_detect_in(dl_detect_out),
        .origin(origin[28]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_28),
        .out_chan_dep_data(out_chan_dep_data_28),
        .token_out_vec(token_out_vec_28),
        .dl_detect_out(dl_in_vec[28]));

    assign proc_28_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_16_5_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_28_data_PIPO_blk[0] = 1'b0;
    assign proc_28_start_FIFO_blk[0] = 1'b0;
    assign proc_28_TLF_FIFO_blk[0] = 1'b0;
    assign proc_28_input_sync_blk[0] = 1'b0;
    assign proc_28_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_28[0] = dl_detect_out ? proc_dep_vld_vec_28_reg[0] : (proc_28_data_FIFO_blk[0] | proc_28_data_PIPO_blk[0] | proc_28_start_FIFO_blk[0] | proc_28_TLF_FIFO_blk[0] | proc_28_input_sync_blk[0] | proc_28_output_sync_blk[0]);
    assign proc_28_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_16_5_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_28_data_PIPO_blk[1] = 1'b0;
    assign proc_28_start_FIFO_blk[1] = 1'b0;
    assign proc_28_TLF_FIFO_blk[1] = 1'b0;
    assign proc_28_input_sync_blk[1] = 1'b0;
    assign proc_28_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_28[1] = dl_detect_out ? proc_dep_vld_vec_28_reg[1] : (proc_28_data_FIFO_blk[1] | proc_28_data_PIPO_blk[1] | proc_28_start_FIFO_blk[1] | proc_28_TLF_FIFO_blk[1] | proc_28_input_sync_blk[1] | proc_28_output_sync_blk[1]);
    assign proc_28_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.streamingDataCommutor_complex_ap_fixed_16_5_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_28_data_PIPO_blk[2] = 1'b0;
    assign proc_28_start_FIFO_blk[2] = 1'b0;
    assign proc_28_TLF_FIFO_blk[2] = 1'b0;
    assign proc_28_input_sync_blk[2] = 1'b0;
    assign proc_28_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_28[2] = dl_detect_out ? proc_dep_vld_vec_28_reg[2] : (proc_28_data_FIFO_blk[2] | proc_28_data_PIPO_blk[2] | proc_28_start_FIFO_blk[2] | proc_28_TLF_FIFO_blk[2] | proc_28_input_sync_blk[2] | proc_28_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_28_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_28_reg <= proc_dep_vld_vec_28;
        end
    end
    assign in_chan_dep_vld_vec_28[0] = dep_chan_vld_27_28;
    assign in_chan_dep_data_vec_28[51 : 0] = dep_chan_data_27_28;
    assign token_in_vec_28[0] = token_27_28;
    assign in_chan_dep_vld_vec_28[1] = dep_chan_vld_29_28;
    assign in_chan_dep_data_vec_28[103 : 52] = dep_chan_data_29_28;
    assign token_in_vec_28[1] = token_29_28;
    assign in_chan_dep_vld_vec_28[2] = dep_chan_vld_30_28;
    assign in_chan_dep_data_vec_28[155 : 104] = dep_chan_data_30_28;
    assign token_in_vec_28[2] = token_30_28;
    assign dep_chan_vld_28_27 = out_chan_dep_vld_vec_28[0];
    assign dep_chan_data_28_27 = out_chan_dep_data_28;
    assign token_28_27 = token_out_vec_28[0];
    assign dep_chan_vld_28_29 = out_chan_dep_vld_vec_28[1];
    assign dep_chan_data_28_29 = out_chan_dep_data_28;
    assign token_28_29 = token_out_vec_28[1];
    assign dep_chan_vld_28_30 = out_chan_dep_vld_vec_28[2];
    assign dep_chan_data_28_30 = out_chan_dep_data_28;
    assign token_28_30 = token_out_vec_28[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0
    fft_top_hls_deadlock_detect_unit #(52, 29, 1, 1) fft_top_hls_deadlock_detect_unit_29 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_29),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_29),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_29),
        .token_in_vec(token_in_vec_29),
        .dl_detect_in(dl_detect_out),
        .origin(origin[29]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_29),
        .out_chan_dep_data(out_chan_dep_data_29),
        .token_out_vec(token_out_vec_29),
        .dl_detect_out(dl_in_vec[29]));

    assign proc_29_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_2_U0.fftOutData_local2_blk_n);
    assign proc_29_data_PIPO_blk[0] = 1'b0;
    assign proc_29_start_FIFO_blk[0] = 1'b0;
    assign proc_29_TLF_FIFO_blk[0] = 1'b0;
    assign proc_29_input_sync_blk[0] = 1'b0;
    assign proc_29_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_29[0] = dl_detect_out ? proc_dep_vld_vec_29_reg[0] : (proc_29_data_FIFO_blk[0] | proc_29_data_PIPO_blk[0] | proc_29_start_FIFO_blk[0] | proc_29_TLF_FIFO_blk[0] | proc_29_input_sync_blk[0] | proc_29_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_29_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_29_reg <= proc_dep_vld_vec_29;
        end
    end
    assign in_chan_dep_vld_vec_29[0] = dep_chan_vld_28_29;
    assign in_chan_dep_data_vec_29[51 : 0] = dep_chan_data_28_29;
    assign token_in_vec_29[0] = token_28_29;
    assign dep_chan_vld_29_28 = out_chan_dep_vld_vec_29[0];
    assign dep_chan_data_29_28 = out_chan_dep_data_29;
    assign token_29_28 = token_out_vec_29[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_2_U0
    fft_top_hls_deadlock_detect_unit #(52, 30, 2, 2) fft_top_hls_deadlock_detect_unit_30 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_30),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_30),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_30),
        .token_in_vec(token_in_vec_30),
        .dl_detect_in(dl_detect_out),
        .origin(origin[30]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_30),
        .out_chan_dep_data(out_chan_dep_data_30),
        .token_out_vec(token_out_vec_30),
        .dl_detect_out(dl_in_vec[30]));

    assign proc_30_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_2_U0.fftOutData_local2_blk_n);
    assign proc_30_data_PIPO_blk[0] = 1'b0;
    assign proc_30_start_FIFO_blk[0] = 1'b0;
    assign proc_30_TLF_FIFO_blk[0] = 1'b0;
    assign proc_30_input_sync_blk[0] = 1'b0;
    assign proc_30_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_30[0] = dl_detect_out ? proc_dep_vld_vec_30_reg[0] : (proc_30_data_FIFO_blk[0] | proc_30_data_PIPO_blk[0] | proc_30_start_FIFO_blk[0] | proc_30_TLF_FIFO_blk[0] | proc_30_input_sync_blk[0] | proc_30_output_sync_blk[0]);
    assign proc_30_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStageKernelS2S_2_U0.fftOutData_local_blk_n);
    assign proc_30_data_PIPO_blk[1] = 1'b0;
    assign proc_30_start_FIFO_blk[1] = 1'b0;
    assign proc_30_TLF_FIFO_blk[1] = 1'b0;
    assign proc_30_input_sync_blk[1] = 1'b0;
    assign proc_30_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_30[1] = dl_detect_out ? proc_dep_vld_vec_30_reg[1] : (proc_30_data_FIFO_blk[1] | proc_30_data_PIPO_blk[1] | proc_30_start_FIFO_blk[1] | proc_30_TLF_FIFO_blk[1] | proc_30_input_sync_blk[1] | proc_30_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_30_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_30_reg <= proc_dep_vld_vec_30;
        end
    end
    assign in_chan_dep_vld_vec_30[0] = dep_chan_vld_28_30;
    assign in_chan_dep_data_vec_30[51 : 0] = dep_chan_data_28_30;
    assign token_in_vec_30[0] = token_28_30;
    assign in_chan_dep_vld_vec_30[1] = dep_chan_vld_31_30;
    assign in_chan_dep_data_vec_30[103 : 52] = dep_chan_data_31_30;
    assign token_in_vec_30[1] = token_31_30;
    assign dep_chan_vld_30_28 = out_chan_dep_vld_vec_30[0];
    assign dep_chan_data_30_28 = out_chan_dep_data_30;
    assign token_30_28 = token_out_vec_30[0];
    assign dep_chan_vld_30_31 = out_chan_dep_vld_vec_30[1];
    assign dep_chan_data_30_31 = out_chan_dep_data_30;
    assign token_30_31 = token_out_vec_30[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_16_6_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 31, 3, 3) fft_top_hls_deadlock_detect_unit_31 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_31),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_31),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_31),
        .token_in_vec(token_in_vec_31),
        .dl_detect_in(dl_detect_out),
        .origin(origin[31]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_31),
        .out_chan_dep_data(out_chan_dep_data_31),
        .token_out_vec(token_out_vec_31),
        .dl_detect_out(dl_in_vec[31]));

    assign proc_31_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_16_6_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_31_data_PIPO_blk[0] = 1'b0;
    assign proc_31_start_FIFO_blk[0] = 1'b0;
    assign proc_31_TLF_FIFO_blk[0] = 1'b0;
    assign proc_31_input_sync_blk[0] = 1'b0;
    assign proc_31_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_31[0] = dl_detect_out ? proc_dep_vld_vec_31_reg[0] : (proc_31_data_FIFO_blk[0] | proc_31_data_PIPO_blk[0] | proc_31_start_FIFO_blk[0] | proc_31_TLF_FIFO_blk[0] | proc_31_input_sync_blk[0] | proc_31_output_sync_blk[0]);
    assign proc_31_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_16_6_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_31_data_PIPO_blk[1] = 1'b0;
    assign proc_31_start_FIFO_blk[1] = 1'b0;
    assign proc_31_TLF_FIFO_blk[1] = 1'b0;
    assign proc_31_input_sync_blk[1] = 1'b0;
    assign proc_31_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_31[1] = dl_detect_out ? proc_dep_vld_vec_31_reg[1] : (proc_31_data_FIFO_blk[1] | proc_31_data_PIPO_blk[1] | proc_31_start_FIFO_blk[1] | proc_31_TLF_FIFO_blk[1] | proc_31_input_sync_blk[1] | proc_31_output_sync_blk[1]);
    assign proc_31_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.streamingDataCommutor_complex_ap_fixed_16_6_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_31_data_PIPO_blk[2] = 1'b0;
    assign proc_31_start_FIFO_blk[2] = 1'b0;
    assign proc_31_TLF_FIFO_blk[2] = 1'b0;
    assign proc_31_input_sync_blk[2] = 1'b0;
    assign proc_31_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_31[2] = dl_detect_out ? proc_dep_vld_vec_31_reg[2] : (proc_31_data_FIFO_blk[2] | proc_31_data_PIPO_blk[2] | proc_31_start_FIFO_blk[2] | proc_31_TLF_FIFO_blk[2] | proc_31_input_sync_blk[2] | proc_31_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_31_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_31_reg <= proc_dep_vld_vec_31;
        end
    end
    assign in_chan_dep_vld_vec_31[0] = dep_chan_vld_30_31;
    assign in_chan_dep_data_vec_31[51 : 0] = dep_chan_data_30_31;
    assign token_in_vec_31[0] = token_30_31;
    assign in_chan_dep_vld_vec_31[1] = dep_chan_vld_32_31;
    assign in_chan_dep_data_vec_31[103 : 52] = dep_chan_data_32_31;
    assign token_in_vec_31[1] = token_32_31;
    assign in_chan_dep_vld_vec_31[2] = dep_chan_vld_33_31;
    assign in_chan_dep_data_vec_31[155 : 104] = dep_chan_data_33_31;
    assign token_in_vec_31[2] = token_33_31;
    assign dep_chan_vld_31_30 = out_chan_dep_vld_vec_31[0];
    assign dep_chan_data_31_30 = out_chan_dep_data_31;
    assign token_31_30 = token_out_vec_31[0];
    assign dep_chan_vld_31_32 = out_chan_dep_vld_vec_31[1];
    assign dep_chan_data_31_32 = out_chan_dep_data_31;
    assign token_31_32 = token_out_vec_31[1];
    assign dep_chan_vld_31_33 = out_chan_dep_vld_vec_31[2];
    assign dep_chan_data_31_33 = out_chan_dep_data_31;
    assign token_31_33 = token_out_vec_31[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0
    fft_top_hls_deadlock_detect_unit #(52, 32, 1, 1) fft_top_hls_deadlock_detect_unit_32 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_32),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_32),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_32),
        .token_in_vec(token_in_vec_32),
        .dl_detect_in(dl_detect_out),
        .origin(origin[32]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_32),
        .out_chan_dep_data(out_chan_dep_data_32),
        .token_out_vec(token_out_vec_32),
        .dl_detect_out(dl_in_vec[32]));

    assign proc_32_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_3_U0.fftOutData_local2_blk_n);
    assign proc_32_data_PIPO_blk[0] = 1'b0;
    assign proc_32_start_FIFO_blk[0] = 1'b0;
    assign proc_32_TLF_FIFO_blk[0] = 1'b0;
    assign proc_32_input_sync_blk[0] = 1'b0;
    assign proc_32_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_32[0] = dl_detect_out ? proc_dep_vld_vec_32_reg[0] : (proc_32_data_FIFO_blk[0] | proc_32_data_PIPO_blk[0] | proc_32_start_FIFO_blk[0] | proc_32_TLF_FIFO_blk[0] | proc_32_input_sync_blk[0] | proc_32_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_32_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_32_reg <= proc_dep_vld_vec_32;
        end
    end
    assign in_chan_dep_vld_vec_32[0] = dep_chan_vld_31_32;
    assign in_chan_dep_data_vec_32[51 : 0] = dep_chan_data_31_32;
    assign token_in_vec_32[0] = token_31_32;
    assign dep_chan_vld_32_31 = out_chan_dep_vld_vec_32[0];
    assign dep_chan_data_32_31 = out_chan_dep_data_32;
    assign token_32_31 = token_out_vec_32[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_3_U0
    fft_top_hls_deadlock_detect_unit #(52, 33, 2, 2) fft_top_hls_deadlock_detect_unit_33 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_33),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_33),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_33),
        .token_in_vec(token_in_vec_33),
        .dl_detect_in(dl_detect_out),
        .origin(origin[33]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_33),
        .out_chan_dep_data(out_chan_dep_data_33),
        .token_out_vec(token_out_vec_33),
        .dl_detect_out(dl_in_vec[33]));

    assign proc_33_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_3_U0.fftOutData_local2_blk_n);
    assign proc_33_data_PIPO_blk[0] = 1'b0;
    assign proc_33_start_FIFO_blk[0] = 1'b0;
    assign proc_33_TLF_FIFO_blk[0] = 1'b0;
    assign proc_33_input_sync_blk[0] = 1'b0;
    assign proc_33_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_33[0] = dl_detect_out ? proc_dep_vld_vec_33_reg[0] : (proc_33_data_FIFO_blk[0] | proc_33_data_PIPO_blk[0] | proc_33_start_FIFO_blk[0] | proc_33_TLF_FIFO_blk[0] | proc_33_input_sync_blk[0] | proc_33_output_sync_blk[0]);
    assign proc_33_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStageKernelS2S_3_U0.fftOutData_local_blk_n);
    assign proc_33_data_PIPO_blk[1] = 1'b0;
    assign proc_33_start_FIFO_blk[1] = 1'b0;
    assign proc_33_TLF_FIFO_blk[1] = 1'b0;
    assign proc_33_input_sync_blk[1] = 1'b0;
    assign proc_33_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_33[1] = dl_detect_out ? proc_dep_vld_vec_33_reg[1] : (proc_33_data_FIFO_blk[1] | proc_33_data_PIPO_blk[1] | proc_33_start_FIFO_blk[1] | proc_33_TLF_FIFO_blk[1] | proc_33_input_sync_blk[1] | proc_33_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_33_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_33_reg <= proc_dep_vld_vec_33;
        end
    end
    assign in_chan_dep_vld_vec_33[0] = dep_chan_vld_31_33;
    assign in_chan_dep_data_vec_33[51 : 0] = dep_chan_data_31_33;
    assign token_in_vec_33[0] = token_31_33;
    assign in_chan_dep_vld_vec_33[1] = dep_chan_vld_34_33;
    assign in_chan_dep_data_vec_33[103 : 52] = dep_chan_data_34_33;
    assign token_in_vec_33[1] = token_34_33;
    assign dep_chan_vld_33_31 = out_chan_dep_vld_vec_33[0];
    assign dep_chan_data_33_31 = out_chan_dep_data_33;
    assign token_33_31 = token_out_vec_33[0];
    assign dep_chan_vld_33_34 = out_chan_dep_vld_vec_33[1];
    assign dep_chan_data_33_34 = out_chan_dep_data_33;
    assign token_33_34 = token_out_vec_33[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_16_7_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 34, 3, 3) fft_top_hls_deadlock_detect_unit_34 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_34),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_34),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_34),
        .token_in_vec(token_in_vec_34),
        .dl_detect_in(dl_detect_out),
        .origin(origin[34]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_34),
        .out_chan_dep_data(out_chan_dep_data_34),
        .token_out_vec(token_out_vec_34),
        .dl_detect_out(dl_in_vec[34]));

    assign proc_34_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_16_7_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_34_data_PIPO_blk[0] = 1'b0;
    assign proc_34_start_FIFO_blk[0] = 1'b0;
    assign proc_34_TLF_FIFO_blk[0] = 1'b0;
    assign proc_34_input_sync_blk[0] = 1'b0;
    assign proc_34_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_34[0] = dl_detect_out ? proc_dep_vld_vec_34_reg[0] : (proc_34_data_FIFO_blk[0] | proc_34_data_PIPO_blk[0] | proc_34_start_FIFO_blk[0] | proc_34_TLF_FIFO_blk[0] | proc_34_input_sync_blk[0] | proc_34_output_sync_blk[0]);
    assign proc_34_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_16_7_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_34_data_PIPO_blk[1] = 1'b0;
    assign proc_34_start_FIFO_blk[1] = 1'b0;
    assign proc_34_TLF_FIFO_blk[1] = 1'b0;
    assign proc_34_input_sync_blk[1] = 1'b0;
    assign proc_34_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_34[1] = dl_detect_out ? proc_dep_vld_vec_34_reg[1] : (proc_34_data_FIFO_blk[1] | proc_34_data_PIPO_blk[1] | proc_34_start_FIFO_blk[1] | proc_34_TLF_FIFO_blk[1] | proc_34_input_sync_blk[1] | proc_34_output_sync_blk[1]);
    assign proc_34_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.streamingDataCommutor_complex_ap_fixed_16_7_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_34_data_PIPO_blk[2] = 1'b0;
    assign proc_34_start_FIFO_blk[2] = 1'b0;
    assign proc_34_TLF_FIFO_blk[2] = 1'b0;
    assign proc_34_input_sync_blk[2] = 1'b0;
    assign proc_34_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_34[2] = dl_detect_out ? proc_dep_vld_vec_34_reg[2] : (proc_34_data_FIFO_blk[2] | proc_34_data_PIPO_blk[2] | proc_34_start_FIFO_blk[2] | proc_34_TLF_FIFO_blk[2] | proc_34_input_sync_blk[2] | proc_34_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_34_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_34_reg <= proc_dep_vld_vec_34;
        end
    end
    assign in_chan_dep_vld_vec_34[0] = dep_chan_vld_33_34;
    assign in_chan_dep_data_vec_34[51 : 0] = dep_chan_data_33_34;
    assign token_in_vec_34[0] = token_33_34;
    assign in_chan_dep_vld_vec_34[1] = dep_chan_vld_35_34;
    assign in_chan_dep_data_vec_34[103 : 52] = dep_chan_data_35_34;
    assign token_in_vec_34[1] = token_35_34;
    assign in_chan_dep_vld_vec_34[2] = dep_chan_vld_36_34;
    assign in_chan_dep_data_vec_34[155 : 104] = dep_chan_data_36_34;
    assign token_in_vec_34[2] = token_36_34;
    assign dep_chan_vld_34_33 = out_chan_dep_vld_vec_34[0];
    assign dep_chan_data_34_33 = out_chan_dep_data_34;
    assign token_34_33 = token_out_vec_34[0];
    assign dep_chan_vld_34_35 = out_chan_dep_vld_vec_34[1];
    assign dep_chan_data_34_35 = out_chan_dep_data_34;
    assign token_34_35 = token_out_vec_34[1];
    assign dep_chan_vld_34_36 = out_chan_dep_vld_vec_34[2];
    assign dep_chan_data_34_36 = out_chan_dep_data_34;
    assign token_34_36 = token_out_vec_34[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0
    fft_top_hls_deadlock_detect_unit #(52, 35, 1, 1) fft_top_hls_deadlock_detect_unit_35 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_35),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_35),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_35),
        .token_in_vec(token_in_vec_35),
        .dl_detect_in(dl_detect_out),
        .origin(origin[35]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_35),
        .out_chan_dep_data(out_chan_dep_data_35),
        .token_out_vec(token_out_vec_35),
        .dl_detect_out(dl_in_vec[35]));

    assign proc_35_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_4_U0.fftOutData_local2_blk_n);
    assign proc_35_data_PIPO_blk[0] = 1'b0;
    assign proc_35_start_FIFO_blk[0] = 1'b0;
    assign proc_35_TLF_FIFO_blk[0] = 1'b0;
    assign proc_35_input_sync_blk[0] = 1'b0;
    assign proc_35_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_35[0] = dl_detect_out ? proc_dep_vld_vec_35_reg[0] : (proc_35_data_FIFO_blk[0] | proc_35_data_PIPO_blk[0] | proc_35_start_FIFO_blk[0] | proc_35_TLF_FIFO_blk[0] | proc_35_input_sync_blk[0] | proc_35_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_35_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_35_reg <= proc_dep_vld_vec_35;
        end
    end
    assign in_chan_dep_vld_vec_35[0] = dep_chan_vld_34_35;
    assign in_chan_dep_data_vec_35[51 : 0] = dep_chan_data_34_35;
    assign token_in_vec_35[0] = token_34_35;
    assign dep_chan_vld_35_34 = out_chan_dep_vld_vec_35[0];
    assign dep_chan_data_35_34 = out_chan_dep_data_35;
    assign token_35_34 = token_out_vec_35[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_4_U0
    fft_top_hls_deadlock_detect_unit #(52, 36, 2, 2) fft_top_hls_deadlock_detect_unit_36 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_36),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_36),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_36),
        .token_in_vec(token_in_vec_36),
        .dl_detect_in(dl_detect_out),
        .origin(origin[36]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_36),
        .out_chan_dep_data(out_chan_dep_data_36),
        .token_out_vec(token_out_vec_36),
        .dl_detect_out(dl_in_vec[36]));

    assign proc_36_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_4_U0.fftOutData_local2_blk_n);
    assign proc_36_data_PIPO_blk[0] = 1'b0;
    assign proc_36_start_FIFO_blk[0] = 1'b0;
    assign proc_36_TLF_FIFO_blk[0] = 1'b0;
    assign proc_36_input_sync_blk[0] = 1'b0;
    assign proc_36_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_36[0] = dl_detect_out ? proc_dep_vld_vec_36_reg[0] : (proc_36_data_FIFO_blk[0] | proc_36_data_PIPO_blk[0] | proc_36_start_FIFO_blk[0] | proc_36_TLF_FIFO_blk[0] | proc_36_input_sync_blk[0] | proc_36_output_sync_blk[0]);
    assign proc_36_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStageKernelS2S_4_U0.fftOutData_local_blk_n);
    assign proc_36_data_PIPO_blk[1] = 1'b0;
    assign proc_36_start_FIFO_blk[1] = 1'b0;
    assign proc_36_TLF_FIFO_blk[1] = 1'b0;
    assign proc_36_input_sync_blk[1] = 1'b0;
    assign proc_36_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_36[1] = dl_detect_out ? proc_dep_vld_vec_36_reg[1] : (proc_36_data_FIFO_blk[1] | proc_36_data_PIPO_blk[1] | proc_36_start_FIFO_blk[1] | proc_36_TLF_FIFO_blk[1] | proc_36_input_sync_blk[1] | proc_36_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_36_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_36_reg <= proc_dep_vld_vec_36;
        end
    end
    assign in_chan_dep_vld_vec_36[0] = dep_chan_vld_34_36;
    assign in_chan_dep_data_vec_36[51 : 0] = dep_chan_data_34_36;
    assign token_in_vec_36[0] = token_34_36;
    assign in_chan_dep_vld_vec_36[1] = dep_chan_vld_37_36;
    assign in_chan_dep_data_vec_36[103 : 52] = dep_chan_data_37_36;
    assign token_in_vec_36[1] = token_37_36;
    assign dep_chan_vld_36_34 = out_chan_dep_vld_vec_36[0];
    assign dep_chan_data_36_34 = out_chan_dep_data_36;
    assign token_36_34 = token_out_vec_36[0];
    assign dep_chan_vld_36_37 = out_chan_dep_vld_vec_36[1];
    assign dep_chan_data_36_37 = out_chan_dep_data_36;
    assign token_36_37 = token_out_vec_36[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_16_8_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 37, 3, 3) fft_top_hls_deadlock_detect_unit_37 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_37),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_37),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_37),
        .token_in_vec(token_in_vec_37),
        .dl_detect_in(dl_detect_out),
        .origin(origin[37]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_37),
        .out_chan_dep_data(out_chan_dep_data_37),
        .token_out_vec(token_out_vec_37),
        .dl_detect_out(dl_in_vec[37]));

    assign proc_37_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_16_8_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_37_data_PIPO_blk[0] = 1'b0;
    assign proc_37_start_FIFO_blk[0] = 1'b0;
    assign proc_37_TLF_FIFO_blk[0] = 1'b0;
    assign proc_37_input_sync_blk[0] = 1'b0;
    assign proc_37_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_37[0] = dl_detect_out ? proc_dep_vld_vec_37_reg[0] : (proc_37_data_FIFO_blk[0] | proc_37_data_PIPO_blk[0] | proc_37_start_FIFO_blk[0] | proc_37_TLF_FIFO_blk[0] | proc_37_input_sync_blk[0] | proc_37_output_sync_blk[0]);
    assign proc_37_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_16_8_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_37_data_PIPO_blk[1] = 1'b0;
    assign proc_37_start_FIFO_blk[1] = 1'b0;
    assign proc_37_TLF_FIFO_blk[1] = 1'b0;
    assign proc_37_input_sync_blk[1] = 1'b0;
    assign proc_37_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_37[1] = dl_detect_out ? proc_dep_vld_vec_37_reg[1] : (proc_37_data_FIFO_blk[1] | proc_37_data_PIPO_blk[1] | proc_37_start_FIFO_blk[1] | proc_37_TLF_FIFO_blk[1] | proc_37_input_sync_blk[1] | proc_37_output_sync_blk[1]);
    assign proc_37_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.streamingDataCommutor_complex_ap_fixed_16_8_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_37_data_PIPO_blk[2] = 1'b0;
    assign proc_37_start_FIFO_blk[2] = 1'b0;
    assign proc_37_TLF_FIFO_blk[2] = 1'b0;
    assign proc_37_input_sync_blk[2] = 1'b0;
    assign proc_37_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_37[2] = dl_detect_out ? proc_dep_vld_vec_37_reg[2] : (proc_37_data_FIFO_blk[2] | proc_37_data_PIPO_blk[2] | proc_37_start_FIFO_blk[2] | proc_37_TLF_FIFO_blk[2] | proc_37_input_sync_blk[2] | proc_37_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_37_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_37_reg <= proc_dep_vld_vec_37;
        end
    end
    assign in_chan_dep_vld_vec_37[0] = dep_chan_vld_36_37;
    assign in_chan_dep_data_vec_37[51 : 0] = dep_chan_data_36_37;
    assign token_in_vec_37[0] = token_36_37;
    assign in_chan_dep_vld_vec_37[1] = dep_chan_vld_38_37;
    assign in_chan_dep_data_vec_37[103 : 52] = dep_chan_data_38_37;
    assign token_in_vec_37[1] = token_38_37;
    assign in_chan_dep_vld_vec_37[2] = dep_chan_vld_39_37;
    assign in_chan_dep_data_vec_37[155 : 104] = dep_chan_data_39_37;
    assign token_in_vec_37[2] = token_39_37;
    assign dep_chan_vld_37_36 = out_chan_dep_vld_vec_37[0];
    assign dep_chan_data_37_36 = out_chan_dep_data_37;
    assign token_37_36 = token_out_vec_37[0];
    assign dep_chan_vld_37_38 = out_chan_dep_vld_vec_37[1];
    assign dep_chan_data_37_38 = out_chan_dep_data_37;
    assign token_37_38 = token_out_vec_37[1];
    assign dep_chan_vld_37_39 = out_chan_dep_vld_vec_37[2];
    assign dep_chan_data_37_39 = out_chan_dep_data_37;
    assign token_37_39 = token_out_vec_37[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0
    fft_top_hls_deadlock_detect_unit #(52, 38, 1, 1) fft_top_hls_deadlock_detect_unit_38 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_38),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_38),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_38),
        .token_in_vec(token_in_vec_38),
        .dl_detect_in(dl_detect_out),
        .origin(origin[38]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_38),
        .out_chan_dep_data(out_chan_dep_data_38),
        .token_out_vec(token_out_vec_38),
        .dl_detect_out(dl_in_vec[38]));

    assign proc_38_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelS2S_5_U0.fftOutData_local2_blk_n);
    assign proc_38_data_PIPO_blk[0] = 1'b0;
    assign proc_38_start_FIFO_blk[0] = 1'b0;
    assign proc_38_TLF_FIFO_blk[0] = 1'b0;
    assign proc_38_input_sync_blk[0] = 1'b0;
    assign proc_38_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_38[0] = dl_detect_out ? proc_dep_vld_vec_38_reg[0] : (proc_38_data_FIFO_blk[0] | proc_38_data_PIPO_blk[0] | proc_38_start_FIFO_blk[0] | proc_38_TLF_FIFO_blk[0] | proc_38_input_sync_blk[0] | proc_38_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_38_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_38_reg <= proc_dep_vld_vec_38;
        end
    end
    assign in_chan_dep_vld_vec_38[0] = dep_chan_vld_37_38;
    assign in_chan_dep_data_vec_38[51 : 0] = dep_chan_data_37_38;
    assign token_in_vec_38[0] = token_37_38;
    assign dep_chan_vld_38_37 = out_chan_dep_vld_vec_38[0];
    assign dep_chan_data_38_37 = out_chan_dep_data_38;
    assign token_38_37 = token_out_vec_38[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelS2S_5_U0
    fft_top_hls_deadlock_detect_unit #(52, 39, 2, 2) fft_top_hls_deadlock_detect_unit_39 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_39),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_39),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_39),
        .token_in_vec(token_in_vec_39),
        .dl_detect_in(dl_detect_out),
        .origin(origin[39]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_39),
        .out_chan_dep_data(out_chan_dep_data_39),
        .token_out_vec(token_out_vec_39),
        .dl_detect_out(dl_in_vec[39]));

    assign proc_39_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelS2S_5_U0.fftOutData_local2_blk_n);
    assign proc_39_data_PIPO_blk[0] = 1'b0;
    assign proc_39_start_FIFO_blk[0] = 1'b0;
    assign proc_39_TLF_FIFO_blk[0] = 1'b0;
    assign proc_39_input_sync_blk[0] = 1'b0;
    assign proc_39_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_39[0] = dl_detect_out ? proc_dep_vld_vec_39_reg[0] : (proc_39_data_FIFO_blk[0] | proc_39_data_PIPO_blk[0] | proc_39_start_FIFO_blk[0] | proc_39_TLF_FIFO_blk[0] | proc_39_input_sync_blk[0] | proc_39_output_sync_blk[0]);
    assign proc_39_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStageKernelS2S_5_U0.fftOutData_local_blk_n);
    assign proc_39_data_PIPO_blk[1] = 1'b0;
    assign proc_39_start_FIFO_blk[1] = 1'b0;
    assign proc_39_TLF_FIFO_blk[1] = 1'b0;
    assign proc_39_input_sync_blk[1] = 1'b0;
    assign proc_39_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_39[1] = dl_detect_out ? proc_dep_vld_vec_39_reg[1] : (proc_39_data_FIFO_blk[1] | proc_39_data_PIPO_blk[1] | proc_39_start_FIFO_blk[1] | proc_39_TLF_FIFO_blk[1] | proc_39_input_sync_blk[1] | proc_39_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_39_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_39_reg <= proc_dep_vld_vec_39;
        end
    end
    assign in_chan_dep_vld_vec_39[0] = dep_chan_vld_37_39;
    assign in_chan_dep_data_vec_39[51 : 0] = dep_chan_data_37_39;
    assign token_in_vec_39[0] = token_37_39;
    assign in_chan_dep_vld_vec_39[1] = dep_chan_vld_40_39;
    assign in_chan_dep_data_vec_39[103 : 52] = dep_chan_data_40_39;
    assign token_in_vec_39[1] = token_40_39;
    assign dep_chan_vld_39_37 = out_chan_dep_vld_vec_39[0];
    assign dep_chan_data_39_37 = out_chan_dep_data_39;
    assign token_39_37 = token_out_vec_39[0];
    assign dep_chan_vld_39_40 = out_chan_dep_vld_vec_39[1];
    assign dep_chan_data_39_40 = out_chan_dep_data_39;
    assign token_39_40 = token_out_vec_39[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.streamingDataCommutor_complex_ap_fixed_16_9_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 40, 3, 3) fft_top_hls_deadlock_detect_unit_40 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_40),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_40),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_40),
        .token_in_vec(token_in_vec_40),
        .dl_detect_in(dl_detect_out),
        .origin(origin[40]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_40),
        .out_chan_dep_data(out_chan_dep_data_40),
        .token_out_vec(token_out_vec_40),
        .dl_detect_out(dl_in_vec[40]));

    assign proc_40_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.streamingDataCommutor_complex_ap_fixed_16_9_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_40_data_PIPO_blk[0] = 1'b0;
    assign proc_40_start_FIFO_blk[0] = 1'b0;
    assign proc_40_TLF_FIFO_blk[0] = 1'b0;
    assign proc_40_input_sync_blk[0] = 1'b0;
    assign proc_40_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_40[0] = dl_detect_out ? proc_dep_vld_vec_40_reg[0] : (proc_40_data_FIFO_blk[0] | proc_40_data_PIPO_blk[0] | proc_40_start_FIFO_blk[0] | proc_40_TLF_FIFO_blk[0] | proc_40_input_sync_blk[0] | proc_40_output_sync_blk[0]);
    assign proc_40_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.streamingDataCommutor_complex_ap_fixed_16_9_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_40_data_PIPO_blk[1] = 1'b0;
    assign proc_40_start_FIFO_blk[1] = 1'b0;
    assign proc_40_TLF_FIFO_blk[1] = 1'b0;
    assign proc_40_input_sync_blk[1] = 1'b0;
    assign proc_40_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_40[1] = dl_detect_out ? proc_dep_vld_vec_40_reg[1] : (proc_40_data_FIFO_blk[1] | proc_40_data_PIPO_blk[1] | proc_40_start_FIFO_blk[1] | proc_40_TLF_FIFO_blk[1] | proc_40_input_sync_blk[1] | proc_40_output_sync_blk[1]);
    assign proc_40_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.streamingDataCommutor_complex_ap_fixed_16_9_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_40_data_PIPO_blk[2] = 1'b0;
    assign proc_40_start_FIFO_blk[2] = 1'b0;
    assign proc_40_TLF_FIFO_blk[2] = 1'b0;
    assign proc_40_input_sync_blk[2] = 1'b0;
    assign proc_40_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_40[2] = dl_detect_out ? proc_dep_vld_vec_40_reg[2] : (proc_40_data_FIFO_blk[2] | proc_40_data_PIPO_blk[2] | proc_40_start_FIFO_blk[2] | proc_40_TLF_FIFO_blk[2] | proc_40_input_sync_blk[2] | proc_40_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_40_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_40_reg <= proc_dep_vld_vec_40;
        end
    end
    assign in_chan_dep_vld_vec_40[0] = dep_chan_vld_39_40;
    assign in_chan_dep_data_vec_40[51 : 0] = dep_chan_data_39_40;
    assign token_in_vec_40[0] = token_39_40;
    assign in_chan_dep_vld_vec_40[1] = dep_chan_vld_41_40;
    assign in_chan_dep_data_vec_40[103 : 52] = dep_chan_data_41_40;
    assign token_in_vec_40[1] = token_41_40;
    assign in_chan_dep_vld_vec_40[2] = dep_chan_vld_42_40;
    assign in_chan_dep_data_vec_40[155 : 104] = dep_chan_data_42_40;
    assign token_in_vec_40[2] = token_42_40;
    assign dep_chan_vld_40_39 = out_chan_dep_vld_vec_40[0];
    assign dep_chan_data_40_39 = out_chan_dep_data_40;
    assign token_40_39 = token_out_vec_40[0];
    assign dep_chan_vld_40_41 = out_chan_dep_vld_vec_40[1];
    assign dep_chan_data_40_41 = out_chan_dep_data_40;
    assign token_40_41 = token_out_vec_40[1];
    assign dep_chan_vld_40_42 = out_chan_dep_vld_vec_40[2];
    assign dep_chan_data_40_42 = out_chan_dep_data_40;
    assign token_40_42 = token_out_vec_40[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0
    fft_top_hls_deadlock_detect_unit #(52, 41, 1, 1) fft_top_hls_deadlock_detect_unit_41 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_41),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_41),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_41),
        .token_in_vec(token_in_vec_41),
        .dl_detect_in(dl_detect_out),
        .origin(origin[41]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_41),
        .out_chan_dep_data(out_chan_dep_data_41),
        .token_out_vec(token_out_vec_41),
        .dl_detect_out(dl_in_vec[41]));

    assign proc_41_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStageKernelS2S_6_U0.fftOutData_local2_blk_n);
    assign proc_41_data_PIPO_blk[0] = 1'b0;
    assign proc_41_start_FIFO_blk[0] = 1'b0;
    assign proc_41_TLF_FIFO_blk[0] = 1'b0;
    assign proc_41_input_sync_blk[0] = 1'b0;
    assign proc_41_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_41[0] = dl_detect_out ? proc_dep_vld_vec_41_reg[0] : (proc_41_data_FIFO_blk[0] | proc_41_data_PIPO_blk[0] | proc_41_start_FIFO_blk[0] | proc_41_TLF_FIFO_blk[0] | proc_41_input_sync_blk[0] | proc_41_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_41_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_41_reg <= proc_dep_vld_vec_41;
        end
    end
    assign in_chan_dep_vld_vec_41[0] = dep_chan_vld_40_41;
    assign in_chan_dep_data_vec_41[51 : 0] = dep_chan_data_40_41;
    assign token_in_vec_41[0] = token_40_41;
    assign dep_chan_vld_41_40 = out_chan_dep_vld_vec_41[0];
    assign dep_chan_data_41_40 = out_chan_dep_data_41;
    assign token_41_40 = token_out_vec_41[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStageKernelS2S_6_U0
    fft_top_hls_deadlock_detect_unit #(52, 42, 2, 2) fft_top_hls_deadlock_detect_unit_42 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_42),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_42),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_42),
        .token_in_vec(token_in_vec_42),
        .dl_detect_in(dl_detect_out),
        .origin(origin[42]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_42),
        .out_chan_dep_data(out_chan_dep_data_42),
        .token_out_vec(token_out_vec_42),
        .dl_detect_out(dl_in_vec[42]));

    assign proc_42_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStageKernelS2S_6_U0.fftOutData_local2_blk_n);
    assign proc_42_data_PIPO_blk[0] = 1'b0;
    assign proc_42_start_FIFO_blk[0] = 1'b0;
    assign proc_42_TLF_FIFO_blk[0] = 1'b0;
    assign proc_42_input_sync_blk[0] = 1'b0;
    assign proc_42_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_42[0] = dl_detect_out ? proc_dep_vld_vec_42_reg[0] : (proc_42_data_FIFO_blk[0] | proc_42_data_PIPO_blk[0] | proc_42_start_FIFO_blk[0] | proc_42_TLF_FIFO_blk[0] | proc_42_input_sync_blk[0] | proc_42_output_sync_blk[0]);
    assign proc_42_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStageKernelS2S_6_U0.fftOutData_local_blk_n);
    assign proc_42_data_PIPO_blk[1] = 1'b0;
    assign proc_42_start_FIFO_blk[1] = 1'b0;
    assign proc_42_TLF_FIFO_blk[1] = 1'b0;
    assign proc_42_input_sync_blk[1] = 1'b0;
    assign proc_42_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_42[1] = dl_detect_out ? proc_dep_vld_vec_42_reg[1] : (proc_42_data_FIFO_blk[1] | proc_42_data_PIPO_blk[1] | proc_42_start_FIFO_blk[1] | proc_42_TLF_FIFO_blk[1] | proc_42_input_sync_blk[1] | proc_42_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_42_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_42_reg <= proc_dep_vld_vec_42;
        end
    end
    assign in_chan_dep_vld_vec_42[0] = dep_chan_vld_40_42;
    assign in_chan_dep_data_vec_42[51 : 0] = dep_chan_data_40_42;
    assign token_in_vec_42[0] = token_40_42;
    assign in_chan_dep_vld_vec_42[1] = dep_chan_vld_43_42;
    assign in_chan_dep_data_vec_42[103 : 52] = dep_chan_data_43_42;
    assign token_in_vec_42[1] = token_43_42;
    assign dep_chan_vld_42_40 = out_chan_dep_vld_vec_42[0];
    assign dep_chan_data_42_40 = out_chan_dep_data_42;
    assign token_42_40 = token_out_vec_42[0];
    assign dep_chan_vld_42_43 = out_chan_dep_vld_vec_42[1];
    assign dep_chan_data_42_43 = out_chan_dep_data_42;
    assign token_42_43 = token_out_vec_42[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.streamingDataCommutor_complex_ap_fixed_16_10_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 43, 3, 3) fft_top_hls_deadlock_detect_unit_43 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_43),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_43),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_43),
        .token_in_vec(token_in_vec_43),
        .dl_detect_in(dl_detect_out),
        .origin(origin[43]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_43),
        .out_chan_dep_data(out_chan_dep_data_43),
        .token_out_vec(token_out_vec_43),
        .dl_detect_out(dl_in_vec[43]));

    assign proc_43_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.streamingDataCommutor_complex_ap_fixed_16_10_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_43_data_PIPO_blk[0] = 1'b0;
    assign proc_43_start_FIFO_blk[0] = 1'b0;
    assign proc_43_TLF_FIFO_blk[0] = 1'b0;
    assign proc_43_input_sync_blk[0] = 1'b0;
    assign proc_43_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_43[0] = dl_detect_out ? proc_dep_vld_vec_43_reg[0] : (proc_43_data_FIFO_blk[0] | proc_43_data_PIPO_blk[0] | proc_43_start_FIFO_blk[0] | proc_43_TLF_FIFO_blk[0] | proc_43_input_sync_blk[0] | proc_43_output_sync_blk[0]);
    assign proc_43_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.streamingDataCommutor_complex_ap_fixed_16_10_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_43_data_PIPO_blk[1] = 1'b0;
    assign proc_43_start_FIFO_blk[1] = 1'b0;
    assign proc_43_TLF_FIFO_blk[1] = 1'b0;
    assign proc_43_input_sync_blk[1] = 1'b0;
    assign proc_43_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_43[1] = dl_detect_out ? proc_dep_vld_vec_43_reg[1] : (proc_43_data_FIFO_blk[1] | proc_43_data_PIPO_blk[1] | proc_43_start_FIFO_blk[1] | proc_43_TLF_FIFO_blk[1] | proc_43_input_sync_blk[1] | proc_43_output_sync_blk[1]);
    assign proc_43_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.streamingDataCommutor_complex_ap_fixed_16_10_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_43_data_PIPO_blk[2] = 1'b0;
    assign proc_43_start_FIFO_blk[2] = 1'b0;
    assign proc_43_TLF_FIFO_blk[2] = 1'b0;
    assign proc_43_input_sync_blk[2] = 1'b0;
    assign proc_43_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_43[2] = dl_detect_out ? proc_dep_vld_vec_43_reg[2] : (proc_43_data_FIFO_blk[2] | proc_43_data_PIPO_blk[2] | proc_43_start_FIFO_blk[2] | proc_43_TLF_FIFO_blk[2] | proc_43_input_sync_blk[2] | proc_43_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_43_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_43_reg <= proc_dep_vld_vec_43;
        end
    end
    assign in_chan_dep_vld_vec_43[0] = dep_chan_vld_42_43;
    assign in_chan_dep_data_vec_43[51 : 0] = dep_chan_data_42_43;
    assign token_in_vec_43[0] = token_42_43;
    assign in_chan_dep_vld_vec_43[1] = dep_chan_vld_44_43;
    assign in_chan_dep_data_vec_43[103 : 52] = dep_chan_data_44_43;
    assign token_in_vec_43[1] = token_44_43;
    assign in_chan_dep_vld_vec_43[2] = dep_chan_vld_45_43;
    assign in_chan_dep_data_vec_43[155 : 104] = dep_chan_data_45_43;
    assign token_in_vec_43[2] = token_45_43;
    assign dep_chan_vld_43_42 = out_chan_dep_vld_vec_43[0];
    assign dep_chan_data_43_42 = out_chan_dep_data_43;
    assign token_43_42 = token_out_vec_43[0];
    assign dep_chan_vld_43_44 = out_chan_dep_vld_vec_43[1];
    assign dep_chan_data_43_44 = out_chan_dep_data_43;
    assign token_43_44 = token_out_vec_43[1];
    assign dep_chan_vld_43_45 = out_chan_dep_vld_vec_43[2];
    assign dep_chan_data_43_45 = out_chan_dep_data_43;
    assign token_43_45 = token_out_vec_43[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0
    fft_top_hls_deadlock_detect_unit #(52, 44, 1, 1) fft_top_hls_deadlock_detect_unit_44 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_44),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_44),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_44),
        .token_in_vec(token_in_vec_44),
        .dl_detect_in(dl_detect_out),
        .origin(origin[44]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_44),
        .out_chan_dep_data(out_chan_dep_data_44),
        .token_out_vec(token_out_vec_44),
        .dl_detect_out(dl_in_vec[44]));

    assign proc_44_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStageKernelS2S_7_U0.fftOutData_local2_blk_n);
    assign proc_44_data_PIPO_blk[0] = 1'b0;
    assign proc_44_start_FIFO_blk[0] = 1'b0;
    assign proc_44_TLF_FIFO_blk[0] = 1'b0;
    assign proc_44_input_sync_blk[0] = 1'b0;
    assign proc_44_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_44[0] = dl_detect_out ? proc_dep_vld_vec_44_reg[0] : (proc_44_data_FIFO_blk[0] | proc_44_data_PIPO_blk[0] | proc_44_start_FIFO_blk[0] | proc_44_TLF_FIFO_blk[0] | proc_44_input_sync_blk[0] | proc_44_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_44_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_44_reg <= proc_dep_vld_vec_44;
        end
    end
    assign in_chan_dep_vld_vec_44[0] = dep_chan_vld_43_44;
    assign in_chan_dep_data_vec_44[51 : 0] = dep_chan_data_43_44;
    assign token_in_vec_44[0] = token_43_44;
    assign dep_chan_vld_44_43 = out_chan_dep_vld_vec_44[0];
    assign dep_chan_data_44_43 = out_chan_dep_data_44;
    assign token_44_43 = token_out_vec_44[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStageKernelS2S_7_U0
    fft_top_hls_deadlock_detect_unit #(52, 45, 2, 2) fft_top_hls_deadlock_detect_unit_45 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_45),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_45),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_45),
        .token_in_vec(token_in_vec_45),
        .dl_detect_in(dl_detect_out),
        .origin(origin[45]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_45),
        .out_chan_dep_data(out_chan_dep_data_45),
        .token_out_vec(token_out_vec_45),
        .dl_detect_out(dl_in_vec[45]));

    assign proc_45_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStageKernelS2S_7_U0.fftOutData_local2_blk_n);
    assign proc_45_data_PIPO_blk[0] = 1'b0;
    assign proc_45_start_FIFO_blk[0] = 1'b0;
    assign proc_45_TLF_FIFO_blk[0] = 1'b0;
    assign proc_45_input_sync_blk[0] = 1'b0;
    assign proc_45_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_45[0] = dl_detect_out ? proc_dep_vld_vec_45_reg[0] : (proc_45_data_FIFO_blk[0] | proc_45_data_PIPO_blk[0] | proc_45_start_FIFO_blk[0] | proc_45_TLF_FIFO_blk[0] | proc_45_input_sync_blk[0] | proc_45_output_sync_blk[0]);
    assign proc_45_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStageKernelS2S_7_U0.fftOutData_local_blk_n);
    assign proc_45_data_PIPO_blk[1] = 1'b0;
    assign proc_45_start_FIFO_blk[1] = 1'b0;
    assign proc_45_TLF_FIFO_blk[1] = 1'b0;
    assign proc_45_input_sync_blk[1] = 1'b0;
    assign proc_45_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_45[1] = dl_detect_out ? proc_dep_vld_vec_45_reg[1] : (proc_45_data_FIFO_blk[1] | proc_45_data_PIPO_blk[1] | proc_45_start_FIFO_blk[1] | proc_45_TLF_FIFO_blk[1] | proc_45_input_sync_blk[1] | proc_45_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_45_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_45_reg <= proc_dep_vld_vec_45;
        end
    end
    assign in_chan_dep_vld_vec_45[0] = dep_chan_vld_43_45;
    assign in_chan_dep_data_vec_45[51 : 0] = dep_chan_data_43_45;
    assign token_in_vec_45[0] = token_43_45;
    assign in_chan_dep_vld_vec_45[1] = dep_chan_vld_46_45;
    assign in_chan_dep_data_vec_45[103 : 52] = dep_chan_data_46_45;
    assign token_in_vec_45[1] = token_46_45;
    assign dep_chan_vld_45_43 = out_chan_dep_vld_vec_45[0];
    assign dep_chan_data_45_43 = out_chan_dep_data_45;
    assign token_45_43 = token_out_vec_45[0];
    assign dep_chan_vld_45_46 = out_chan_dep_vld_vec_45[1];
    assign dep_chan_data_45_46 = out_chan_dep_data_45;
    assign token_45_46 = token_out_vec_45[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.streamingDataCommutor_complex_ap_fixed_16_11_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 46, 3, 3) fft_top_hls_deadlock_detect_unit_46 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_46),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_46),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_46),
        .token_in_vec(token_in_vec_46),
        .dl_detect_in(dl_detect_out),
        .origin(origin[46]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_46),
        .out_chan_dep_data(out_chan_dep_data_46),
        .token_out_vec(token_out_vec_46),
        .dl_detect_out(dl_in_vec[46]));

    assign proc_46_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.streamingDataCommutor_complex_ap_fixed_16_11_5_3_0_U0.fftOutData_local_blk_n);
    assign proc_46_data_PIPO_blk[0] = 1'b0;
    assign proc_46_start_FIFO_blk[0] = 1'b0;
    assign proc_46_TLF_FIFO_blk[0] = 1'b0;
    assign proc_46_input_sync_blk[0] = 1'b0;
    assign proc_46_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_46[0] = dl_detect_out ? proc_dep_vld_vec_46_reg[0] : (proc_46_data_FIFO_blk[0] | proc_46_data_PIPO_blk[0] | proc_46_start_FIFO_blk[0] | proc_46_TLF_FIFO_blk[0] | proc_46_input_sync_blk[0] | proc_46_output_sync_blk[0]);
    assign proc_46_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.streamingDataCommutor_complex_ap_fixed_16_11_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_46_data_PIPO_blk[1] = 1'b0;
    assign proc_46_start_FIFO_blk[1] = 1'b0;
    assign proc_46_TLF_FIFO_blk[1] = 1'b0;
    assign proc_46_input_sync_blk[1] = 1'b0;
    assign proc_46_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_46[1] = dl_detect_out ? proc_dep_vld_vec_46_reg[1] : (proc_46_data_FIFO_blk[1] | proc_46_data_PIPO_blk[1] | proc_46_start_FIFO_blk[1] | proc_46_TLF_FIFO_blk[1] | proc_46_input_sync_blk[1] | proc_46_output_sync_blk[1]);
    assign proc_46_data_FIFO_blk[2] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.streamingDataCommutor_complex_ap_fixed_16_11_5_3_0_U0.fftOutData_local2_blk_n);
    assign proc_46_data_PIPO_blk[2] = 1'b0;
    assign proc_46_start_FIFO_blk[2] = 1'b0;
    assign proc_46_TLF_FIFO_blk[2] = 1'b0;
    assign proc_46_input_sync_blk[2] = 1'b0;
    assign proc_46_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_46[2] = dl_detect_out ? proc_dep_vld_vec_46_reg[2] : (proc_46_data_FIFO_blk[2] | proc_46_data_PIPO_blk[2] | proc_46_start_FIFO_blk[2] | proc_46_TLF_FIFO_blk[2] | proc_46_input_sync_blk[2] | proc_46_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_46_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_46_reg <= proc_dep_vld_vec_46;
        end
    end
    assign in_chan_dep_vld_vec_46[0] = dep_chan_vld_45_46;
    assign in_chan_dep_data_vec_46[51 : 0] = dep_chan_data_45_46;
    assign token_in_vec_46[0] = token_45_46;
    assign in_chan_dep_vld_vec_46[1] = dep_chan_vld_47_46;
    assign in_chan_dep_data_vec_46[103 : 52] = dep_chan_data_47_46;
    assign token_in_vec_46[1] = token_47_46;
    assign in_chan_dep_vld_vec_46[2] = dep_chan_vld_48_46;
    assign in_chan_dep_data_vec_46[155 : 104] = dep_chan_data_48_46;
    assign token_in_vec_46[2] = token_48_46;
    assign dep_chan_vld_46_45 = out_chan_dep_vld_vec_46[0];
    assign dep_chan_data_46_45 = out_chan_dep_data_46;
    assign token_46_45 = token_out_vec_46[0];
    assign dep_chan_vld_46_47 = out_chan_dep_vld_vec_46[1];
    assign dep_chan_data_46_47 = out_chan_dep_data_46;
    assign token_46_47 = token_out_vec_46[1];
    assign dep_chan_vld_46_48 = out_chan_dep_vld_vec_46[2];
    assign dep_chan_data_46_48 = out_chan_dep_data_46;
    assign token_46_48 = token_out_vec_46[2];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0
    fft_top_hls_deadlock_detect_unit #(52, 47, 1, 1) fft_top_hls_deadlock_detect_unit_47 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_47),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_47),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_47),
        .token_in_vec(token_in_vec_47),
        .dl_detect_in(dl_detect_out),
        .origin(origin[47]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_47),
        .out_chan_dep_data(out_chan_dep_data_47),
        .token_out_vec(token_out_vec_47),
        .dl_detect_out(dl_in_vec[47]));

    assign proc_47_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0.fftOutData_local2_blk_n);
    assign proc_47_data_PIPO_blk[0] = 1'b0;
    assign proc_47_start_FIFO_blk[0] = 1'b0;
    assign proc_47_TLF_FIFO_blk[0] = 1'b0;
    assign proc_47_input_sync_blk[0] = 1'b0;
    assign proc_47_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_47[0] = dl_detect_out ? proc_dep_vld_vec_47_reg[0] : (proc_47_data_FIFO_blk[0] | proc_47_data_PIPO_blk[0] | proc_47_start_FIFO_blk[0] | proc_47_TLF_FIFO_blk[0] | proc_47_input_sync_blk[0] | proc_47_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_47_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_47_reg <= proc_dep_vld_vec_47;
        end
    end
    assign in_chan_dep_vld_vec_47[0] = dep_chan_vld_46_47;
    assign in_chan_dep_data_vec_47[51 : 0] = dep_chan_data_46_47;
    assign token_in_vec_47[0] = token_46_47;
    assign dep_chan_vld_47_46 = out_chan_dep_vld_vec_47[0];
    assign dep_chan_data_47_46 = out_chan_dep_data_47;
    assign token_47_46 = token_out_vec_47[0];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0
    fft_top_hls_deadlock_detect_unit #(52, 48, 2, 2) fft_top_hls_deadlock_detect_unit_48 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_48),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_48),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_48),
        .token_in_vec(token_in_vec_48),
        .dl_detect_in(dl_detect_out),
        .origin(origin[48]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_48),
        .out_chan_dep_data(out_chan_dep_data_48),
        .token_out_vec(token_out_vec_48),
        .dl_detect_out(dl_in_vec[48]));

    assign proc_48_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0.fftOutData_local2_blk_n);
    assign proc_48_data_PIPO_blk[0] = 1'b0;
    assign proc_48_start_FIFO_blk[0] = 1'b0;
    assign proc_48_TLF_FIFO_blk[0] = 1'b0;
    assign proc_48_input_sync_blk[0] = 1'b0;
    assign proc_48_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_48[0] = dl_detect_out ? proc_dep_vld_vec_48_reg[0] : (proc_48_data_FIFO_blk[0] | proc_48_data_PIPO_blk[0] | proc_48_start_FIFO_blk[0] | proc_48_TLF_FIFO_blk[0] | proc_48_input_sync_blk[0] | proc_48_output_sync_blk[0]);
    assign proc_48_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0.fftOutData_local_blk_n);
    assign proc_48_data_PIPO_blk[1] = 1'b0;
    assign proc_48_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.start_for_convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.fftStageKernelLastStageS2S_U0.real_start & (trans_in_cnt_9 == trans_out_cnt_9) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.start_for_convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0_U.if_read);
    assign proc_48_TLF_FIFO_blk[1] = 1'b0;
    assign proc_48_input_sync_blk[1] = 1'b0;
    assign proc_48_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_48[1] = dl_detect_out ? proc_dep_vld_vec_48_reg[1] : (proc_48_data_FIFO_blk[1] | proc_48_data_PIPO_blk[1] | proc_48_start_FIFO_blk[1] | proc_48_TLF_FIFO_blk[1] | proc_48_input_sync_blk[1] | proc_48_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_48_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_48_reg <= proc_dep_vld_vec_48;
        end
    end
    assign in_chan_dep_vld_vec_48[0] = dep_chan_vld_46_48;
    assign in_chan_dep_data_vec_48[51 : 0] = dep_chan_data_46_48;
    assign token_in_vec_48[0] = token_46_48;
    assign in_chan_dep_vld_vec_48[1] = dep_chan_vld_49_48;
    assign in_chan_dep_data_vec_48[103 : 52] = dep_chan_data_49_48;
    assign token_in_vec_48[1] = token_49_48;
    assign dep_chan_vld_48_46 = out_chan_dep_vld_vec_48[0];
    assign dep_chan_data_48_46 = out_chan_dep_data_48;
    assign token_48_46 = token_out_vec_48[0];
    assign dep_chan_vld_48_49 = out_chan_dep_vld_vec_48[1];
    assign dep_chan_data_48_49 = out_chan_dep_data_48;
    assign token_48_49 = token_out_vec_48[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0
    fft_top_hls_deadlock_detect_unit #(52, 49, 2, 2) fft_top_hls_deadlock_detect_unit_49 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_49),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_49),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_49),
        .token_in_vec(token_in_vec_49),
        .dl_detect_in(dl_detect_out),
        .origin(origin[49]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_49),
        .out_chan_dep_data(out_chan_dep_data_49),
        .token_out_vec(token_out_vec_49),
        .dl_detect_out(dl_in_vec[49]));

    assign proc_49_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0.fftOutData_local_blk_n);
    assign proc_49_data_PIPO_blk[0] = 1'b0;
    assign proc_49_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.start_for_convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.start_for_convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0_U.if_write);
    assign proc_49_TLF_FIFO_blk[0] = 1'b0;
    assign proc_49_input_sync_blk[0] = 1'b0;
    assign proc_49_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_49[0] = dl_detect_out ? proc_dep_vld_vec_49_reg[0] : (proc_49_data_FIFO_blk[0] | proc_49_data_PIPO_blk[0] | proc_49_start_FIFO_blk[0] | proc_49_TLF_FIFO_blk[0] | proc_49_input_sync_blk[0] | proc_49_output_sync_blk[0]);
    assign proc_49_data_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0.fftOutData_local2_0_blk_n) | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0.fftOutData_local2_1_blk_n);
    assign proc_49_data_PIPO_blk[1] = 1'b0;
    assign proc_49_start_FIFO_blk[1] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.start_for_digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0_U.if_full_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0.ap_start & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.convertSuperStreamToArrayNScale_1_0_50000_1024_2_complex_complex_U0.real_start & (trans_in_cnt_10 == trans_out_cnt_10) & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.start_for_digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0_U.if_read);
    assign proc_49_TLF_FIFO_blk[1] = 1'b0;
    assign proc_49_input_sync_blk[1] = 1'b0;
    assign proc_49_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_49[1] = dl_detect_out ? proc_dep_vld_vec_49_reg[1] : (proc_49_data_FIFO_blk[1] | proc_49_data_PIPO_blk[1] | proc_49_start_FIFO_blk[1] | proc_49_TLF_FIFO_blk[1] | proc_49_input_sync_blk[1] | proc_49_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_49_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_49_reg <= proc_dep_vld_vec_49;
        end
    end
    assign in_chan_dep_vld_vec_49[0] = dep_chan_vld_48_49;
    assign in_chan_dep_data_vec_49[51 : 0] = dep_chan_data_48_49;
    assign token_in_vec_49[0] = token_48_49;
    assign in_chan_dep_vld_vec_49[1] = dep_chan_vld_50_49;
    assign in_chan_dep_data_vec_49[103 : 52] = dep_chan_data_50_49;
    assign token_in_vec_49[1] = token_50_49;
    assign dep_chan_vld_49_48 = out_chan_dep_vld_vec_49[0];
    assign dep_chan_data_49_48 = out_chan_dep_data_49;
    assign token_49_48 = token_out_vec_49[0];
    assign dep_chan_vld_49_50 = out_chan_dep_vld_vec_49[1];
    assign dep_chan_data_49_50 = out_chan_dep_data_49;
    assign token_49_50 = token_out_vec_49[1];

    // Process: fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0
    fft_top_hls_deadlock_detect_unit #(52, 50, 1, 1) fft_top_hls_deadlock_detect_unit_50 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_50),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_50),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_50),
        .token_in_vec(token_in_vec_50),
        .dl_detect_in(dl_detect_out),
        .origin(origin[50]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_50),
        .out_chan_dep_data(out_chan_dep_data_50),
        .token_out_vec(token_out_vec_50),
        .dl_detect_out(dl_in_vec[50]));

    assign proc_50_data_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0.grp_cacheDataDR_1024_2_ap_fixed_16_12_5_3_0_ap_fixed_16_12_5_3_0_s_fu_48.fftOutData_local2_0_blk_n) | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0.grp_cacheDataDR_1024_2_ap_fixed_16_12_5_3_0_ap_fixed_16_12_5_3_0_s_fu_48.fftOutData_local2_1_blk_n);
    assign proc_50_data_PIPO_blk[0] = 1'b0;
    assign proc_50_start_FIFO_blk[0] = 1'b0 | (~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.start_for_digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0_U.if_empty_n & fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0.ap_idle & ~fft_ssr_fft_params_complex_ap_fixed_16_1_5_3_0_U0.grp_innerFFT_1024_2_999999_2_0_0_0_complex_complex_complex_complex_s_fu_320.fftStage_8_U0.fftStage_U0.fftStage_1_U0.fftStage_2_U0.fftStage_3_U0.fftStage_4_U0.fftStage_5_U0.fftStage_6_U0.fftStage_7_U0.fftStage_9_U0.start_for_digitReversedDataReOrder_1024_2_ap_fixed_ap_fixed_16_12_5_3_0_U0_U.if_write);
    assign proc_50_TLF_FIFO_blk[0] = 1'b0;
    assign proc_50_input_sync_blk[0] = 1'b0;
    assign proc_50_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_50[0] = dl_detect_out ? proc_dep_vld_vec_50_reg[0] : (proc_50_data_FIFO_blk[0] | proc_50_data_PIPO_blk[0] | proc_50_start_FIFO_blk[0] | proc_50_TLF_FIFO_blk[0] | proc_50_input_sync_blk[0] | proc_50_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_50_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_50_reg <= proc_dep_vld_vec_50;
        end
    end
    assign in_chan_dep_vld_vec_50[0] = dep_chan_vld_49_50;
    assign in_chan_dep_data_vec_50[51 : 0] = dep_chan_data_49_50;
    assign token_in_vec_50[0] = token_49_50;
    assign dep_chan_vld_50_49 = out_chan_dep_vld_vec_50[0];
    assign dep_chan_data_50_49 = out_chan_dep_data_50;
    assign token_50_49 = token_out_vec_50[0];

    // Process: pack_data_U0
    fft_top_hls_deadlock_detect_unit #(52, 51, 1, 1) fft_top_hls_deadlock_detect_unit_51 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_51),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_51),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_51),
        .token_in_vec(token_in_vec_51),
        .dl_detect_in(dl_detect_out),
        .origin(origin[51]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_51),
        .out_chan_dep_data(out_chan_dep_data_51),
        .token_out_vec(token_out_vec_51),
        .dl_detect_out(dl_in_vec[51]));

    assign proc_51_data_FIFO_blk[0] = 1'b0 | (~pack_data_U0.outD_0_blk_n) | (~pack_data_U0.outD_1_blk_n);
    assign proc_51_data_PIPO_blk[0] = 1'b0;
    assign proc_51_start_FIFO_blk[0] = 1'b0 | (~start_for_pack_data_U0_U.if_empty_n & pack_data_U0.ap_idle & ~start_for_pack_data_U0_U.if_write);
    assign proc_51_TLF_FIFO_blk[0] = 1'b0;
    assign proc_51_input_sync_blk[0] = 1'b0;
    assign proc_51_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_51[0] = dl_detect_out ? proc_dep_vld_vec_51_reg[0] : (proc_51_data_FIFO_blk[0] | proc_51_data_PIPO_blk[0] | proc_51_start_FIFO_blk[0] | proc_51_TLF_FIFO_blk[0] | proc_51_input_sync_blk[0] | proc_51_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_51_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_51_reg <= proc_dep_vld_vec_51;
        end
    end
    assign in_chan_dep_vld_vec_51[0] = dep_chan_vld_1_51;
    assign in_chan_dep_data_vec_51[51 : 0] = dep_chan_data_1_51;
    assign token_in_vec_51[0] = token_1_51;
    assign dep_chan_vld_51_1 = out_chan_dep_vld_vec_51[0];
    assign dep_chan_data_51_1 = out_chan_dep_data_51;
    assign token_51_1 = token_out_vec_51[0];


`include "fft_top_hls_deadlock_report_unit.vh"
