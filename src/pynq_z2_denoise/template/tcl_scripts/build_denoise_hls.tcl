set PROJ_DIR "build/denoise_hls"
set TOP_FUNC "denoise_top"
set PART "xc7z020clg484-1"

# Use absolute paths
set BASE_DIR "D:/Application/Xilinx/Vitis_HLS/2024.2/bin/denoise_pynq"
set SRC_DIR "${BASE_DIR}/src"

open_project -reset $PROJ_DIR
set_top $TOP_FUNC

set cpp_file "${SRC_DIR}/denoise_top.cpp"
set hpp_file "${SRC_DIR}/denoise_config.hpp"

puts "========================================"
puts "Source directory: ${SRC_DIR}"
puts "========================================"

if {![file exists $cpp_file]} {
    puts "ERROR: Cannot find ${cpp_file}"
    exit 1
}

if {![file exists $hpp_file]} {
    puts "ERROR: Cannot find ${hpp_file}"
    exit 1
}

puts "FOUND: ${cpp_file}"
puts "FOUND: ${hpp_file}"

add_files ${cpp_file} -cflags "-I${SRC_DIR} -std=c++14"
add_files ${hpp_file}

open_solution "solution1" -flow_target vivado
set_part $PART
create_clock -period 10 -name default

config_compile -pipeline_loops 64
config_rtl -reset all -reset_async -reset_level low
config_interface -m_axi_latency 64
config_interface -m_axi_alignment_byte_size 64
config_dataflow -default_channel fifo -fifo_depth 8
config_schedule -enable_dsp_full_reg=false

puts ""
puts "Starting C Synthesis..."

csynth_design

export_design -format ip_catalog -output ${PROJ_DIR}/denoise_ip.zip

puts "Build Complete!"

exit