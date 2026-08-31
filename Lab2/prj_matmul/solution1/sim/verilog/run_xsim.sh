
/home/sten/vivado/Vivado/2019.1/bin/xelab xil_defaultlib.apatb_matrix_vector_mult_top glbl -prj matrix_vector_mult.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/home/sten/vivado/Vivado/2019.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s matrix_vector_mult -debug wave
/home/sten/vivado/Vivado/2019.1/bin/xsim --noieeewarnings matrix_vector_mult -tclbatch matrix_vector_mult.tcl -gui -view matrix_vector_mult_dataflow_ana.wcfg -protoinst matrix_vector_mult.protoinst

