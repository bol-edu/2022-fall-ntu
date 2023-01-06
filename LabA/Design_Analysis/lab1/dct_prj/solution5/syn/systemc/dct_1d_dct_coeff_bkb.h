// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __dct_1d_dct_coeff_bkb_H__
#define __dct_1d_dct_coeff_bkb_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct dct_1d_dct_coeff_bkb_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 14;
  static const unsigned AddressRange = 8;
  static const unsigned AddressWidth = 3;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(dct_1d_dct_coeff_bkb_ram) {
        ram[0] = "0b10000000000000";
        ram[1] = "0b10110001100011";
        ram[2] = "0b10100111001111";
        ram[3] = "0b10010110100001";
        ram[4] = "0b10000000000000";
        ram[5] = "0b01100100100100";
        ram[6] = "0b01000101010001";
        ram[7] = "0b00100011010100";


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


SC_MODULE(dct_1d_dct_coeff_bkb) {


static const unsigned DataWidth = 14;
static const unsigned AddressRange = 8;
static const unsigned AddressWidth = 3;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


dct_1d_dct_coeff_bkb_ram* meminst;


SC_CTOR(dct_1d_dct_coeff_bkb) {
meminst = new dct_1d_dct_coeff_bkb_ram("dct_1d_dct_coeff_bkb_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~dct_1d_dct_coeff_bkb() {
    delete meminst;
}


};//endmodule
#endif
