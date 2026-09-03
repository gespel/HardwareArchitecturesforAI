// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mlp_W2_V_H__
#define __mlp_W2_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct mlp_W2_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 40;
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


   SC_CTOR(mlp_W2_V_ram) {
        ram[0] = "0b0000111000000000";
        ram[1] = "0b1101001000000000";
        ram[2] = "0b0000101000000000";
        ram[3] = "0b0000011000000000";
        ram[4] = "0b0011101000000000";
        ram[5] = "0b0001001000000000";
        ram[6] = "0b0001110000000000";
        ram[7] = "0b1111011000000000";
        ram[8] = "0b1101101000000000";
        ram[9] = "0b0010101000000000";
        ram[10] = "0b0010110000000000";
        ram[11] = "0b0000010000000000";
        ram[12] = "0b0001100000000000";
        ram[13] = "0b1111110000000000";
        ram[14] = "0b0000000000000000";
        ram[15] = "0b0010101000000000";
        ram[16] = "0b0001101000000000";
        ram[17] = "0b0000110000000000";
        ram[18] = "0b1101100000000000";
        ram[19] = "0b1111111000000000";
        ram[20] = "0b0000011000000000";
        ram[21] = "0b1110101000000000";
        ram[22] = "0b0010101000000000";
        ram[23] = "0b1110110000000000";
        ram[24] = "0b1110100000000000";
        ram[25] = "0b1110100000000000";
        ram[26] = "0b0011110000000000";
        ram[27] = "0b1110011000000000";
        ram[28] = "0b0000101000000000";
        ram[29] = "0b0001011000000000";
        ram[30] = "0b0011111000000000";
        ram[31] = "0b1110111000000000";
        ram[32] = "0b1101110000000000";
        ram[33] = "0b0010001000000000";
        ram[34] = "0b0000001000000000";
        ram[35] = "0b0010000000000000";
        ram[36] = "0b0011000000000000";
        ram[37] = "0b0100010000000000";
        ram[38] = "0b0001010000000000";
        ram[39] = "0b1111010000000000";


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


SC_MODULE(mlp_W2_V) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 40;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


mlp_W2_V_ram* meminst;


SC_CTOR(mlp_W2_V) {
meminst = new mlp_W2_V_ram("mlp_W2_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~mlp_W2_V() {
    delete meminst;
}


};//endmodule
#endif
