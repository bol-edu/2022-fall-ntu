############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline -II 1 "fir/TDL"
set_directive_pipeline -II 1 "fir/MAC"
set_directive_array_partition -type complete -dim 1 "fir" shift_reg
set_directive_array_partition -type complete -dim 1 "fir" c
