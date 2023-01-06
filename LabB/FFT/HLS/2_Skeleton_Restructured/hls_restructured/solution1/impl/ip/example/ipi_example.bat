:: ==============================================================
:: Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
:: Tool Version Limit: 2022.04
:: Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
:: ==============================================================

@echo off

C:/Xilinx/Vivado/2022.1/bin/vivado  -notrace -mode batch -source ipi_example.tcl -tclargs xc7z020-clg400-1 ../xilinx_com_hls_fft_1_0.zip
