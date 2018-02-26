
`timescale 1 ns / 1 ps

  module top_mul_mul_12ns_jbC_DSP48_3(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input [12 - 1 : 0] a; 
input signed [17 - 1 : 0] b; 
output signed [17 - 1 : 0] p; 

reg signed [17 - 1 : 0] p_reg; 

reg [12 - 1 : 0] a_reg; 
reg signed [17 - 1 : 0] b_reg; 

always @ (posedge clk) begin
    if (rst) begin
        a_reg <= 0;
        b_reg <= 0;
        p_reg <= 0;
    end else
    if (ce) begin
        a_reg <= a;
        b_reg <= b;
        p_reg <= $signed ({1'b0, a_reg}) * $signed (b_reg);
    end
end

assign p = p_reg;

endmodule

`timescale 1 ns / 1 ps
module top_mul_mul_12ns_jbC(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



top_mul_mul_12ns_jbC_DSP48_3 top_mul_mul_12ns_jbC_DSP48_3_U(
    .clk( clk ),
    .rst( reset ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

