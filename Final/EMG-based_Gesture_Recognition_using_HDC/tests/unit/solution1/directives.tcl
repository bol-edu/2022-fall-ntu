############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name hdc_maxi "hdc_maxi"
set_directive_array_reshape -dim 1 -factor 256 -type cyclic "hdc_maxi" new_IM
set_directive_array_reshape -type cyclic -factor 16 -dim 1 "hdc_maxi/hdc_maxi_label0" test_data_d
set_directive_array_reshape -type cyclic -factor 4 -dim 1 "hdc_maxi" ngram
set_directive_array_reshape -type cyclic -factor 4 -dim 2 "hdc_maxi" AM
