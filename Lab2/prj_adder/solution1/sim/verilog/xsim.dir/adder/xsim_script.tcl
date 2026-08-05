set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {adder} -view {{adder_dataflow_ana.wcfg}} -tclbatch {adder.tcl} -protoinst {adder.protoinst}
