############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline -II 1 "dct_2d/Xpose_Row_Inner_Loop"
set_directive_pipeline -II 1 "dct_2d/Xpose_Col_Inner_Loop"
set_directive_pipeline -II 1 "read_data/RD_Loop_Col"
set_directive_pipeline -II 1 "write_data/WR_Loop_Col"
set_directive_pipeline -II 1 "dct_1d/DCT_Outer_Loop"
set_directive_array_partition -type complete -dim 2 "dct" buf_2d_in
set_directive_array_partition -type complete -dim 2 "dct_2d" col_inbuf
set_directive_dataflow "dct"
