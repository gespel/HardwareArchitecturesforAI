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

  static const unsigned DataWidth = 12;
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
        ram[0] = "0b010001110010";
        ram[1] = "0b000110110101";
        ram[2] = "0b000100010100";
        ram[3] = "0b001010111100";
        ram[4] = "0b111001011101";
        ram[5] = "0b000110100001";
        ram[6] = "0b000000000000";
        ram[7] = "0b001001101001";
        ram[8] = "0b111001000111";
        ram[9] = "0b000000000000";
        ram[10] = "0b000000000000";
        ram[11] = "0b000110110110";
        ram[12] = "0b000000000000";
        ram[13] = "0b001101000010";
        ram[14] = "0b000000000000";
        ram[15] = "0b001100110111";
        ram[16] = "0b001011101100";
        ram[17] = "0b110011100000";
        ram[18] = "0b111011011001";
        ram[19] = "0b000110000010";
        ram[20] = "0b111000100011";
        ram[21] = "0b001001011111";
        ram[22] = "0b111011100011";
        ram[23] = "0b000000000000";
        ram[24] = "0b001110010111";
        ram[25] = "0b111100000101";
        ram[26] = "0b000101111111";
        ram[27] = "0b001000111001";
        ram[28] = "0b000000000000";
        ram[29] = "0b000000000000";
        ram[30] = "0b000000000000";
        ram[31] = "0b000000000000";
        ram[32] = "0b111011011110";
        ram[33] = "0b001011111000";
        ram[34] = "0b000000000000";
        ram[35] = "0b000111110011";
        ram[36] = "0b000000000000";
        ram[37] = "0b001010000001";
        ram[38] = "0b000100111011";
        ram[39] = "0b010000011100";


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


static const unsigned DataWidth = 12;
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
