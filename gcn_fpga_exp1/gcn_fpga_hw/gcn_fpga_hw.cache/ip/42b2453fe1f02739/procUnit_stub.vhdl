-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Tue Feb 20 21:44:14 2018
-- Host        : T3400 running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ procUnit_stub.vhdl
-- Design      : procUnit
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
    edge_strm_V_src_V_dout : in STD_LOGIC_VECTOR ( 14 downto 0 );
    edge_strm_V_src_V_empty_n : in STD_LOGIC;
    edge_strm_V_src_V_read : out STD_LOGIC;
    edge_strm_V_dst_V_dout : in STD_LOGIC_VECTOR ( 14 downto 0 );
    edge_strm_V_dst_V_empty_n : in STD_LOGIC;
    edge_strm_V_dst_V_read : out STD_LOGIC;
    edge_strm_V_c_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    edge_strm_V_c_empty_n : in STD_LOGIC;
    edge_strm_V_c_read : out STD_LOGIC;
    metadata_strm_V_dout : in STD_LOGIC_VECTOR ( 63 downto 0 );
    metadata_strm_V_empty_n : in STD_LOGIC;
    metadata_strm_V_read : out STD_LOGIC;
    msg_out_strm_V_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    msg_out_strm_V_full_n : in STD_LOGIC;
    msg_out_strm_V_write : out STD_LOGIC;
    msg_in_strm_V_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    msg_in_strm_V_empty_n : in STD_LOGIC;
    msg_in_strm_V_read : out STD_LOGIC;
    node_out_strm_V_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    node_out_strm_V_full_n : in STD_LOGIC;
    node_out_strm_V_write : out STD_LOGIC;
    wt_address0 : out STD_LOGIC_VECTOR ( 12 downto 0 );
    wt_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wt_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,node_in_strm_V_dout[31:0],node_in_strm_V_empty_n,node_in_strm_V_read,edge_strm_V_src_V_dout[14:0],edge_strm_V_src_V_empty_n,edge_strm_V_src_V_read,edge_strm_V_dst_V_dout[14:0],edge_strm_V_dst_V_empty_n,edge_strm_V_dst_V_read,edge_strm_V_c_dout[31:0],edge_strm_V_c_empty_n,edge_strm_V_c_read,metadata_strm_V_dout[63:0],metadata_strm_V_empty_n,metadata_strm_V_read,msg_out_strm_V_din[31:0],msg_out_strm_V_full_n,msg_out_strm_V_write,msg_in_strm_V_dout[31:0],msg_in_strm_V_empty_n,msg_in_strm_V_read,node_out_strm_V_din[31:0],node_out_strm_V_full_n,node_out_strm_V_write,wt_address0[12:0],wt_q0[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2016.4";
begin
end;
