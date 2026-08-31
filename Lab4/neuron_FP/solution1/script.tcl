############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project neuron_FP
set_top neuron
add_files neuron_FP/neuron.cpp
add_files neuron_FP/neuron.h
add_files -tb neuron_FP/neuron_tb.cpp
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i} -tool vivado
create_clock -period 10 -name default
#source "./neuron_FP/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all -tool xsim
export_design -rtl verilog -format ip_catalog
