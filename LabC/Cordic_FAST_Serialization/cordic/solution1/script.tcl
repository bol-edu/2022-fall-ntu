############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cordic_v5
set_top cordiccart2pol
add_files cordic_v5/code_src/cordiccart2pol.cpp
add_files cordic_v5/code_src/cordiccart2pol.h
add_files -tb cordic_v5/code_src/cordiccart2pol_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 1000 -name default
set_clock_uncertainty 997
source "./cordic_v5/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
