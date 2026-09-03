create_project prj -part xczu3eg-sbva484-1-i -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/sten/Uni/HardwareArchitecturesforAI/Lab7/quantized_mlp/solution1/syn/verilog/mlp_ap_faddfsub_2_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips mlp_ap_faddfsub_2_full_dsp_32]]
}
source "/home/sten/Uni/HardwareArchitecturesforAI/Lab7/quantized_mlp/solution1/syn/verilog/mlp_ap_fdiv_7_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips mlp_ap_fdiv_7_no_dsp_32]]
}
source "/home/sten/Uni/HardwareArchitecturesforAI/Lab7/quantized_mlp/solution1/syn/verilog/mlp_ap_fexp_6_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips mlp_ap_fexp_6_full_dsp_32]]
}
source "/home/sten/Uni/HardwareArchitecturesforAI/Lab7/quantized_mlp/solution1/syn/verilog/mlp_ap_fcmp_0_no_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips mlp_ap_fcmp_0_no_dsp_32]]
}
