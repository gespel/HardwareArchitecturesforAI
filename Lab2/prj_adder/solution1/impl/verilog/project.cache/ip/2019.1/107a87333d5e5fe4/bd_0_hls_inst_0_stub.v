// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri May  8 13:17:37 2026
// Host        : home running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adder,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_start, ap_done, ap_idle, ap_ready, ap_return, a, 
  b, c)
/* synthesis syn_black_box black_box_pad_pin="ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],a[31:0],b[31:0],c[31:0]" */;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;
  input [31:0]a;
  input [31:0]b;
  input [31:0]c;
endmodule
