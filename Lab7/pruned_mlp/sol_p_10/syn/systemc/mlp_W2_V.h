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
        ram[0] = "0b0100011100101010";
        ram[1] = "0b0001101101011010";
        ram[2] = "0b0001000101000111";
        ram[3] = "0b0010101111001010";
        ram[4] = "0b1110010111011010";
        ram[5] = "0b0001101000011111";
        ram[6] = "0b0000000000000000";
        ram[7] = "0b0010011010011010";
        ram[8] = "0b1110010001110111";
        ram[9] = "0b0000000000000000";
        ram[10] = "0b0000000000000000";
        ram[11] = "0b0001101101100011";
        ram[12] = "0b0000000000000000";
        ram[13] = "0b0011010000100110";
        ram[14] = "0b0000000000000000";
        ram[15] = "0b0011001101110000";
        ram[16] = "0b0010111011000110";
        ram[17] = "0b1100111000000110";
        ram[18] = "0b1110110110011001";
        ram[19] = "0b0001100000100101";
        ram[20] = "0b1110001000110101";
        ram[21] = "0b0010010111110111";
        ram[22] = "0b1110111000111001";
        ram[23] = "0b0000000000000000";
        ram[24] = "0b0011100101111110";
        ram[25] = "0b1111000001011000";
        ram[26] = "0b0001011111110001";
        ram[27] = "0b0010001110010000";
        ram[28] = "0b0000000000000000";
        ram[29] = "0b0000000000000000";
        ram[30] = "0b0000000000000000";
        ram[31] = "0b0000000000000000";
        ram[32] = "0b1110110111100100";
        ram[33] = "0b0010111110000011";
        ram[34] = "0b0000000000000000";
        ram[35] = "0b0001111100111101";
        ram[36] = "0b0000000000000000";
        ram[37] = "0b0010100000011001";
        ram[38] = "0b0001001110111000";
        ram[39] = "0b0100000111001111";


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
