############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline "matrixmul/Col"
set_directive_array_reshape -type cyclic -factor 2 -dim 2 "matrixmul" a
set_directive_array_reshape -type cyclic -factor 2 -dim 1 "matrixmul" b
