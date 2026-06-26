############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project neuron_FxP
set_top neuron
add_files neuron_FxP/neuron.cpp
add_files neuron_FxP/neuron.h
add_files -tb neuron_FxP/neuron_tb.cpp
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i} -tool vivado
create_clock -period 10 -name default
#source "./neuron_FxP/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -trace_level all -tool xsim
export_design -format ip_catalog
