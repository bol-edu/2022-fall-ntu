// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dut_add_64ns_64ns_64_2_1__HH__
#define __dut_add_64ns_64ns_64_2_1__HH__
#include "dut_add_64ns_64ns_64_2_1_Adder_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(dut_add_64ns_64ns_64_2_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    dut_add_64ns_64ns_64_2_1_Adder_0 dut_add_64ns_64ns_64_2_1_Adder_0_U;

    SC_CTOR(dut_add_64ns_64ns_64_2_1):  dut_add_64ns_64ns_64_2_1_Adder_0_U ("dut_add_64ns_64ns_64_2_1_Adder_0_U") {
        dut_add_64ns_64ns_64_2_1_Adder_0_U.clk(clk);
        dut_add_64ns_64ns_64_2_1_Adder_0_U.reset(reset);
        dut_add_64ns_64ns_64_2_1_Adder_0_U.ce(ce);
        dut_add_64ns_64ns_64_2_1_Adder_0_U.a(din0);
        dut_add_64ns_64ns_64_2_1_Adder_0_U.b(din1);
        dut_add_64ns_64ns_64_2_1_Adder_0_U.s(dout);

    }

};

#endif //
