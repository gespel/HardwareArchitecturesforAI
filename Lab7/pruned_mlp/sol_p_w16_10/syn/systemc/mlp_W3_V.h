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

  static const unsigned DataWidth = 11;
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
        ram[0] = "0b01000110011";
        ram[1] = "0b01010100010";
        ram[2] = "0b01101100001";
        ram[3] = "0b10110011110";
        ram[4] = "0b00000000000";
        ram[5] = "0b00000000000";
        ram[6] = "0b01001010011";
        ram[7] = "0b11011011000";
        ram[8] = "0b01001110110";
        ram[9] = "0b00100110011";
        ram[10] = "0b11010101110";
        ram[11] = "0b01011001001";
        ram[12] = "0b11000000010";
        ram[13] = "0b00101011110";
        ram[14] = "0b11010101111";
        ram[15] = "0b11001010110";
        ram[16] = "0b11001001100";
        ram[17] = "0b01001011001";
        ram[18] = "0b00000000000";
        ram[19] = "0b00000000000";
        ram[20] = "0b00110100111";
        ram[21] = "0b01010110011";
        ram[22] = "0b00000000000";
        ram[23] = "0b01111110001";
        ram[24] = "0b00000000000";
        ram[25] = "0b00000000000";
        ram[26] = "0b01001011000";
        ram[27] = "0b00110111001";
        ram[28] = "0b00000000000";
        ram[29] = "0b10011101000";
        ram[30] = "0b01111110110";
        ram[31] = "0b11011111110";
        ram[32] = "0b00000000000";
        ram[33] = "0b01100100111";
        ram[34] = "0b00111001110";
        ram[35] = "0b01011000001";
        ram[36] = "0b01010100101";
        ram[37] = "0b00000000000";
        ram[38] = "0b11001001101";
        ram[39] = "0b10101101100";
        ram[40] = "0b00000000000";
        ram[41] = "0b00000000000";
        ram[42] = "0b00101001100";
        ram[43] = "0b00101101011";
        ram[44] = "0b01110110001";
        ram[45] = "0b00101011011";
        ram[46] = "0b00000000000";
        ram[47] = "0b00000000000";
        ram[48] = "0b00111010110";
        ram[49] = "0b00110100010";
        ram[50] = "0b00000000000";
        ram[51] = "0b11100000100";
        ram[52] = "0b10101000001";
        ram[53] = "0b00111011001";
        ram[54] = "0b11000000001";
        ram[55] = "0b00111111011";
        ram[56] = "0b00100110000";
        ram[57] = "0b00000000000";
        ram[58] = "0b11011111110";
        ram[59] = "0b01000000011";
        ram[60] = "0b10011001000";
        ram[61] = "0b10010011001";
        ram[62] = "0b00000000000";
        ram[63] = "0b01100011011";


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


static const unsigned DataWidth = 11;
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
