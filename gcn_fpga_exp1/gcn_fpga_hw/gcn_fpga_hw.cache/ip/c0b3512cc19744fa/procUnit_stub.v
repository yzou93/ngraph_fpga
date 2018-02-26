// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Wed Feb 21 04:34:25 2018
// Host        : T3400 running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ procUnit_stub.v
// Design      : procUnit
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(wt_ce0, ap_clk, ap_rst, ap_start, ap_done, ap_idle, 
  ap_ready, node_in_strm_V_dout, node_in_strm_V_empty_n, node_in_strm_V_read, 
  edge_strm_V_src_V_dout, edge_strm_V_src_V_empty_n, edge_strm_V_src_V_read, 
  edge_strm_V_dst_V_dout, edge_strm_V_dst_V_empty_n, edge_strm_V_dst_V_read, 
  edge_strm_V_c_dout, edge_strm_V_c_empty_n, edge_strm_V_c_read, metadata_strm_V_dout, 
  metadata_strm_V_empty_n, metadata_strm_V_read, node_out_strm_V_din, 
  node_out_strm_V_full_n, node_out_strm_V_write, wt_address0, wt_q0)
/* synthesis syn_black_box black_box_pad_pin="wt_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,node_in_strm_V_dout[31:0],node_in_strm_V_empty_n,node_in_strm_V_read,edge_strm_V_src_V_dout[11:0],edge_strm_V_src_V_empty_n,edge_strm_V_src_V_read,edge_strm_V_dst_V_dout[11:0],edge_strm_V_dst_V_empty_n,edge_strm_V_dst_V_read,edge_strm_V_c_dout[31:0],edge_strm_V_c_empty_n,edge_strm_V_c_read,metadata_strm_V_dout[63:0],metadata_strm_V_empty_n,metadata_strm_V_read,node_out_strm_V_din[31:0],node_out_strm_V_full_n,node_out_strm_V_write,wt_address0[14:0],wt_q0[31:0]" */;
  output wt_ce0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input [31:0]node_in_strm_V_dout;
  input node_in_strm_V_empty_n;
  output node_in_strm_V_read;
  input [11:0]edge_strm_V_src_V_dout;
  input edge_strm_V_src_V_empty_n;
  output edge_strm_V_src_V_read;
  input [11:0]edge_strm_V_dst_V_dout;
  input edge_strm_V_dst_V_empty_n;
  output edge_strm_V_dst_V_read;
  input [31:0]edge_strm_V_c_dout;
  input edge_strm_V_c_empty_n;
  output edge_strm_V_c_read;
  input [63:0]metadata_strm_V_dout;
  input metadata_strm_V_empty_n;
  output metadata_strm_V_read;
  output [31:0]node_out_strm_V_din;
  input node_out_strm_V_full_n;
  output node_out_strm_V_write;
  output [14:0]wt_address0;
  input [31:0]wt_q0;
endmodule
