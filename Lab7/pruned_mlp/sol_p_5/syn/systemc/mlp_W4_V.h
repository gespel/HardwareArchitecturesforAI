// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mlp_W4_V_H__
#define __mlp_W4_V_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct mlp_W4_V_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 80;
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


   SC_CTOR(mlp_W4_V_ram) {
        ram[0] = "0b0001100010110001";
        ram[1] = "0b0000000000000000";
        ram[2] = "0b1101001110100101";
        ram[3] = "0b0001001111001000";
        ram[4] = "0b0100000000100111";
        ram[5] = "0b0000000000000000";
        ram[6] = "0b1110011001011110";
        ram[7] = "0b1100000001110111";
        ram[8] = "0b0000000000000000";
        ram[9] = "0b1110001011011001";
        ram[10] = "0b0000000000000000";
        ram[11] = "0b1100001011001101";
        ram[12] = "0b1110100111011101";
        ram[13] = "0b1010011101110011";
        ram[14] = "0b0001001110010110";
        ram[15] = "0b0001000100111111";
        ram[16] = "0b0000000000000000";
        ram[17] = "0b0001001010000111";
        ram[18] = "0b0000000000000000";
        ram[19] = "0b1101100100001110";
        ram[20] = "0b0010110011001111";
        ram[21] = "0b0001001110100110";
        ram[22] = "0b0001011001011010";
        ram[23] = "0b1101000111110000";
        ram[24] = "0b0010001100101011";
        ram[25] = "0b1110001001100000";
        ram[26] = "0b0000000000000000";
        ram[27] = "0b0000000000000000";
        ram[28] = "0b0000000000000000";
        ram[29] = "0b1110110010000100";
        ram[30] = "0b0001011110001011";
        ram[31] = "0b1100110101010111";
        ram[32] = "0b1100000001101100";
        ram[33] = "0b0000000000000000";
        ram[34] = "0b1101011111011101";
        ram[35] = "0b1110011110010000";
        ram[36] = "0b0000000000000000";
        ram[37] = "0b0000000000000000";
        ram[38] = "0b1100111001000100";
        ram[39] = "0b0100000011110010";
        ram[40] = "0b0010001011010111";
        ram[41] = "0b0000000000000000";
        ram[42] = "0b1101110110001011";
        ram[43] = "0b0010001100110001";
        ram[44] = "0b1101000011111000";
        ram[45] = "0b0000000000000000";
        ram[46] = "0b1110011001001100";
        ram[47] = "0b1101100110111101";
        ram[48] = "0b0000000000000000";
        ram[49] = "0b0001000000011100";
        ram[50] = "0b1010101011101101";
        ram[51] = "0b1111000000010000";
        ram[52] = "0b0011010111101001";
        ram[53] = "0b1110000011100000";
        ram[54] = "0b1110011111101101";
        ram[55] = "0b0000000000000000";
        ram[56] = "0b1100111011010100";
        ram[57] = "0b0000000000000000";
        ram[58] = "0b0001111100001111";
        ram[59] = "0b1101100010010011";
        ram[60] = "0b0000000000000000";
        ram[61] = "0b0001000111100010";
        ram[62] = "0b0001001110010101";
        ram[63] = "0b1101001100110110";
        ram[64] = "0b1111000000110101";
        ram[65] = "0b1101111101110110";
        ram[66] = "0b1110100000110010";
        ram[67] = "0b0001101100001110";
        ram[68] = "0b0000000000000000";
        ram[69] = "0b0000000000000000";
        ram[70] = "0b0001101100100001";
        ram[71] = "0b0000000000000000";
        ram[72] = "0b1101111111100101";
        ram[73] = "0b1011000111011111";
        ram[74] = "0b0000000000000000";
        ram[75] = "0b0000000000000000";
        ram[76] = "0b0000000000000000";
        ram[77] = "0b0000000000000000";
        ram[78] = "0b1101110011001000";
        ram[79] = "0b0010101010110010";


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


SC_MODULE(mlp_W4_V) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 80;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


mlp_W4_V_ram* meminst;


SC_CTOR(mlp_W4_V) {
meminst = new mlp_W4_V_ram("mlp_W4_V_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~mlp_W4_V() {
    delete meminst;
}


};//endmodule
#endif
