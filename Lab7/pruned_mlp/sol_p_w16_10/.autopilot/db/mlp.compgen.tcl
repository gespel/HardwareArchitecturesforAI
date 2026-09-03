# This script segment is generated automatically by AutoPilot

set id 1
set name mlp_faddfsub_32ns_32ns_32_4_full_dsp_1
set corename simcore_faddfsub
set op faddfsub
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set opcode_width 2
set opcode_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_faddfsub] == "ap_gen_simcore_faddfsub"} {
eval "ap_gen_simcore_faddfsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_faddfsub, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op faddfsub
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 2
set name mlp_fdiv_32ns_32ns_32_9_1
set corename simcore_fdiv
set op fdiv
set stage_num 9
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fdiv] == "ap_gen_simcore_fdiv"} {
eval "ap_gen_simcore_fdiv { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fdiv, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fdiv
set corename FDiv
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 3
set name mlp_fcmp_32ns_32ns_1_2_1
set corename simcore_fcmp
set op fcmp
set stage_num 2
set max_latency -1
set registered_input 1
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set opcode_width 5
set opcode_signed 0
set out_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fcmp] == "ap_gen_simcore_fcmp"} {
eval "ap_gen_simcore_fcmp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fcmp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fcmp
set corename FCmp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 4
set name mlp_fexp_32ns_32ns_32_8_full_dsp_1
set corename simcore_fexp
set op fexp
set stage_num 8
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fexp] == "ap_gen_simcore_fexp"} {
eval "ap_gen_simcore_fexp { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fexp, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fexp
set corename FExp
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 5
set name mlp_mac_muladd_16s_12s_26ns_26_1_1
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 16
set in0_signed 1
set in1_width 12
set in1_signed 1
set in2_width 26
set in2_signed 0
set out_width 26
set exp i0*i1+i2
set arg_lists {i0 {16 1 +} i1 {12 1 +} m {26 1 +} i2 {26 0 +} p {26 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 6
set name mlp_mac_muladd_15ns_12s_26ns_26_1_1
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 15
set in0_signed 0
set in1_width 12
set in1_signed 1
set in2_width 26
set in2_signed 0
set out_width 26
set exp i0*i1+i2
set arg_lists {i0 {15 0 +} i1 {12 1 +} m {26 1 +} i2 {26 0 +} p {26 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 7
set name mlp_mac_muladd_15ns_11s_26ns_26_1_1
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 15
set in0_signed 0
set in1_width 11
set in1_signed 1
set in2_width 26
set in2_signed 0
set out_width 26
set exp i0*i1+i2
set arg_lists {i0 {15 0 +} i1 {11 1 +} m {26 1 +} i2 {26 0 +} p {26 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 16
set hasByteEnable 0
set MemName mlp_B1_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 9
set AddrRange 5
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "011001100" "010011010" "111010111" "001001101" "100111111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 17
set hasByteEnable 0
set MemName mlp_W1_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 12
set AddrRange 3920
set AddrWd 12
set TrueReset 0
set IsROM 1
set ROMData { "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100011110" "000000000000" "111011110101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101001000" "001001101000" "001011000011" "000111001100" "000101100001" "001011000010" "000000000000" "000000000000" "000000000000" "000101101011" "000000000000" "000000000000" "000000000000" "001100100111" "001001111110" "001010100001" "000111000100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000111000001" "000110111111" "000000000000" "001011000010" "001001110000" "001100110101" "000111010111" "000110101101" "001010101010" "001100011110" "001010111001" "000111011011" "001011000011" "001011111010" "001011100000" "001100010011" "001001000101" "000100110001" "000101011111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101001111" "000000000000" "000100001000" "000000000000" "000110000001" "001001000000" "000110010011" "001000001001" "000111100011" "000110001011" "000000000000" "000100110010" "000101111101" "000000000000" "000000000000" "000011111111" "000110011110" "000101101010" "000100100100" "000100110000" "000110001011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100100001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011101110" "000000000000" "000000000000" "000000000000" "000000000000" "000101001111" "111011101100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101111001" "000000000000" "000000000000" "000000000000" "111001000011" "000000000000" "000000000000" "111011011100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101100101" "000000000000" "111011110000" "000000000000" "111000011111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111001101001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110000000" "000000000000" "000000000000" "000000000000" "111010100000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111001001101" "000000000000" "111011000100" "111010101000" "111001100001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011101011" "111010110110" "111011110110" "111100000110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010110100" "111011110010" "000000000000" "111100000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001011" "000000000000" "000100111110" "000110101111" "000000000000" "000000000000" "000000000000" "000100000110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101100101" "000101110101" "000100100100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010001111" "000100101010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000111010000" "000111000001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100100000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100101100" "000111100011" "000110110100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011110101" "000000000000" "000000000000" "000000000000" "000000000000" "111011001000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100100101" "000110001100" "001000001110" "000110000110" "000000000000" "000000000000" "000000000000" "000000000000" "111011011011" "111011001100" "000000000000" "000000000000" "000000000000" "000000000000" "000110110101" "000000000000" "000000000000" "000000000000" "111011111100" "000100010010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101100010" "000110001111" "000110011101" "000101100010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001000" "000100100010" "000100101101" "000101101001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100011110" "000100000000" "000100011101" "000000000000" "000110111100" "000000000000" "111011011110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111100" "000110000011" "000101011101" "000101111011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100011110" "000000000000" "000000000000" "000000000000" "000000000000" "000101101101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100100000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101001100" "000000000000" "000000000000" "000100100101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100100011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101011011" "000000000000" "000100101011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111000001111" "110101011110" "111000000110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100101000" "000000000000" "000100000100" "000000000000" "000000000000" "000000000000" "000000000000" "000100011000" "000000000000" "000100111001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010000100" "110111111110" "111010110001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000010" "000000000000" "000000000000" "000000000000" "111001101011" "000000000000" "111011010011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111001111000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110100111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101100001" "000000000000" "000000000000" "000000000000" "000101100011" "000000000000" "000011111101" "000110110000" "000101101111" "000101100111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101011011" "000110100111" "000100101100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100101110" "000110011001" "001000010010" "001010000111" "000111010110" "000111101001" "000100000111" "000110000111" "001001011001" "000000000000" "000000000000" "001001010001" "000101010000" "000111000010" "001001000000" "000111110100" "000110000100" "000101101110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101010001" "000100001001" "000000000000" "000000000000" "000000000000" "000100000010" "000000000000" "000100011001" "000101000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101110111" "000000000000" "001001101010" "001000100010" "000101010010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100101100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000010" "000100000100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "001001100000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000101" "000011111100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011011010" "110111110011" "111000000011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011110110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011000111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000010" "000101001011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "110111101001" "111100000110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100100001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "110111110110" "000000000000" "000000000000" "000000000000" "000000000000" "000011111110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011101010" "110100100110" "000000000000" "000000000000" "000000000000" "000000000000" "000100111111" "000100010011" "000101011111" "000101001100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "110101110100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "110110101000" "111010111010" "000000000000" "000000000000" "000000000000" "000000000000" "111011110011" "111011110000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010100110" "000000000000" "111011100010" "111011110010" "111011011100" "111011110000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110010001" "000000000000" "111011001010" "110110101001" "000000000000" "000000000000" "000000000000" "000000000000" "110111101100" "111001011010" "111001101100" "110110110101" "110111101101" "111011110000" "111010111011" "000000000000" "000000000000" "000000000000" "000000000000" "111011110011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101101011" "000011111010" "111001011011" "111001110100" "000000000000" "000000000000" "000000000000" "111010001110" "110100111100" "111010001001" "111001110001" "000000000000" "111011110110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101001100" "000000000000" "000000000000" "000000000000" "000000000000" "111011000001" "000000000000" "111010001011" "111000011101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "001001000110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100100011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "001000000111" "000111001111" "000100101010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "001100100011" "000110100110" "000100111001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111100" "001110001010" "001011100000" "000111100011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110101001" "001010010111" "000000000000" "000000000000" "000000000000" "000101010100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100101101" "000000000000" "000101001001" "000101100001" "000000000000" "000000000000" "000000000000" "000101111111" "000000000000" "000000000000" "000000000000" "000100001110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011110111" "000000000000" "000111100101" "000011111001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100011101" "000000000000" "000101000010" "000110101000" "000000000000" "000000000000" "111011101100" "000111111010" "000100110101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101011010" "000000000000" "000000000000" "000100110101" "111011011100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111000010010" "000110110100" "000100001111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011101001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100110011" "000000000000" "000000000000" "000000000000" "000000000000" "111010010000" "111010000100" "110111110111" "110100110101" "111011100110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011110110" "000000000000" "111011101000" "111011011011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011110111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001100" "000000000000" "000100100111" "000011111100" "000000000000" "000000000000" "000111100100" "000000000000" "000000000000" "000101110100" "000101110100" "000100101100" "000101111000" "001000100010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011011011" "000000000000" "111011110011" "000000000000" "000000000000" "000000000000" "111001100001" "110111010110" "111011011011" "000000000000" "000101010101" "000110101001" "000000000000" "111001110110" "111000111101" "111011011011" "111011001111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010011111" "111010001000" "000000000000" "111010101101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100010001" "000101001000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011110101" "000101001110" "000000000000" "000100100001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011111101" "000110100010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101101010" "000110110010" "000000000000" "000000000000" "000100110000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111001100011" "111001010000" "111011110010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100010000" "000000000000" "000101000110" "000000000000" "000000000000" "000100100001" "000101011111" "000011111010" "000000000000" "000100011001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111000101001" "111010001000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "001001011100" "000101110100" "000000000000" "000111011000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100110011" "000000000000" "000000000000" "000100010011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010110011" "110110101100" "000000000000" "000000000000" "000000000000" "001000011111" "000000000000" "000101100000" "000110111010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "110111111101" "110011110100" "000000000000" "000000000000" "000000000000" "000111111111" "000111100011" "000011111101" "000110110110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010110010" "110010000110" "110010011111" "000000000000" "000000000000" "000000000000" "000101001110" "001010000100" "000000000000" "001000010001" "000000000000" "000000000000" "000011111100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "110011111011" "110101010100" "000000000000" "000000000000" "000000000000" "001000011101" "000101010100" "000000000000" "000101011000" "000000000000" "000000000000" "000000000000" "000000000000" "111010110100" "111010010101" "111001100001" "111001101011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "110010100010" "000000000000" "000100011110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011001000" "111001101001" "110111011010" "111000011001" "111001110011" "111100000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000111010011" "000000000000" "000101100110" "000000000000" "000000000000" "000000000000" "000000000000" "111000011010" "111000000000" "110100101100" "111010101011" "111010100000" "000000000000" "000000000000" "111011111011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011010011" "111010101100" "111011101100" "000000000000" "000111010000" "000110001011" "000000000000" "000000000000" "111011010000" "000000000000" "000000000000" "111000101111" "110110110001" "111001010001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010010001" "111011101101" "000000000000" "000101011100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010111001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100101100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101100010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101001011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111100" "000101111001" "000100001011" "000000000000" "000101100010" "000000000000" "000101111000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100011001" "000100110010" "000111110111" "000000000000" "000000000000" "000101000111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101001011" "001000001111" "000000000000" "000000000000" "000100011101" "000000000000" "000100011010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000111110111" "000101011111" "000111111010" "000000000000" "111011101110" "000000000000" "000100110010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110101100" "000101101001" "000100110110" "000000000000" "000000000000" "111011100100" "000011111101" "000100111000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000100" "000000000000" "000000000000" "000000000000" "000110001100" "000101010010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001101" "000000000000" "000100110000" "000110011011" "000000000000" "000110111110" "000100001100" "000101001000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "001000000111" "000000000000" "000000000000" "000000000000" "000101000011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011000000" "000000000000" "000000000000" "000101111001" "000000000000" "000000000000" "000000000000" "000111000000" "000000000000" "000000000000" "000100001100" "000101101001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111100" "000000000000" "000110010000" "000000000000" "000000000000" "000000000000" "000000000000" "111011100110" "000000000000" "000000000000" "000000000000" "000000000000" "000100011110" "000100011011" "000000000000" "000000000000" "000100100101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011011110" "110111111000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011011011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001111" "000000000000" "000000000000" "000000000000" "111011110110" "111001010001" "000000000000" "000000000000" "000011111111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101011111" "000011111010" "000111001100" "000000000000" "000101111000" "000101100111" "000100000011" "000100011000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111101" "000100110010" "111011100100" "111011010100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011101111" "000000000000" "000000000000" "111010101000" "111000101011" "111001100001" "111011100100" "111000100111" "111100001000" "000000000000" "000000000000" "000000000000" "000000000000" "000100110000" "000100010000" "000000000000" "000000000000" "000000000000" "000000000000" "111011000011" "111010110001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011100011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001100" "000000000000" "000000000000" "000100010011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110100000" "000100011001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111100" "000100110110" "000100100000" "000000000000" "000000000000" "000100011011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000010" "000101011110" "000111001010" "000000000000" "000000000000" "000000000000" "111010011110" "000101111000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101111010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000101" "000101110111" "111010110010" "000000000000" "000000000000" "000000000000" "000011110111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000011" "000000000000" "000100010110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101110010" "000111100111" "000101100010" "000000000000" "000000000000" "000101100000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100010100" "000100100010" "000100010000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100010100" "001001011110" "000100001010" "000100111101" "000000000000" "000000000000" "000000000000" "000011110111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "001000000110" "001001100000" "000110111000" "000111101000" "000000000000" "000000000000" "000000000000" "000110100011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100111001" "001100001100" "001101110110" "001001100101" "000000000000" "000000000000" "000000000000" "000000000000" "000101111111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000111001010" "001111001001" "001101001011" "001011001010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "001010111110" "001111000000" "001110001000" "000000000000" "000000000000" "000000000000" "111001110010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011100001" "000000000000" "000000000000" "000111101010" "001001100011" "000000000000" "000000000000" "000000000000" "111011111000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011001101" "000000000000" "000110101101" "000000000000" "000000000000" "000101110111" "111011101011" "000000000000" "000000000000" "000000000000" "111100000111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111100000010" "000000000000" "000000000000" "111011001000" "000000000000" "000000000000" "000000000000" "000100101000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111001111100" "000000000000" "000000000000" "000100111111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101000001" "000000000000" "111001000111" "000100011000" "000000000000" "000100011001" "000000000000" "000100011100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001100" "111001001110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "110111001010" "111010110111" "000000000000" "000000000000" "000100111111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011110000" "000000000000" "111011101001" "000000000000" "000011111010" "000000000000" "000101000111" "000000000000" "000000000000" "000100000010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010001011" "000000000000" "000000000000" "111011011000" "000101010000" "000000000000" "000000000000" "000101111101" "000000000000" "000100001110" "000100110001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010011001" "000000000000" "000000000000" "111011010111" "000000000000" "000000000000" "000100010010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100100111" "001100000111" "000100111011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110000001" "000000000000" "000100000001" "111010100000" "000000000000" "000000000000" "000000000000" "000000000000" "001001010011" "001000100010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110001100" "000100001100" "000000000000" "111100000001" "000000000000" "000000000000" "000000000000" "000100010011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001000" "000000000000" "000100110001" "000000000000" "000000000000" "000000000000" "000000000000" "000101000001" "000101010100" "001000001111" "001000100111" "000111011110" "001001011011" "001001000101" "000100000111" "000111101000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110000010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001011" "000110000100" "000101000101" "001000000011" "000111100110" "001001011000" "001001011110" "000111100010" "000110110110" "001001101011" "001001111111" "001010010101" "000111100011" "001000010101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010000011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101111110" "000000000000" "000110110101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000011" "000100101001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010101100" "000000000000" "000000000000" "000000000000" "000111111001" "000110100011" "000011111011" "000000000000" "000000000000" "000000000000" "111011011000" "111011111000" "111011101100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011000001" "111011100100" "000000000000" "000000000000" "111001110101" "111011101011" "110110000111" "110101010111" "110100001111" "110001010011" "111000011000" "111000110111" "000000000000" "111001011111" "111011011001" "111010101011" "111011000000" "000000000000" "110110011010" "111001001011" "111010100011" "000000000000" "111011010010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111001111100" "111010001011" "000000000000" "111010001011" "110100011110" "110010010011" "110011111000" "110001001010" "110010111100" "110000000111" "101011001110" "101100110011" "110010000010" "110100010011" "111001101101" "000000000000" "111011110001" "000000000000" "000000000000" "000000000000" "000100011111" "111011100110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100011010" "000000000000" "000000000000" "111010011101" "111000011100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111000101001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100101010" "000000000000" "000100000111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001010" "000000000000" "000011111011" "000100100011" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100001001" "000101100111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000111011001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "001000001011" "000011111010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101100100" "000101100001" "000100000101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100010001" "000000000000" "000000000000" "000000000000" "000100001111" "000000000000" "000000000000" "000000000000" "000100101000" "111011001001" "000000000000" "000100110100" "001000100011" "000011111110" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110011111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000111110101" "000000000000" "000100000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011000001" "111010010111" "000000000000" "000000000000" "000000000000" "111010110101" "000000000000" "000110001100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111010010101" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011100101" "000000000000" "000011111001" "000100110010" "000100111010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011001111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100110100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000111011001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011111111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111100001000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011101010" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000101000001" "111011001101" "111011111110" "000000000000" "000000000000" "000000000000" "111010110111" "111011110111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110100011" "000000000000" "111010010010" "000000000000" "000000000000" "000000000000" "000000000000" "111010010111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100111001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111001011100" "111000101000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "111011011100" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000100000100" "000000000000" "000101001101" "000000000000" "000100100000" "000100000100" "000111000100" "000100011111" "000000000000" "000000000000" "111100001001" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000110101101" "001000011110" "001000111011" "000110100100" "000110100111" "001000000001" "000111101110" "001011011111" "001000010001" "001000110010" "001000010111" "001000001101" "000110101100" "000110010011" "001000010110" "000101101000" "000000000000" "111011100111" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000000000000" "000011111010" "000111100011" "000000000000" "000000000000" "000000000000" "000101111011" "000111110010" "000110110001" "000101000101" "001100000101" "001100001001" "000110100110" "001000010011" "001100101001" "001010100001" "001011001110" "000000000000" "000110011110" "000000000000" "000101001100" "000000000000" "000000000000" "000000000000" "000000000000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 18
set hasByteEnable 0
set MemName mlp_B2_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 11
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "00011101011" "10101000000" "11011010010" "01000000001" "00100101110" "11011001001" "00101010101" "11100110010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 19
set hasByteEnable 0
set MemName mlp_W2_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 12
set AddrRange 40
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "010001110010" "000110110101" "000100010100" "001010111100" "111001011101" "000110100001" "000000000000" "001001101001" "111001000111" "000000000000" "000000000000" "000110110110" "000000000000" "001101000010" "000000000000" "001100110111" "001011101100" "110011100000" "111011011001" "000110000010" "111000100011" "001001011111" "111011100011" "000000000000" "001110010111" "111100000101" "000101111111" "001000111001" "000000000000" "000000000000" "000000000000" "000000000000" "111011011110" "001011111000" "000000000000" "000111110011" "000000000000" "001010000001" "000100111011" "010000011100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 20
set hasByteEnable 0
set MemName mlp_B3_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 12
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "000101000010" "001011101000" "000000110011" "111011010001" "111001010011" "111100111010" "101011001001" "000010010011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 21
set hasByteEnable 0
set MemName mlp_W3_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 11
set AddrRange 64
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "01000110011" "01010100010" "01101100001" "10110011110" "00000000000" "00000000000" "01001010011" "11011011000" "01001110110" "00100110011" "11010101110" "01011001001" "11000000010" "00101011110" "11010101111" "11001010110" "11001001100" "01001011001" "00000000000" "00000000000" "00110100111" "01010110011" "00000000000" "01111110001" "00000000000" "00000000000" "01001011000" "00110111001" "00000000000" "10011101000" "01111110110" "11011111110" "00000000000" "01100100111" "00111001110" "01011000001" "01010100101" "00000000000" "11001001101" "10101101100" "00000000000" "00000000000" "00101001100" "00101101011" "01110110001" "00101011011" "00000000000" "00000000000" "00111010110" "00110100010" "00000000000" "11100000100" "10101000001" "00111011001" "11000000001" "00111111011" "00100110000" "00000000000" "11011111110" "01000000011" "10011001000" "10010011001" "00000000000" "01100011011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 22
set hasByteEnable 0
set MemName mlp_B4_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 12
set AddrRange 10
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "000101010110" "000001111110" "101111111101" "001000000001" "010100001101" "001011011110" "111111101001" "000111011110" "100011110100" "111100101011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 23
set hasByteEnable 0
set MemName mlp_W4_V
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 12
set AddrRange 80
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "000110001011" "000000000000" "110100111010" "000100111100" "010000000010" "000000000000" "111001100101" "110000000111" "000000000000" "111000101101" "000000000000" "110000101100" "111010011101" "101001110111" "000100111001" "000100010011" "000000000000" "000100101000" "000000000000" "110110010000" "001011001100" "000100111010" "000101100101" "110100011111" "001000110010" "111000100110" "000000000000" "000000000000" "000000000000" "111011001000" "000101111000" "110011010101" "110000000110" "000000000000" "110101111101" "111001111001" "000000000000" "000000000000" "110011100100" "010000001111" "001000101101" "000000000000" "110111011000" "001000110011" "110100001111" "000000000000" "111001100100" "110110011011" "000000000000" "000100000001" "101010101110" "111100000001" "001101011110" "111000001110" "111001111110" "000000000000" "110011101101" "000000000000" "000111110000" "110110001001" "000000000000" "000100011110" "000100111001" "110100110011" "111100000011" "110111110111" "111010000011" "000110110000" "000000000000" "000000000000" "000110110010" "000000000000" "110111111110" "101100011101" "000000000000" "000000000000" "000000000000" "000000000000" "110111001100" "001010101011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 24
set hasByteEnable 0
set MemName mlp_a1_V
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 15
set AddrRange 5
set AddrWd 3
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 25
set hasByteEnable 0
set MemName mlp_a2_V
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 15
set AddrRange 8
set AddrWd 3
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 26
set hasByteEnable 0
set MemName mlp_z4_V
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 16
set AddrRange 10
set AddrWd 4
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 27
set hasByteEnable 0
set MemName mlp_logits
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 10
set AddrWd 4
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.79
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 28 \
    name input_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename input_V \
    op interface \
    ports { input_V_address0 { O 10 vector } input_V_ce0 { O 1 bit } input_V_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'input_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 29 \
    name output_r \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename output_r \
    op interface \
    ports { output_r_address0 { O 4 vector } output_r_ce0 { O 1 bit } output_r_we0 { O 1 bit } output_r_d0 { O 32 vector } output_r_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


