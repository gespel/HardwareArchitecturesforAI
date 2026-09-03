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

  static const unsigned DataWidth = 12;
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
        ram[0] = "0b000110001011";
        ram[1] = "0b000000000000";
        ram[2] = "0b110100111010";
        ram[3] = "0b000100111100";
        ram[4] = "0b010000000010";
        ram[5] = "0b000000000000";
        ram[6] = "0b111001100101";
        ram[7] = "0b110000000111";
        ram[8] = "0b000000000000";
        ram[9] = "0b111000101101";
        ram[10] = "0b000000000000";
        ram[11] = "0b110000101100";
        ram[12] = "0b111010011101";
        ram[13] = "0b101001110111";
        ram[14] = "0b000100111001";
        ram[15] = "0b000100010011";
        ram[16] = "0b000000000000";
        ram[17] = "0b000100101000";
        ram[18] = "0b000000000000";
        ram[19] = "0b110110010000";
        ram[20] = "0b001011001100";
        ram[21] = "0b000100111010";
        ram[22] = "0b000101100101";
        ram[23] = "0b110100011111";
        ram[24] = "0b001000110010";
        ram[25] = "0b111000100110";
        ram[26] = "0b000000000000";
        ram[27] = "0b000000000000";
        ram[28] = "0b000000000000";
        ram[29] = "0b111011001000";
        ram[30] = "0b000101111000";
        ram[31] = "0b110011010101";
        ram[32] = "0b110000000110";
        ram[33] = "0b000000000000";
        ram[34] = "0b110101111101";
        ram[35] = "0b111001111001";
        ram[36] = "0b000000000000";
        ram[37] = "0b000000000000";
        ram[38] = "0b110011100100";
        ram[39] = "0b010000001111";
        ram[40] = "0b001000101101";
        ram[41] = "0b000000000000";
        ram[42] = "0b110111011000";
        ram[43] = "0b001000110011";
        ram[44] = "0b110100001111";
        ram[45] = "0b000000000000";
        ram[46] = "0b111001100100";
        ram[47] = "0b110110011011";
        ram[48] = "0b000000000000";
        ram[49] = "0b000100000001";
        ram[50] = "0b101010101110";
        ram[51] = "0b111100000001";
        ram[52] = "0b001101011110";
        ram[53] = "0b111000001110";
        ram[54] = "0b111001111110";
        ram[55] = "0b000000000000";
        ram[56] = "0b110011101101";
        ram[57] = "0b000000000000";
        ram[58] = "0b000111110000";
        ram[59] = "0b110110001001";
        ram[60] = "0b000000000000";
        ram[61] = "0b000100011110";
        ram[62] = "0b000100111001";
        ram[63] = "0b110100110011";
        ram[64] = "0b111100000011";
        ram[65] = "0b110111110111";
        ram[66] = "0b111010000011";
        ram[67] = "0b000110110000";
        ram[68] = "0b000000000000";
        ram[69] = "0b000000000000";
        ram[70] = "0b000110110010";
        ram[71] = "0b000000000000";
        ram[72] = "0b110111111110";
        ram[73] = "0b101100011101";
        ram[74] = "0b000000000000";
        ram[75] = "0b000000000000";
        ram[76] = "0b000000000000";
        ram[77] = "0b000000000000";
        ram[78] = "0b110111001100";
        ram[79] = "0b001010101011";


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


static const unsigned DataWidth = 12;
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
