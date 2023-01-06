// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_HH_
#define _dct_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_2d.h"
#include "dct_2d_row_outbuf.h"

namespace ap_rtl {

struct dct : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<16> > input_r_q0;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<16> > output_r_d0;


    // Module declarations
    dct(sc_module_name name);
    SC_HAS_PROCESS(dct);

    ~dct();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dct_2d_row_outbuf* buf_2d_in_U;
    dct_2d_row_outbuf* buf_2d_out_U;
    dct_2d* grp_dct_2d_fu_188;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > indvar_flatten_reg_122;
    sc_signal< sc_lv<4> > r_0_i_reg_133;
    sc_signal< sc_lv<4> > c_0_i_reg_144;
    sc_signal< sc_lv<7> > indvar_flatten11_reg_155;
    sc_signal< sc_lv<4> > r_0_i2_reg_166;
    sc_signal< sc_lv<4> > c_0_i4_reg_177;
    sc_signal< sc_lv<1> > icmp_ln103_fu_196_p2;
    sc_signal< sc_lv<1> > icmp_ln103_reg_393;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<7> > add_ln103_fu_202_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<4> > select_ln103_fu_220_p3;
    sc_signal< sc_lv<4> > select_ln103_reg_402;
    sc_signal< sc_lv<4> > select_ln103_1_fu_228_p3;
    sc_signal< sc_lv<4> > select_ln103_1_reg_407;
    sc_signal< sc_lv<4> > c_fu_263_p2;
    sc_signal< sc_lv<1> > icmp_ln115_fu_294_p2;
    sc_signal< sc_lv<1> > icmp_ln115_reg_423;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state6_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<7> > add_ln115_fu_300_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<4> > select_ln115_1_fu_326_p3;
    sc_signal< sc_lv<4> > select_ln115_1_reg_432;
    sc_signal< sc_lv<6> > add_ln118_fu_377_p2;
    sc_signal< sc_lv<6> > add_ln118_reg_442;
    sc_signal< sc_lv<4> > c_1_fu_383_p2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > grp_dct_2d_fu_188_ap_ready;
    sc_signal< sc_logic > grp_dct_2d_fu_188_ap_done;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state6;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_lv<6> > buf_2d_in_address0;
    sc_signal< sc_logic > buf_2d_in_ce0;
    sc_signal< sc_logic > buf_2d_in_we0;
    sc_signal< sc_lv<16> > buf_2d_in_q0;
    sc_signal< sc_lv<6> > buf_2d_out_address0;
    sc_signal< sc_logic > buf_2d_out_ce0;
    sc_signal< sc_logic > buf_2d_out_we0;
    sc_signal< sc_lv<16> > buf_2d_out_q0;
    sc_signal< sc_logic > grp_dct_2d_fu_188_ap_start;
    sc_signal< sc_logic > grp_dct_2d_fu_188_ap_idle;
    sc_signal< sc_lv<6> > grp_dct_2d_fu_188_in_block_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_188_in_block_ce0;
    sc_signal< sc_lv<6> > grp_dct_2d_fu_188_out_block_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_188_out_block_ce0;
    sc_signal< sc_logic > grp_dct_2d_fu_188_out_block_we0;
    sc_signal< sc_lv<16> > grp_dct_2d_fu_188_out_block_d0;
    sc_signal< sc_lv<4> > ap_phi_mux_r_0_i_phi_fu_137_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<4> > ap_phi_mux_r_0_i2_phi_fu_170_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_logic > grp_dct_2d_fu_188_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<64> > zext_ln106_fu_258_p1;
    sc_signal< sc_lv<64> > zext_ln106_2_fu_289_p1;
    sc_signal< sc_lv<64> > zext_ln118_1_fu_372_p1;
    sc_signal< sc_lv<64> > zext_ln118_2_fu_389_p1;
    sc_signal< sc_lv<1> > icmp_ln105_fu_214_p2;
    sc_signal< sc_lv<4> > r_fu_208_p2;
    sc_signal< sc_lv<3> > trunc_ln103_fu_236_p1;
    sc_signal< sc_lv<6> > zext_ln105_fu_248_p1;
    sc_signal< sc_lv<6> > shl_ln106_mid2_fu_240_p3;
    sc_signal< sc_lv<6> > add_ln106_fu_252_p2;
    sc_signal< sc_lv<7> > tmp_9_fu_269_p3;
    sc_signal< sc_lv<8> > zext_ln105_1_fu_276_p1;
    sc_signal< sc_lv<8> > zext_ln106_1_fu_280_p1;
    sc_signal< sc_lv<8> > add_ln106_1_fu_283_p2;
    sc_signal< sc_lv<1> > icmp_ln117_fu_312_p2;
    sc_signal< sc_lv<4> > r_1_fu_306_p2;
    sc_signal< sc_lv<7> > tmp_s_fu_334_p3;
    sc_signal< sc_lv<3> > trunc_ln115_fu_346_p1;
    sc_signal< sc_lv<4> > select_ln115_fu_318_p3;
    sc_signal< sc_lv<8> > zext_ln115_fu_342_p1;
    sc_signal< sc_lv<8> > zext_ln118_fu_362_p1;
    sc_signal< sc_lv<8> > add_ln118_1_fu_366_p2;
    sc_signal< sc_lv<6> > zext_ln117_fu_358_p1;
    sc_signal< sc_lv<6> > shl_ln118_mid2_fu_350_p3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_pp1_stage0;
    static const sc_lv<6> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln103_fu_202_p2();
    void thread_add_ln106_1_fu_283_p2();
    void thread_add_ln106_fu_252_p2();
    void thread_add_ln115_fu_300_p2();
    void thread_add_ln118_1_fu_366_p2();
    void thread_add_ln118_fu_377_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state6_pp1_stage0_iter0();
    void thread_ap_block_state7_pp1_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state6();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_r_0_i2_phi_fu_170_p4();
    void thread_ap_phi_mux_r_0_i_phi_fu_137_p4();
    void thread_ap_ready();
    void thread_buf_2d_in_address0();
    void thread_buf_2d_in_ce0();
    void thread_buf_2d_in_we0();
    void thread_buf_2d_out_address0();
    void thread_buf_2d_out_ce0();
    void thread_buf_2d_out_we0();
    void thread_c_1_fu_383_p2();
    void thread_c_fu_263_p2();
    void thread_grp_dct_2d_fu_188_ap_start();
    void thread_icmp_ln103_fu_196_p2();
    void thread_icmp_ln105_fu_214_p2();
    void thread_icmp_ln115_fu_294_p2();
    void thread_icmp_ln117_fu_312_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_r_1_fu_306_p2();
    void thread_r_fu_208_p2();
    void thread_select_ln103_1_fu_228_p3();
    void thread_select_ln103_fu_220_p3();
    void thread_select_ln115_1_fu_326_p3();
    void thread_select_ln115_fu_318_p3();
    void thread_shl_ln106_mid2_fu_240_p3();
    void thread_shl_ln118_mid2_fu_350_p3();
    void thread_tmp_9_fu_269_p3();
    void thread_tmp_s_fu_334_p3();
    void thread_trunc_ln103_fu_236_p1();
    void thread_trunc_ln115_fu_346_p1();
    void thread_zext_ln105_1_fu_276_p1();
    void thread_zext_ln105_fu_248_p1();
    void thread_zext_ln106_1_fu_280_p1();
    void thread_zext_ln106_2_fu_289_p1();
    void thread_zext_ln106_fu_258_p1();
    void thread_zext_ln115_fu_342_p1();
    void thread_zext_ln117_fu_358_p1();
    void thread_zext_ln118_1_fu_372_p1();
    void thread_zext_ln118_2_fu_389_p1();
    void thread_zext_ln118_fu_362_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
