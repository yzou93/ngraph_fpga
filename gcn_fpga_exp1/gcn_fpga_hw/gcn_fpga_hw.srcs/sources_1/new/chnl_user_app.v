`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/20/2018 12:15:20 AM
// Design Name:
// Module Name: chnl_user_app
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


module chnl_user_app #(
	parameter C_PCI_DATA_WIDTH = 128
)(
	input riffa_clk,
	input riffa_rst,

	//Channel 0 - node channel
	output chnl_rx_clk_0,
	input chnl_rx_0,
	output chnl_rx_ack_0,
	input chnl_rx_last_0,
	input[31:0] chnl_rx_len_0,
	input[30:0] chnl_rx_off_0,
	input[C_PCI_DATA_WIDTH-1:0] chnl_rx_data_0,
	input chnl_rx_data_valid_0,
	output chnl_rx_data_ren_0,

	output chnl_tx_clk_0,
	output reg chnl_tx_0,
	input chnl_tx_ack_0,
	output chnl_tx_last_0,
	output[31:0] chnl_tx_len_0,
	output[30:0] chnl_tx_off_0,
	output[C_PCI_DATA_WIDTH-1:0] chnl_tx_data_0,
	output chnl_tx_data_valid_0,
	input chnl_tx_data_ren_0,

	//channel 1 - edge channel
	output chnl_rx_clk_1,
	input chnl_rx_1,
	output chnl_rx_ack_1,
	input chnl_rx_last_1,
	input[31:0] chnl_rx_len_1,
	input[30:0] chnl_rx_off_1,
	input[C_PCI_DATA_WIDTH-1:0] chnl_rx_data_1,
	input chnl_rx_data_valid_1,
	output chnl_rx_data_ren_1,

	//channel 2 - msg channel
	output chnl_rx_clk_2,
	input chnl_rx_2,
	output chnl_rx_ack_2,
	input chnl_rx_last_2,
	input[31:0] chnl_rx_len_2,
	input[30:0] chnl_rx_off_2,
	input[C_PCI_DATA_WIDTH-1:0] chnl_rx_data_2,
	input chnl_rx_data_valid_2,
	output chnl_rx_data_ren_2,

	output chnl_tx_clk_2,
	output reg chnl_tx_2,
	input chnl_tx_ack_2,
	output chnl_tx_last_2,
	output[31:0] chnl_tx_len_2,
	output[30:0] chnl_tx_off_2,
	output[C_PCI_DATA_WIDTH-1:0] chnl_tx_data_2,
	output chnl_tx_data_valid_2,
	input chnl_tx_data_ren_2,

	//channel 3 - metadata channel
	output chnl_rx_clk_3,
	input chnl_rx_3,
	output chnl_rx_ack_3,
	input chnl_rx_last_3,
	input[31:0] chnl_rx_len_3,
	input[30:0] chnl_rx_off_3,
	input[C_PCI_DATA_WIDTH-1:0] chnl_rx_data_3,
	input chnl_rx_data_valid_3,
	output chnl_rx_data_ren_3
);

wire node_in_full;
assign chnl_rx_clk_0 = riffa_clk;
assign chnl_rx_ack_0 = chnl_rx_data_valid_0;
assign chnl_rx_data_ren_0 = ~node_in_full;

wire edge_full;
assign chnl_rx_clk_1 = riffa_clk;
assign chnl_rx_ack_1 = chnl_rx_data_valid_1;
assign chnl_rx_data_ren_1 = ~edge_full;

// wire msg_in_full;
// assign chnl_rx_clk_2 = riffa_clk;
// assign chnl_rx_ack_2 = chnl_rx_data_valid_2;
// assign chnl_rx_data_ren_2 = ~msg_in_full;

wire metadata_full;
assign chnl_rx_clk_3 = riffa_clk;
assign chnl_rx_ack_3 = chnl_rx_data_valid_3;
assign chnl_rx_data_ren_3 = ~metadata_full;

wire node_out_empty;
assign chnl_tx_clk_0 = riffa_clk;
assign chnl_tx_last_0 = 1'b1;
assign chnl_tx_len_0 = 2720 * 16;
assign chnl_tx_off_0 = 0;
assign chnl_tx_data_valid_0 = ~node_out_empty;
reg[31:0] curr_state_0, next_state_0;
reg[31:0] cnt_0, r_cnt_0;
always @ (posedge riffa_clk or posedge riffa_rst) begin
	if (riffa_rst) begin
		curr_state_0 <= 0;
		cnt_0 <= 0;
	end else begin
		curr_state_0 <= next_state_0;
		cnt_0 <= r_cnt_0;
	end
end
always @ (*) begin
	next_state_0 = curr_state_0;
	r_cnt_0 = cnt_0;
	chnl_tx_0 = 1'b0;
	case (curr_state_0)
		0: begin
			if (~node_out_empty) begin
				chnl_tx_0 = 1'b1;
				next_state_0 = 1;
			end
		end
		1: begin
			chnl_tx_0 = 1'b1;
			if (chnl_tx_data_valid_0 & chnl_tx_data_ren_0 & (cnt_0 < 2720 * 16 / 4)) begin
				r_cnt_0 = cnt_0 + 1;
			end else if (cnt_0 >= 2720 * 16 / 4) begin
				chnl_tx_0 = 1'b0;
			end
		end
	endcase
end

procUnitWrapper procUnitWrapper(
	.riffa_clk(riffa_clk),
	.riffa_rst(riffa_rst),

	.node_in_din(chnl_rx_data_0),
	.node_in_wr(chnl_rx_data_valid_0 & chnl_rx_data_ren_0),
	.node_in_full(node_in_full),

	// .msg_in_din(chnl_rx_data_2),
	// .msg_in_wr(chnl_rx_data_valid_2 & chnl_rx_data_ren_2),
	// .msg_in_full(msg_in_full),
	//
	// .msg_out_dout(chnl_tx_data_2),
	// .msg_out_rd(chnl_tx_data_ren_2 & chnl_tx_data_valid_2),
	// .msg_out_empty(msg_out_empty),

	.metadata_din(chnl_rx_data_3),
	.metadata_wr(chnl_rx_data_valid_3 & chnl_rx_data_ren_3),
	.metadata_full(metadata_full),

	.node_out_dout(chnl_tx_data_0),
	.node_out_rd(chnl_tx_data_ren_0 & chnl_tx_data_valid_0),
	.node_out_empty(node_out_empty),

	.edge_din(chnl_rx_data_1),
	.edge_wr(chnl_rx_data_valid_1 & chnl_rx_data_ren_1),
	.edge_full(edge_full),

	.ap_start(1'b1),
	.ap_done()
);

perf_measure perf_measure(
	.riffa_clk(riffa_clk),
	.riffa_rst(riffa_rst),

	//edge
	.chnl_rx_data_ren_1(chnl_rx_data_ren_1),
	.chnl_rx_data_valid_1(chnl_rx_data_valid_1),
	// //message
	// .chnl_rx_data_ren_2(chnl_rx_data_ren_2),
	// .chnl_rx_data_valid_2(chnl_rx_data_valid_2),
	//node
	.chnl_rx_data_ren_0(chnl_rx_data_ren_0),
	.chnl_rx_data_valid_0(chnl_rx_data_valid_0)
);

endmodule
