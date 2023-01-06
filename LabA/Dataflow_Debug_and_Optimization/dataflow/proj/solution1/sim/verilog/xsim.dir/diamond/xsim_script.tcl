set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {diamond} -view {{diamond_dataflow_ana.wcfg}} -tclbatch {diamond.tcl} -protoinst {diamond.protoinst}
