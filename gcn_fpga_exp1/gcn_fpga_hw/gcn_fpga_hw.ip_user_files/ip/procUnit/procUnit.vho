-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:top:1.0
-- IP Revision: 1802210431

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT procUnit
  PORT (
    wt_ce0 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    node_in_strm_V_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    node_in_strm_V_empty_n : IN STD_LOGIC;
    node_in_strm_V_read : OUT STD_LOGIC;
    edge_strm_V_src_V_dout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    edge_strm_V_src_V_empty_n : IN STD_LOGIC;
    edge_strm_V_src_V_read : OUT STD_LOGIC;
    edge_strm_V_dst_V_dout : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    edge_strm_V_dst_V_empty_n : IN STD_LOGIC;
    edge_strm_V_dst_V_read : OUT STD_LOGIC;
    edge_strm_V_c_dout : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    edge_strm_V_c_empty_n : IN STD_LOGIC;
    edge_strm_V_c_read : OUT STD_LOGIC;
    metadata_strm_V_dout : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    metadata_strm_V_empty_n : IN STD_LOGIC;
    metadata_strm_V_read : OUT STD_LOGIC;
    node_out_strm_V_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    node_out_strm_V_full_n : IN STD_LOGIC;
    node_out_strm_V_write : OUT STD_LOGIC;
    wt_address0 : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
    wt_q0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : procUnit
  PORT MAP (
    wt_ce0 => wt_ce0,
    ap_clk => ap_clk,
    ap_rst => ap_rst,
    ap_start => ap_start,
    ap_done => ap_done,
    ap_idle => ap_idle,
    ap_ready => ap_ready,
    node_in_strm_V_dout => node_in_strm_V_dout,
    node_in_strm_V_empty_n => node_in_strm_V_empty_n,
    node_in_strm_V_read => node_in_strm_V_read,
    edge_strm_V_src_V_dout => edge_strm_V_src_V_dout,
    edge_strm_V_src_V_empty_n => edge_strm_V_src_V_empty_n,
    edge_strm_V_src_V_read => edge_strm_V_src_V_read,
    edge_strm_V_dst_V_dout => edge_strm_V_dst_V_dout,
    edge_strm_V_dst_V_empty_n => edge_strm_V_dst_V_empty_n,
    edge_strm_V_dst_V_read => edge_strm_V_dst_V_read,
    edge_strm_V_c_dout => edge_strm_V_c_dout,
    edge_strm_V_c_empty_n => edge_strm_V_c_empty_n,
    edge_strm_V_c_read => edge_strm_V_c_read,
    metadata_strm_V_dout => metadata_strm_V_dout,
    metadata_strm_V_empty_n => metadata_strm_V_empty_n,
    metadata_strm_V_read => metadata_strm_V_read,
    node_out_strm_V_din => node_out_strm_V_din,
    node_out_strm_V_full_n => node_out_strm_V_full_n,
    node_out_strm_V_write => node_out_strm_V_write,
    wt_address0 => wt_address0,
    wt_q0 => wt_q0
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file procUnit.vhd when simulating
-- the core, procUnit. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

