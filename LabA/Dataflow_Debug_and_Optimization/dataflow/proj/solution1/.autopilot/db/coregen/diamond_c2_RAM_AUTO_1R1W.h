// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#ifndef _diamond_c2_RAM_AUTO_1R1W_H_
#define _diamond_c2_RAM_AUTO_1R1W_H_

#include <systemc>
#include <iostream>
#include <fstream>

#include "diamond_c2_RAM_AUTO_1R1W_memcore.h"

SC_MODULE(diamond_c2_RAM_AUTO_1R1W) {
    static const unsigned int DataWidth    = 6;
    static const unsigned int AddressRange = 32;
    static const unsigned int AddressWidth = 7;
    static const unsigned int BufferCount  = 2;
    static const unsigned int IndexWidth   = 1;

    // system signals
    sc_core::sc_in_clk clk;
    sc_core::sc_in< sc_dt::sc_logic > reset;

    // initiator
    sc_core::sc_in<  sc_dt::sc_logic >            i_ce;
    sc_core::sc_in<  sc_dt::sc_logic >            i_write;
    sc_core::sc_out< sc_dt::sc_logic >            i_full_n;
    sc_core::sc_in<  sc_dt::sc_logic >            i_ce0;
    sc_core::sc_in<  sc_dt::sc_logic           >        i_we0;
    sc_core::sc_in<  sc_dt::sc_lv<AddressWidth> > i_address0;
    sc_core::sc_in<  sc_dt::sc_lv<DataWidth> >    i_d0;
    sc_core::sc_out< sc_dt::sc_lv<DataWidth> >    i_q0;
    sc_core::sc_in<  sc_dt::sc_logic >            i_ce1;
    sc_core::sc_in<  sc_dt::sc_logic           >        i_we1;
    sc_core::sc_in<  sc_dt::sc_lv<AddressWidth> > i_address1;
    sc_core::sc_in<  sc_dt::sc_lv<DataWidth> >    i_d1;
    sc_core::sc_out< sc_dt::sc_lv<DataWidth> >    i_q1;

    // target
    sc_core::sc_in<  sc_dt::sc_logic >            t_ce;
    sc_core::sc_in<  sc_dt::sc_logic >            t_read;
    sc_core::sc_out< sc_dt::sc_logic >            t_empty_n;
    sc_core::sc_in<  sc_dt::sc_logic >            t_ce0;
    sc_core::sc_in<  sc_dt::sc_logic           >        t_we0;
    sc_core::sc_in<  sc_dt::sc_lv<AddressWidth> > t_address0;
    sc_core::sc_in<  sc_dt::sc_lv<DataWidth> >    t_d0;
    sc_core::sc_out< sc_dt::sc_lv<DataWidth> >    t_q0;
    sc_core::sc_in<  sc_dt::sc_logic >            t_ce1;
    sc_core::sc_in<  sc_dt::sc_logic           >        t_we1;
    sc_core::sc_in<  sc_dt::sc_lv<AddressWidth> > t_address1;
    sc_core::sc_in<  sc_dt::sc_lv<DataWidth> >    t_d1;
    sc_core::sc_out< sc_dt::sc_lv<DataWidth> >    t_q1;

protected:
    // control/status
    sc_core::sc_signal< sc_dt::sc_uint<IndexWidth> >   iptr;     // initiator index
    sc_core::sc_signal< sc_dt::sc_uint<IndexWidth> >   tptr;     // target index
    sc_core::sc_signal< sc_dt::sc_uint<IndexWidth+1> > count;    // count of written buffers
    sc_core::sc_signal< sc_dt::sc_uint<IndexWidth> >   prev_iptr;     // previous initiator index
    sc_core::sc_signal< sc_dt::sc_uint<IndexWidth> >   prev_tptr;     // previous target index
    sc_core::sc_signal< sc_dt::sc_logic >              full_n;   // whether all buffers are written
    sc_core::sc_signal< sc_dt::sc_logic >              empty_n;  // whether none of the buffers is written
    sc_core::sc_signal< sc_dt::sc_logic >              push_buf; // finish writing a buffer
    sc_core::sc_signal< sc_dt::sc_logic >              pop_buf;  // finish reading a buffer

    // buffer instances
    diamond_c2_RAM_AUTO_1R1W_memcore* buffer[BufferCount];

    // buffer signals
    sc_core::sc_signal< sc_dt::sc_logic >              buf_ce0[BufferCount];
    sc_core::sc_signal< sc_dt::sc_logic           >              buf_we0[BufferCount];
    sc_core::sc_signal< sc_dt::sc_lv<AddressWidth> >   buf_a0[BufferCount];
    sc_core::sc_signal< sc_dt::sc_lv<DataWidth> >      buf_d0[BufferCount];
    sc_core::sc_signal< sc_dt::sc_lv<DataWidth> >      buf_q0[BufferCount];
    sc_core::sc_signal< sc_dt::sc_logic >              buf_ce1[BufferCount];
    sc_core::sc_signal< sc_dt::sc_logic           >              buf_we1[BufferCount];
    sc_core::sc_signal< sc_dt::sc_lv<AddressWidth> >   buf_a1[BufferCount];
    sc_core::sc_signal< sc_dt::sc_lv<DataWidth> >      buf_d1[BufferCount];
    sc_core::sc_signal< sc_dt::sc_lv<DataWidth> >      buf_q1[BufferCount];

    // buffer signals
    void proc_buffer_signals();

    // output
    void proc_i_q0();
    void proc_t_q0();
    void proc_i_q1();
    void proc_t_q1();

    void proc_i_full_n();
    void proc_t_empty_n();

    // control/status
    void proc_push_buf();
    void proc_pop_buf();
    void proc_iptr();
    void proc_tptr();
    void proc_count();
    void proc_full_n();
    void proc_empty_n();

    sc_core::sc_trace_file* m_trace_file;

public:
    ~diamond_c2_RAM_AUTO_1R1W();
    SC_CTOR(diamond_c2_RAM_AUTO_1R1W) : m_trace_file(0) {
        for (unsigned i = 0; i < BufferCount; i++) {
            char szTmp[128];
            sprintf(szTmp, "%d", i);
            std::string name = "diamond_c2_RAM_AUTO_1R1W_memcore_U_";
            name += szTmp;

            buffer[i] = new diamond_c2_RAM_AUTO_1R1W_memcore(name.c_str());
            buffer[i]->clk      ( clk );
            buffer[i]->reset    ( reset );
            buffer[i]->ce0      ( buf_ce0[i] );
            buffer[i]->we0      ( buf_we0[i] );
            buffer[i]->address0 ( buf_a0[i] );
            buffer[i]->d0       ( buf_d0[i] );
            buffer[i]->q0       ( buf_q0[i] );
            buffer[i]->ce1      ( buf_ce1[i] );
            buffer[i]->we1      ( buf_we1[i] );
            buffer[i]->address1 ( buf_a1[i] );
            buffer[i]->d1       ( buf_d1[i] );
            buffer[i]->q1       ( buf_q1[i] );

        }


        SC_METHOD(proc_i_q0);
        sensitive << iptr;
        for (unsigned i = 0; i < BufferCount; i++) {
            sensitive << buf_q0[i];
        }

        SC_METHOD(proc_t_q0);
        sensitive << tptr;
        for (unsigned i = 0; i < BufferCount; i++) {
            sensitive << buf_q0[i];
        }

        SC_METHOD(proc_i_q1);
        sensitive << iptr;
        for (unsigned i = 0; i < BufferCount; i++) {
            sensitive << buf_q1[i];
        }

        SC_METHOD(proc_t_q1);
        sensitive << tptr;
        for (unsigned i = 0; i < BufferCount; i++) {
            sensitive << buf_q1[i];
        }

        // buffer signals
        SC_METHOD(proc_buffer_signals);
        sensitive << iptr << tptr << empty_n;
        sensitive << i_ce0 << i_we0 << i_address0 << i_d0;
        sensitive << t_ce0 << t_we0 << t_address0 << t_d0;
        sensitive << i_ce1 << i_we1 << i_address1 << i_d1;
        sensitive << t_ce1 << t_we1 << t_address1 << t_d1;

        // power-on initialization
        iptr    = 0;
        tptr    = 0;
        count   = 0;
        full_n  = SC_LOGIC_1;
        empty_n = SC_LOGIC_0;

        // output
        SC_METHOD(proc_i_full_n);
        sensitive << full_n;

        SC_METHOD(proc_t_empty_n);
        sensitive << empty_n;

        // control/status
        SC_METHOD(proc_push_buf);
        sensitive << i_ce << i_write << full_n;

        SC_METHOD(proc_pop_buf);
        sensitive << t_ce << t_read << empty_n;

        SC_METHOD(proc_iptr);
        sensitive << clk.pos();

        SC_METHOD(proc_tptr);
        sensitive << clk.pos();

        SC_METHOD(proc_count);
        sensitive << clk.pos();

        SC_METHOD(proc_full_n);
        sensitive << clk.pos();

        SC_METHOD(proc_empty_n);
        sensitive << clk.pos();

        // Trace Begin.
        const char* dump_vcd = std::getenv("AP_WRITE_VCD");
        if (dump_vcd) {
            m_trace_file = sc_create_vcd_trace_file( "diamond_c2_RAM_AUTO_1R1W.trace");
            // ports
            sc_trace(m_trace_file, clk,        "(port)clk");
            sc_trace(m_trace_file, reset,      "(port)reset");
            sc_trace(m_trace_file, i_write,    "(port)i_write");
            sc_trace(m_trace_file, i_full_n,   "(port)i_full_n");
            sc_trace(m_trace_file, i_ce0,      "(port)i_ce0");
            sc_trace(m_trace_file, i_we0,      "(port)i_we0");
            sc_trace(m_trace_file, i_address0, "(port)i_address0");
            sc_trace(m_trace_file, i_d0,       "(port)i_d0");
            sc_trace(m_trace_file, i_q0,       "(port)i_q0");
            sc_trace(m_trace_file, i_ce1,      "(port)i_ce1");
            sc_trace(m_trace_file, i_we1,      "(port)i_we0");
            sc_trace(m_trace_file, i_address1, "(port)i_address1");
            sc_trace(m_trace_file, i_d1,       "(port)i_d1");
            sc_trace(m_trace_file, i_q1,       "(port)i_q1");
            sc_trace(m_trace_file, t_read,     "(port)t_read");
            sc_trace(m_trace_file, t_empty_n,  "(port)t_empty_n");
            sc_trace(m_trace_file, t_ce0,      "(port)t_ce0");
            sc_trace(m_trace_file, t_we0,      "(port)t_we0");
            sc_trace(m_trace_file, t_address0, "(port)t_address0");
            sc_trace(m_trace_file, t_d0,       "(port)t_d0");
            sc_trace(m_trace_file, t_q0,       "(port)t_q0");
            sc_trace(m_trace_file, t_ce1,      "(port)t_ce1");
            sc_trace(m_trace_file, t_we1,      "(port)t_we0");
            sc_trace(m_trace_file, t_address1, "(port)t_address1");
            sc_trace(m_trace_file, t_d1,       "(port)t_d1");
            sc_trace(m_trace_file, t_q1,       "(port)t_q1");
            // control/status
            sc_trace(m_trace_file, iptr,     "iptr");
            sc_trace(m_trace_file, tptr,     "tptr");
            sc_trace(m_trace_file, count,    "count");
            sc_trace(m_trace_file, full_n,   "full_n");
            sc_trace(m_trace_file, empty_n,  "empty_n");
            sc_trace(m_trace_file, push_buf, "push_buf");
            sc_trace(m_trace_file, pop_buf,  "pop_buf");
            // buffer signals
            for (unsigned i = 0; i < BufferCount; i++) {
                char szTmp[128];
                char szIndex[16];
                sprintf(szIndex, "(%d)", i);
                sc_trace(m_trace_file, buf_ce0[i], strcat(strcpy(szTmp, "buf_ce0"), szIndex));
                sc_trace(m_trace_file, buf_we0[i], strcat(strcpy(szTmp, "buf_we0"), szIndex));
                sc_trace(m_trace_file, buf_a0[i],  strcat(strcpy(szTmp, "buf_a0" ), szIndex));
                sc_trace(m_trace_file, buf_d0[i],  strcat(strcpy(szTmp, "buf_d0" ), szIndex));
                sc_trace(m_trace_file, buf_q0[i],  strcat(strcpy(szTmp, "buf_q0" ), szIndex));
                sc_trace(m_trace_file, buf_ce1[i], strcat(strcpy(szTmp, "buf_ce1"), szIndex));
                sc_trace(m_trace_file, buf_we1[i], strcat(strcpy(szTmp, "buf_we1"), szIndex));
                sc_trace(m_trace_file, buf_a1[i],  strcat(strcpy(szTmp, "buf_a1" ), szIndex));
                sc_trace(m_trace_file, buf_d1[i],  strcat(strcpy(szTmp, "buf_d1" ), szIndex));
                sc_trace(m_trace_file, buf_q1[i],  strcat(strcpy(szTmp, "buf_q1" ), szIndex));
            }
        } // Trace End.

    }
};

#endif

