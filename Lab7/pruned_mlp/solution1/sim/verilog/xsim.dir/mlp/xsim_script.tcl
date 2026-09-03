set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {mlp} -view {{mlp_dataflow_ana.wcfg}} -tclbatch {mlp.tcl} -protoinst {mlp.protoinst}
