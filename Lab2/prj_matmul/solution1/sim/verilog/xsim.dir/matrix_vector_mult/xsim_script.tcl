set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {matrix_vector_mult} -view {{matrix_vector_mult_dataflow_ana.wcfg}} -tclbatch {matrix_vector_mult.tcl} -protoinst {matrix_vector_mult.protoinst}
