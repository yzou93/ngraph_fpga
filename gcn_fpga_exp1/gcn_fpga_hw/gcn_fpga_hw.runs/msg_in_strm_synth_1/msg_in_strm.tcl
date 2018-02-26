# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.cache/wt [current_project]
set_property parent.project_path /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:kc705:part0:1.1 [current_project]
set_property ip_repo_paths /home/yuzou/gcn_fpga_exp1/gcn_fpga_hls/solution1/impl/ip [current_project]
set_property ip_output_repo /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm.xci
set_property is_locked true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.runs/msg_in_strm_synth_1 -new_name msg_in_strm -ip [get_ips msg_in_strm]]

if { $cached_ip eq {} } {

synth_design -top msg_in_strm -part xc7k325tffg900-2 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix msg_in_strm_ msg_in_strm.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ msg_in_strm_stub.v
 lappend ipCachedFiles msg_in_strm_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ msg_in_strm_stub.vhdl
 lappend ipCachedFiles msg_in_strm_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ msg_in_strm_sim_netlist.v
 lappend ipCachedFiles msg_in_strm_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ msg_in_strm_sim_netlist.vhdl
 lappend ipCachedFiles msg_in_strm_sim_netlist.vhdl

 config_ip_cache -add -dcp msg_in_strm.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips msg_in_strm]
}

rename_ref -prefix_all msg_in_strm_

write_checkpoint -force -noxdef msg_in_strm.dcp

catch { report_utilization -file msg_in_strm_utilization_synth.rpt -pb msg_in_strm_utilization_synth.pb }

if { [catch {
  file copy -force /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.runs/msg_in_strm_synth_1/msg_in_strm.dcp /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.runs/msg_in_strm_synth_1/msg_in_strm.dcp /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.runs/msg_in_strm_synth_1/msg_in_strm_stub.v /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.runs/msg_in_strm_synth_1/msg_in_strm_stub.vhdl /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.runs/msg_in_strm_synth_1/msg_in_strm_sim_netlist.v /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.runs/msg_in_strm_synth_1/msg_in_strm_sim_netlist.vhdl /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.ip_user_files/ip/msg_in_strm]} {
  catch { 
    file copy -force /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_stub.v /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.ip_user_files/ip/msg_in_strm
  }
}

if {[file isdir /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.ip_user_files/ip/msg_in_strm]} {
  catch { 
    file copy -force /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/msg_in_strm/msg_in_strm_stub.vhdl /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.ip_user_files/ip/msg_in_strm
  }
}
