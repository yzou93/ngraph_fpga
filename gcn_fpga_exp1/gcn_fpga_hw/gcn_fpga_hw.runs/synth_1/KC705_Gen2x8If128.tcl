# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
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
add_files /home/yuzou/gcn_fpga/gcn_stream_and_apply_accel/host/wt_converted.coe
add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/PCIeGen2x8If128.dcp
set_property used_in_implementation false [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/PCIeGen2x8If128.dcp]
add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_in_strm/node_in_strm.dcp
set_property used_in_implementation false [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_in_strm/node_in_strm.dcp]
add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/wt_rom/wt_rom.dcp
set_property used_in_implementation false [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/wt_rom/wt_rom.dcp]
add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/edge_strm/edge_strm.dcp
set_property used_in_implementation false [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/edge_strm/edge_strm.dcp]
add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/src_stream/src_stream.dcp
set_property used_in_implementation false [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/src_stream/src_stream.dcp]
add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/dst_stream/dst_stream.dcp
set_property used_in_implementation false [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/dst_stream/dst_stream.dcp]
add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/c_strm/c_strm.dcp
set_property used_in_implementation false [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/c_strm/c_strm.dcp]
add_files -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/procUnit/procUnit.dcp
set_property used_in_implementation false [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/procUnit/procUnit.dcp]
read_verilog {
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/functions.vh
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/types.vh
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/trellis.vh
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/widths.vh
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/schedules.vh
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/ultrascale.vh
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tlp.vh
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/riffa.vh
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/xilinx.vh
}
read_verilog -library xil_defaultlib {
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/shiftreg.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/scsdpram.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/fifo.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/ff.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/syncff.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rotate.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/ram_2clk_1w_1r.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/ram_1clk_1w_1r.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/pipeline.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/one_hot_mux.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/offset_to_mask.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/offset_flag_to_one_hot.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_data_shift.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_data_fifo.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/sync_fifo.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/mux.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/cross_domain_signal.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/counter.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/async_fifo.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_writer.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_monitor_64.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_monitor_32.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_monitor_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_channel_gate_64.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_channel_gate_32.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_channel_gate_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_buffer_64.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_buffer_32.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_buffer_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_hdr_fifo.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_data_pipeline.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_alignment_pipeline.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/sg_list_requester.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/sg_list_reader_64.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/sg_list_reader_32.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/sg_list_reader_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rx_port_requester_mux.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rx_port_reader.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rx_port_channel_gate.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/fifo_packer_64.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/fifo_packer_32.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/fifo_packer_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/async_fifo_fwft.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_64.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_32.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_port_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_engine_selector.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_engine.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rx_port_64.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rx_port_32.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rx_port_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/register.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/reset_controller.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_multiplexer_64.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_multiplexer_32.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_multiplexer_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/txr_engine_ultrascale.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/txr_engine_classic.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/txc_engine_ultrascale.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/txc_engine_classic.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rxr_engine_ultrascale.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rxr_engine_classic.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rxc_engine_ultrascale.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rxc_engine_classic.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/reorder_queue_output.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/reorder_queue_input.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/interrupt_controller.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/demux.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/channel_64.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/channel_32.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/channel_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rxc_engine_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rxr_engine_128.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/new/perf_mon.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_multiplexer.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_engine_ultrascale.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/tx_engine_classic.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rx_engine_ultrascale.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/rx_engine_classic.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/reorder_queue.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/registers.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/recv_credit_flow_ctrl.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/interrupt.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/channel.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/reset_extender.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/new/perf_measure.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/new/procUnitWrapper.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/translation_xilinx.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/riffa.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/riffa_hdl/engine_layer.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/new/chnl_user_app.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/xilinx/kc705/riffa_wrapper_kc705.v
  /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/imports/fpga/xilinx/kc705/KC705_Gen2x8If128/hdl/KC705_Gen2x8If128.v
}
read_ip -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_out_strm/node_out_strm.xci
set_property used_in_implementation false [get_files -all /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_out_strm/node_out_strm/node_out_strm.xdc]
set_property used_in_implementation false [get_files -all /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_out_strm/node_out_strm_ooc.xdc]
set_property is_locked true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/node_out_strm/node_out_strm.xci]

read_ip -quiet /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/metadata_strm/metadata_strm.xci
set_property used_in_implementation false [get_files -all /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/metadata_strm/metadata_strm/metadata_strm.xdc]
set_property used_in_implementation false [get_files -all /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/metadata_strm/metadata_strm_ooc.xdc]
set_property is_locked true [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/metadata_strm/metadata_strm.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/constrs_1/imports/constr/KC705_Gen2x8If128.xdc
set_property used_in_implementation false [get_files /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/constrs_1/imports/constr/KC705_Gen2x8If128.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top KC705_Gen2x8If128 -part xc7k325tffg900-2


write_checkpoint -force -noxdef KC705_Gen2x8If128.dcp

catch { report_utilization -file KC705_Gen2x8If128_utilization_synth.rpt -pb KC705_Gen2x8If128_utilization_synth.pb }