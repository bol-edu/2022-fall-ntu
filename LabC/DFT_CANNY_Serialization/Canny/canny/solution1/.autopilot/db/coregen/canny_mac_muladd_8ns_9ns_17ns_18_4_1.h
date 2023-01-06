// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __canny_mac_muladd_8ns_9ns_17ns_18_4_1__HH__
#define __canny_mac_muladd_8ns_9ns_17ns_18_4_1__HH__
#include "canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(canny_mac_muladd_8ns_9ns_17ns_18_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1 canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U;

    SC_CTOR(canny_mac_muladd_8ns_9ns_17ns_18_4_1):  canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U ("canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U") {
        canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U.clk(clk);
        canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U.rst(reset);
        canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U.ce(ce);
        canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U.in0(din0);
        canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U.in1(din1);
        canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U.in2(din2);
        canny_mac_muladd_8ns_9ns_17ns_18_4_1_DSP48_1_U.dout(dout);

    }

};

#endif //
