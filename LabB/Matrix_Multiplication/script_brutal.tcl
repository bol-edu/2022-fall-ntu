############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Brutal_matrix_multiplication
set_top matrixmul
add_files Brutal_design.h
add_files Brutal_design.cpp
add_files -tb Brutal_testbench.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution -reset solution1
#open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default

exit
#source "./matrix_multiplication/solution1/directives.tcl"
csim_design

# Do not perform any other steps
# - The basic project will be opened in the GUI 
exit

csynth_design
cosim_design
export_design -format ip_catalog
