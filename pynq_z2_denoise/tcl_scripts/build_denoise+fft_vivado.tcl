# ========================================
# Audio Denoise System - Fixed Version
# Compatible with flat IP structure
# Date: 2025-11-20 10:53 CST
# User: VincentttWang
# ========================================

set BASE_DIR "D:/Application/Xilinx/Vitis_HLS/2024.2/bin/denoise_pynq/build"

puts "========================================="
puts "Audio Denoise System Builder"
puts "Date: 2025-11-20 10:53 CST"
puts "User: VincentttWang"
puts "========================================="


# ========================================
# 创建 Vivado 项目
# ========================================
puts "\n========================================="
puts "Creating Vivado project..."
puts "========================================="

set PROJ_NAME "audio_denoise_system"
set PROJ_DIR "${BASE_DIR}/${PROJ_NAME}"
set PART "xc7z020clg484-1"

create_project -force $PROJ_NAME $PROJ_DIR -part $PART

set_property target_language Verilog [current_project]
set_property simulator_language Mixed [current_project]

# ========================================
# 添加 IP 仓库（使用父目录）
# ========================================
puts "Adding IP repositories..."

# 注意：ip_repo_paths 应该指向包含 IP 目录的父目录
set_property ip_repo_paths [list $BASE_DIR] [current_project]
update_ip_catalog -rebuild

# 列出可用的 HLS IP
puts "\nSearching for HLS IPs..."
set found_fft 0
set found_denoise 0

foreach ip [get_ipdefs] {
    if {[string match "*fft_top*" $ip]} {
        puts "  Found FFT: $ip"
        set found_fft 1
    }
    if {[string match "*denoise_top*" $ip]} {
        puts "  Found Denoise: $ip"
        set found_denoise 1
    }
}

if {!$found_fft} {
    puts "ERROR: FFT IP not found in catalog"
    puts "\nAll available IPs:"
    foreach ip [get_ipdefs -filter {VLNV =~ "*hls*"}] {
        puts "  $ip"
    }
    exit 1
}

if {!$found_denoise} {
    puts "ERROR: Denoise IP not found in catalog"
    exit 1
}

# ========================================
# 创建 Block Design
# ========================================
puts "\n========================================="
puts "Creating block design..."
puts "========================================="

create_bd_design "audio_system"

# 添加 Zynq PS
puts "Adding Zynq PS..."
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0

apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
    -config {make_external "FIXED_IO, DDR" apply_board_preset "0" Master "Disable" Slave "Disable"} \
    [get_bd_cells processing_system7_0]

set_property -dict [list \
    CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
    CONFIG.PCW_USE_M_AXI_GP0 {1} \
    CONFIG.PCW_USE_S_AXI_HP0 {1} \
    CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
    CONFIG.PCW_EN_CLK0_PORT {1} \
    CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
    CONFIG.PCW_IRQ_F2P_INTR {1} \
] [get_bd_cells processing_system7_0]

# 添加 AXI DMA
puts "Adding AXI DMA..."
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_0

set_property -dict [list \
    CONFIG.c_include_sg {0} \
    CONFIG.c_m_axi_mm2s_data_width {64} \
    CONFIG.c_m_axi_s2mm_data_width {64} \
    CONFIG.c_mm2s_burst_size {256} \
    CONFIG.c_s2mm_burst_size {256} \
] [get_bd_cells axi_dma_0]

# 添加 FFT IP（使用找到的 VLNV）
puts "Adding FFT IP..."
set fft_vlnv [lindex [get_ipdefs -filter {NAME == fft_top}] 0]
create_bd_cell -type ip -vlnv $fft_vlnv fft_top_0

# 添加 Denoise IP
puts "Adding Denoise IP..."
set denoise_vlnv [lindex [get_ipdefs -filter {NAME == denoise_top}] 0]
create_bd_cell -type ip -vlnv $denoise_vlnv denoise_top_0

# 添加互连
puts "Adding interconnects..."
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_gp0
set_property -dict [list CONFIG.NUM_MI {3} CONFIG.NUM_SI {1}] [get_bd_cells axi_ic_gp0]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_ic_hp0
set_property -dict [list CONFIG.NUM_MI {1} CONFIG.NUM_SI {2}] [get_bd_cells axi_ic_hp0]

create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M

# ========================================
# 连接时钟
# ========================================
puts "Connecting clocks..."
set clk [get_bd_pins processing_system7_0/FCLK_CLK0]

foreach pin {
    processing_system7_0/M_AXI_GP0_ACLK processing_system7_0/S_AXI_HP0_ACLK
    axi_dma_0/s_axi_lite_aclk axi_dma_0/m_axi_mm2s_aclk axi_dma_0/m_axi_s2mm_aclk
    fft_top_0/ap_clk denoise_top_0/ap_clk
    axi_ic_gp0/ACLK axi_ic_gp0/S00_ACLK axi_ic_gp0/M00_ACLK axi_ic_gp0/M01_ACLK axi_ic_gp0/M02_ACLK
    axi_ic_hp0/ACLK axi_ic_hp0/S00_ACLK axi_ic_hp0/S01_ACLK axi_ic_hp0/M00_ACLK
    rst_ps7_0_100M/slowest_sync_clk
} {
    connect_bd_net $clk [get_bd_pins $pin]
}

# ========================================
# 连接复位
# ========================================
puts "Connecting resets..."
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] \
               [get_bd_pins rst_ps7_0_100M/ext_reset_in]

set rst [get_bd_pins rst_ps7_0_100M/peripheral_aresetn]
foreach pin {
    axi_dma_0/axi_resetn fft_top_0/ap_rst_n denoise_top_0/ap_rst_n
    axi_ic_gp0/S00_ARESETN axi_ic_gp0/M00_ARESETN axi_ic_gp0/M01_ARESETN axi_ic_gp0/M02_ARESETN
    axi_ic_hp0/S00_ARESETN axi_ic_hp0/S01_ARESETN axi_ic_hp0/M00_ARESETN
} {
    connect_bd_net $rst [get_bd_pins $pin]
}

connect_bd_net [get_bd_pins rst_ps7_0_100M/interconnect_aresetn] [get_bd_pins axi_ic_gp0/ARESETN]
connect_bd_net [get_bd_pins rst_ps7_0_100M/interconnect_aresetn] [get_bd_pins axi_ic_hp0/ARESETN]

# ========================================
# 连接 AXI 接口
# ========================================
puts "Connecting AXI interfaces..."

# 控制总线
connect_bd_intf_net [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins axi_ic_gp0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ic_gp0/M00_AXI] [get_bd_intf_pins axi_dma_0/S_AXI_LITE]
connect_bd_intf_net [get_bd_intf_pins axi_ic_gp0/M01_AXI] [get_bd_intf_pins fft_top_0/s_axi_control]
connect_bd_intf_net [get_bd_intf_pins axi_ic_gp0/M02_AXI] [get_bd_intf_pins denoise_top_0/s_axi_control]

# 数据总线
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_MM2S] [get_bd_intf_pins axi_ic_hp0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXI_S2MM] [get_bd_intf_pins axi_ic_hp0/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_ic_hp0/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]

# ========================================
# 连接 AXI Stream（关键级联）
# ========================================
puts "Connecting AXI Stream cascade..."
puts "  DMA -> FFT -> Denoise -> DMA"

connect_bd_intf_net [get_bd_intf_pins axi_dma_0/M_AXIS_MM2S] [get_bd_intf_pins fft_top_0/in_stream]
connect_bd_intf_net [get_bd_intf_pins fft_top_0/out_stream] [get_bd_intf_pins denoise_top_0/fft_in]
connect_bd_intf_net [get_bd_intf_pins denoise_top_0/clean_out] [get_bd_intf_pins axi_dma_0/S_AXIS_S2MM]

# ========================================
# 连接中断
# ========================================
puts "Connecting interrupts..."
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
set_property CONFIG.NUM_PORTS {2} [get_bd_cells xlconcat_0]

connect_bd_net [get_bd_pins axi_dma_0/mm2s_introut] [get_bd_pins xlconcat_0/In0]
connect_bd_net [get_bd_pins axi_dma_0/s2mm_introut] [get_bd_pins xlconcat_0/In1]
connect_bd_net [get_bd_pins xlconcat_0/dout] [get_bd_pins processing_system7_0/IRQ_F2P]

# ========================================
# 分配地址
# ========================================
puts "Assigning addresses..."
assign_bd_address

# ========================================
# 验证并保存
# ========================================
puts "Validating design..."
validate_bd_design
save_bd_design

# ========================================
# 生成 HDL Wrapper
# ========================================
puts "Generating HDL wrapper..."
make_wrapper -files [get_files ${PROJ_DIR}/${PROJ_NAME}.srcs/sources_1/bd/audio_system/audio_system.bd] -top
add_files -norecurse ${PROJ_DIR}/${PROJ_NAME}.gen/sources_1/bd/audio_system/hdl/audio_system_wrapper.v
update_compile_order -fileset sources_1

# ========================================
# 综合和实现
# ========================================
puts "\n========================================="
puts "Starting synthesis..."
puts "Estimated time: 15-25 minutes"
puts "========================================="

launch_runs synth_1 -jobs 8
wait_on_run synth_1

puts "\n========================================="
puts "Starting implementation..."
puts "Estimated time: 20-40 minutes"
puts "========================================="

launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1

# ========================================
# 导出文件
# ========================================
puts "\n========================================="
puts "Exporting files..."
puts "========================================="

file mkdir ${BASE_DIR}/overlay

set bit "${PROJ_DIR}/${PROJ_NAME}.runs/impl_1/audio_system_wrapper.bit"
set hwh "${PROJ_DIR}/${PROJ_NAME}.gen/sources_1/bd/audio_system/hw_handoff/audio_system.hwh"

file copy -force $bit ${BASE_DIR}/overlay/audio_denoise.bit
file copy -force $hwh ${BASE_DIR}/overlay/audio_denoise.hwh

open_run impl_1
report_utilization -file ${BASE_DIR}/overlay/utilization.rpt
report_timing_summary -file ${BASE_DIR}/overlay/timing.rpt

puts "\n========================================="
puts "BUILD COMPLETE!"
puts "========================================="
puts "Output files:"
puts "  ${BASE_DIR}/overlay/audio_denoise.bit"
puts "  ${BASE_DIR}/overlay/audio_denoise.hwh"
puts "  ${BASE_DIR}/overlay/utilization.rpt"
puts "  ${BASE_DIR}/overlay/timing.rpt"
puts "========================================="

exit