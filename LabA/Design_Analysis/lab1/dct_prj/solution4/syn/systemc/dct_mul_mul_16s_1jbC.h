// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dct_mul_mul_16s_1jbC__HH__
#define __dct_mul_mul_16s_1jbC__HH__
#include "ACMP_smul_ss.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(dct_mul_mul_16s_1jbC) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_smul_ss<ID, 1, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_smul_ss_U;

    SC_CTOR(dct_mul_mul_16s_1jbC):  ACMP_smul_ss_U ("ACMP_smul_ss_U") {
        ACMP_smul_ss_U.din0(din0);
        ACMP_smul_ss_U.din1(din1);
        ACMP_smul_ss_U.dout(dout);

    }

};

#endif //
