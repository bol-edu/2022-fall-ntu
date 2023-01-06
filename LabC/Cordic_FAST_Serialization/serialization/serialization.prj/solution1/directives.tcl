############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name dut "dut"
set_directive_interface -mode axis -register -register_mode both -depth 120000 "dut" src_buff
set_directive_interface -mode axis -register -register_mode both -depth 120000 "dut" dst_buff
