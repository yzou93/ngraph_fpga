// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module scatter_inner_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        metadata_strm_V_dout,
        metadata_strm_V_empty_n,
        metadata_strm_V_read,
        node_bram_address0,
        node_bram_ce0,
        node_bram_q0,
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
        wt_q0
);

parameter    ap_ST_fsm_state1 = 3'b1;
parameter    ap_ST_fsm_state2 = 3'b10;
parameter    ap_ST_fsm_state3 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv7_0 = 7'b0000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv7_55 = 7'b1010101;
parameter    ap_const_lv7_1 = 7'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [63:0] metadata_strm_V_dout;
input   metadata_strm_V_empty_n;
output   metadata_strm_V_read;
output  [15:0] node_bram_address0;
output   node_bram_ce0;
input  [31:0] node_bram_q0;
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
input  [31:0] wt_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg metadata_strm_V_read;
reg edge_strm_V_src_V_read;
reg edge_strm_V_dst_V_read;
reg edge_strm_V_c_read;
reg msg_out_strm_V_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg    metadata_strm_V_blk_n;
wire   [0:0] ap_CS_fsm_state2;
wire   [0:0] exitcond6_i_i_fu_91_p2;
wire   [6:0] dst_intv_fu_97_p2;
reg   [6:0] dst_intv_reg_106;
reg   [63:0] tmp_reg_111;
wire    grp_edge_proc_fu_73_ap_start;
wire    grp_edge_proc_fu_73_ap_done;
wire    grp_edge_proc_fu_73_ap_idle;
wire    grp_edge_proc_fu_73_ap_ready;
wire   [15:0] grp_edge_proc_fu_73_node_bram_address0;
wire    grp_edge_proc_fu_73_node_bram_ce0;
wire    grp_edge_proc_fu_73_edge_strm_V_src_V_read;
wire    grp_edge_proc_fu_73_edge_strm_V_dst_V_read;
wire    grp_edge_proc_fu_73_edge_strm_V_c_read;
wire   [31:0] grp_edge_proc_fu_73_msg_out_strm_V_din;
wire    grp_edge_proc_fu_73_msg_out_strm_V_write;
wire   [14:0] grp_edge_proc_fu_73_wt_address0;
wire    grp_edge_proc_fu_73_wt_ce0;
reg   [6:0] dst_intv_0_i_i_reg_62;
wire   [0:0] ap_CS_fsm_state3;
reg    ap_reg_grp_edge_proc_fu_73_ap_start;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'b1;
#0 ap_reg_grp_edge_proc_fu_73_ap_start = 1'b0;
end

edge_proc grp_edge_proc_fu_73(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_edge_proc_fu_73_ap_start),
    .ap_done(grp_edge_proc_fu_73_ap_done),
    .ap_idle(grp_edge_proc_fu_73_ap_idle),
    .ap_ready(grp_edge_proc_fu_73_ap_ready),
    .node_bram_address0(grp_edge_proc_fu_73_node_bram_address0),
    .node_bram_ce0(grp_edge_proc_fu_73_node_bram_ce0),
    .node_bram_q0(node_bram_q0),
    .metadata(tmp_reg_111),
    .edge_strm_V_src_V_dout(edge_strm_V_src_V_dout),
    .edge_strm_V_src_V_empty_n(edge_strm_V_src_V_empty_n),
    .edge_strm_V_src_V_read(grp_edge_proc_fu_73_edge_strm_V_src_V_read),
    .edge_strm_V_dst_V_dout(edge_strm_V_dst_V_dout),
    .edge_strm_V_dst_V_empty_n(edge_strm_V_dst_V_empty_n),
    .edge_strm_V_dst_V_read(grp_edge_proc_fu_73_edge_strm_V_dst_V_read),
    .edge_strm_V_c_dout(edge_strm_V_c_dout),
    .edge_strm_V_c_empty_n(edge_strm_V_c_empty_n),
    .edge_strm_V_c_read(grp_edge_proc_fu_73_edge_strm_V_c_read),
    .msg_out_strm_V_din(grp_edge_proc_fu_73_msg_out_strm_V_din),
    .msg_out_strm_V_full_n(msg_out_strm_V_full_n),
    .msg_out_strm_V_write(grp_edge_proc_fu_73_msg_out_strm_V_write),
    .wt_address0(grp_edge_proc_fu_73_wt_address0),
    .wt_ce0(grp_edge_proc_fu_73_wt_ce0),
    .wt_q0(wt_q0)
);

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & ~((exitcond6_i_i_fu_91_p2 == 1'b0) & (metadata_strm_V_empty_n == 1'b0)) & ~(exitcond6_i_i_fu_91_p2 == 1'b0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_edge_proc_fu_73_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (exitcond6_i_i_fu_91_p2 == 1'b0) & ~((exitcond6_i_i_fu_91_p2 == 1'b0) & (metadata_strm_V_empty_n == 1'b0)))) begin
            ap_reg_grp_edge_proc_fu_73_ap_start <= 1'b1;
        end else if ((1'b1 == grp_edge_proc_fu_73_ap_ready)) begin
            ap_reg_grp_edge_proc_fu_73_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~(1'b0 == grp_edge_proc_fu_73_ap_done))) begin
        dst_intv_0_i_i_reg_62 <= dst_intv_reg_106;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~((ap_start == 1'b0) | (ap_done_reg == 1'b1)))) begin
        dst_intv_0_i_i_reg_62 <= ap_const_lv7_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & ~((exitcond6_i_i_fu_91_p2 == 1'b0) & (metadata_strm_V_empty_n == 1'b0)))) begin
        dst_intv_reg_106 <= dst_intv_fu_97_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond6_i_i_fu_91_p2 == 1'b0) & ~((exitcond6_i_i_fu_91_p2 == 1'b0) & (metadata_strm_V_empty_n == 1'b0)))) begin
        tmp_reg_111 <= metadata_strm_V_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_done_reg) | ((1'b1 == ap_CS_fsm_state2) & ~((exitcond6_i_i_fu_91_p2 == 1'b0) & (metadata_strm_V_empty_n == 1'b0)) & ~(exitcond6_i_i_fu_91_p2 == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ~((exitcond6_i_i_fu_91_p2 == 1'b0) & (metadata_strm_V_empty_n == 1'b0)) & ~(exitcond6_i_i_fu_91_p2 == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        edge_strm_V_c_read = grp_edge_proc_fu_73_edge_strm_V_c_read;
    end else begin
        edge_strm_V_c_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        edge_strm_V_dst_V_read = grp_edge_proc_fu_73_edge_strm_V_dst_V_read;
    end else begin
        edge_strm_V_dst_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        edge_strm_V_src_V_read = grp_edge_proc_fu_73_edge_strm_V_src_V_read;
    end else begin
        edge_strm_V_src_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond6_i_i_fu_91_p2 == 1'b0))) begin
        metadata_strm_V_blk_n = metadata_strm_V_empty_n;
    end else begin
        metadata_strm_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond6_i_i_fu_91_p2 == 1'b0) & ~((exitcond6_i_i_fu_91_p2 == 1'b0) & (metadata_strm_V_empty_n == 1'b0)))) begin
        metadata_strm_V_read = 1'b1;
    end else begin
        metadata_strm_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        msg_out_strm_V_write = grp_edge_proc_fu_73_msg_out_strm_V_write;
    end else begin
        msg_out_strm_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((exitcond6_i_i_fu_91_p2 == 1'b0) & (metadata_strm_V_empty_n == 1'b0)) & ~(exitcond6_i_i_fu_91_p2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((exitcond6_i_i_fu_91_p2 == 1'b0) & ~((exitcond6_i_i_fu_91_p2 == 1'b0) & (metadata_strm_V_empty_n == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (~(1'b0 == grp_edge_proc_fu_73_ap_done)) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_state3 = ap_CS_fsm[ap_const_lv32_2];

assign dst_intv_fu_97_p2 = (dst_intv_0_i_i_reg_62 + ap_const_lv7_1);

assign exitcond6_i_i_fu_91_p2 = ((dst_intv_0_i_i_reg_62 == ap_const_lv7_55) ? 1'b1 : 1'b0);

assign grp_edge_proc_fu_73_ap_start = ap_reg_grp_edge_proc_fu_73_ap_start;

assign msg_out_strm_V_din = grp_edge_proc_fu_73_msg_out_strm_V_din;

assign node_bram_address0 = grp_edge_proc_fu_73_node_bram_address0;

assign node_bram_ce0 = grp_edge_proc_fu_73_node_bram_ce0;

assign wt_address0 = grp_edge_proc_fu_73_wt_address0;

assign wt_ce0 = grp_edge_proc_fu_73_wt_ce0;

endmodule //scatter_inner_proc