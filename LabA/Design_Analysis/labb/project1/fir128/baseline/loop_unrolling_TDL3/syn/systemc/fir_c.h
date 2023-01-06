// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __fir_c_H__
#define __fir_c_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct fir_c_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 5;
  static const unsigned AddressRange = 128;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(fir_c_ram) {
        ram[0] = "0b01010";
        ram[1] = "0b01011";
        ram[2] = "0b01011";
        ram[3] = "0b01000";
        ram[4] = "0b00011";
        ram[5] = "0b11101";
        ram[6] = "0b11000";
        ram[7] = "0b10101";
        ram[8] = "0b10101";
        for (unsigned i = 9; i < 33 ; i = i + 1) {
            ram[i] = "0b10110";
        }
        ram[33] = "0b10101";
        ram[34] = "0b10101";
        ram[35] = "0b11000";
        ram[36] = "0b11101";
        ram[37] = "0b00011";
        ram[38] = "0b01000";
        ram[39] = "0b01011";
        ram[40] = "0b01011";
        for (unsigned i = 41; i < 49 ; i = i + 1) {
            ram[i] = "0b01010";
        }
        ram[49] = "0b01011";
        ram[50] = "0b01011";
        ram[51] = "0b01000";
        ram[52] = "0b00011";
        ram[53] = "0b11101";
        ram[54] = "0b11000";
        ram[55] = "0b10101";
        ram[56] = "0b10101";
        for (unsigned i = 57; i < 65 ; i = i + 1) {
            ram[i] = "0b10110";
        }
        ram[65] = "0b10101";
        ram[66] = "0b10101";
        ram[67] = "0b11000";
        ram[68] = "0b11101";
        ram[69] = "0b00011";
        ram[70] = "0b01000";
        ram[71] = "0b01011";
        ram[72] = "0b01011";
        for (unsigned i = 73; i < 81 ; i = i + 1) {
            ram[i] = "0b01010";
        }
        ram[81] = "0b01011";
        ram[82] = "0b01011";
        ram[83] = "0b01000";
        ram[84] = "0b00011";
        ram[85] = "0b11101";
        ram[86] = "0b11000";
        ram[87] = "0b10101";
        ram[88] = "0b10101";
        for (unsigned i = 89; i < 97 ; i = i + 1) {
            ram[i] = "0b10110";
        }
        ram[97] = "0b10101";
        ram[98] = "0b10101";
        ram[99] = "0b11000";
        ram[100] = "0b11101";
        ram[101] = "0b00011";
        ram[102] = "0b01000";
        ram[103] = "0b01011";
        ram[104] = "0b01011";
        for (unsigned i = 105; i < 128 ; i = i + 1) {
            ram[i] = "0b01010";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(fir_c) {


static const unsigned DataWidth = 5;
static const unsigned AddressRange = 128;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


fir_c_ram* meminst;


SC_CTOR(fir_c) {
meminst = new fir_c_ram("fir_c_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~fir_c() {
    delete meminst;
}


};//endmodule
#endif
