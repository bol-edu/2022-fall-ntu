############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fast
set_top fast_accel
add_files fast/code_src/fast.cpp
add_files fast/code_src/fast.h
add_files -tb fast/code_src/dst.txt
add_files -tb fast/code_src/fast_test.cpp
add_files -tb fast/code_src/src.txt
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
set_clock_uncertainty 6.7
source "./fast/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
