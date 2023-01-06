// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1__HH__
#define __hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1__HH__
#include "hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1 hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U;

    SC_CTOR(hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1):  hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U ("hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U") {
        hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U.clk(clk);
        hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U.rst(reset);
        hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U.ce(ce);
        hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U.in0(din0);
        hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U.in1(din1);
        hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U.in2(din2);
        hdc_maxi_mac_muladd_3ns_8ns_7ns_11_4_1_DSP48_1_U.dout(dout);

    }

};

#endif //
