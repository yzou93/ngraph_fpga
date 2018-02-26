set C_TypeInfoList {{ 
"top" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"node_in_strm": [[], {"reference": "0"}] }, {"edge_strm": [[], {"reference": "1"}] }, {"metadata_strm": [[], {"reference": "2"}] }, {"node_out_strm": [[], {"reference": "0"}] }, {"wt": [[], {"array": [ {"array": [ {"scalar": "float"}, [16]]}, [1433]]}] }],[],""], 
"0": [ "stream<float>", {"hls_type": {"stream": [[[[], {"scalar": "float"}]],"3"]}}], 
"2": [ "stream<unsigned long>", {"hls_type": {"stream": [[[[], {"scalar": "long unsigned int"}]],"3"]}}], 
"1": [ "stream<edge_info>", {"hls_type": {"stream": [[[[],"4"]],"3"]}}], 
"4": [ "edge_info", {"struct": [[],[],[{ "src": [[], "5"]},{ "dst": [[], "5"]},{ "c": [[],  {"scalar": "float"}]}],""]}], 
"5": [ "ap_uint<12>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 12}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName top
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {top}
set C_modelType { void 0 }
set C_modelArgList {
	{ node_in_strm_V float 32 regular {fifo 0 volatile }  }
	{ edge_strm_V_src_V int 12 regular {fifo 0 volatile }  }
	{ edge_strm_V_dst_V int 12 regular {fifo 0 volatile }  }
	{ edge_strm_V_c float 32 regular {fifo 0 volatile }  }
	{ metadata_strm_V int 64 regular {fifo 0 volatile }  }
	{ node_out_strm_V float 32 regular {fifo 1 volatile }  }
	{ wt float 32 unused {array 22928 { } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "node_in_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_in_strm.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "edge_strm_V_src_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "edge_strm.V.src.V","cData": "uint12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "edge_strm_V_dst_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "edge_strm.V.dst.V","cData": "uint12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "edge_strm_V_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_strm.V.c","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "metadata_strm_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "metadata_strm.V","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "node_out_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_out_strm.V","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "wt", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "wt","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1432,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_async } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ node_in_strm_V_dout sc_in sc_lv 32 signal 0 } 
	{ node_in_strm_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ node_in_strm_V_read sc_out sc_logic 1 signal 0 } 
	{ edge_strm_V_src_V_dout sc_in sc_lv 12 signal 1 } 
	{ edge_strm_V_src_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ edge_strm_V_src_V_read sc_out sc_logic 1 signal 1 } 
	{ edge_strm_V_dst_V_dout sc_in sc_lv 12 signal 2 } 
	{ edge_strm_V_dst_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ edge_strm_V_dst_V_read sc_out sc_logic 1 signal 2 } 
	{ edge_strm_V_c_dout sc_in sc_lv 32 signal 3 } 
	{ edge_strm_V_c_empty_n sc_in sc_logic 1 signal 3 } 
	{ edge_strm_V_c_read sc_out sc_logic 1 signal 3 } 
	{ metadata_strm_V_dout sc_in sc_lv 64 signal 4 } 
	{ metadata_strm_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ metadata_strm_V_read sc_out sc_logic 1 signal 4 } 
	{ node_out_strm_V_din sc_out sc_lv 32 signal 5 } 
	{ node_out_strm_V_full_n sc_in sc_logic 1 signal 5 } 
	{ node_out_strm_V_write sc_out sc_logic 1 signal 5 } 
	{ wt_address0 sc_out sc_lv 15 signal 6 } 
	{ wt_ce0 sc_out sc_logic 1 signal 6 } 
	{ wt_q0 sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "node_in_strm_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_in_strm_V", "role": "dout" }} , 
 	{ "name": "node_in_strm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_in_strm_V", "role": "empty_n" }} , 
 	{ "name": "node_in_strm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_in_strm_V", "role": "read" }} , 
 	{ "name": "edge_strm_V_src_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "edge_strm_V_src_V", "role": "dout" }} , 
 	{ "name": "edge_strm_V_src_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_strm_V_src_V", "role": "empty_n" }} , 
 	{ "name": "edge_strm_V_src_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_strm_V_src_V", "role": "read" }} , 
 	{ "name": "edge_strm_V_dst_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "edge_strm_V_dst_V", "role": "dout" }} , 
 	{ "name": "edge_strm_V_dst_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_strm_V_dst_V", "role": "empty_n" }} , 
 	{ "name": "edge_strm_V_dst_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_strm_V_dst_V", "role": "read" }} , 
 	{ "name": "edge_strm_V_c_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_strm_V_c", "role": "dout" }} , 
 	{ "name": "edge_strm_V_c_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_strm_V_c", "role": "empty_n" }} , 
 	{ "name": "edge_strm_V_c_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_strm_V_c", "role": "read" }} , 
 	{ "name": "metadata_strm_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "metadata_strm_V", "role": "dout" }} , 
 	{ "name": "metadata_strm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadata_strm_V", "role": "empty_n" }} , 
 	{ "name": "metadata_strm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "metadata_strm_V", "role": "read" }} , 
 	{ "name": "node_out_strm_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_out_strm_V", "role": "din" }} , 
 	{ "name": "node_out_strm_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_out_strm_V", "role": "full_n" }} , 
 	{ "name": "node_out_strm_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_out_strm_V", "role": "write" }} , 
 	{ "name": "wt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "wt", "role": "address0" }} , 
 	{ "name": "wt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wt", "role": "ce0" }} , 
 	{ "name": "wt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "wt", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "top",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "node_in_strm_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "node_in_strm_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "edge_strm_V_src_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "edge_strm_V_src_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "edge_strm_V_dst_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "edge_strm_V_dst_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "edge_strm_V_c", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "edge_strm_V_c_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "metadata_strm_V", "Type" : "Fifo", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "metadata_strm_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "node_out_strm_V", "Type" : "Fifo", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "node_out_strm_V_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "wt", "Type" : "Memory", "Direction" : "X"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_in_bram_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_out_bram_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.top_fadd_32ns_32nbkb_U1", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	node_in_strm_V { ap_fifo {  { node_in_strm_V_dout fifo_data 0 32 }  { node_in_strm_V_empty_n fifo_status 0 1 }  { node_in_strm_V_read fifo_update 1 1 } } }
	edge_strm_V_src_V { ap_fifo {  { edge_strm_V_src_V_dout fifo_data 0 12 }  { edge_strm_V_src_V_empty_n fifo_status 0 1 }  { edge_strm_V_src_V_read fifo_update 1 1 } } }
	edge_strm_V_dst_V { ap_fifo {  { edge_strm_V_dst_V_dout fifo_data 0 12 }  { edge_strm_V_dst_V_empty_n fifo_status 0 1 }  { edge_strm_V_dst_V_read fifo_update 1 1 } } }
	edge_strm_V_c { ap_fifo {  { edge_strm_V_c_dout fifo_data 0 32 }  { edge_strm_V_c_empty_n fifo_status 0 1 }  { edge_strm_V_c_read fifo_update 1 1 } } }
	metadata_strm_V { ap_fifo {  { metadata_strm_V_dout fifo_data 0 64 }  { metadata_strm_V_empty_n fifo_status 0 1 }  { metadata_strm_V_read fifo_update 1 1 } } }
	node_out_strm_V { ap_fifo {  { node_out_strm_V_din fifo_data 1 32 }  { node_out_strm_V_full_n fifo_status 0 1 }  { node_out_strm_V_write fifo_update 1 1 } } }
	wt { ap_memory {  { wt_address0 mem_address 1 15 }  { wt_ce0 mem_ce 1 1 }  { wt_q0 mem_dout 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	node_in_strm_V { fifo_read 1433 has_conditional }
	edge_strm_V_src_V { fifo_read 1 has_conditional }
	edge_strm_V_dst_V { fifo_read 1 has_conditional }
	edge_strm_V_c { fifo_read 1 has_conditional }
	metadata_strm_V { fifo_read 85 has_conditional }
	node_out_strm_V { fifo_write 16 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
