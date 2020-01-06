# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.cache/wt [current_project]
set_property parent.project_path D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
read_verilog -library xil_defaultlib {
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/ALU.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/CU.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/DR.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/DataMem.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/Extend.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/ExtendSa.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/IR.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/InsMem.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/MUX_32bits_2to1.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/MUX_5bit_4to1.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/PC.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/RF.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/SelectDisplay.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/clk_div.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/display.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/manualClock.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/multiCycleCPU.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/nextPC.v
  D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/sources_1/new/Basy3CPU.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files D:/test/multiCycleCPU-master/multipleCycleCPUBasy3/multipleCycleCPUBasy3.srcs/constrs_1/new/constraints.xdc]


synth_design -top Basy3CPU -part xc7a35tcpg236-1


write_checkpoint -force -noxdef Basy3CPU.dcp

catch { report_utilization -file Basy3CPU_utilization_synth.rpt -pb Basy3CPU_utilization_synth.pb }
