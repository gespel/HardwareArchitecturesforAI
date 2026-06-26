set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {neuron} -view {{neuron_dataflow_ana.wcfg}} -tclbatch {neuron.tcl} -protoinst {neuron.protoinst}
