`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/19/2018 10:55:15 PM
// Design Name:
// Module Name: procUnitWrapper
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module procUnitWrapper(

	input riffa_clk,
	input riffa_rst,

	input[127:0] node_in_din,
	input node_in_wr,
	output node_in_full,

	// input[127:0] msg_in_din,
	// input msg_in_wr,
	// output msg_in_full,
	//
	// output[127:0] msg_out_dout,
	// input msg_out_rd,
	// output msg_out_empty,

	input[127:0] metadata_din,
	input metadata_wr,
	output metadata_full,

	output[127:0] node_out_dout,
	input node_out_rd,
	output node_out_empty,

	input[127:0] edge_din,
	input edge_wr,
	output edge_full,

	input ap_start,
	output ap_done
);

(*mark_debug = "true"*)wire node_in_rd;
(*mark_debug = "true"*)wire[31:0] node_in_dout;
(*mark_debug = "true"*)wire node_in_empty;

node_in_strm node_in_strm(
	.clk(riffa_clk),
	.rst(riffa_rst),
	.din({node_in_din[31:0], node_in_din[63:32], node_in_din[95:64], node_in_din[127:96]}),
	.wr_en(node_in_wr),
	.rd_en(node_in_rd),
	.dout(node_in_dout),
	.full(node_in_full),
	.empty(node_in_empty)
);

// (*mark_debug = "true"*)wire msg_in_rd;
// (*mark_debug = "true"*)wire[31:0] msg_in_dout;
// (*mark_debug = "true"*)wire msg_in_empty;
//
// msg_in_strm msg_in_strm(
// 	.clk(riffa_clk),
// 	.rst(riffa_rst),
// 	.din({msg_in_din[31:0], msg_in_din[63:32], msg_in_din[95:64], msg_in_din[127:96]}),
// 	.wr_en(msg_in_wr),
// 	.rd_en(msg_in_rd),
// 	.dout(msg_in_dout),
// 	.full(msg_in_full),
// 	.empty(msg_in_empty)
// );
//
// (*mark_debug = "true"*)wire msg_out_wr;
// (*mark_debug = "true"*)wire[31:0] msg_out_din;
// (*mark_debug = "true"*)wire msg_out_full;
// wire[127:0] temp;
// assign msg_out_dout = {temp[31:0], temp[63:32], temp[95:64], temp[127:96]};
//
// msg_out_strm msg_out_strm(
// 	.clk(riffa_clk),
// 	.rst(riffa_rst),
// 	.din(msg_out_din),
// 	.wr_en(msg_out_wr),
// 	.rd_en(msg_out_rd),
// 	.dout(temp),
// 	.full(msg_out_full),
// 	.empty(msg_out_empty)
// );

(*mark_debug = "true"*)wire wt_en;
(*mark_debug = "true"*)wire[14:0] wt_addr;
(*mark_debug = "true"*)wire[31:0] wt_dout;

wt_rom wt_rom(
	.clka(riffa_clk),
	.ena(wt_en),
	.addra(wt_addr),
	.douta(wt_dout)
);

(*mark_debug = "true"*)wire metadata_rd;
(*mark_debug = "true"*)wire[63:0] metadata_dout;
(*mark_debug = "true"*)wire metadata_empty;

metadata_strm metadata_strm(
	.clk(riffa_clk),
	.rst(riffa_rst),
	.din({metadata_din[63:0], metadata_din[127:64]}),
	.wr_en(metadata_wr),
	.rd_en(metadata_rd),
	.dout(metadata_dout),
	.full(metadata_full),
	.empty(metadata_empty)
);

(*mark_debug = "true"*)wire[31:0] node_out_din;
(*mark_debug = "true"*)wire node_out_wr;
(*mark_debug = "true"*)wire node_out_full;
wire[127:0] node_out_temp;
assign node_out_dout = {node_out_temp[31:0], node_out_temp[63:32], node_out_temp[95:64], node_out_temp[127:96]};

node_out_strm node_out_strm(
	.clk(riffa_clk),
	.rst(riffa_rst),
	.din(node_out_din),
	.wr_en(node_out_wr),
	.rd_en(node_out_rd),
	.dout(node_out_temp),
	.full(node_out_full),
	.empty(node_out_empty)
);

(*mark_debug = "true"*)wire[63:0] edge_dout;
(*mark_debug = "true"*)wire edge_empty;
wire c_full;
wire dst_full;
wire src_full;

edge_strm edge_strm(
	.clk(riffa_clk),
	.rst(riffa_rst),
	.din({edge_din[63:0], edge_din[127:64]}),
	.wr_en(edge_wr),
	.rd_en((~edge_empty) & (~c_full) & (~src_full) & (~dst_full)),
	.dout(edge_dout),
	.full(edge_full),
	.empty(edge_empty)
);

(*mark_debug = "true"*)wire c_rd;
(*mark_debug = "true"*)wire[31:0] c_dout;
(*mark_debug = "true"*)wire c_empty;

c_strm c_strm(
	.clk(riffa_clk),
	.rst(riffa_rst),
	.din(edge_dout[55:24]),
	.wr_en((~edge_empty) & (~c_full) & (~src_full) & (~dst_full)),
	.rd_en(c_rd),
	.dout(c_dout),
	.full(c_full),
	.empty(c_empty)
);

(*mark_debug = "true"*)wire dst_rd;
(*mark_debug = "true"*)wire[11:0] dst_dout;
(*mark_debug = "true"*)wire dst_empty;

dst_stream dst_strm(
	.clk(riffa_clk),
	.rst(riffa_rst),
	.din(edge_dout[23:12]),
	.wr_en((~edge_empty) & (~c_full) & (~src_full) & (~dst_full)),
	.rd_en(dst_rd),
	.dout(dst_dout),
	.full(dst_full),
	.empty(dst_empty)
);

(*mark_debug = "true"*)wire src_rd;
(*mark_debug = "true"*)wire[11:0] src_dout;
(*mark_debug = "true"*)wire src_empty;

src_stream src_strm(
	.clk(riffa_clk),
	.rst(riffa_rst),
	.din(edge_dout[11:0]),
	.wr_en((~edge_empty) & (~c_full) & (~src_full) & (~dst_full)),
	.rd_en(src_rd),
	.dout(src_dout),
	.full(src_full),
	.empty(src_empty)
);

procUnit procUnit(
	.ap_clk(riffa_clk),
	.ap_rst(riffa_rst),
	.ap_start(ap_start),
	.ap_done(ap_done),
	.ap_idle(),
	.ap_ready(),
	.node_in_strm_V_dout(node_in_dout),
	.node_in_strm_V_empty_n(~node_in_empty),
	.node_in_strm_V_read(node_in_rd),
	.edge_strm_V_src_V_dout(src_dout),
	.edge_strm_V_src_V_empty_n(~src_empty),
	.edge_strm_V_src_V_read(src_rd),
	.edge_strm_V_dst_V_dout(dst_dout),
	.edge_strm_V_dst_V_empty_n(~dst_empty),
	.edge_strm_V_dst_V_read(dst_rd),
	.edge_strm_V_c_dout(c_dout),
	.edge_strm_V_c_empty_n(~c_empty),
	.edge_strm_V_c_read(c_rd),
	.metadata_strm_V_dout(metadata_dout),
	.metadata_strm_V_empty_n(~metadata_empty),
	.metadata_strm_V_read(metadata_rd),
	// .msg_out_strm_V_din(msg_out_din),
	// .msg_out_strm_V_full_n(~msg_out_full),
	// .msg_out_strm_V_write(msg_out_wr),
	// .msg_in_strm_V_dout(msg_in_dout),
	// .msg_in_strm_V_empty_n(~msg_in_empty),
	// .msg_in_strm_V_read(msg_in_rd),
	.node_out_strm_V_din(node_out_din),
	.node_out_strm_V_full_n(~node_out_full),
	.node_out_strm_V_write(node_out_wr),
	.wt_address0(wt_addr),
	.wt_q0(wt_dout),
	.wt_ce0(wt_en)
);

endmodule
