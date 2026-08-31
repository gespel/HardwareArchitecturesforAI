
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set result_group [add_wave_group result(memory) -into $coutputgroup]
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/result_d0 -into $result_group -radix hex
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/result_we0 -into $result_group -color #ffff00 -radix hex
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/result_ce0 -into $result_group -color #ffff00 -radix hex
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/result_address0 -into $result_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set vec_group [add_wave_group vec(memory) -into $cinputgroup]
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/vec_q0 -into $vec_group -radix hex
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/vec_ce0 -into $vec_group -color #ffff00 -radix hex
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/vec_address0 -into $vec_group -radix hex
set mat_group [add_wave_group mat(memory) -into $cinputgroup]
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/mat_q0 -into $mat_group -radix hex
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/mat_ce0 -into $mat_group -color #ffff00 -radix hex
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/mat_address0 -into $mat_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/ap_start -into $blocksiggroup
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/ap_done -into $blocksiggroup
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/ap_idle -into $blocksiggroup
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_matrix_vector_mult_top/AESL_inst_matrix_vector_mult/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_matrix_vector_mult_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_matrix_vector_mult_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matrix_vector_mult_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_matrix_vector_mult_top/LENGTH_mat -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_vector_mult_top/LENGTH_vec -into $tb_portdepth_group -radix hex
add_wave /apatb_matrix_vector_mult_top/LENGTH_result -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_result_group [add_wave_group result(memory) -into $tbcoutputgroup]
add_wave /apatb_matrix_vector_mult_top/result_d0 -into $tb_result_group -radix hex
add_wave /apatb_matrix_vector_mult_top/result_we0 -into $tb_result_group -color #ffff00 -radix hex
add_wave /apatb_matrix_vector_mult_top/result_ce0 -into $tb_result_group -color #ffff00 -radix hex
add_wave /apatb_matrix_vector_mult_top/result_address0 -into $tb_result_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_vec_group [add_wave_group vec(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_vector_mult_top/vec_q0 -into $tb_vec_group -radix hex
add_wave /apatb_matrix_vector_mult_top/vec_ce0 -into $tb_vec_group -color #ffff00 -radix hex
add_wave /apatb_matrix_vector_mult_top/vec_address0 -into $tb_vec_group -radix hex
set tb_mat_group [add_wave_group mat(memory) -into $tbcinputgroup]
add_wave /apatb_matrix_vector_mult_top/mat_q0 -into $tb_mat_group -radix hex
add_wave /apatb_matrix_vector_mult_top/mat_ce0 -into $tb_mat_group -color #ffff00 -radix hex
add_wave /apatb_matrix_vector_mult_top/mat_address0 -into $tb_mat_group -radix hex
save_wave_config matrix_vector_mult.wcfg
run all

