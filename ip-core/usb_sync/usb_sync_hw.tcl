# TCL File Generated by Component Editor 15.1
# Thu Mar 17 13:47:30 CST 2016
# DO NOT MODIFY


# 
# usb_sync "usb_sync" v1.0
#  2016.03.17.13:47:30
# 
# 

# 
# request TCL package from ACDS 15.1
# 
package require -exact qsys 15.1


# 
# module usb_sync
# 
set_module_property DESCRIPTION ""
set_module_property NAME usb_sync
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP USB
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME usb_sync
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL usb_sync
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property quartus_synth ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file usb_sync.vhd VHDL PATH usb_sync.vhd TOP_LEVEL_FILE

add_fileset sim_vhdl SIM_VHDL "" "VHDL Simulation"
set_fileset_property sim_vhdl ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property sim_vhdl ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file usb_sync.vhd VHDL PATH usb_sync.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock
set_interface_property avalon_slave_0 associatedReset clock_reset
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 maximumPendingWriteTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 read_n read_n Input 1
add_interface_port avalon_slave_0 write_n write_n Input 1
add_interface_port avalon_slave_0 chipselect chipselect Input 1
add_interface_port avalon_slave_0 address address Input 2
add_interface_port avalon_slave_0 readdata readdata Output 32
add_interface_port avalon_slave_0 writedata writedata Input 32
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point clock_reset
# 
add_interface clock_reset reset end
set_interface_property clock_reset associatedClock clock
set_interface_property clock_reset synchronousEdges DEASSERT
set_interface_property clock_reset ENABLED true
set_interface_property clock_reset EXPORT_OF ""
set_interface_property clock_reset PORT_NAME_MAP ""
set_interface_property clock_reset CMSIS_SVD_VARIABLES ""
set_interface_property clock_reset SVD_ADDRESS_GROUP ""

add_interface_port clock_reset reset_n reset_n Input 1


# 
# connection point usb_export
# 
add_interface usb_export conduit end
set_interface_property usb_export associatedClock ""
set_interface_property usb_export associatedReset ""
set_interface_property usb_export ENABLED true
set_interface_property usb_export EXPORT_OF ""
set_interface_property usb_export PORT_NAME_MAP ""
set_interface_property usb_export CMSIS_SVD_VARIABLES ""
set_interface_property usb_export SVD_ADDRESS_GROUP ""

add_interface_port usb_export usb_clock usb_clock Input 1
add_interface_port usb_export usb_data usb_data Bidir 8
add_interface_port usb_export usb_rd_n usb_rd_n Output 1
add_interface_port usb_export usb_wr_n usb_wr_n Output 1
add_interface_port usb_export usb_oe_n usb_oe_n Output 1
add_interface_port usb_export usb_rxf_n usb_rxf_n Input 1
add_interface_port usb_export usb_txe_n usb_txe_n Input 1


# 
# connection point irq
# 
add_interface irq interrupt end
set_interface_property irq associatedAddressablePoint avalon_slave_0
set_interface_property irq associatedClock clock
set_interface_property irq associatedReset clock_reset
set_interface_property irq bridgedReceiverOffset ""
set_interface_property irq bridgesToReceiver ""
set_interface_property irq ENABLED true
set_interface_property irq EXPORT_OF ""
set_interface_property irq PORT_NAME_MAP ""
set_interface_property irq CMSIS_SVD_VARIABLES ""
set_interface_property irq SVD_ADDRESS_GROUP ""

add_interface_port irq irq irq Output 1

