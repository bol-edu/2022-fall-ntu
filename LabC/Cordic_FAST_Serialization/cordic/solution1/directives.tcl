############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll "cordiccart2pol/cordic_loop"
set_directive_stream -depth 1 -type fifo "cordiccart2pol" r_out1
set_directive_top -name cordiccart2pol "cordiccart2pol"
set_directive_stream -depth 1 -type fifo "cordiccart2pol" r_out2
