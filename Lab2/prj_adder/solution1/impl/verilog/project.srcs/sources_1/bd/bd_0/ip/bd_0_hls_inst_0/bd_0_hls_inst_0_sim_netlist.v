// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Fri May  8 13:17:37 2026
// Host        : home running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/sten/vivado/Vivado/2019.1/prj_adder/solution1/impl/verilog/project.srcs/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,adder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "adder,Vivado 2019.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    ap_return,
    a,
    b,
    c);
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ap_return DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef" *) output [31:0]ap_return;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a, LAYERED_METADATA undef" *) input [31:0]a;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b, LAYERED_METADATA undef" *) input [31:0]b;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c, LAYERED_METADATA undef" *) input [31:0]c;

  wire [31:0]a;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire [31:0]ap_return;
  wire ap_start;
  wire [31:0]b;
  wire [31:0]c;

  bd_0_hls_inst_0_adder inst
       (.a(a),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_return(ap_return),
        .ap_start(ap_start),
        .b(b),
        .c(c));
endmodule

(* ORIG_REF_NAME = "adder" *) (* hls_module = "yes" *) 
module bd_0_hls_inst_0_adder
   (ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    a,
    b,
    c,
    ap_return);
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [31:0]a;
  input [31:0]b;
  input [31:0]c;
  output [31:0]ap_return;

  wire \<const1> ;
  wire [31:0]a;
  wire [31:0]ap_return;
  wire \ap_return[0]_INST_0_i_10_n_0 ;
  wire \ap_return[0]_INST_0_i_11_n_0 ;
  wire \ap_return[0]_INST_0_i_12_n_0 ;
  wire \ap_return[0]_INST_0_i_13_n_0 ;
  wire \ap_return[0]_INST_0_i_14_n_0 ;
  wire \ap_return[0]_INST_0_i_15_n_0 ;
  wire \ap_return[0]_INST_0_i_1_n_0 ;
  wire \ap_return[0]_INST_0_i_2_n_0 ;
  wire \ap_return[0]_INST_0_i_3_n_0 ;
  wire \ap_return[0]_INST_0_i_4_n_0 ;
  wire \ap_return[0]_INST_0_i_5_n_0 ;
  wire \ap_return[0]_INST_0_i_6_n_0 ;
  wire \ap_return[0]_INST_0_i_7_n_0 ;
  wire \ap_return[0]_INST_0_i_8_n_0 ;
  wire \ap_return[0]_INST_0_i_9_n_0 ;
  wire \ap_return[0]_INST_0_n_0 ;
  wire \ap_return[0]_INST_0_n_1 ;
  wire \ap_return[0]_INST_0_n_2 ;
  wire \ap_return[0]_INST_0_n_3 ;
  wire \ap_return[0]_INST_0_n_4 ;
  wire \ap_return[0]_INST_0_n_5 ;
  wire \ap_return[0]_INST_0_n_6 ;
  wire \ap_return[0]_INST_0_n_7 ;
  wire \ap_return[16]_INST_0_i_10_n_0 ;
  wire \ap_return[16]_INST_0_i_11_n_0 ;
  wire \ap_return[16]_INST_0_i_12_n_0 ;
  wire \ap_return[16]_INST_0_i_13_n_0 ;
  wire \ap_return[16]_INST_0_i_14_n_0 ;
  wire \ap_return[16]_INST_0_i_15_n_0 ;
  wire \ap_return[16]_INST_0_i_16_n_0 ;
  wire \ap_return[16]_INST_0_i_1_n_0 ;
  wire \ap_return[16]_INST_0_i_2_n_0 ;
  wire \ap_return[16]_INST_0_i_3_n_0 ;
  wire \ap_return[16]_INST_0_i_4_n_0 ;
  wire \ap_return[16]_INST_0_i_5_n_0 ;
  wire \ap_return[16]_INST_0_i_6_n_0 ;
  wire \ap_return[16]_INST_0_i_7_n_0 ;
  wire \ap_return[16]_INST_0_i_8_n_0 ;
  wire \ap_return[16]_INST_0_i_9_n_0 ;
  wire \ap_return[16]_INST_0_n_0 ;
  wire \ap_return[16]_INST_0_n_1 ;
  wire \ap_return[16]_INST_0_n_2 ;
  wire \ap_return[16]_INST_0_n_3 ;
  wire \ap_return[16]_INST_0_n_4 ;
  wire \ap_return[16]_INST_0_n_5 ;
  wire \ap_return[16]_INST_0_n_6 ;
  wire \ap_return[16]_INST_0_n_7 ;
  wire \ap_return[24]_INST_0_i_10_n_0 ;
  wire \ap_return[24]_INST_0_i_11_n_0 ;
  wire \ap_return[24]_INST_0_i_12_n_0 ;
  wire \ap_return[24]_INST_0_i_13_n_0 ;
  wire \ap_return[24]_INST_0_i_14_n_0 ;
  wire \ap_return[24]_INST_0_i_15_n_0 ;
  wire \ap_return[24]_INST_0_i_1_n_0 ;
  wire \ap_return[24]_INST_0_i_2_n_0 ;
  wire \ap_return[24]_INST_0_i_3_n_0 ;
  wire \ap_return[24]_INST_0_i_4_n_0 ;
  wire \ap_return[24]_INST_0_i_5_n_0 ;
  wire \ap_return[24]_INST_0_i_6_n_0 ;
  wire \ap_return[24]_INST_0_i_7_n_0 ;
  wire \ap_return[24]_INST_0_i_8_n_0 ;
  wire \ap_return[24]_INST_0_i_9_n_0 ;
  wire \ap_return[24]_INST_0_n_1 ;
  wire \ap_return[24]_INST_0_n_2 ;
  wire \ap_return[24]_INST_0_n_3 ;
  wire \ap_return[24]_INST_0_n_4 ;
  wire \ap_return[24]_INST_0_n_5 ;
  wire \ap_return[24]_INST_0_n_6 ;
  wire \ap_return[24]_INST_0_n_7 ;
  wire \ap_return[8]_INST_0_i_10_n_0 ;
  wire \ap_return[8]_INST_0_i_11_n_0 ;
  wire \ap_return[8]_INST_0_i_12_n_0 ;
  wire \ap_return[8]_INST_0_i_13_n_0 ;
  wire \ap_return[8]_INST_0_i_14_n_0 ;
  wire \ap_return[8]_INST_0_i_15_n_0 ;
  wire \ap_return[8]_INST_0_i_16_n_0 ;
  wire \ap_return[8]_INST_0_i_1_n_0 ;
  wire \ap_return[8]_INST_0_i_2_n_0 ;
  wire \ap_return[8]_INST_0_i_3_n_0 ;
  wire \ap_return[8]_INST_0_i_4_n_0 ;
  wire \ap_return[8]_INST_0_i_5_n_0 ;
  wire \ap_return[8]_INST_0_i_6_n_0 ;
  wire \ap_return[8]_INST_0_i_7_n_0 ;
  wire \ap_return[8]_INST_0_i_8_n_0 ;
  wire \ap_return[8]_INST_0_i_9_n_0 ;
  wire \ap_return[8]_INST_0_n_0 ;
  wire \ap_return[8]_INST_0_n_1 ;
  wire \ap_return[8]_INST_0_n_2 ;
  wire \ap_return[8]_INST_0_n_3 ;
  wire \ap_return[8]_INST_0_n_4 ;
  wire \ap_return[8]_INST_0_n_5 ;
  wire \ap_return[8]_INST_0_n_6 ;
  wire \ap_return[8]_INST_0_n_7 ;
  wire ap_start;
  wire [31:0]b;
  wire [31:0]c;
  wire [7:7]\NLW_ap_return[24]_INST_0_CO_UNCONNECTED ;

  assign ap_done = ap_start;
  assign ap_idle = \<const1> ;
  assign ap_ready = ap_start;
  VCC VCC
       (.P(\<const1> ));
  CARRY8 \ap_return[0]_INST_0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\ap_return[0]_INST_0_n_0 ,\ap_return[0]_INST_0_n_1 ,\ap_return[0]_INST_0_n_2 ,\ap_return[0]_INST_0_n_3 ,\ap_return[0]_INST_0_n_4 ,\ap_return[0]_INST_0_n_5 ,\ap_return[0]_INST_0_n_6 ,\ap_return[0]_INST_0_n_7 }),
        .DI({\ap_return[0]_INST_0_i_1_n_0 ,\ap_return[0]_INST_0_i_2_n_0 ,\ap_return[0]_INST_0_i_3_n_0 ,\ap_return[0]_INST_0_i_4_n_0 ,\ap_return[0]_INST_0_i_5_n_0 ,\ap_return[0]_INST_0_i_6_n_0 ,\ap_return[0]_INST_0_i_7_n_0 ,1'b0}),
        .O(ap_return[7:0]),
        .S({\ap_return[0]_INST_0_i_8_n_0 ,\ap_return[0]_INST_0_i_9_n_0 ,\ap_return[0]_INST_0_i_10_n_0 ,\ap_return[0]_INST_0_i_11_n_0 ,\ap_return[0]_INST_0_i_12_n_0 ,\ap_return[0]_INST_0_i_13_n_0 ,\ap_return[0]_INST_0_i_14_n_0 ,\ap_return[0]_INST_0_i_15_n_0 }));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[0]_INST_0_i_1 
       (.I0(c[6]),
        .I1(b[6]),
        .I2(a[6]),
        .O(\ap_return[0]_INST_0_i_1_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[0]_INST_0_i_10 
       (.I0(c[5]),
        .I1(b[5]),
        .I2(a[5]),
        .I3(\ap_return[0]_INST_0_i_3_n_0 ),
        .O(\ap_return[0]_INST_0_i_10_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[0]_INST_0_i_11 
       (.I0(c[4]),
        .I1(b[4]),
        .I2(a[4]),
        .I3(\ap_return[0]_INST_0_i_4_n_0 ),
        .O(\ap_return[0]_INST_0_i_11_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[0]_INST_0_i_12 
       (.I0(c[3]),
        .I1(b[3]),
        .I2(a[3]),
        .I3(\ap_return[0]_INST_0_i_5_n_0 ),
        .O(\ap_return[0]_INST_0_i_12_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[0]_INST_0_i_13 
       (.I0(c[2]),
        .I1(b[2]),
        .I2(a[2]),
        .I3(\ap_return[0]_INST_0_i_6_n_0 ),
        .O(\ap_return[0]_INST_0_i_13_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[0]_INST_0_i_14 
       (.I0(c[1]),
        .I1(b[1]),
        .I2(a[1]),
        .I3(\ap_return[0]_INST_0_i_7_n_0 ),
        .O(\ap_return[0]_INST_0_i_14_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \ap_return[0]_INST_0_i_15 
       (.I0(c[0]),
        .I1(b[0]),
        .I2(a[0]),
        .O(\ap_return[0]_INST_0_i_15_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[0]_INST_0_i_2 
       (.I0(c[5]),
        .I1(b[5]),
        .I2(a[5]),
        .O(\ap_return[0]_INST_0_i_2_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[0]_INST_0_i_3 
       (.I0(c[4]),
        .I1(b[4]),
        .I2(a[4]),
        .O(\ap_return[0]_INST_0_i_3_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[0]_INST_0_i_4 
       (.I0(c[3]),
        .I1(b[3]),
        .I2(a[3]),
        .O(\ap_return[0]_INST_0_i_4_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[0]_INST_0_i_5 
       (.I0(c[2]),
        .I1(b[2]),
        .I2(a[2]),
        .O(\ap_return[0]_INST_0_i_5_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[0]_INST_0_i_6 
       (.I0(c[1]),
        .I1(b[1]),
        .I2(a[1]),
        .O(\ap_return[0]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[0]_INST_0_i_7 
       (.I0(c[0]),
        .I1(b[0]),
        .I2(a[0]),
        .O(\ap_return[0]_INST_0_i_7_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[0]_INST_0_i_8 
       (.I0(c[7]),
        .I1(b[7]),
        .I2(a[7]),
        .I3(\ap_return[0]_INST_0_i_1_n_0 ),
        .O(\ap_return[0]_INST_0_i_8_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[0]_INST_0_i_9 
       (.I0(c[6]),
        .I1(b[6]),
        .I2(a[6]),
        .I3(\ap_return[0]_INST_0_i_2_n_0 ),
        .O(\ap_return[0]_INST_0_i_9_n_0 ));
  CARRY8 \ap_return[16]_INST_0 
       (.CI(\ap_return[8]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ap_return[16]_INST_0_n_0 ,\ap_return[16]_INST_0_n_1 ,\ap_return[16]_INST_0_n_2 ,\ap_return[16]_INST_0_n_3 ,\ap_return[16]_INST_0_n_4 ,\ap_return[16]_INST_0_n_5 ,\ap_return[16]_INST_0_n_6 ,\ap_return[16]_INST_0_n_7 }),
        .DI({\ap_return[16]_INST_0_i_1_n_0 ,\ap_return[16]_INST_0_i_2_n_0 ,\ap_return[16]_INST_0_i_3_n_0 ,\ap_return[16]_INST_0_i_4_n_0 ,\ap_return[16]_INST_0_i_5_n_0 ,\ap_return[16]_INST_0_i_6_n_0 ,\ap_return[16]_INST_0_i_7_n_0 ,\ap_return[16]_INST_0_i_8_n_0 }),
        .O(ap_return[23:16]),
        .S({\ap_return[16]_INST_0_i_9_n_0 ,\ap_return[16]_INST_0_i_10_n_0 ,\ap_return[16]_INST_0_i_11_n_0 ,\ap_return[16]_INST_0_i_12_n_0 ,\ap_return[16]_INST_0_i_13_n_0 ,\ap_return[16]_INST_0_i_14_n_0 ,\ap_return[16]_INST_0_i_15_n_0 ,\ap_return[16]_INST_0_i_16_n_0 }));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[16]_INST_0_i_1 
       (.I0(c[22]),
        .I1(b[22]),
        .I2(a[22]),
        .O(\ap_return[16]_INST_0_i_1_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[16]_INST_0_i_10 
       (.I0(c[22]),
        .I1(b[22]),
        .I2(a[22]),
        .I3(\ap_return[16]_INST_0_i_2_n_0 ),
        .O(\ap_return[16]_INST_0_i_10_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[16]_INST_0_i_11 
       (.I0(c[21]),
        .I1(b[21]),
        .I2(a[21]),
        .I3(\ap_return[16]_INST_0_i_3_n_0 ),
        .O(\ap_return[16]_INST_0_i_11_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[16]_INST_0_i_12 
       (.I0(c[20]),
        .I1(b[20]),
        .I2(a[20]),
        .I3(\ap_return[16]_INST_0_i_4_n_0 ),
        .O(\ap_return[16]_INST_0_i_12_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[16]_INST_0_i_13 
       (.I0(c[19]),
        .I1(b[19]),
        .I2(a[19]),
        .I3(\ap_return[16]_INST_0_i_5_n_0 ),
        .O(\ap_return[16]_INST_0_i_13_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[16]_INST_0_i_14 
       (.I0(c[18]),
        .I1(b[18]),
        .I2(a[18]),
        .I3(\ap_return[16]_INST_0_i_6_n_0 ),
        .O(\ap_return[16]_INST_0_i_14_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[16]_INST_0_i_15 
       (.I0(c[17]),
        .I1(b[17]),
        .I2(a[17]),
        .I3(\ap_return[16]_INST_0_i_7_n_0 ),
        .O(\ap_return[16]_INST_0_i_15_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[16]_INST_0_i_16 
       (.I0(c[16]),
        .I1(b[16]),
        .I2(a[16]),
        .I3(\ap_return[16]_INST_0_i_8_n_0 ),
        .O(\ap_return[16]_INST_0_i_16_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[16]_INST_0_i_2 
       (.I0(c[21]),
        .I1(b[21]),
        .I2(a[21]),
        .O(\ap_return[16]_INST_0_i_2_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[16]_INST_0_i_3 
       (.I0(c[20]),
        .I1(b[20]),
        .I2(a[20]),
        .O(\ap_return[16]_INST_0_i_3_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[16]_INST_0_i_4 
       (.I0(c[19]),
        .I1(b[19]),
        .I2(a[19]),
        .O(\ap_return[16]_INST_0_i_4_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[16]_INST_0_i_5 
       (.I0(c[18]),
        .I1(b[18]),
        .I2(a[18]),
        .O(\ap_return[16]_INST_0_i_5_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[16]_INST_0_i_6 
       (.I0(c[17]),
        .I1(b[17]),
        .I2(a[17]),
        .O(\ap_return[16]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[16]_INST_0_i_7 
       (.I0(c[16]),
        .I1(b[16]),
        .I2(a[16]),
        .O(\ap_return[16]_INST_0_i_7_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[16]_INST_0_i_8 
       (.I0(c[15]),
        .I1(b[15]),
        .I2(a[15]),
        .O(\ap_return[16]_INST_0_i_8_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[16]_INST_0_i_9 
       (.I0(c[23]),
        .I1(b[23]),
        .I2(a[23]),
        .I3(\ap_return[16]_INST_0_i_1_n_0 ),
        .O(\ap_return[16]_INST_0_i_9_n_0 ));
  CARRY8 \ap_return[24]_INST_0 
       (.CI(\ap_return[16]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_ap_return[24]_INST_0_CO_UNCONNECTED [7],\ap_return[24]_INST_0_n_1 ,\ap_return[24]_INST_0_n_2 ,\ap_return[24]_INST_0_n_3 ,\ap_return[24]_INST_0_n_4 ,\ap_return[24]_INST_0_n_5 ,\ap_return[24]_INST_0_n_6 ,\ap_return[24]_INST_0_n_7 }),
        .DI({1'b0,\ap_return[24]_INST_0_i_1_n_0 ,\ap_return[24]_INST_0_i_2_n_0 ,\ap_return[24]_INST_0_i_3_n_0 ,\ap_return[24]_INST_0_i_4_n_0 ,\ap_return[24]_INST_0_i_5_n_0 ,\ap_return[24]_INST_0_i_6_n_0 ,\ap_return[24]_INST_0_i_7_n_0 }),
        .O(ap_return[31:24]),
        .S({\ap_return[24]_INST_0_i_8_n_0 ,\ap_return[24]_INST_0_i_9_n_0 ,\ap_return[24]_INST_0_i_10_n_0 ,\ap_return[24]_INST_0_i_11_n_0 ,\ap_return[24]_INST_0_i_12_n_0 ,\ap_return[24]_INST_0_i_13_n_0 ,\ap_return[24]_INST_0_i_14_n_0 ,\ap_return[24]_INST_0_i_15_n_0 }));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[24]_INST_0_i_1 
       (.I0(c[29]),
        .I1(b[29]),
        .I2(a[29]),
        .O(\ap_return[24]_INST_0_i_1_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[24]_INST_0_i_10 
       (.I0(c[29]),
        .I1(b[29]),
        .I2(a[29]),
        .I3(\ap_return[24]_INST_0_i_2_n_0 ),
        .O(\ap_return[24]_INST_0_i_10_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[24]_INST_0_i_11 
       (.I0(c[28]),
        .I1(b[28]),
        .I2(a[28]),
        .I3(\ap_return[24]_INST_0_i_3_n_0 ),
        .O(\ap_return[24]_INST_0_i_11_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[24]_INST_0_i_12 
       (.I0(c[27]),
        .I1(b[27]),
        .I2(a[27]),
        .I3(\ap_return[24]_INST_0_i_4_n_0 ),
        .O(\ap_return[24]_INST_0_i_12_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[24]_INST_0_i_13 
       (.I0(c[26]),
        .I1(b[26]),
        .I2(a[26]),
        .I3(\ap_return[24]_INST_0_i_5_n_0 ),
        .O(\ap_return[24]_INST_0_i_13_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[24]_INST_0_i_14 
       (.I0(c[25]),
        .I1(b[25]),
        .I2(a[25]),
        .I3(\ap_return[24]_INST_0_i_6_n_0 ),
        .O(\ap_return[24]_INST_0_i_14_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[24]_INST_0_i_15 
       (.I0(c[24]),
        .I1(b[24]),
        .I2(a[24]),
        .I3(\ap_return[24]_INST_0_i_7_n_0 ),
        .O(\ap_return[24]_INST_0_i_15_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[24]_INST_0_i_2 
       (.I0(c[28]),
        .I1(b[28]),
        .I2(a[28]),
        .O(\ap_return[24]_INST_0_i_2_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[24]_INST_0_i_3 
       (.I0(c[27]),
        .I1(b[27]),
        .I2(a[27]),
        .O(\ap_return[24]_INST_0_i_3_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[24]_INST_0_i_4 
       (.I0(c[26]),
        .I1(b[26]),
        .I2(a[26]),
        .O(\ap_return[24]_INST_0_i_4_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[24]_INST_0_i_5 
       (.I0(c[25]),
        .I1(b[25]),
        .I2(a[25]),
        .O(\ap_return[24]_INST_0_i_5_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[24]_INST_0_i_6 
       (.I0(c[24]),
        .I1(b[24]),
        .I2(a[24]),
        .O(\ap_return[24]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[24]_INST_0_i_7 
       (.I0(c[23]),
        .I1(b[23]),
        .I2(a[23]),
        .O(\ap_return[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    \ap_return[24]_INST_0_i_8 
       (.I0(a[30]),
        .I1(b[30]),
        .I2(c[30]),
        .I3(b[31]),
        .I4(c[31]),
        .I5(a[31]),
        .O(\ap_return[24]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[24]_INST_0_i_9 
       (.I0(\ap_return[24]_INST_0_i_1_n_0 ),
        .I1(b[30]),
        .I2(c[30]),
        .I3(a[30]),
        .O(\ap_return[24]_INST_0_i_9_n_0 ));
  CARRY8 \ap_return[8]_INST_0 
       (.CI(\ap_return[0]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\ap_return[8]_INST_0_n_0 ,\ap_return[8]_INST_0_n_1 ,\ap_return[8]_INST_0_n_2 ,\ap_return[8]_INST_0_n_3 ,\ap_return[8]_INST_0_n_4 ,\ap_return[8]_INST_0_n_5 ,\ap_return[8]_INST_0_n_6 ,\ap_return[8]_INST_0_n_7 }),
        .DI({\ap_return[8]_INST_0_i_1_n_0 ,\ap_return[8]_INST_0_i_2_n_0 ,\ap_return[8]_INST_0_i_3_n_0 ,\ap_return[8]_INST_0_i_4_n_0 ,\ap_return[8]_INST_0_i_5_n_0 ,\ap_return[8]_INST_0_i_6_n_0 ,\ap_return[8]_INST_0_i_7_n_0 ,\ap_return[8]_INST_0_i_8_n_0 }),
        .O(ap_return[15:8]),
        .S({\ap_return[8]_INST_0_i_9_n_0 ,\ap_return[8]_INST_0_i_10_n_0 ,\ap_return[8]_INST_0_i_11_n_0 ,\ap_return[8]_INST_0_i_12_n_0 ,\ap_return[8]_INST_0_i_13_n_0 ,\ap_return[8]_INST_0_i_14_n_0 ,\ap_return[8]_INST_0_i_15_n_0 ,\ap_return[8]_INST_0_i_16_n_0 }));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[8]_INST_0_i_1 
       (.I0(c[14]),
        .I1(b[14]),
        .I2(a[14]),
        .O(\ap_return[8]_INST_0_i_1_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[8]_INST_0_i_10 
       (.I0(c[14]),
        .I1(b[14]),
        .I2(a[14]),
        .I3(\ap_return[8]_INST_0_i_2_n_0 ),
        .O(\ap_return[8]_INST_0_i_10_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[8]_INST_0_i_11 
       (.I0(c[13]),
        .I1(b[13]),
        .I2(a[13]),
        .I3(\ap_return[8]_INST_0_i_3_n_0 ),
        .O(\ap_return[8]_INST_0_i_11_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[8]_INST_0_i_12 
       (.I0(c[12]),
        .I1(b[12]),
        .I2(a[12]),
        .I3(\ap_return[8]_INST_0_i_4_n_0 ),
        .O(\ap_return[8]_INST_0_i_12_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[8]_INST_0_i_13 
       (.I0(c[11]),
        .I1(b[11]),
        .I2(a[11]),
        .I3(\ap_return[8]_INST_0_i_5_n_0 ),
        .O(\ap_return[8]_INST_0_i_13_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[8]_INST_0_i_14 
       (.I0(c[10]),
        .I1(b[10]),
        .I2(a[10]),
        .I3(\ap_return[8]_INST_0_i_6_n_0 ),
        .O(\ap_return[8]_INST_0_i_14_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[8]_INST_0_i_15 
       (.I0(c[9]),
        .I1(b[9]),
        .I2(a[9]),
        .I3(\ap_return[8]_INST_0_i_7_n_0 ),
        .O(\ap_return[8]_INST_0_i_15_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[8]_INST_0_i_16 
       (.I0(c[8]),
        .I1(b[8]),
        .I2(a[8]),
        .I3(\ap_return[8]_INST_0_i_8_n_0 ),
        .O(\ap_return[8]_INST_0_i_16_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[8]_INST_0_i_2 
       (.I0(c[13]),
        .I1(b[13]),
        .I2(a[13]),
        .O(\ap_return[8]_INST_0_i_2_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[8]_INST_0_i_3 
       (.I0(c[12]),
        .I1(b[12]),
        .I2(a[12]),
        .O(\ap_return[8]_INST_0_i_3_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[8]_INST_0_i_4 
       (.I0(c[11]),
        .I1(b[11]),
        .I2(a[11]),
        .O(\ap_return[8]_INST_0_i_4_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[8]_INST_0_i_5 
       (.I0(c[10]),
        .I1(b[10]),
        .I2(a[10]),
        .O(\ap_return[8]_INST_0_i_5_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[8]_INST_0_i_6 
       (.I0(c[9]),
        .I1(b[9]),
        .I2(a[9]),
        .O(\ap_return[8]_INST_0_i_6_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[8]_INST_0_i_7 
       (.I0(c[8]),
        .I1(b[8]),
        .I2(a[8]),
        .O(\ap_return[8]_INST_0_i_7_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \ap_return[8]_INST_0_i_8 
       (.I0(c[7]),
        .I1(b[7]),
        .I2(a[7]),
        .O(\ap_return[8]_INST_0_i_8_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \ap_return[8]_INST_0_i_9 
       (.I0(c[15]),
        .I1(b[15]),
        .I2(a[15]),
        .I3(\ap_return[8]_INST_0_i_1_n_0 ),
        .O(\ap_return[8]_INST_0_i_9_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
