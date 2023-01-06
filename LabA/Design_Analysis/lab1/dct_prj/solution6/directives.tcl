############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "dct_1d/DCT_Outer_Loop"
set_directive_inline "dct_2d"
set_directive_array_partition -type complete -dim 2 "dct_2d" col_inbuf
set_directive_pipeline "dct_2d/Xpose_Row_Inner_Loop"
set_directive_pipeline "dct_2d/Xpose_Col_Inner_Loop"
set_directive_pipeline "read_data/RD_Loop_Col"
set_directive_pipeline "write_data/WR_Loop_Col"
set_directive_dataflow "dct"
set_directive_array_partition -type complete -dim 2 "dct" buf_2d_in
