############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mlp_FP
add_files ../../../Downloads/HAAI_Lab7_source(1)/HAAI_Lab7_source/mlp_FP/mlp.cpp
add_files ../../../Downloads/HAAI_Lab7_source(1)/HAAI_Lab7_source/mlp_FP/mlp.h
add_files -tb ../../../Downloads/HAAI_Lab7_source(1)/HAAI_Lab7_source/mlp_FP/mlp_tb.cpp
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i} -tool vivado
create_clock -period 10 -name default
#source "./mlp_FP/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
