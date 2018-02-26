`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/20/2018 09:05:25 AM
// Design Name:
// Module Name: perf_measure
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


module perf_measure(
	input riffa_clk,
	input riffa_rst,

	//edge
	input chnl_rx_data_ren_1,
	input chnl_rx_data_valid_1,
	// //message
	// input chnl_rx_data_ren_2,
	// input chnl_rx_data_valid_2,
	//node
	input chnl_rx_data_ren_0,
	input chnl_rx_data_valid_0
);

//edge
perf_mon edge_mon(
	.riffa_clk(riffa_clk),
	.riffa_rst(riffa_rst),
	.monitor_signal(chnl_rx_data_ren_1 & chnl_rx_data_valid_1)
);
// //message
// perf_mon msg_mon(
// 	.riffa_clk(riffa_clk),
// 	.riffa_rst(riffa_rst),
// 	.monitor_signal(chnl_rx_data_ren_2 & chnl_rx_data_valid_2)
// );
//node
perf_mon node_mon(
	.riffa_clk(riffa_clk),
	.riffa_rst(riffa_rst),
	.monitor_signal(chnl_rx_data_ren_0 & chnl_rx_data_valid_0)
);

endmodule
