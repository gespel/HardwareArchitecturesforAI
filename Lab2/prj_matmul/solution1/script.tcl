############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prj_matmul
set_top matrix_vector_mult
add_files prj_matmul/matmul.c
add_files -tb prj_matmul/matmul_tb.c
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i} -tool vivado
create_clock -period 10 -name default
#source "./prj_matmul/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -wave_debug -trace_level all -tool xsim
export_design -format ip_catalog
