############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name fast_accel "fast_accel"
set_directive_pipeline "fast_accel/Col_Loop"
set_directive_interface -mode ap_memory -depth 17000 "fast_accel" img_in
set_directive_interface -mode ap_memory -depth 17000 -latency 20 "fast_accel" img_out
set_directive_pipeline "fast_accel/Read_Col_Loop"
set_directive_array_partition -type complete -dim 1 "calculation" loc_array
set_directive_pipeline "fast_accel/Compute_Loop"
set_directive_pipeline "fast_accel/Preshift_Loop"
set_directive_array_partition -type complete -dim 1 "fast_accel" buffer
