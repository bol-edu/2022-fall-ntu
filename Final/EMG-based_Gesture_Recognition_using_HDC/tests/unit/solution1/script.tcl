############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AAHLS_Final_Project_deploy
set_top hdc_maxi
add_files AAHLS_Final_Project_deploy/HDC.h
add_files AAHLS_Final_Project_deploy/HDC.cpp
add_files -tb AAHLS_Final_Project_deploy/data/test_label_golden_1.csv -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb AAHLS_Final_Project_deploy/data/test_data_1.csv -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb AAHLS_Final_Project_deploy/data/IM.csv -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb AAHLS_Final_Project_deploy/HDCTester.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb AAHLS_Final_Project_deploy/data/AM_gen.csv -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -vivado_clock 10
source "./AAHLS_Final_Project_deploy/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
