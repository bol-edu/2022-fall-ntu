############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project BlockMatrix_multiplication
set_top blockmatmul
add_files BlockMatrix_design.cpp
add_files BlockMatrix_design.h
add_files -tb BlockBatrix_testbench.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb matrixmultiplication.gold.dat
open_solution "solution1"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./BlockMatrix_multiplication/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -tool xsim
export_design -format ip_catalog
