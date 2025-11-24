
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [9:0] inst_idle_sigs;
wire [6:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~axi_to_internal_U0.fft_in_TDATA_blk_n;
assign axis_block_sigs[1] = ~internal_to_axi_U0.clean_out_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.alpha_c_blk_n | ~entry_proc_U0.beta_c_blk_n | ~entry_proc_U0.reset_noise_c_blk_n | ~entry_proc_U0.noise_frame_count_c_blk_n;
assign inst_idle_sigs[1] = axi_to_internal_U0.ap_idle;
assign inst_block_sigs[1] = (axi_to_internal_U0.ap_done & ~axi_to_internal_U0.ap_continue) | ~axi_to_internal_U0.stream1_blk_n;
assign inst_idle_sigs[2] = compute_magnitude_square_U0.ap_idle;
assign inst_block_sigs[2] = (compute_magnitude_square_U0.ap_done & ~compute_magnitude_square_U0.ap_continue) | ~compute_magnitude_square_U0.stream1_blk_n | ~compute_magnitude_square_U0.stream2_blk_n | ~compute_magnitude_square_U0.stream3_blk_n;
assign inst_idle_sigs[3] = Block_entry_proc_U0.ap_idle;
assign inst_block_sigs[3] = (Block_entry_proc_U0.ap_done & ~Block_entry_proc_U0.ap_continue) | ~Block_entry_proc_U0.cmp_i97_out_blk_n;
assign inst_idle_sigs[4] = Block_entry_frame_counter_wr_proc_U0.ap_idle;
assign inst_block_sigs[4] = (Block_entry_frame_counter_wr_proc_U0.ap_done & ~Block_entry_frame_counter_wr_proc_U0.ap_continue) | ~Block_entry_frame_counter_wr_proc_U0.reset_noise_blk_n | ~Block_entry_frame_counter_wr_proc_U0.noise_frame_count_blk_n | ~Block_entry_frame_counter_wr_proc_U0.grp_noise_estimation_accumulate_fu_246.stream3_blk_n | ~Block_entry_frame_counter_wr_proc_U0.grp_spectral_subtract_fu_262.stream5_blk_n | ~Block_entry_frame_counter_wr_proc_U0.alpha_blk_n | ~Block_entry_frame_counter_wr_proc_U0.beta_blk_n | ~Block_entry_frame_counter_wr_proc_U0.cmp_i97_loc_blk_n;
assign inst_idle_sigs[5] = reconstruct_signal_U0.ap_idle;
assign inst_block_sigs[5] = (reconstruct_signal_U0.ap_done & ~reconstruct_signal_U0.ap_continue) | ~reconstruct_signal_U0.stream5_blk_n | ~reconstruct_signal_U0.stream2_blk_n | ~reconstruct_signal_U0.stream6_blk_n;
assign inst_idle_sigs[6] = internal_to_axi_U0.ap_idle;
assign inst_block_sigs[6] = (internal_to_axi_U0.ap_done & ~internal_to_axi_U0.ap_continue) | ~internal_to_axi_U0.stream6_blk_n;

assign inst_idle_sigs[7] = 1'b0;
assign inst_idle_sigs[8] = axi_to_internal_U0.ap_idle;
assign inst_idle_sigs[9] = internal_to_axi_U0.ap_idle;

denoise_top_hls_deadlock_idx0_monitor denoise_top_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
