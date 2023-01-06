############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project myproj
set_top example
add_files example.cpp
add_files example.h
add_files -tb example_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 10 -name default
#source "./myproj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -enable_dataflow_profiling
export_design -format ip_catalog
