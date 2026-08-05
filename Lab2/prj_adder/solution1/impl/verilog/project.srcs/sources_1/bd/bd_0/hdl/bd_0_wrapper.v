//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
//Date        : Fri May  8 13:15:25 2026
//Host        : home running 64-bit unknown
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (a,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_return,
    b,
    c);
  input [31:0]a;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  output [31:0]ap_return;
  input [31:0]b;
  input [31:0]c;

  wire [31:0]a;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire [31:0]ap_return;
  wire [31:0]b;
  wire [31:0]c;

  bd_0 bd_0_i
       (.a(a),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_return(ap_return),
        .b(b),
        .c(c));
endmodule
