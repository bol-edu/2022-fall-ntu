############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project serialization.prj
set_top dut
add_files top.cpp -cflags "-I./."
add_files -tb test.cpp -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb data/fix_data.arrow -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb data/fix.obj -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb data/var_data.arrow -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb data/var.obj -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb data/mix_data.arrow -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb data/mix.obj -cflags "-I. -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2" -flow_target vitis
set_part {xc7z020-clg400-1}
create_clock -period 3.3 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
set_clock_uncertainty 0.0
source "./serialization.prj/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
