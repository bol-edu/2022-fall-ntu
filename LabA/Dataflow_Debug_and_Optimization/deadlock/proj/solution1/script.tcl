############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj
set_top example
add_files example.cpp
add_files -tb example_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flgc2104-2-i}
create_clock -period 2 -name default
config_export -vivado_clock 2
source "./proj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -enable_dataflow_profiling
export_design -flow syn -rtl verilog -format ip_catalog
