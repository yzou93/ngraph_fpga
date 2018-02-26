############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_stream -depth 3880564 -dim 1 "top" node_in_strm
set_directive_stream -depth 13264 -dim 1 "top" edge_strm
set_directive_stream -depth 14450 -dim 1 "top" metadata_strm
set_directive_stream -depth 225488 -dim 1 "top" msg_out_strm
set_directive_stream -depth 225488 -dim 1 "top" msg_in_strm
set_directive_stream -depth 43328 -dim 1 "top" node_out_strm
set_directive_resource -core ROM_1P "top" wt
set_directive_interface -mode ap_memory -depth 22928 "top" wt
set_directive_stream -depth 45856 -dim 1 "node_load" node_in_strm
set_directive_interface -mode ap_memory "edge_proc" node_bram
set_directive_interface -mode ap_memory "edge_proc" wt
set_directive_interface -mode ap_memory "mat_mult" node_bram
set_directive_interface -mode ap_memory "mat_mult" wt
set_directive_stream -depth 13264 -dim 1 "main" edge_list
set_directive_stream -depth 3880564 -dim 1 "main" node_in_list
set_directive_stream -depth 43328 -dim 1 "main" node_out_list
set_directive_stream -depth 225488 -dim 1 "main" msg_in_list
set_directive_stream -depth 225488 -dim 1 "main" msg_out_list
set_directive_stream -depth 14450 -dim 1 "main" metadata_strm
set_directive_pipeline "top/clear_inner"
set_directive_pipeline "node_store/node_store_inner"
set_directive_pipeline "node_load/src_load_inner"
set_directive_dataflow "top/scatter_outer"
set_directive_dataflow "top/gather_outer"
