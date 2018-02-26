`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 02/20/2018 08:44:40 AM
// Design Name:
// Module Name: perf_mon
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


module perf_mon(
	input riffa_clk,
	input riffa_rst,

	input monitor_signal
);

(*mark_debug = "true"*)reg[63:0] clk_counter, monitor_counter;

always @ (posedge riffa_clk or posedge riffa_rst) begin
	if (riffa_rst) begin
		clk_counter <= 0;
		monitor_counter <= 0;
	end else begin
		clk_counter <= clk_counter + 1;
		if (clk_counter == 150000) begin
			clk_counter <= 0;
			monitor_counter <= 0;
		end else if (monitor_signal) begin
			monitor_counter <= monitor_counter + 1;
		end
	end
end

endmodule
