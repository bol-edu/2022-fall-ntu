############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project baseline
set_top fir
add_files fir.h
add_files fir.cpp
add_files -tb input.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb out.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb fir_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "loop_fusion_pipeline_bitwidth"
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./baseline/loop_fusion_pipeline_bitwidth/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
