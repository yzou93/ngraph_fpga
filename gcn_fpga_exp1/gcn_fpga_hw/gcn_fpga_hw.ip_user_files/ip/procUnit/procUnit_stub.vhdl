-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Wed Feb 21 04:34:27 2018
-- Host        : T3400 running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/yuzou/gcn_fpga_exp1/gcn_fpga_hw/gcn_fpga_hw.srcs/sources_1/ip/procUnit/procUnit_stub.vhdl
-- Design      : procUnit
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity procUnit is
  Port ( 
    wt_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    node_in_strm_V_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    node_in_strm_V_empty_n : in STD_LOGIC;
    node_in_strm_V_read : out STD_LOGIC;
    edge_strm_V_src_V_dout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    edge_strm_V_src_V_empty_n : in STD_LOGIC;
    edge_strm_V_src_V_read : out STD_LOGIC;
    edge_strm_V_dst_V_dout : in STD_LOGIC_VECTOR ( 11 downto 0 );
    edge_strm_V_dst_V_empty_n : in STD_LOGIC;
    edge_strm_V_dst_V_read : out STD_LOGIC;
    edge_strm_V_c_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    edge_strm_V_c_empty_n : in STD_LOGIC;
    edge_strm_V_c_read : out STD_LOGIC;
    metadata_strm_V_dout : in STD_LOGIC_VECTOR ( 63 downto 0 );
    metadata_strm_V_empty_n : in STD_LOGIC;
    metadata_strm_V_read : out STD_LOGIC;
    node_out_strm_V_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    node_out_strm_V_full_n : in STD_LOGIC;
    node_out_strm_V_write : out STD_LOGIC;
    wt_address0 : out STD_LOGIC_VECTOR ( 14 downto 0 );
    wt_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end procUnit;

architecture stub of procUnit is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wt_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,node_in_strm_V_dout[31:0],node_in_strm_V_empty_n,node_in_strm_V_read,edge_strm_V_src_V_dout[11:0],edge_strm_V_src_V_empty_n,edge_strm_V_src_V_read,edge_strm_V_dst_V_dout[11:0],edge_strm_V_dst_V_empty_n,edge_strm_V_dst_V_read,edge_strm_V_c_dout[31:0],edge_strm_V_c_empty_n,edge_strm_V_c_read,metadata_strm_V_dout[63:0],metadata_strm_V_empty_n,metadata_strm_V_read,node_out_strm_V_din[31:0],node_out_strm_V_full_n,node_out_strm_V_write,wt_address0[14:0],wt_q0[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2016.4";
begin
end;
