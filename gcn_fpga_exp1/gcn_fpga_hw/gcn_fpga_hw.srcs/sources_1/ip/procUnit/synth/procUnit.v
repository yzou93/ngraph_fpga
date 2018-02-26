// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:top:1.0
// IP Revision: 1802210431

(* X_CORE_INFO = "top,Vivado 2016.4" *)
(* CHECK_LICENSE_TYPE = "procUnit,top,{}" *)
(* CORE_GENERATION_INFO = "procUnit,top,{x_ipProduct=Vivado 2016.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=top,x_ipVersion=1.0,x_ipCoreRevision=1802210431,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module procUnit (
  wt_ce0,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  node_in_strm_V_dout,
  node_in_strm_V_empty_n,
  node_in_strm_V_read,
  edge_strm_V_src_V_dout,
  edge_strm_V_src_V_empty_n,
  edge_strm_V_src_V_read,
  edge_strm_V_dst_V_dout,
  edge_strm_V_dst_V_empty_n,
  edge_strm_V_dst_V_read,
  edge_strm_V_c_dout,
  edge_strm_V_c_empty_n,
  edge_strm_V_c_read,
  metadata_strm_V_dout,
  metadata_strm_V_empty_n,
  metadata_strm_V_read,
  node_out_strm_V_din,
  node_out_strm_V_full_n,
  node_out_strm_V_write,
  wt_address0,
  wt_q0
);

output wire wt_ce0;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 node_in_strm_V RD_DATA" *)
input wire [31 : 0] node_in_strm_V_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 node_in_strm_V EMPTY_N" *)
input wire node_in_strm_V_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 node_in_strm_V RD_EN" *)
output wire node_in_strm_V_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 edge_strm_V_src_V RD_DATA" *)
input wire [11 : 0] edge_strm_V_src_V_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 edge_strm_V_src_V EMPTY_N" *)
input wire edge_strm_V_src_V_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 edge_strm_V_src_V RD_EN" *)
output wire edge_strm_V_src_V_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 edge_strm_V_dst_V RD_DATA" *)
input wire [11 : 0] edge_strm_V_dst_V_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 edge_strm_V_dst_V EMPTY_N" *)
input wire edge_strm_V_dst_V_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 edge_strm_V_dst_V RD_EN" *)
output wire edge_strm_V_dst_V_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 edge_strm_V_c RD_DATA" *)
input wire [31 : 0] edge_strm_V_c_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 edge_strm_V_c EMPTY_N" *)
input wire edge_strm_V_c_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 edge_strm_V_c RD_EN" *)
output wire edge_strm_V_c_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 metadata_strm_V RD_DATA" *)
input wire [63 : 0] metadata_strm_V_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 metadata_strm_V EMPTY_N" *)
input wire metadata_strm_V_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 metadata_strm_V RD_EN" *)
output wire metadata_strm_V_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 node_out_strm_V WR_DATA" *)
output wire [31 : 0] node_out_strm_V_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 node_out_strm_V FULL_N" *)
input wire node_out_strm_V_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 node_out_strm_V WR_EN" *)
output wire node_out_strm_V_write;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 wt_address0 DATA" *)
output wire [14 : 0] wt_address0;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 wt_q0 DATA" *)
input wire [31 : 0] wt_q0;

  top inst (
    .wt_ce0(wt_ce0),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .node_in_strm_V_dout(node_in_strm_V_dout),
    .node_in_strm_V_empty_n(node_in_strm_V_empty_n),
    .node_in_strm_V_read(node_in_strm_V_read),
    .edge_strm_V_src_V_dout(edge_strm_V_src_V_dout),
    .edge_strm_V_src_V_empty_n(edge_strm_V_src_V_empty_n),
    .edge_strm_V_src_V_read(edge_strm_V_src_V_read),
    .edge_strm_V_dst_V_dout(edge_strm_V_dst_V_dout),
    .edge_strm_V_dst_V_empty_n(edge_strm_V_dst_V_empty_n),
    .edge_strm_V_dst_V_read(edge_strm_V_dst_V_read),
    .edge_strm_V_c_dout(edge_strm_V_c_dout),
    .edge_strm_V_c_empty_n(edge_strm_V_c_empty_n),
    .edge_strm_V_c_read(edge_strm_V_c_read),
    .metadata_strm_V_dout(metadata_strm_V_dout),
    .metadata_strm_V_empty_n(metadata_strm_V_empty_n),
    .metadata_strm_V_read(metadata_strm_V_read),
    .node_out_strm_V_din(node_out_strm_V_din),
    .node_out_strm_V_full_n(node_out_strm_V_full_n),
    .node_out_strm_V_write(node_out_strm_V_write),
    .wt_address0(wt_address0),
    .wt_q0(wt_q0)
  );
endmodule
