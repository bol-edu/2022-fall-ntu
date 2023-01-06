############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cordic_LUT
set_top cordiccart2pol
add_files cordic_LUT/solution1/cordiccart2pol.h
add_files cordic_LUT/solution1/cordiccart2pol.cpp
add_files -tb cordic_LUT/solution1/cordiccart2pol_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
#source "./cordic_LUT/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
