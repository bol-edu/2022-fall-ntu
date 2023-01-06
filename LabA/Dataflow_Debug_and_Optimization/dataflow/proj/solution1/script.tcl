############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj
set_top diamond
add_files diamond.cpp
add_files -tb result.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb diamond_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flga2104-2-i}
create_clock -period 5 -name default
config_interface -m_axi_latency 0
#source "./proj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -enable_dataflow_profiling -trace_level all
export_design -format ip_catalog
