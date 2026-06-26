
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_neuron_top/AESL_inst_neuron/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set b_group [add_wave_group b(wire) -into $cinputgroup]
add_wave /apatb_neuron_top/AESL_inst_neuron/b -into $b_group -radix hex
set x_group [add_wave_group x(wire) -into $cinputgroup]
add_wave /apatb_neuron_top/AESL_inst_neuron/x -into $x_group -radix hex
set w_group [add_wave_group w(wire) -into $cinputgroup]
add_wave /apatb_neuron_top/AESL_inst_neuron/w -into $w_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_neuron_top/AESL_inst_neuron/ap_start -into $blocksiggroup
add_wave /apatb_neuron_top/AESL_inst_neuron/ap_done -into $blocksiggroup
add_wave /apatb_neuron_top/AESL_inst_neuron/ap_idle -into $blocksiggroup
add_wave /apatb_neuron_top/AESL_inst_neuron/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_neuron_top/AESL_inst_neuron/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_neuron_top/AESL_inst_neuron/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_neuron_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_neuron_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_neuron_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_neuron_top/LENGTH_w -into $tb_portdepth_group -radix hex
add_wave /apatb_neuron_top/LENGTH_x -into $tb_portdepth_group -radix hex
add_wave /apatb_neuron_top/LENGTH_b -into $tb_portdepth_group -radix hex
add_wave /apatb_neuron_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_neuron_top/ap_return -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_b_group [add_wave_group b(wire) -into $tbcinputgroup]
add_wave /apatb_neuron_top/b -into $tb_b_group -radix hex
set tb_x_group [add_wave_group x(wire) -into $tbcinputgroup]
add_wave /apatb_neuron_top/x -into $tb_x_group -radix hex
set tb_w_group [add_wave_group w(wire) -into $tbcinputgroup]
add_wave /apatb_neuron_top/w -into $tb_w_group -radix hex
save_wave_config neuron.wcfg
run all

