// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Block_blockmatmul_me.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Block_blockmatmul_me::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Block_blockmatmul_me::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> Block_blockmatmul_me::ap_ST_fsm_state1 = "1";
const sc_lv<3> Block_blockmatmul_me::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> Block_blockmatmul_me::ap_ST_fsm_state4 = "100";
const sc_lv<32> Block_blockmatmul_me::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool Block_blockmatmul_me::ap_const_boolean_1 = true;
const sc_lv<32> Block_blockmatmul_me::ap_const_lv32_1 = "1";
const bool Block_blockmatmul_me::ap_const_boolean_0 = false;
const sc_lv<1> Block_blockmatmul_me::ap_const_lv1_0 = "0";
const sc_lv<1> Block_blockmatmul_me::ap_const_lv1_1 = "1";
const sc_lv<4> Block_blockmatmul_me::ap_const_lv4_0 = "0000";
const sc_lv<4> Block_blockmatmul_me::ap_const_lv4_8 = "1000";
const sc_lv<4> Block_blockmatmul_me::ap_const_lv4_1 = "1";
const sc_lv<32> Block_blockmatmul_me::ap_const_lv32_2 = "10";

Block_blockmatmul_me::Block_blockmatmul_me(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_A_0_blk_n);
    sensitive << ( A_0_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln13_reg_161 );

    SC_METHOD(thread_A_0_din);
    sensitive << ( Arows_V_a_0_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_A_0_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_A_1_blk_n);
    sensitive << ( A_1_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln13_reg_161 );

    SC_METHOD(thread_A_1_din);
    sensitive << ( Arows_V_a_1_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_A_1_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_A_2_blk_n);
    sensitive << ( A_2_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln13_reg_161 );

    SC_METHOD(thread_A_2_din);
    sensitive << ( Arows_V_a_2_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_A_2_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_A_3_blk_n);
    sensitive << ( A_3_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln13_reg_161 );

    SC_METHOD(thread_A_3_din);
    sensitive << ( Arows_V_a_3_dout );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_01001 );

    SC_METHOD(thread_A_3_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_Arows_V_a_0_blk_n);
    sensitive << ( Arows_V_a_0_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln13_reg_161 );

    SC_METHOD(thread_Arows_V_a_0_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_Arows_V_a_1_blk_n);
    sensitive << ( Arows_V_a_1_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln13_reg_161 );

    SC_METHOD(thread_Arows_V_a_1_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_Arows_V_a_2_blk_n);
    sensitive << ( Arows_V_a_2_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln13_reg_161 );

    SC_METHOD(thread_Arows_V_a_2_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_Arows_V_a_3_blk_n);
    sensitive << ( Arows_V_a_3_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln13_reg_161 );

    SC_METHOD(thread_Arows_V_a_3_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_01001);
    sensitive << ( A_0_full_n );
    sensitive << ( A_1_full_n );
    sensitive << ( A_2_full_n );
    sensitive << ( A_3_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( io_acc_block_signal_op26 );

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( A_0_full_n );
    sensitive << ( A_1_full_n );
    sensitive << ( A_2_full_n );
    sensitive << ( A_3_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( io_acc_block_signal_op26 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( A_0_full_n );
    sensitive << ( A_1_full_n );
    sensitive << ( A_2_full_n );
    sensitive << ( A_3_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( io_acc_block_signal_op26 );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( it_empty_n );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);
    sensitive << ( A_0_full_n );
    sensitive << ( A_1_full_n );
    sensitive << ( A_2_full_n );
    sensitive << ( A_3_full_n );
    sensitive << ( icmp_ln13_reg_161 );
    sensitive << ( io_acc_block_signal_op26 );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln13_fu_125_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_i_fu_131_p2);
    sensitive << ( i_0_i_i_reg_110 );

    SC_METHOD(thread_icmp_ln13_fu_125_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( i_0_i_i_reg_110 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_io_acc_block_signal_op26);
    sensitive << ( Arows_V_a_0_empty_n );
    sensitive << ( Arows_V_a_1_empty_n );
    sensitive << ( Arows_V_a_2_empty_n );
    sensitive << ( Arows_V_a_3_empty_n );

    SC_METHOD(thread_it_blk_n);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( it_empty_n );

    SC_METHOD(thread_it_read);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( it_empty_n );

    SC_METHOD(thread_trunc_ln12_fu_121_p1);
    sensitive << ( it_dout );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( it_empty_n );
    sensitive << ( trunc_ln12_fu_121_p1 );
    sensitive << ( icmp_ln13_fu_125_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Block_blockmatmul_me_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, it_dout, "(port)it_dout");
    sc_trace(mVcdFile, it_empty_n, "(port)it_empty_n");
    sc_trace(mVcdFile, it_read, "(port)it_read");
    sc_trace(mVcdFile, Arows_V_a_0_dout, "(port)Arows_V_a_0_dout");
    sc_trace(mVcdFile, Arows_V_a_0_empty_n, "(port)Arows_V_a_0_empty_n");
    sc_trace(mVcdFile, Arows_V_a_0_read, "(port)Arows_V_a_0_read");
    sc_trace(mVcdFile, Arows_V_a_1_dout, "(port)Arows_V_a_1_dout");
    sc_trace(mVcdFile, Arows_V_a_1_empty_n, "(port)Arows_V_a_1_empty_n");
    sc_trace(mVcdFile, Arows_V_a_1_read, "(port)Arows_V_a_1_read");
    sc_trace(mVcdFile, Arows_V_a_2_dout, "(port)Arows_V_a_2_dout");
    sc_trace(mVcdFile, Arows_V_a_2_empty_n, "(port)Arows_V_a_2_empty_n");
    sc_trace(mVcdFile, Arows_V_a_2_read, "(port)Arows_V_a_2_read");
    sc_trace(mVcdFile, Arows_V_a_3_dout, "(port)Arows_V_a_3_dout");
    sc_trace(mVcdFile, Arows_V_a_3_empty_n, "(port)Arows_V_a_3_empty_n");
    sc_trace(mVcdFile, Arows_V_a_3_read, "(port)Arows_V_a_3_read");
    sc_trace(mVcdFile, A_0_din, "(port)A_0_din");
    sc_trace(mVcdFile, A_0_full_n, "(port)A_0_full_n");
    sc_trace(mVcdFile, A_0_write, "(port)A_0_write");
    sc_trace(mVcdFile, A_1_din, "(port)A_1_din");
    sc_trace(mVcdFile, A_1_full_n, "(port)A_1_full_n");
    sc_trace(mVcdFile, A_1_write, "(port)A_1_write");
    sc_trace(mVcdFile, A_2_din, "(port)A_2_din");
    sc_trace(mVcdFile, A_2_full_n, "(port)A_2_full_n");
    sc_trace(mVcdFile, A_2_write, "(port)A_2_write");
    sc_trace(mVcdFile, A_3_din, "(port)A_3_din");
    sc_trace(mVcdFile, A_3_full_n, "(port)A_3_full_n");
    sc_trace(mVcdFile, A_3_write, "(port)A_3_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, it_blk_n, "it_blk_n");
    sc_trace(mVcdFile, Arows_V_a_0_blk_n, "Arows_V_a_0_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln13_reg_161, "icmp_ln13_reg_161");
    sc_trace(mVcdFile, Arows_V_a_1_blk_n, "Arows_V_a_1_blk_n");
    sc_trace(mVcdFile, Arows_V_a_2_blk_n, "Arows_V_a_2_blk_n");
    sc_trace(mVcdFile, Arows_V_a_3_blk_n, "Arows_V_a_3_blk_n");
    sc_trace(mVcdFile, A_0_blk_n, "A_0_blk_n");
    sc_trace(mVcdFile, A_1_blk_n, "A_1_blk_n");
    sc_trace(mVcdFile, A_2_blk_n, "A_2_blk_n");
    sc_trace(mVcdFile, A_3_blk_n, "A_3_blk_n");
    sc_trace(mVcdFile, i_0_i_i_reg_110, "i_0_i_i_reg_110");
    sc_trace(mVcdFile, trunc_ln12_fu_121_p1, "trunc_ln12_fu_121_p1");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, icmp_ln13_fu_125_p2, "icmp_ln13_fu_125_p2");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, io_acc_block_signal_op26, "io_acc_block_signal_op26");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, i_fu_131_p2, "i_fu_131_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_01001, "ap_block_pp0_stage0_01001");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

Block_blockmatmul_me::~Block_blockmatmul_me() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Block_blockmatmul_me::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, it_empty_n.read())) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, trunc_ln12_fu_121_p1.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, it_empty_n.read())) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, trunc_ln12_fu_121_p1.read()))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, it_empty_n.read())) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, trunc_ln12_fu_121_p1.read()))) {
        i_0_i_i_reg_110 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln13_fu_125_p2.read()))) {
        i_0_i_i_reg_110 = i_fu_131_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln13_reg_161 = icmp_ln13_fu_125_p2.read();
    }
}

void Block_blockmatmul_me::thread_A_0_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0))) {
        A_0_blk_n = A_0_full_n.read();
    } else {
        A_0_blk_n = ap_const_logic_1;
    }
}

void Block_blockmatmul_me::thread_A_0_din() {
    A_0_din = Arows_V_a_0_dout.read();
}

void Block_blockmatmul_me::thread_A_0_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        A_0_write = ap_const_logic_1;
    } else {
        A_0_write = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_A_1_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0))) {
        A_1_blk_n = A_1_full_n.read();
    } else {
        A_1_blk_n = ap_const_logic_1;
    }
}

void Block_blockmatmul_me::thread_A_1_din() {
    A_1_din = Arows_V_a_1_dout.read();
}

void Block_blockmatmul_me::thread_A_1_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        A_1_write = ap_const_logic_1;
    } else {
        A_1_write = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_A_2_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0))) {
        A_2_blk_n = A_2_full_n.read();
    } else {
        A_2_blk_n = ap_const_logic_1;
    }
}

void Block_blockmatmul_me::thread_A_2_din() {
    A_2_din = Arows_V_a_2_dout.read();
}

void Block_blockmatmul_me::thread_A_2_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        A_2_write = ap_const_logic_1;
    } else {
        A_2_write = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_A_3_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0))) {
        A_3_blk_n = A_3_full_n.read();
    } else {
        A_3_blk_n = ap_const_logic_1;
    }
}

void Block_blockmatmul_me::thread_A_3_din() {
    A_3_din = Arows_V_a_3_dout.read();
}

void Block_blockmatmul_me::thread_A_3_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        A_3_write = ap_const_logic_1;
    } else {
        A_3_write = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_Arows_V_a_0_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0))) {
        Arows_V_a_0_blk_n = Arows_V_a_0_empty_n.read();
    } else {
        Arows_V_a_0_blk_n = ap_const_logic_1;
    }
}

void Block_blockmatmul_me::thread_Arows_V_a_0_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        Arows_V_a_0_read = ap_const_logic_1;
    } else {
        Arows_V_a_0_read = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_Arows_V_a_1_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0))) {
        Arows_V_a_1_blk_n = Arows_V_a_1_empty_n.read();
    } else {
        Arows_V_a_1_blk_n = ap_const_logic_1;
    }
}

void Block_blockmatmul_me::thread_Arows_V_a_1_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        Arows_V_a_1_read = ap_const_logic_1;
    } else {
        Arows_V_a_1_read = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_Arows_V_a_2_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0))) {
        Arows_V_a_2_blk_n = Arows_V_a_2_empty_n.read();
    } else {
        Arows_V_a_2_blk_n = ap_const_logic_1;
    }
}

void Block_blockmatmul_me::thread_Arows_V_a_2_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        Arows_V_a_2_read = ap_const_logic_1;
    } else {
        Arows_V_a_2_read = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_Arows_V_a_3_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0))) {
        Arows_V_a_3_blk_n = Arows_V_a_3_empty_n.read();
    } else {
        Arows_V_a_3_blk_n = ap_const_logic_1;
    }
}

void Block_blockmatmul_me::thread_Arows_V_a_3_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        Arows_V_a_3_read = ap_const_logic_1;
    } else {
        Arows_V_a_3_read = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void Block_blockmatmul_me::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Block_blockmatmul_me::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void Block_blockmatmul_me::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Block_blockmatmul_me::thread_ap_block_pp0_stage0_01001() {
    ap_block_pp0_stage0_01001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, io_acc_block_signal_op26.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_0_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_1_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_2_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_3_full_n.read()))));
}

void Block_blockmatmul_me::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, io_acc_block_signal_op26.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_0_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_1_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_2_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_3_full_n.read()))));
}

void Block_blockmatmul_me::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && ((esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, io_acc_block_signal_op26.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_0_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_1_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_2_full_n.read())) || 
  (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, A_3_full_n.read()))));
}

void Block_blockmatmul_me::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, it_empty_n.read()));
}

void Block_blockmatmul_me::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Block_blockmatmul_me::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = ((esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, io_acc_block_signal_op26.read())) || (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, A_0_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, A_1_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, A_2_full_n.read())) || (esl_seteq<1,1,1>(icmp_ln13_reg_161.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, A_3_full_n.read())));
}

void Block_blockmatmul_me::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln13_fu_125_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Block_blockmatmul_me::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void Block_blockmatmul_me::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_i_fu_131_p2() {
    i_fu_131_p2 = (!i_0_i_i_reg_110.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_0_i_i_reg_110.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void Block_blockmatmul_me::thread_icmp_ln13_fu_125_p2() {
    icmp_ln13_fu_125_p2 = (!i_0_i_i_reg_110.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_i_reg_110.read() == ap_const_lv4_8);
}

void Block_blockmatmul_me::thread_io_acc_block_signal_op26() {
    io_acc_block_signal_op26 = (Arows_V_a_0_empty_n.read() & Arows_V_a_1_empty_n.read() & Arows_V_a_2_empty_n.read() & Arows_V_a_3_empty_n.read());
}

void Block_blockmatmul_me::thread_it_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        it_blk_n = it_empty_n.read();
    } else {
        it_blk_n = ap_const_logic_1;
    }
}

void Block_blockmatmul_me::thread_it_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, it_empty_n.read())))) {
        it_read = ap_const_logic_1;
    } else {
        it_read = ap_const_logic_0;
    }
}

void Block_blockmatmul_me::thread_trunc_ln12_fu_121_p1() {
    trunc_ln12_fu_121_p1 = it_dout.read().range(1-1, 0);
}

void Block_blockmatmul_me::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, it_empty_n.read())) && esl_seteq<1,1,1>(ap_const_lv1_0, trunc_ln12_fu_121_p1.read()))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, it_empty_n.read())) && esl_seteq<1,1,1>(trunc_ln12_fu_121_p1.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln13_fu_125_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln13_fu_125_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

