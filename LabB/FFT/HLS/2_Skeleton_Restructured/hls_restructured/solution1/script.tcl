############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_restructured
set_top fft
add_files fft.cpp
add_files fft.h
add_files -tb fft_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb out.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_array_partition -complete_threshold 8
config_compile -pipeline_loops 1024
config_export -format ip_catalog -rtl verilog
source "./hls_restructured/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -enable_dataflow_profiling
export_design -rtl verilog -format ip_catalog
