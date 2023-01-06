############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name array_io "array_io"
set_directive_unroll "array_io/For_Loop"
set_directive_interface -mode ap_fifo "array_io" d_o
set_directive_interface -mode ap_memory -storage_type ram_2p -storage_impl bram "array_io" d_i
set_directive_array_partition -dim 1 -factor 2 -type cyclic "array_io" d_o
set_directive_array_partition -dim 1 -factor 2 -type cyclic "array_io" d_i
