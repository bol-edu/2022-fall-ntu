// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _blockmatmul_HH_
#define _blockmatmul_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Loop_memset_AB_proc1.h"
#include "Loop_writeoutput_pro.h"
#include "blockmatmul_AB.h"

namespace ap_rtl {

struct blockmatmul : public sc_module {
    // Port declarations 41
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<32> > Arows_V_a_0_dout;
    sc_in< sc_logic > Arows_V_a_0_empty_n;
    sc_out< sc_logic > Arows_V_a_0_read;
    sc_in< sc_lv<32> > Arows_V_a_1_dout;
    sc_in< sc_logic > Arows_V_a_1_empty_n;
    sc_out< sc_logic > Arows_V_a_1_read;
    sc_in< sc_lv<32> > Arows_V_a_2_dout;
    sc_in< sc_logic > Arows_V_a_2_empty_n;
    sc_out< sc_logic > Arows_V_a_2_read;
    sc_in< sc_lv<32> > Arows_V_a_3_dout;
    sc_in< sc_logic > Arows_V_a_3_empty_n;
    sc_out< sc_logic > Arows_V_a_3_read;
    sc_in< sc_lv<32> > Bcols_V_a_0_dout;
    sc_in< sc_logic > Bcols_V_a_0_empty_n;
    sc_out< sc_logic > Bcols_V_a_0_read;
    sc_in< sc_lv<32> > Bcols_V_a_1_dout;
    sc_in< sc_logic > Bcols_V_a_1_empty_n;
    sc_out< sc_logic > Bcols_V_a_1_read;
    sc_in< sc_lv<32> > Bcols_V_a_2_dout;
    sc_in< sc_logic > Bcols_V_a_2_empty_n;
    sc_out< sc_logic > Bcols_V_a_2_read;
    sc_in< sc_lv<32> > Bcols_V_a_3_dout;
    sc_in< sc_logic > Bcols_V_a_3_empty_n;
    sc_out< sc_logic > Bcols_V_a_3_read;
    sc_out< sc_lv<4> > ABpartial_out_address0;
    sc_out< sc_logic > ABpartial_out_ce0;
    sc_out< sc_lv<32> > ABpartial_out_d0;
    sc_in< sc_lv<32> > ABpartial_out_q0;
    sc_out< sc_logic > ABpartial_out_we0;
    sc_out< sc_lv<4> > ABpartial_out_address1;
    sc_out< sc_logic > ABpartial_out_ce1;
    sc_out< sc_lv<32> > ABpartial_out_d1;
    sc_in< sc_lv<32> > ABpartial_out_q1;
    sc_out< sc_logic > ABpartial_out_we1;
    sc_in< sc_lv<32> > it;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_logic > ap_var_for_const3;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<128> > ap_var_for_const1;
    sc_signal< sc_lv<2> > ap_var_for_const2;


    // Module declarations
    blockmatmul(sc_module_name name);
    SC_HAS_PROCESS(blockmatmul);

    ~blockmatmul();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    blockmatmul_AB* AB_U;
    Loop_memset_AB_proc1* Loop_memset_AB_proc1_U0;
    Loop_writeoutput_pro* Loop_writeoutput_pro_U0;
    sc_signal< sc_lv<128> > AB_i_q0;
    sc_signal< sc_lv<128> > AB_t_q0;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_ap_start;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_ap_done;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_ap_continue;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_ap_idle;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_ap_ready;
    sc_signal< sc_lv<2> > Loop_memset_AB_proc1_U0_AB_address0;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_AB_ce0;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_AB_we0;
    sc_signal< sc_lv<128> > Loop_memset_AB_proc1_U0_AB_d0;
    sc_signal< sc_lv<2> > Loop_memset_AB_proc1_U0_AB_address1;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_AB_ce1;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_AB_we1;
    sc_signal< sc_lv<128> > Loop_memset_AB_proc1_U0_AB_d1;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_Arows_V_a_0_read;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_Arows_V_a_1_read;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_Arows_V_a_2_read;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_Arows_V_a_3_read;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_Bcols_V_a_0_read;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_Bcols_V_a_1_read;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_Bcols_V_a_2_read;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_Bcols_V_a_3_read;
    sc_signal< sc_logic > ap_channel_done_AB;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_AB_full_n;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_ap_start;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_ap_done;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_ap_continue;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_ap_idle;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_ap_ready;
    sc_signal< sc_lv<2> > Loop_writeoutput_pro_U0_AB_address0;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_AB_ce0;
    sc_signal< sc_lv<4> > Loop_writeoutput_pro_U0_ABpartial_out_address0;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_ABpartial_out_ce0;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_ABpartial_out_we0;
    sc_signal< sc_lv<32> > Loop_writeoutput_pro_U0_ABpartial_out_d0;
    sc_signal< sc_lv<4> > Loop_writeoutput_pro_U0_ABpartial_out_address1;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_ABpartial_out_ce1;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_ABpartial_out_we1;
    sc_signal< sc_lv<32> > Loop_writeoutput_pro_U0_ABpartial_out_d1;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > AB_i_full_n;
    sc_signal< sc_logic > AB_t_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_start_full_n;
    sc_signal< sc_logic > Loop_memset_AB_proc1_U0_start_write;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_start_full_n;
    sc_signal< sc_logic > Loop_writeoutput_pro_U0_start_write;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<128> ap_const_lv128_lc_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<128> ap_const_lv128_lc_3;
    // Thread declarations
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ABpartial_out_address0();
    void thread_ABpartial_out_address1();
    void thread_ABpartial_out_ce0();
    void thread_ABpartial_out_ce1();
    void thread_ABpartial_out_d0();
    void thread_ABpartial_out_d1();
    void thread_ABpartial_out_we0();
    void thread_ABpartial_out_we1();
    void thread_Arows_V_a_0_read();
    void thread_Arows_V_a_1_read();
    void thread_Arows_V_a_2_read();
    void thread_Arows_V_a_3_read();
    void thread_Bcols_V_a_0_read();
    void thread_Bcols_V_a_1_read();
    void thread_Bcols_V_a_2_read();
    void thread_Bcols_V_a_3_read();
    void thread_Loop_memset_AB_proc1_U0_AB_full_n();
    void thread_Loop_memset_AB_proc1_U0_ap_continue();
    void thread_Loop_memset_AB_proc1_U0_ap_start();
    void thread_Loop_memset_AB_proc1_U0_start_full_n();
    void thread_Loop_memset_AB_proc1_U0_start_write();
    void thread_Loop_writeoutput_pro_U0_ap_continue();
    void thread_Loop_writeoutput_pro_U0_ap_start();
    void thread_Loop_writeoutput_pro_U0_start_full_n();
    void thread_Loop_writeoutput_pro_U0_start_write();
    void thread_ap_channel_done_AB();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
