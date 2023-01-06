############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project labc-harris -reset
set_top harris
add_files ./src/harris.cpp
add_files ./src/harris.h
add_files ./src/harris_cpu.cpp
add_files -tb ./src/debug.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ./src/dst.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ./src/harris_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ./src/src.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "basic" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 5.6 -name default

csim_design
csynth_design
cosim_design -wave_debug -trace_level port
