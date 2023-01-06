// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __canny_mul_mul_26s_6ns_32_4_1__HH__
#define __canny_mul_mul_26s_6ns_32_4_1__HH__
#include "canny_mul_mul_26s_6ns_32_4_1_DSP48_21.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(canny_mul_mul_26s_6ns_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    canny_mul_mul_26s_6ns_32_4_1_DSP48_21 canny_mul_mul_26s_6ns_32_4_1_DSP48_21_U;

    SC_CTOR(canny_mul_mul_26s_6ns_32_4_1):  canny_mul_mul_26s_6ns_32_4_1_DSP48_21_U ("canny_mul_mul_26s_6ns_32_4_1_DSP48_21_U") {
        canny_mul_mul_26s_6ns_32_4_1_DSP48_21_U.clk(clk);
        canny_mul_mul_26s_6ns_32_4_1_DSP48_21_U.rst(reset);
        canny_mul_mul_26s_6ns_32_4_1_DSP48_21_U.ce(ce);
        canny_mul_mul_26s_6ns_32_4_1_DSP48_21_U.a(din0);
        canny_mul_mul_26s_6ns_32_4_1_DSP48_21_U.b(din1);
        canny_mul_mul_26s_6ns_32_4_1_DSP48_21_U.p(dout);

    }

};

#endif //
