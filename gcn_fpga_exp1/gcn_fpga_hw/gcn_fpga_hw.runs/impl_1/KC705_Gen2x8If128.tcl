proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7k325tffg900-2
  set_property board_part xilinx.com:kc705:part0:1.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.cache/wt [current_project]
  set_property parent.project_path /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.xpr [current_project]
  set_property ip_repo_paths /home/yuzou/gcn_fpga_exp1/gcn_fpga_hls/solution1/impl/ip [current_project]
  set_property ip_output_repo /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.runs/synth_1/KC705_Gen2x8If128.dcp
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_out_strm/node_out_strm.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_out_strm/node_out_strm.dcp]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/metadata_strm/metadata_strm.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/metadata_strm/metadata_strm.dcp]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/PCIeGen2x8If128.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/PCIeGen2x8If128.dcp]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_in_strm/node_in_strm.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_in_strm/node_in_strm.dcp]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/wt_rom/wt_rom.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/wt_rom/wt_rom.dcp]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/edge_strm/edge_strm.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/edge_strm/edge_strm.dcp]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/src_stream/src_stream.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/src_stream/src_stream.dcp]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/dst_stream/dst_stream.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/dst_stream/dst_stream.dcp]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/c_strm/c_strm.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/c_strm/c_strm.dcp]
  add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/procUnit/procUnit.dcp
  set_property netlist_only true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/procUnit/procUnit.dcp]
  read_xdc -ref node_out_strm -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_out_strm/node_out_strm/node_out_strm.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_out_strm/node_out_strm/node_out_strm.xdc]
  read_xdc -ref metadata_strm -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/metadata_strm/metadata_strm/metadata_strm.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/metadata_strm/metadata_strm/metadata_strm.xdc]
  read_xdc -mode out_of_context -ref PCIeGen2x8If128 -cells inst /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/synth/PCIeGen2x8If128_ooc.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/synth/PCIeGen2x8If128_ooc.xdc]
  read_xdc -ref PCIeGen2x8If128 -cells inst /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128-PCIE_X0Y0.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128-PCIE_X0Y0.xdc]
  read_xdc -mode out_of_context -ref node_in_strm -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_in_strm/node_in_strm_ooc.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_in_strm/node_in_strm_ooc.xdc]
  read_xdc -ref node_in_strm -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_in_strm/node_in_strm/node_in_strm.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_in_strm/node_in_strm/node_in_strm.xdc]
  read_xdc -mode out_of_context -ref wt_rom -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/wt_rom/wt_rom_ooc.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/wt_rom/wt_rom_ooc.xdc]
  read_xdc -mode out_of_context -ref edge_strm -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/edge_strm/edge_strm_ooc.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/edge_strm/edge_strm_ooc.xdc]
  read_xdc -ref edge_strm -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/edge_strm/edge_strm/edge_strm.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/edge_strm/edge_strm/edge_strm.xdc]
  read_xdc -mode out_of_context -ref src_stream -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/src_stream/src_stream_ooc.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/src_stream/src_stream_ooc.xdc]
  read_xdc -ref src_stream -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/src_stream/src_stream/src_stream.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/src_stream/src_stream/src_stream.xdc]
  read_xdc -mode out_of_context -ref dst_stream -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/dst_stream/dst_stream_ooc.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/dst_stream/dst_stream_ooc.xdc]
  read_xdc -ref dst_stream -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/dst_stream/dst_stream/dst_stream.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/dst_stream/dst_stream/dst_stream.xdc]
  read_xdc -mode out_of_context -ref c_strm -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/c_strm/c_strm_ooc.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/c_strm/c_strm_ooc.xdc]
  read_xdc -ref c_strm -cells U0 /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/c_strm/c_strm/c_strm.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/c_strm/c_strm/c_strm.xdc]
  read_xdc -mode out_of_context -ref procUnit -cells inst /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/procUnit/constraints/top_ooc.xdc
  set_property processing_order EARLY [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/procUnit/constraints/top_ooc.xdc]
  read_xdc /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/constrs_1/imports/constr/KC705_Gen2x8If128.xdc
  link_design -top KC705_Gen2x8If128 -part xc7k325tffg900-2
  write_hwdef -file KC705_Gen2x8If128.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force KC705_Gen2x8If128_opt.dcp
  catch { report_drc -file KC705_Gen2x8If128_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force KC705_Gen2x8If128_placed.dcp
  catch { report_io -file KC705_Gen2x8If128_io_placed.rpt }
  catch { report_utilization -file KC705_Gen2x8If128_utilization_placed.rpt -pb KC705_Gen2x8If128_utilization_placed.pb }
  catch { report_control_sets -verbose -file KC705_Gen2x8If128_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force KC705_Gen2x8If128_routed.dcp
  catch { report_drc -file KC705_Gen2x8If128_drc_routed.rpt -pb KC705_Gen2x8If128_drc_routed.pb -rpx KC705_Gen2x8If128_drc_routed.rpx }
  catch { report_methodology -file KC705_Gen2x8If128_methodology_drc_routed.rpt -rpx KC705_Gen2x8If128_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file KC705_Gen2x8If128_timing_summary_routed.rpt -rpx KC705_Gen2x8If128_timing_summary_routed.rpx }
  catch { report_power -file KC705_Gen2x8If128_power_routed.rpt -pb KC705_Gen2x8If128_power_summary_routed.pb -rpx KC705_Gen2x8If128_power_routed.rpx }
  catch { report_route_status -file KC705_Gen2x8If128_route_status.rpt -pb KC705_Gen2x8If128_route_status.pb }
  catch { report_clock_utilization -file KC705_Gen2x8If128_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force KC705_Gen2x8If128_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force KC705_Gen2x8If128.mmi }
  write_bitstream -force -no_partial_bitfile KC705_Gen2x8If128.bit 
  catch { write_sysdef -hwdef KC705_Gen2x8If128.hwdef -bitfile KC705_Gen2x8If128.bit -meminfo KC705_Gen2x8If128.mmi -file KC705_Gen2x8If128.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

