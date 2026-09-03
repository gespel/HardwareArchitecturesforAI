// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __mlp_W2_H__
#define __mlp_W2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct mlp_W2_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
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


   SC_CTOR(mlp_W2_ram) {
        ram[0] = "0b00111110010101001111101001010001";
        ram[1] = "0b10111111001101101111011101100111";
        ram[2] = "0b00111110000100011101010110011111";
        ram[3] = "0b00111101110011001011101111110011";
        ram[4] = "0b00111111011001101101111001111111";
        ram[5] = "0b00111110100100000010010111011011";
        ram[6] = "0b00111110111000010001111010111111";
        ram[7] = "0b10111110000100001100101111101100";
        ram[8] = "0b10111111000101100101000010101110";
        ram[9] = "0b00111111001010010010000101110111";
        ram[10] = "0b00111111001100111110101011010100";
        ram[11] = "0b00111101100110111000001111110010";
        ram[12] = "0b00111110101111001011010111101000";
        ram[13] = "0b10111101010000111000100110001000";
        ram[14] = "0b00111011001010001111111111110110";
        ram[15] = "0b00111111001010000101111101100011";
        ram[16] = "0b00111110110100001101111111111011";
        ram[17] = "0b00111110001110111111100110010100";
        ram[18] = "0b10111111001000111111000110001110";
        ram[19] = "0b10111100101000011010011101000110";
        ram[20] = "0b00111101101010111100100001100001";
        ram[21] = "0b10111110101100011010000110100100";
        ram[22] = "0b00111111001001000100011011111001";
        ram[23] = "0b10111110100111011100111111110101";
        ram[24] = "0b10111110101110100010000010101001";
        ram[25] = "0b10111110110000110111000111100101";
        ram[26] = "0b00111111011100110001101101010001";
        ram[27] = "0b10111110110100111001000011110101";
        ram[28] = "0b00111110000101001010010011000010";
        ram[29] = "0b00111110101101000110011100000011";
        ram[30] = "0b00111111011101000001001101100000";
        ram[31] = "0b10111110100100101000101001101011";
        ram[32] = "0b10111111000100110010010010100011";
        ram[33] = "0b00111111000010110011111001010101";
        ram[34] = "0b00111101000010001011011100010100";
        ram[35] = "0b00111110111111110001110110000110";
        ram[36] = "0b00111111001111101001110011101000";
        ram[37] = "0b00111111100010011111110000111001";
        ram[38] = "0b00111110100111011011010000111001";
        ram[39] = "0b10111110010010000100001010110111";


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


SC_MODULE(mlp_W2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 40;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


mlp_W2_ram* meminst;


SC_CTOR(mlp_W2) {
meminst = new mlp_W2_ram("mlp_W2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~mlp_W2() {
    delete meminst;
}


};//endmodule
#endif
