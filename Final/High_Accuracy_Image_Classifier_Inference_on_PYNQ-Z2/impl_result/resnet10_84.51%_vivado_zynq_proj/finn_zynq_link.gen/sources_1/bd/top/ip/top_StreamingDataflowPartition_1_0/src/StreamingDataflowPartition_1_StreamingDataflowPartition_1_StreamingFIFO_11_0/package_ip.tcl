
## IP Info
set Vendor      "xilinx.com"
set Library     "hls"
set IPName      "StreamingDataflowPartition_1_StreamingFIFO_11"
set Version     "1.0"
set DisplayName "StreamingDataflowPartition_1_StreamingFIFO_11"
set Description "An IP generated by Xilinx FINN"
set Device      "zynq"
set Catalog     "/UserIP"
set RootDir     "."

## Variables
set Top "StreamingDataflowPartition_1_StreamingFIFO_11"
set VerilogFiles [glob -nocomplain $RootDir/*]


## Enter IP directory
cd [file dir [info script]]

## Generate sub cores
set IPs ""
set IPFiles ""

## Basic info
set core [ipx::create_core $Vendor $Library $IPName $Version]
set_property display_name $DisplayName $core
set_property description $Description $core
set_property taxonomy $Catalog $core
set_property supported_families {   artix7 Production   artix7l Production   kintex7 Production   kintex7l Production   kintexu Production   kintexuplus Production   versal Production   versalprime Production   virtex7 Production   virtexu Production   virtexuplus Production   virtexuplusHBM Production   zynq Production   zynquplus Production   aartix7 Production   azynq Production   qartix7 Production   qkintex7 Production   qkintex7l Production   qvirtex7 Production   qzynq Production } $core;

## Add verilog files
if {[llength $VerilogFiles] > 0} {
    # synthesis
    set group [ipx::add_file_group xilinx_verilogsynthesis $core]
    foreach f [concat $VerilogFiles $IPFiles] {
        set current_file [ipx::add_file $f $group]
        if {[file ext $f] == ".dat"} {
            set_property type "mif" $current_file
        }
    }
    set_property model_name $Top $group
    if {$IPs != ""} {
        set_property component_subcores $IPs $group
    }

    # simulation
    set group [ipx::add_file_group xilinx_verilogbehavioralsimulation $core]
    foreach f [concat $VerilogFiles $IPFiles] {
        set current_file [ipx::add_file $f $group]
        if {[file ext $f] == ".dat"} {
            set_property type "mif" $current_file
        }
    }
    set_property model_name $Top $group
    if {$IPs != ""} {
        set_property component_subcores $IPs $group
    }
}

## Import ports
ipx::add_ports_from_hdl     -top_level_hdl_file $RootDir/$Top.v     -top_module_name $Top     $core

## Infer interfaces
ipx::infer_bus_interface ap_clk xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface ap_rst_n xilinx.com:signal:reset_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface {in0_V_TDATA in0_V_TVALID in0_V_TREADY} xilinx.com:interface:axis_rtl:1.0 [ipx::current_core]
ipx::infer_bus_interface {out_V_TREADY out_V_TDATA out_V_TVALID} xilinx.com:interface:axis_rtl:1.0 [ipx::current_core]
ipx::associate_bus_interfaces -busif in0_V -clock ap_clk [ipx::current_core]
ipx::associate_bus_interfaces -busif out_V -clock ap_clk [ipx::current_core]

## Finalize
set_property core_revision 2 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
ipx::archive_core $Top.zip [ipx::current_core]
