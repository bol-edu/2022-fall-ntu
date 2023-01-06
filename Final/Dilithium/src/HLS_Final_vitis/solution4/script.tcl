############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HLS_final_vitis
set_top dpu_keygen
add_files HLS_Final_vitis_src/dpu.cpp
add_files HLS_Final_vitis_src/dpu.h
add_files HLS_Final_vitis_src/clean/params.h
add_files HLS_Final_vitis_src/spu.cpp
add_files HLS_Final_vitis_src/spu.h
add_files HLS_Final_vitis_src/wrapper.cpp
add_files HLS_Final_vitis_src/wrapper.h
add_files -tb HLS_Final_vitis_src/clean/aes256ctr.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/aes256ctr.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/api.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/config.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/fips202.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/fips202.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/ntt.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/ntt.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/packing.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/packing.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/params.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/poly.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/poly.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/polyvec.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/polyvec.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/randombytes.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/randombytes.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/reduce.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/reduce.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/rounding.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/rounding.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/sign.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/sign.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/symmetric-aes.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/symmetric-shake.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/clean/symmetric.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb HLS_Final_vitis_src/test_dilithium.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution4" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
source "./HLS_final_vitis/solution4/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
