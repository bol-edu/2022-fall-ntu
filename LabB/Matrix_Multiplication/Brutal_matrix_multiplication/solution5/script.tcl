############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Brutal_matrix_multiplication
set_top matrixmul
add_files Brutal_design.cpp
add_files Brutal_design.h
add_files -tb Brutal_testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution5"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./Brutal_matrix_multiplication/solution5/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
