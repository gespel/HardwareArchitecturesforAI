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
        ram[0] = "0b111110100000";
        ram[1] = "0b111011000000";
        ram[2] = "0b111010100000";
        ram[3] = "0b001011100000";
        ram[4] = "0b111011000000";
        ram[5] = "0b111011100000";
        ram[6] = "0b110110100000";
        ram[7] = "0b110111000000";
        ram[8] = "0b111110000000";
        ram[9] = "0b111000000000";
        ram[10] = "0b001100000000";
        ram[11] = "0b101110000000";
        ram[12] = "0b001110100000";
        ram[13] = "0b110100000000";
        ram[14] = "0b110110100000";
        ram[15] = "0b000111000000";
        ram[16] = "0b000010100000";
        ram[17] = "0b000000100000";
        ram[18] = "0b000001000000";
        ram[19] = "0b000010000000";
        ram[20] = "0b111111000000";
        ram[21] = "0b111001100000";
        ram[22] = "0b110011000000";
        ram[23] = "0b000111000000";
        ram[24] = "0b111101000000";
        ram[25] = "0b111001100000";
        ram[26] = "0b111110000000";
        ram[27] = "0b111001000000";
        ram[28] = "0b001010000000";
        ram[29] = "0b000111000000";
        ram[30] = "0b110111100000";
        ram[31] = "0b111100100000";
        ram[32] = "0b111011100000";
        ram[33] = "0b001000000000";
        ram[34] = "0b001010000000";
        ram[35] = "0b111001100000";
        ram[36] = "0b110000000000";
        ram[37] = "0b111010000000";
        ram[38] = "0b000000000000";
        ram[39] = "0b111011100000";
        ram[40] = "0b110010000000";
        ram[41] = "0b000011000000";
        ram[42] = "0b111000000000";
        ram[43] = "0b000110100000";
        ram[44] = "0b000000000000";
        ram[45] = "0b000100100000";
        ram[46] = "0b000010000000";
        ram[47] = "0b111011000000";
        ram[48] = "0b110001000000";
        ram[49] = "0b000011000000";
        ram[50] = "0b000101000000";
        ram[51] = "0b000111100000";
        ram[52] = "0b000110000000";
        ram[53] = "0b110000100000";
        ram[54] = "0b110011000000";
        ram[55] = "0b111110100000";
        ram[56] = "0b001110000000";
        ram[57] = "0b000101000000";
        ram[58] = "0b111011100000";
        ram[59] = "0b110101100000";
        ram[60] = "0b101111100000";
        ram[61] = "0b111100000000";
        ram[62] = "0b000010000000";
        ram[63] = "0b000101100000";
        ram[64] = "0b111010000000";
        ram[65] = "0b110111000000";
        ram[66] = "0b001011000000";
        ram[67] = "0b000000100000";
        ram[68] = "0b111100100000";
        ram[69] = "0b000101000000";
        ram[70] = "0b110111000000";
        ram[71] = "0b110111000000";
        ram[72] = "0b000100000000";
        ram[73] = "0b101001000000";
        ram[74] = "0b001010100000";
        ram[75] = "0b111001100000";
        ram[76] = "0b111010000000";
        ram[77] = "0b111100000000";
        ram[78] = "0b000011100000";
        ram[79] = "0b101110000000";


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
