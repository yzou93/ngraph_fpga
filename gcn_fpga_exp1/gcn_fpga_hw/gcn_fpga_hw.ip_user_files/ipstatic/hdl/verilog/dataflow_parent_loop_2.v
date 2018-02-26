// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dataflow_parent_loop_2 (
        node_in_strm_V_dout,
        node_in_strm_V_empty_n,
        node_in_strm_V_read,
        node_bram_address0,
        node_bram_ce0,
        node_bram_d0,
        node_bram_q0,
        node_bram_we0,
        node_bram_address1,
        node_bram_ce1,
        node_bram_d1,
        node_bram_q1,
        node_bram_we1,
        metadata_strm_V_dout,
        metadata_strm_V_empty_n,
        metadata_strm_V_read,
        edge_strm_V_src_V_dout,
        edge_strm_V_src_V_empty_n,
        edge_strm_V_src_V_read,
        edge_strm_V_dst_V_dout,
        edge_strm_V_dst_V_empty_n,
        edge_strm_V_dst_V_read,
        edge_strm_V_c_dout,
        edge_strm_V_c_empty_n,
        edge_strm_V_c_read,
        msg_out_strm_V_din,
        msg_out_strm_V_full_n,
        msg_out_strm_V_write,
        wt_address0,
        wt_ce0,
        wt_d0,
        wt_q0,
        wt_we0,
        ap_clk,
        ap_rst,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle,
        ap_continue
);

parameter    ap_const_lv16_0 = 16'b0000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv15_0 = 15'b000000000000000;
parameter    ap_const_lv7_55 = 7'b1010101;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv7_1 = 7'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv16_1 = 16'b1;

input  [31:0] node_in_strm_V_dout;
input   node_in_strm_V_empty_n;
output   node_in_strm_V_read;
output  [15:0] node_bram_address0;
output   node_bram_ce0;
output  [31:0] node_bram_d0;
input  [31:0] node_bram_q0;
output   node_bram_we0;
output  [15:0] node_bram_address1;
output   node_bram_ce1;
output  [31:0] node_bram_d1;
input  [31:0] node_bram_q1;
output   node_bram_we1;
input  [63:0] metadata_strm_V_dout;
input   metadata_strm_V_empty_n;
output   metadata_strm_V_read;
input  [11:0] edge_strm_V_src_V_dout;
input   edge_strm_V_src_V_empty_n;
output   edge_strm_V_src_V_read;
input  [11:0] edge_strm_V_dst_V_dout;
input   edge_strm_V_dst_V_empty_n;
output   edge_strm_V_dst_V_read;
input  [31:0] edge_strm_V_c_dout;
input   edge_strm_V_c_empty_n;
output   edge_strm_V_c_read;
output  [31:0] msg_out_strm_V_din;
input   msg_out_strm_V_full_n;
output   msg_out_strm_V_write;
output  [14:0] wt_address0;
output   wt_ce0;
output  [31:0] wt_d0;
input  [31:0] wt_q0;
output   wt_we0;
input   ap_clk;
input   ap_rst;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg ap_done;
reg ap_ready;

wire    dataflow_in_loop_sca_U0_node_in_strm_V_read;
wire   [15:0] dataflow_in_loop_sca_U0_node_bram_address0;
wire    dataflow_in_loop_sca_U0_node_bram_ce0;
wire   [31:0] dataflow_in_loop_sca_U0_node_bram_d0;
wire    dataflow_in_loop_sca_U0_node_bram_we0;
wire   [15:0] dataflow_in_loop_sca_U0_node_bram_address1;
wire    dataflow_in_loop_sca_U0_node_bram_ce1;
wire   [31:0] dataflow_in_loop_sca_U0_node_bram_d1;
wire    dataflow_in_loop_sca_U0_node_bram_we1;
wire    dataflow_in_loop_sca_U0_metadata_strm_V_read;
wire    dataflow_in_loop_sca_U0_edge_strm_V_src_V_read;
wire    dataflow_in_loop_sca_U0_edge_strm_V_dst_V_read;
wire    dataflow_in_loop_sca_U0_edge_strm_V_c_read;
wire   [31:0] dataflow_in_loop_sca_U0_msg_out_strm_V_din;
wire    dataflow_in_loop_sca_U0_msg_out_strm_V_write;
wire   [14:0] dataflow_in_loop_sca_U0_wt_address0;
wire    dataflow_in_loop_sca_U0_wt_ce0;
wire   [31:0] dataflow_in_loop_sca_U0_wt_d0;
wire    dataflow_in_loop_sca_U0_wt_we0;
wire    dataflow_in_loop_sca_U0_ap_done;
wire   [31:0] dataflow_in_loop_sca_U0_node_bram_i_q0;
wire   [31:0] dataflow_in_loop_sca_U0_node_bram_t_q0;
reg    dataflow_in_loop_sca_U0_ap_start;
wire    dataflow_in_loop_sca_U0_ap_ready;
wire    dataflow_in_loop_sca_U0_ap_idle;
wire    dataflow_in_loop_sca_U0_ap_continue;
wire    ap_hs_continue;
wire    ap_hs_done;
wire    ap_hs_ready;
reg    dataflow_in_loop_sca_U0_start_state;
reg   [6:0] dataflow_in_loop_sca_U0_start_cnt;
reg   [6:0] dataflow_in_loop_sca_U0_done_cnt;
reg    dataflow_in_loop_sca_U0_CS;

// power-on initialization
initial begin
#0 dataflow_in_loop_sca_U0_start_state = 1'b0;
#0 dataflow_in_loop_sca_U0_start_cnt = 7'b0000000;
#0 dataflow_in_loop_sca_U0_done_cnt = 7'b0000000;
#0 dataflow_in_loop_sca_U0_CS = 1'b0;
end

dataflow_in_loop_sca dataflow_in_loop_sca_U0(
    .node_in_strm_V_dout(node_in_strm_V_dout),
    .node_in_strm_V_empty_n(node_in_strm_V_empty_n),
    .node_in_strm_V_read(dataflow_in_loop_sca_U0_node_in_strm_V_read),
    .node_bram_address0(dataflow_in_loop_sca_U0_node_bram_address0),
    .node_bram_ce0(dataflow_in_loop_sca_U0_node_bram_ce0),
    .node_bram_d0(dataflow_in_loop_sca_U0_node_bram_d0),
    .node_bram_q0(node_bram_q0),
    .node_bram_we0(dataflow_in_loop_sca_U0_node_bram_we0),
    .node_bram_address1(dataflow_in_loop_sca_U0_node_bram_address1),
    .node_bram_ce1(dataflow_in_loop_sca_U0_node_bram_ce1),
    .node_bram_d1(dataflow_in_loop_sca_U0_node_bram_d1),
    .node_bram_q1(ap_const_lv32_0),
    .node_bram_we1(dataflow_in_loop_sca_U0_node_bram_we1),
    .metadata_strm_V_dout(metadata_strm_V_dout),
    .metadata_strm_V_empty_n(metadata_strm_V_empty_n),
    .metadata_strm_V_read(dataflow_in_loop_sca_U0_metadata_strm_V_read),
    .edge_strm_V_src_V_dout(edge_strm_V_src_V_dout),
    .edge_strm_V_src_V_empty_n(edge_strm_V_src_V_empty_n),
    .edge_strm_V_src_V_read(dataflow_in_loop_sca_U0_edge_strm_V_src_V_read),
    .edge_strm_V_dst_V_dout(edge_strm_V_dst_V_dout),
    .edge_strm_V_dst_V_empty_n(edge_strm_V_dst_V_empty_n),
    .edge_strm_V_dst_V_read(dataflow_in_loop_sca_U0_edge_strm_V_dst_V_read),
    .edge_strm_V_c_dout(edge_strm_V_c_dout),
    .edge_strm_V_c_empty_n(edge_strm_V_c_empty_n),
    .edge_strm_V_c_read(dataflow_in_loop_sca_U0_edge_strm_V_c_read),
    .msg_out_strm_V_din(dataflow_in_loop_sca_U0_msg_out_strm_V_din),
    .msg_out_strm_V_full_n(msg_out_strm_V_full_n),
    .msg_out_strm_V_write(dataflow_in_loop_sca_U0_msg_out_strm_V_write),
    .wt_address0(dataflow_in_loop_sca_U0_wt_address0),
    .wt_ce0(dataflow_in_loop_sca_U0_wt_ce0),
    .wt_d0(dataflow_in_loop_sca_U0_wt_d0),
    .wt_q0(wt_q0),
    .wt_we0(dataflow_in_loop_sca_U0_wt_we0),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_done(dataflow_in_loop_sca_U0_ap_done),
    .node_bram_i_address0(ap_const_lv16_0),
    .node_bram_i_ce0(1'b0),
    .node_bram_i_q0(dataflow_in_loop_sca_U0_node_bram_i_q0),
    .node_bram_i_address1(ap_const_lv16_0),
    .node_bram_i_ce1(1'b0),
    .node_bram_i_we1(1'b0),
    .node_bram_i_d1(ap_const_lv32_0),
    .node_bram_t_address0(ap_const_lv16_0),
    .node_bram_t_ce0(1'b0),
    .node_bram_t_q0(dataflow_in_loop_sca_U0_node_bram_t_q0),
    .node_bram_t_address1(ap_const_lv16_0),
    .node_bram_t_ce1(1'b0),
    .node_bram_t_we1(1'b0),
    .node_bram_t_d1(ap_const_lv32_0),
    .ap_start(dataflow_in_loop_sca_U0_ap_start),
    .ap_ready(dataflow_in_loop_sca_U0_ap_ready),
    .ap_idle(dataflow_in_loop_sca_U0_ap_idle),
    .ap_continue(dataflow_in_loop_sca_U0_ap_continue)
);

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dataflow_in_loop_sca_U0_CS <= 1'b0;
    end else begin
        if (((ap_const_lv7_55 == dataflow_in_loop_sca_U0_done_cnt) & (1'b1 == ap_continue))) begin
            dataflow_in_loop_sca_U0_CS <= 1'b0;
        end else if ((1'b1 == ap_start)) begin
            dataflow_in_loop_sca_U0_CS <= 1'b1;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dataflow_in_loop_sca_U0_done_cnt <= ap_const_lv7_0;
    end else begin
        if (((dataflow_in_loop_sca_U0_ap_done == 1'b1) & ~(ap_const_lv7_55 == dataflow_in_loop_sca_U0_done_cnt))) begin
            dataflow_in_loop_sca_U0_done_cnt <= (dataflow_in_loop_sca_U0_done_cnt + ap_const_lv7_1);
        end else if (((ap_const_lv7_55 == dataflow_in_loop_sca_U0_done_cnt) & (1'b1 == ap_continue))) begin
            dataflow_in_loop_sca_U0_done_cnt <= ap_const_lv7_0;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dataflow_in_loop_sca_U0_start_cnt <= ap_const_lv7_0;
    end else begin
        if (((1'b1 == dataflow_in_loop_sca_U0_start_state) & (dataflow_in_loop_sca_U0_ap_ready == 1'b1))) begin
            dataflow_in_loop_sca_U0_start_cnt <= (dataflow_in_loop_sca_U0_start_cnt + ap_const_lv7_1);
        end else if (((1'b1 == dataflow_in_loop_sca_U0_start_state) & (ap_const_lv7_55 == dataflow_in_loop_sca_U0_start_cnt))) begin
            dataflow_in_loop_sca_U0_start_cnt <= ap_const_lv7_0;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        dataflow_in_loop_sca_U0_start_state <= 1'b0;
    end else begin
        if (((1'b1 == ap_start) & (1'b0 == dataflow_in_loop_sca_U0_start_state))) begin
            dataflow_in_loop_sca_U0_start_state <= 1'b1;
        end else if (((1'b1 == dataflow_in_loop_sca_U0_start_state) & (ap_const_lv7_55 == dataflow_in_loop_sca_U0_start_cnt))) begin
            dataflow_in_loop_sca_U0_start_state <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((ap_const_lv7_55 == dataflow_in_loop_sca_U0_done_cnt) & (1'b1 == dataflow_in_loop_sca_U0_CS))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if ((ap_const_lv7_55 == dataflow_in_loop_sca_U0_start_cnt)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == dataflow_in_loop_sca_U0_start_state) & ~(ap_const_lv7_55 == dataflow_in_loop_sca_U0_start_cnt))) begin
        dataflow_in_loop_sca_U0_ap_start = 1'b1;
    end else begin
        dataflow_in_loop_sca_U0_ap_start = 1'b0;
    end
end

assign ap_hs_continue = ap_continue;

assign ap_hs_done = dataflow_in_loop_sca_U0_ap_done;

assign ap_hs_ready = dataflow_in_loop_sca_U0_ap_ready;

assign ap_idle = dataflow_in_loop_sca_U0_ap_idle;

assign dataflow_in_loop_sca_U0_ap_continue = 1'b1;

assign edge_strm_V_c_read = dataflow_in_loop_sca_U0_edge_strm_V_c_read;

assign edge_strm_V_dst_V_read = dataflow_in_loop_sca_U0_edge_strm_V_dst_V_read;

assign edge_strm_V_src_V_read = dataflow_in_loop_sca_U0_edge_strm_V_src_V_read;

assign metadata_strm_V_read = dataflow_in_loop_sca_U0_metadata_strm_V_read;

assign msg_out_strm_V_din = dataflow_in_loop_sca_U0_msg_out_strm_V_din;

assign msg_out_strm_V_write = dataflow_in_loop_sca_U0_msg_out_strm_V_write;

assign node_bram_address0 = dataflow_in_loop_sca_U0_node_bram_address0;

assign node_bram_address1 = dataflow_in_loop_sca_U0_node_bram_address1;

assign node_bram_ce0 = dataflow_in_loop_sca_U0_node_bram_ce0;

assign node_bram_ce1 = dataflow_in_loop_sca_U0_node_bram_ce1;

assign node_bram_d0 = ap_const_lv32_0;

assign node_bram_d1 = dataflow_in_loop_sca_U0_node_bram_d1;

assign node_bram_we0 = 1'b0;

assign node_bram_we1 = dataflow_in_loop_sca_U0_node_bram_we1;

assign node_in_strm_V_read = dataflow_in_loop_sca_U0_node_in_strm_V_read;

assign wt_address0 = dataflow_in_loop_sca_U0_wt_address0;

assign wt_ce0 = dataflow_in_loop_sca_U0_wt_ce0;

assign wt_d0 = ap_const_lv32_0;

assign wt_we0 = 1'b0;

endmodule //dataflow_parent_loop_2