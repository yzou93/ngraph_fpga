// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mat_mult (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        node_bram_address0,
        node_bram_ce0,
        node_bram_q0,
        edge_src_V,
        edge_c,
        wt_address0,
        wt_ce0,
        wt_q0,
        res_node_address0,
        res_node_ce0,
        res_node_we0,
        res_node_d0
);

parameter    ap_ST_fsm_state1 = 37'b1;
parameter    ap_ST_fsm_state2 = 37'b10;
parameter    ap_ST_fsm_state3 = 37'b100;
parameter    ap_ST_fsm_state4 = 37'b1000;
parameter    ap_ST_fsm_state5 = 37'b10000;
parameter    ap_ST_fsm_state6 = 37'b100000;
parameter    ap_ST_fsm_state7 = 37'b1000000;
parameter    ap_ST_fsm_state8 = 37'b10000000;
parameter    ap_ST_fsm_state9 = 37'b100000000;
parameter    ap_ST_fsm_state10 = 37'b1000000000;
parameter    ap_ST_fsm_state11 = 37'b10000000000;
parameter    ap_ST_fsm_state12 = 37'b100000000000;
parameter    ap_ST_fsm_state13 = 37'b1000000000000;
parameter    ap_ST_fsm_state14 = 37'b10000000000000;
parameter    ap_ST_fsm_state15 = 37'b100000000000000;
parameter    ap_ST_fsm_state16 = 37'b1000000000000000;
parameter    ap_ST_fsm_state17 = 37'b10000000000000000;
parameter    ap_ST_fsm_state18 = 37'b100000000000000000;
parameter    ap_ST_fsm_state19 = 37'b1000000000000000000;
parameter    ap_ST_fsm_state20 = 37'b10000000000000000000;
parameter    ap_ST_fsm_state21 = 37'b100000000000000000000;
parameter    ap_ST_fsm_state22 = 37'b1000000000000000000000;
parameter    ap_ST_fsm_state23 = 37'b10000000000000000000000;
parameter    ap_ST_fsm_state24 = 37'b100000000000000000000000;
parameter    ap_ST_fsm_state25 = 37'b1000000000000000000000000;
parameter    ap_ST_fsm_state26 = 37'b10000000000000000000000000;
parameter    ap_ST_fsm_state27 = 37'b100000000000000000000000000;
parameter    ap_ST_fsm_state28 = 37'b1000000000000000000000000000;
parameter    ap_ST_fsm_state29 = 37'b10000000000000000000000000000;
parameter    ap_ST_fsm_state30 = 37'b100000000000000000000000000000;
parameter    ap_ST_fsm_state31 = 37'b1000000000000000000000000000000;
parameter    ap_ST_fsm_state32 = 37'b10000000000000000000000000000000;
parameter    ap_ST_fsm_state33 = 37'b100000000000000000000000000000000;
parameter    ap_ST_fsm_state34 = 37'b1000000000000000000000000000000000;
parameter    ap_ST_fsm_state35 = 37'b10000000000000000000000000000000000;
parameter    ap_ST_fsm_state36 = 37'b100000000000000000000000000000000000;
parameter    ap_ST_fsm_state37 = 37'b1000000000000000000000000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_17 = 32'b10111;
parameter    ap_const_lv32_1C = 32'b11100;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_10 = 32'b10000;
parameter    ap_const_lv32_11 = 32'b10001;
parameter    ap_const_lv32_12 = 32'b10010;
parameter    ap_const_lv32_16 = 32'b10110;
parameter    ap_const_lv32_24 = 32'b100100;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv32_1D = 32'b11101;
parameter    ap_const_lv32_13 = 32'b10011;
parameter    ap_const_lv32_18 = 32'b11000;
parameter    ap_const_lv32_3F800000 = 32'b111111100000000000000000000000;
parameter    ap_const_lv16_599 = 16'b10110011001;
parameter    ap_const_lv5_10 = 5'b10000;
parameter    ap_const_lv5_1 = 5'b1;
parameter    ap_const_lv11_599 = 11'b10110011001;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_const_lv4_0 = 4'b0000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] node_bram_address0;
output   node_bram_ce0;
input  [31:0] node_bram_q0;
input  [11:0] edge_src_V;
input  [31:0] edge_c;
output  [14:0] wt_address0;
output   wt_ce0;
input  [31:0] wt_q0;
output  [3:0] res_node_address0;
output   res_node_ce0;
output   res_node_we0;
output  [31:0] res_node_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg node_bram_ce0;
reg wt_ce0;
reg res_node_ce0;
reg res_node_we0;

(* fsm_encoding = "none" *) reg   [36:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
wire   [31:0] grp_fu_160_p2;
reg   [31:0] reg_170;
wire   [0:0] ap_CS_fsm_state24;
wire   [0:0] ap_CS_fsm_state29;
wire   [0:0] ap_CS_fsm_state14;
wire   [31:0] grp_fu_164_p2;
reg   [31:0] tmp_reg_267;
wire   [0:0] ap_CS_fsm_state16;
wire   [15:0] grp_fu_184_p2;
reg   [15:0] tmp_s_reg_272;
wire   [4:0] m_2_fu_196_p2;
reg   [4:0] m_2_reg_280;
wire   [0:0] ap_CS_fsm_state17;
wire   [63:0] tmp_3_fu_202_p1;
reg   [63:0] tmp_3_reg_285;
wire   [0:0] exitcond1_fu_190_p2;
wire   [15:0] tmp_3_cast_fu_206_p1;
reg   [15:0] tmp_3_cast_reg_290;
wire   [10:0] k_1_fu_216_p2;
reg   [10:0] k_1_reg_298;
wire   [0:0] ap_CS_fsm_state18;
wire   [0:0] exitcond_fu_210_p2;
wire   [15:0] tmp_11_fu_248_p2;
reg   [15:0] tmp_11_reg_308;
reg   [31:0] node_bram_load_reg_313;
wire   [0:0] ap_CS_fsm_state19;
wire   [0:0] ap_CS_fsm_state23;
reg   [31:0] wt_load_reg_323;
wire   [31:0] grp_fu_155_p2;
wire   [0:0] ap_CS_fsm_state37;
reg   [4:0] m_reg_120;
reg   [31:0] res_reg_131;
reg   [10:0] k_reg_144;
wire   [63:0] tmp_16_cast_fu_231_p1;
wire   [63:0] tmp_19_cast_fu_253_p1;
wire   [0:0] ap_CS_fsm_state30;
reg   [31:0] grp_fu_160_p0;
reg   [31:0] grp_fu_160_p1;
wire   [0:0] ap_CS_fsm_state20;
wire   [0:0] ap_CS_fsm_state25;
wire   [4:0] tmp_9_fu_176_p1;
wire   [11:0] grp_fu_184_p0;
wire   [4:0] grp_fu_184_p1;
wire   [15:0] tmp_4_cast_fu_222_p1;
wire   [15:0] tmp_7_fu_226_p2;
wire   [14:0] tmp_10_fu_236_p3;
wire   [15:0] tmp_18_cast_fu_244_p1;
reg   [36:0] ap_NS_fsm;
wire   [15:0] grp_fu_184_p10;

// power-on initialization
initial begin
#0 ap_CS_fsm = 37'b1;
end

top_fadd_32ns_32nbkb #(
    .ID( 1 ),
    .NUM_STAGE( 8 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
top_fadd_32ns_32nbkb_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(res_reg_131),
    .din1(reg_170),
    .ce(1'b1),
    .dout(grp_fu_155_p2)
);

top_fmul_32ns_32ncud #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
top_fmul_32ns_32ncud_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_160_p0),
    .din1(grp_fu_160_p1),
    .ce(1'b1),
    .dout(grp_fu_160_p2)
);

top_fdiv_32ns_32ndEe #(
    .ID( 1 ),
    .NUM_STAGE( 16 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
top_fdiv_32ns_32ndEe_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ap_const_lv32_3F800000),
    .din1(edge_c),
    .ce(1'b1),
    .dout(grp_fu_164_p2)
);

top_mul_12ns_5ns_eOg #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 12 ),
    .din1_WIDTH( 5 ),
    .dout_WIDTH( 16 ))
top_mul_12ns_5ns_eOg_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_184_p0),
    .din1(grp_fu_184_p1),
    .ce(1'b1),
    .dout(grp_fu_184_p2)
);

always @ (posedge ap_rst or posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        k_reg_144 <= k_1_reg_298;
    end else if (((1'b1 == ap_CS_fsm_state17) & (exitcond1_fu_190_p2 == 1'b0))) begin
        k_reg_144 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) & ~(1'b0 == exitcond_fu_210_p2))) begin
        m_reg_120 <= m_2_reg_280;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        m_reg_120 <= ap_const_lv5_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        res_reg_131 <= grp_fu_155_p2;
    end else if (((1'b1 == ap_CS_fsm_state17) & (exitcond1_fu_190_p2 == 1'b0))) begin
        res_reg_131 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        k_1_reg_298 <= k_1_fu_216_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        m_2_reg_280 <= m_2_fu_196_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        node_bram_load_reg_313 <= node_bram_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state29))) begin
        reg_170 <= grp_fu_160_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) & (1'b0 == exitcond_fu_210_p2))) begin
        tmp_11_reg_308 <= tmp_11_fu_248_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) & (exitcond1_fu_190_p2 == 1'b0))) begin
        tmp_3_cast_reg_290[4 : 0] <= tmp_3_cast_fu_206_p1[4 : 0];
        tmp_3_reg_285[4 : 0] <= tmp_3_fu_202_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        tmp_reg_267 <= grp_fu_164_p2;
        tmp_s_reg_272 <= grp_fu_184_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        wt_load_reg_323 <= wt_q0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1)) | ((1'b1 == ap_CS_fsm_state17) & ~(exitcond1_fu_190_p2 == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state17) & ~(exitcond1_fu_190_p2 == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_160_p0 = reg_170;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_160_p0 = tmp_reg_267;
    end else begin
        grp_fu_160_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_160_p1 = wt_load_reg_323;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_160_p1 = node_bram_load_reg_313;
    end else begin
        grp_fu_160_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        node_bram_ce0 = 1'b1;
    end else begin
        node_bram_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        res_node_ce0 = 1'b1;
    end else begin
        res_node_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) & ~(1'b0 == exitcond_fu_210_p2))) begin
        res_node_we0 = 1'b1;
    end else begin
        res_node_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        wt_ce0 = 1'b1;
    end else begin
        wt_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (~(exitcond1_fu_190_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        ap_ST_fsm_state18 : begin
            if (~(1'b0 == exitcond_fu_210_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state14 = ap_CS_fsm[ap_const_lv32_D];

assign ap_CS_fsm_state16 = ap_CS_fsm[ap_const_lv32_F];

assign ap_CS_fsm_state17 = ap_CS_fsm[ap_const_lv32_10];

assign ap_CS_fsm_state18 = ap_CS_fsm[ap_const_lv32_11];

assign ap_CS_fsm_state19 = ap_CS_fsm[ap_const_lv32_12];

assign ap_CS_fsm_state20 = ap_CS_fsm[ap_const_lv32_13];

assign ap_CS_fsm_state23 = ap_CS_fsm[ap_const_lv32_16];

assign ap_CS_fsm_state24 = ap_CS_fsm[ap_const_lv32_17];

assign ap_CS_fsm_state25 = ap_CS_fsm[ap_const_lv32_18];

assign ap_CS_fsm_state29 = ap_CS_fsm[ap_const_lv32_1C];

assign ap_CS_fsm_state30 = ap_CS_fsm[ap_const_lv32_1D];

assign ap_CS_fsm_state37 = ap_CS_fsm[ap_const_lv32_24];

assign exitcond1_fu_190_p2 = ((m_reg_120 == ap_const_lv5_10) ? 1'b1 : 1'b0);

assign exitcond_fu_210_p2 = ((k_reg_144 == ap_const_lv11_599) ? 1'b1 : 1'b0);

assign grp_fu_184_p0 = ap_const_lv16_599;

assign grp_fu_184_p1 = grp_fu_184_p10;

assign grp_fu_184_p10 = tmp_9_fu_176_p1;

assign k_1_fu_216_p2 = (k_reg_144 + ap_const_lv11_1);

assign m_2_fu_196_p2 = (m_reg_120 + ap_const_lv5_1);

assign node_bram_address0 = tmp_16_cast_fu_231_p1;

assign res_node_address0 = tmp_3_reg_285;

assign res_node_d0 = res_reg_131;

assign tmp_10_fu_236_p3 = {{k_reg_144}, {ap_const_lv4_0}};

assign tmp_11_fu_248_p2 = (tmp_3_cast_reg_290 + tmp_18_cast_fu_244_p1);

assign tmp_16_cast_fu_231_p1 = tmp_7_fu_226_p2;

assign tmp_18_cast_fu_244_p1 = tmp_10_fu_236_p3;

assign tmp_19_cast_fu_253_p1 = tmp_11_reg_308;

assign tmp_3_cast_fu_206_p1 = m_reg_120;

assign tmp_3_fu_202_p1 = m_reg_120;

assign tmp_4_cast_fu_222_p1 = k_reg_144;

assign tmp_7_fu_226_p2 = (tmp_4_cast_fu_222_p1 + tmp_s_reg_272);

assign tmp_9_fu_176_p1 = edge_src_V[4:0];

assign wt_address0 = tmp_19_cast_fu_253_p1;

always @ (posedge ap_clk) begin
    tmp_3_reg_285[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    tmp_3_cast_reg_290[15:5] <= 11'b00000000000;
end

endmodule //mat_mult
