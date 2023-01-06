// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern void AESL_WRAP_blockmatmul (
hls::stream<blockvec > (&Arows),
hls::stream<blockvec > (&Bcols),
blockmat (&ABpartial),
int it);
