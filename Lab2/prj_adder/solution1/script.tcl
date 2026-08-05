############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prj_adder
set_top adder
add_files ../../../Downloads/HAAI_lab2_source/code/adder/adder.h
add_files ../../../Downloads/HAAI_lab2_source/code/adder/adder.cpp
add_files -tb ../../../Downloads/HAAI_lab2_source/code/adder/adder_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog -version 0.0.0
#source "./prj_adder/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -wave_debug -trace_level all -tool xsim
export_design -flow impl -rtl verilog -format ip_catalog -version "0.0.0"
