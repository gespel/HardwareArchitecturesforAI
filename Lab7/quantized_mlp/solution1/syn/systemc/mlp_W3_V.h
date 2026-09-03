// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mlp_W3_V_H__
#define __mlp_W3_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct mlp_W3_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
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


   SC_CTOR(mlp_W3_V_ram) {
        ram[0] = "0b0010101000000000";
        ram[1] = "0b0011100000000000";
        ram[2] = "0b0000010000000000";
        ram[3] = "0b1111100000000000";
        ram[4] = "0b0100100000000000";
        ram[5] = "0b0000010000000000";
        ram[6] = "0b1110000000000000";
        ram[7] = "0b0000010000000000";
        ram[8] = "0b1110011000000000";
        ram[9] = "0b1111011000000000";
        ram[10] = "0b0000101000000000";
        ram[11] = "0b1111001000000000";
        ram[12] = "0b1110111000000000";
        ram[13] = "0b1111010000000000";
        ram[14] = "0b0011000000000000";
        ram[15] = "0b1110111000000000";
        ram[16] = "0b0000011000000000";
        ram[17] = "0b0010001000000000";
        ram[18] = "0b0001010000000000";
        ram[19] = "0b1111000000000000";
        ram[20] = "0b1111111000000000";
        ram[21] = "0b0001101000000000";
        ram[22] = "0b0011110000000000";
        ram[23] = "0b1111011000000000";
        ram[24] = "0b1110100000000000";
        ram[25] = "0b0000001000000000";
        ram[26] = "0b0010110000000000";
        ram[27] = "0b0011011000000000";
        ram[28] = "0b0000110000000000";
        ram[29] = "0b1100110000000000";
        ram[30] = "0b0000000000000000";
        ram[31] = "0b0010000000000000";
        ram[32] = "0b1110011000000000";
        ram[33] = "0b1110110000000000";
        ram[34] = "0b1111101000000000";
        ram[35] = "0b1111111000000000";
        ram[36] = "0b1110111000000000";
        ram[37] = "0b0010011000000000";
        ram[38] = "0b0000010000000000";
        ram[39] = "0b0001011000000000";
        ram[40] = "0b0001010000000000";
        ram[41] = "0b1111110000000000";
        ram[42] = "0b0001110000000000";
        ram[43] = "0b1110000000000000";
        ram[44] = "0b1101001000000000";
        ram[45] = "0b0011001000000000";
        ram[46] = "0b1110010000000000";
        ram[47] = "0b0010011000000000";
        ram[48] = "0b0010101000000000";
        ram[49] = "0b1110101000000000";
        ram[50] = "0b1110100000000000";
        ram[51] = "0b1110001000000000";
        ram[52] = "0b1101110000000000";
        ram[53] = "0b0000001000000000";
        ram[54] = "0b0001111000000000";
        ram[55] = "0b0001011000000000";
        ram[56] = "0b1110011000000000";
        ram[57] = "0b0011000000000000";
        ram[58] = "0b1111010000000000";
        ram[59] = "0b0010010000000000";
        ram[60] = "0b1110000000000000";
        ram[61] = "0b0010011000000000";
        ram[62] = "0b1111011000000000";
        ram[63] = "0b1111100000000000";


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


SC_MODULE(mlp_W3_V) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


mlp_W3_V_ram* meminst;


SC_CTOR(mlp_W3_V) {
meminst = new mlp_W3_V_ram("mlp_W3_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~mlp_W3_V() {
    delete meminst;
}


};//endmodule
#endif
