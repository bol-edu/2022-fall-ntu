// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dct_1d2_dct_coeffbkb_H__
#define __dct_1d2_dct_coeffbkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dct_1d2_dct_coeffbkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 15;
  static const unsigned AddressRange = 64;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dct_1d2_dct_coeffbkb_ram) {
        for (unsigned i = 0; i < 8 ; i = i + 1) {
            ram[i] = "0b010000000000000";
        }
        ram[8] = "0b010110001100011";
        ram[9] = "0b010010110100001";
        ram[10] = "0b001100100100100";
        ram[11] = "0b000100011010100";
        ram[12] = "0b111011100101100";
        ram[13] = "0b110011011011100";
        ram[14] = "0b101101001100000";
        ram[15] = "0b101001110011110";
        ram[16] = "0b010100111001111";
        ram[17] = "0b001000101010001";
        ram[18] = "0b110111010101111";
        ram[19] = "0b101011000110001";
        ram[20] = "0b101011000110001";
        ram[21] = "0b110111010101111";
        ram[22] = "0b001000101010001";
        ram[23] = "0b010100111001111";
        ram[24] = "0b010010110100001";
        ram[25] = "0b111011100101100";
        ram[26] = "0b101001110011110";
        ram[27] = "0b110011011011100";
        ram[28] = "0b001100100100100";
        ram[29] = "0b010110001100011";
        ram[30] = "0b000100011010100";
        ram[31] = "0b101101001100000";
        ram[32] = "0b010000000000000";
        ram[33] = "0b110000000000000";
        ram[34] = "0b110000000000000";
        ram[35] = "0b010000000000000";
        ram[36] = "0b010000000000000";
        ram[37] = "0b110000000000001";
        ram[38] = "0b110000000000001";
        ram[39] = "0b010000000000000";
        ram[40] = "0b001100100100100";
        ram[41] = "0b101001110011110";
        ram[42] = "0b000100011010100";
        ram[43] = "0b010010110100001";
        ram[44] = "0b101101001100000";
        ram[45] = "0b111011100101100";
        ram[46] = "0b010110001100011";
        ram[47] = "0b110011011011100";
        ram[48] = "0b001000101010001";
        ram[49] = "0b101011000110001";
        ram[50] = "0b010100111001111";
        ram[51] = "0b110111010101111";
        ram[52] = "0b110111010101111";
        ram[53] = "0b010100111001111";
        ram[54] = "0b101011000110001";
        ram[55] = "0b001000101010001";
        ram[56] = "0b000100011010100";
        ram[57] = "0b110011011011100";
        ram[58] = "0b010010110100001";
        ram[59] = "0b101001110011110";
        ram[60] = "0b010110001100011";
        ram[61] = "0b101101001100000";
        ram[62] = "0b001100100100100";
        ram[63] = "0b111011100101100";


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


SC_MODULE(dct_1d2_dct_coeffbkb) {


static const unsigned DataWidth = 15;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dct_1d2_dct_coeffbkb_ram* meminst;


SC_CTOR(dct_1d2_dct_coeffbkb) {
meminst = new dct_1d2_dct_coeffbkb_ram("dct_1d2_dct_coeffbkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dct_1d2_dct_coeffbkb() {
    delete meminst;
}


};//endmodule
#endif
