// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include "diamond_c1_RAM_AUTO_1R1W.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

diamond_c1_RAM_AUTO_1R1W::~diamond_c1_RAM_AUTO_1R1W() {
    for (unsigned i = 0; i < BufferCount; i++) {
        delete buffer[i];
    }
    if (m_trace_file) sc_close_vcd_trace_file(m_trace_file);
}

void diamond_c1_RAM_AUTO_1R1W::proc_i_full_n() {
    i_full_n.write(full_n.read());
}

void diamond_c1_RAM_AUTO_1R1W::proc_t_empty_n() {
    t_empty_n.write(empty_n.read());
}

void diamond_c1_RAM_AUTO_1R1W::proc_i_q0() {
    i_q0.write(buf_q0[prev_iptr.read()].read());
}

void diamond_c1_RAM_AUTO_1R1W::proc_t_q0() {
    t_q0.write(buf_q0[prev_tptr.read()].read());
}

void diamond_c1_RAM_AUTO_1R1W::proc_i_q1() {
    i_q1.write(buf_q1[prev_iptr.read()].read());
}

void diamond_c1_RAM_AUTO_1R1W::proc_t_q1() {
    t_q1.write(buf_q1[prev_tptr.read()].read());
}

void diamond_c1_RAM_AUTO_1R1W::proc_buffer_signals() {
    for (unsigned i = 0; i < BufferCount; i++) {
        if (iptr.read() == i) {
            buf_ce0[i].write(i_ce0.read());
            buf_we0[i].write(i_we0.read());
            buf_a0[i].write(i_address0.read());
            buf_d0[i].write(i_d0.read());
            buf_ce1[i].write(i_ce1.read());
            buf_we1[i].write(i_we1.read());
            buf_a1[i].write(i_address1.read());
            buf_d1[i].write(i_d1.read());
        } else {
            if (tptr.read() == i && empty_n.read() == SC_LOGIC_1) {
                buf_ce0[i].write(t_ce0.read());
                buf_we0[i].write(t_we0.read());
                buf_ce1[i].write(t_ce1.read());
                buf_we1[i].write(t_we1.read());
            } else {
                buf_ce0[i].write(SC_LOGIC_0);
                buf_we0[i].write(SC_LOGIC_0);
                buf_ce1[i].write(SC_LOGIC_0);
                buf_we1[i].write(SC_LOGIC_0);
            }
            buf_a0[i].write(t_address0.read());
            buf_d0[i].write(t_d0.read());
            buf_a1[i].write(t_address1.read());
            buf_d1[i].write(t_d1.read());
        }
    }
}
void diamond_c1_RAM_AUTO_1R1W::proc_push_buf() {
    push_buf.write(i_ce.read() & i_write.read() & full_n.read());
}

void diamond_c1_RAM_AUTO_1R1W::proc_pop_buf() {
    pop_buf.write(t_ce.read() & t_read.read() & empty_n.read());
}

void diamond_c1_RAM_AUTO_1R1W::proc_iptr() {
    if (reset.read() == SC_LOGIC_1) {
        iptr.write(0);
        prev_iptr.write(0);
    } else if (push_buf.read() == SC_LOGIC_1) {
        if (iptr.read() == BufferCount -1) {
            iptr.write(0);
        } else {
            iptr.write(iptr.read()+1);
        }
        prev_iptr.write(iptr.read());
    }
}

void diamond_c1_RAM_AUTO_1R1W::proc_tptr() {
    if (reset.read() == SC_LOGIC_1) {
        tptr.write(0);
        prev_tptr.write(0);
    } else if (pop_buf.read() == SC_LOGIC_1) {
        if (tptr.read() == BufferCount -1) {
            tptr.write(0);
        } else {
            tptr.write(tptr.read()+1);
        }
        prev_tptr.write(tptr.read());
    }
}

void diamond_c1_RAM_AUTO_1R1W::proc_count() {
    if (reset.read() == SC_LOGIC_1) {
        count.write(0);
    } else if (push_buf.read() == SC_LOGIC_1 && pop_buf.read() == SC_LOGIC_0) {
        count.write(count.read()+1);
    } else if (push_buf.read() == SC_LOGIC_0 && pop_buf.read() == SC_LOGIC_1) {
        count.write(count.read()-1);
    }
}

void diamond_c1_RAM_AUTO_1R1W::proc_full_n() {
    if (reset.read() == SC_LOGIC_1) {
        full_n.write(SC_LOGIC_1);
    } else if (push_buf.read() == SC_LOGIC_1 && pop_buf.read() == SC_LOGIC_0
            && count.read() == BufferCount - 2) {
        full_n.write(SC_LOGIC_0);
    } else if (push_buf.read() == SC_LOGIC_0 && pop_buf.read() == SC_LOGIC_1) {
        full_n.write(SC_LOGIC_1);
    }
}

void diamond_c1_RAM_AUTO_1R1W::proc_empty_n() {
    if (reset.read() == SC_LOGIC_1) {
        empty_n.write(SC_LOGIC_0);
    } else if (push_buf.read() == SC_LOGIC_1 && pop_buf.read() == SC_LOGIC_0) {
        empty_n.write(SC_LOGIC_1);
    } else if (push_buf.read() == SC_LOGIC_0 && pop_buf.read() == SC_LOGIC_1
            && count.read() == 1) {
        empty_n.write(SC_LOGIC_0);
    }
}

