set PROJ_NAME "vivado_project"
set PROJ_DIR "build/$PROJ_NAME"
set PART "xc7z020-clg484-1"
set IP_REPO "build/hls_project/solution1/impl/ip"

create_project -force $PROJ_NAME $PROJ_DIR -part $PART

set_property  ip_repo_paths  $IP_REPO [current_project]
update_ip_catalog

create_bd_design "fft_design"

# Add Zynq
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]

# Manual configuration for PYNQ-Z2 (Zynq 7020)
set_property -dict [list \
    CONFIG.PCW_USE_M_AXI_GP0 {1} \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
    CONFIG.PCW_EN_CLK0_PORT {1} \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
    CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
    CONFIG.PCW_IRQ_F2P_INTR {1} \
] [get_bd_cells processing_system7_0]

# Add FFT IP
create_bd_cell -type ip -vlnv xilinx.com:hls:fft_top:1.0 fft_top_0

# Add DMA
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_sg_include_stscntrl_strm {0} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {64} CONFIG.c_s_axis_s2mm_tdata_width {64}] [get_bd_cells axi_dma_0]

# Add SmartConnects
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc_gp0
set_property CONFIG.NUM_MI {2} [get_bd_cells axi_smc_gp0]

create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smc_hp0
set_property CONFIG.NUM_SI {2} [get_bd_cells axi_smc_hp0]

# Add Reset System
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M

# Connect Clock
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_dma_0/s_axi_lite_aclk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_dma_0/m_axi_mm2s_aclk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_dma_0/m_axi_s2mm_aclk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins fft_top_0/ap_clk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_smc_gp0/aclk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_smc_hp0/aclk]

# Connect Reset
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_100M/ext_reset_in]
connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins axi_dma_0/axi_resetn]
connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins fft_top_0/ap_rst_n]
connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins axi_smc_gp0/aresetn]
connect_bd_net [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins axi_smc_hp0/aresetn]

# Connect AXI GP0 -> SmartConnect -> Slaves
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins axi_smc_gp0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smc_gp0/M00_AXI] [get_bd_intf_pins axi_dma_0/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins axi_smc_gp0/M01_AXI] [get_bd_intf_pins fft_top_0/s_axi_control]

# Connect DMA -> SmartConnect -> HP0
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_smc_hp0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_smc_hp0/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smc_hp0/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]

# Connect Stream
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins fft_top_0/in_stream]
connect_bd_intf_net [get_bd_intf_pins fft_top_0/out_stream] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]

# Assign Addresses
assign_bd_address

# Validate and Save
validate_bd_design
save_bd_design

# Wrapper
make_wrapper -files [get_files $PROJ_DIR/$PROJ_NAME.srcs/sources_1/bd/fft_design/fft_design.bd] -top
add_files -norecurse $PROJ_DIR/$PROJ_NAME.srcs/sources_1/bd/fft_design/hdl/fft_design_wrapper.v

# Bitstream
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

# Export
file mkdir build/overlay
file copy -force $PROJ_DIR/$PROJ_NAME.runs/impl_1/fft_design_wrapper.bit build/overlay/fft.bit
file copy -force $PROJ_DIR/$PROJ_NAME.gen/sources_1/bd/fft_design/hw_handoff/fft_design.hwh build/overlay/fft.hwh

exit
