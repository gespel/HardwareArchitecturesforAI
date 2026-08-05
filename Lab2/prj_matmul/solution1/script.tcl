############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prj_matmul
set_top matrix_vector_mult
add_files ../../../Downloads/HAAI_lab2_source(1)/code/mat_mul/matmul.c
add_files -tb ../../../Downloads/HAAI_lab2_source(1)/code/mat_mul/matmul_tb.c
open_solution "solution1"
set_part {xczu3eg-sbva484-1-i} -tool vivado
create_clock -period 10 -name default
#source "./prj_matmul/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
