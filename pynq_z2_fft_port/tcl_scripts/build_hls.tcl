set PROJ_DIR "build/hls_project"
set TOP_FUNC "fft_top"
set PART "xc7z020-clg484-1"

open_project -reset $PROJ_DIR
set_top $TOP_FUNC

add_files src/fft_top.cpp -cflags "-I/home/alan/Learning/FPGA/fpgachina/Vitis_Libraries/dsp/L1/include/hw/vitis_fft/fixed"
add_files src/fft_config.hpp

open_solution "solution1"
set_part $PART
create_clock -period 10 -name default

csynth_design
export_design -format ip_catalog -output build/fft_top.zip

exit
