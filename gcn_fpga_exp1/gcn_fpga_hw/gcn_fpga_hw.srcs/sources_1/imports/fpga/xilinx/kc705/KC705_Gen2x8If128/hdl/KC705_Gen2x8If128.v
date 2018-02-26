// ----------------------------------------------------------------------
// Copyright (c) 2016, The Regents of the University of California All
// rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//
//     * Redistributions in binary form must reproduce the above
//       copyright notice, this list of conditions and the following
//       disclaimer in the documentation and/or other materials provided
//       with the distribution.
//
//     * Neither the name of The Regents of the University of California
//       nor the names of its contributors may be used to endorse or
//       promote products derived from this software without specific
//       prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL REGENTS OF THE
// UNIVERSITY OF CALIFORNIA BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
// OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
// TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
// USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
// DAMAGE.
// ----------------------------------------------------------------------
//----------------------------------------------------------------------------
// Filename:            KC705_Gen2x8If128.v
// Version:             1.00.a
// Verilog Standard:    Verilog-2001
// Description:         Top level module for RIFFA 2.2 reference design for the
//                      the Xilinx KC705 Development Board.
// Author:              Dustin Richmond (@darichmond)
//-----------------------------------------------------------------------------
`include "trellis.vh"
`include "riffa.vh"
`include "tlp.vh"
`include "xilinx.vh"
`timescale 1ps / 1ps
module KC705_Gen2x8If128
    #(// Number of RIFFA Channels
      parameter C_NUM_CHNL = 4,
      // Number of PCIe Lanes
      parameter C_NUM_LANES =  8,
      // Settings from Vivado IP Generator
      parameter C_PCI_DATA_WIDTH = 128,
      parameter C_MAX_PAYLOAD_BYTES = 256,
      parameter C_LOG_NUM_TAGS = 5
      )
    (output [(C_NUM_LANES - 1) : 0] PCI_EXP_TXP,
     output [(C_NUM_LANES - 1) : 0] PCI_EXP_TXN,
     input [(C_NUM_LANES - 1) : 0]  PCI_EXP_RXP,
     input [(C_NUM_LANES - 1) : 0]  PCI_EXP_RXN,

     output [3:0]                   LED,
     input                          PCIE_REFCLK_P,
     input                          PCIE_REFCLK_N,
     input                          PCIE_RESET_N
     );

    wire                            pcie_refclk;
    wire                            pcie_reset_n;

    wire                            user_clk;
    wire                            user_reset;
    wire                            user_lnk_up;
    wire                            user_app_rdy;

    wire                            s_axis_tx_tready;
    wire [C_PCI_DATA_WIDTH-1 : 0]   s_axis_tx_tdata;
    wire [(C_PCI_DATA_WIDTH/8)-1 : 0] s_axis_tx_tkeep;
    wire                              s_axis_tx_tlast;
    wire                              s_axis_tx_tvalid;
    wire [`SIG_XIL_TX_TUSER_W : 0]    s_axis_tx_tuser;

    wire [C_PCI_DATA_WIDTH-1 : 0]     m_axis_rx_tdata;
    wire [(C_PCI_DATA_WIDTH/8)-1 : 0] m_axis_rx_tkeep;
    wire                              m_axis_rx_tlast;
    wire                              m_axis_rx_tvalid;
    wire                              m_axis_rx_tready;
    wire [`SIG_XIL_RX_TUSER_W - 1 : 0] m_axis_rx_tuser;

    wire                               tx_cfg_gnt;
    wire                               rx_np_ok;
    wire                               rx_np_req;
    wire                               cfg_turnoff_ok;
    wire                               cfg_trn_pending;
    wire                               cfg_pm_halt_aspm_l0s;
    wire                               cfg_pm_halt_aspm_l1;
    wire                               cfg_pm_force_state_en;
    wire [1:0]                         cfg_pm_force_state;
    wire                               cfg_pm_wake;
    wire [63:0]                        cfg_dsn;

    wire [11 : 0]                      fc_cpld;
    wire [7 : 0]                       fc_cplh;
    wire [11 : 0]                      fc_npd;
    wire [7 : 0]                       fc_nph;
    wire [11 : 0]                      fc_pd;
    wire [7 : 0]                       fc_ph;
    wire [2 : 0]                       fc_sel;

    wire [15 : 0]                      cfg_status;
    wire [15 : 0]                      cfg_command;
    wire [15 : 0]                      cfg_dstatus;
    wire [15 : 0]                      cfg_dcommand;
    wire [15 : 0]                      cfg_lstatus;
    wire [15 : 0]                      cfg_lcommand;
    wire [15 : 0]                      cfg_dcommand2;

    wire [2 : 0]                       cfg_pcie_link_state;
    wire                               cfg_pmcsr_pme_en;
    wire [1 : 0]                       cfg_pmcsr_powerstate;
    wire                               cfg_pmcsr_pme_status;
    wire                               cfg_received_func_lvl_rst;
    wire [4 : 0]                       cfg_pciecap_interrupt_msgnum;
    wire                               cfg_to_turnoff;
    wire [7 : 0]                       cfg_bus_number;
    wire [4 : 0]                       cfg_device_number;
    wire [2 : 0]                       cfg_function_number;

    wire                               cfg_interrupt;
    wire                               cfg_interrupt_rdy;
    wire                               cfg_interrupt_assert;
    wire [7 : 0]                       cfg_interrupt_di;
    wire [7 : 0]                       cfg_interrupt_do;
    wire [2 : 0]                       cfg_interrupt_mmenable;
    wire                               cfg_interrupt_msienable;
    wire                               cfg_interrupt_msixenable;
    wire                               cfg_interrupt_msixfm;
    wire                               cfg_interrupt_stat;



    wire                               rst_out;
    wire [C_NUM_CHNL-1:0]              chnl_rx_clk;
    wire [C_NUM_CHNL-1:0]              chnl_rx;
    wire [C_NUM_CHNL-1:0]              chnl_rx_ack;
    wire [C_NUM_CHNL-1:0]              chnl_rx_last;
    wire [(C_NUM_CHNL*`SIG_CHNL_LENGTH_W)-1:0] chnl_rx_len;
    wire [(C_NUM_CHNL*`SIG_CHNL_OFFSET_W)-1:0] chnl_rx_off;
    wire [(C_NUM_CHNL*C_PCI_DATA_WIDTH)-1:0]   chnl_rx_data;
    wire [C_NUM_CHNL-1:0]                      chnl_rx_data_valid;
    wire [C_NUM_CHNL-1:0]                      chnl_rx_data_ren;

    wire [C_NUM_CHNL-1:0]                      chnl_tx_clk;
    wire [C_NUM_CHNL-1:0]                      chnl_tx;
    wire [C_NUM_CHNL-1:0]                      chnl_tx_ack;
    wire [C_NUM_CHNL-1:0]                      chnl_tx_last;
    wire [(C_NUM_CHNL*`SIG_CHNL_LENGTH_W)-1:0] chnl_tx_len;
    wire [(C_NUM_CHNL*`SIG_CHNL_OFFSET_W)-1:0] chnl_tx_off;
    wire [(C_NUM_CHNL*C_PCI_DATA_WIDTH)-1:0]   chnl_tx_data;
    wire [C_NUM_CHNL-1:0]                      chnl_tx_data_valid;
    wire [C_NUM_CHNL-1:0]                      chnl_tx_data_ren;

    genvar                                     chnl;

    assign cfg_turnoff_ok = 0;
    assign cfg_trn_pending = 0;
    assign cfg_pm_halt_aspm_l0s = 0;
    assign cfg_pm_halt_aspm_l1 = 0;
    assign cfg_pm_force_state_en = 0;
    assign cfg_pm_force_state = 0;
    assign cfg_dsn = 0;
    assign cfg_interrupt_assert = 0;
    assign cfg_interrupt_di = 0;
    assign cfg_interrupt_stat = 0;
    assign cfg_pciecap_interrupt_msgnum = 0;
    assign cfg_turnoff_ok = 0;
    assign cfg_pm_wake = 0;

    IBUF
        #()
    pci_reset_n_ibuf
        (.O(pcie_reset_n),
         .I(PCIE_RESET_N));

    IBUFDS_GTE2
        #()
    refclk_ibuf
        (.O(pcie_refclk),
         .ODIV2(),
         .I(PCIE_REFCLK_P),
         .CEB(1'b0),
         .IB(PCIE_REFCLK_N));

    // Core Top Level Wrapper

    PCIeGen2x8If128 PCIeGen2x8If128_i
        (//---------------------------------------------------------------------
         // PCI Express (pci_exp) Interface
         //---------------------------------------------------------------------
         // Tx
         .pci_exp_txn                               ( PCI_EXP_TXN ),
         .pci_exp_txp                               ( PCI_EXP_TXP ),

         // Rx
         .pci_exp_rxn                               ( PCI_EXP_RXN ),
         .pci_exp_rxp                               ( PCI_EXP_RXP ),

         //---------------------------------------------------------------------
         // AXI-S Interface
         //---------------------------------------------------------------------
         // Common
         .user_clk_out                              ( user_clk ),
         .user_reset_out                            ( user_reset ),
         .user_lnk_up                               ( user_lnk_up ),
         .user_app_rdy                              ( user_app_rdy ),

         // TX
         .s_axis_tx_tready                          ( s_axis_tx_tready ),
         .s_axis_tx_tdata                           ( s_axis_tx_tdata ),
         .s_axis_tx_tkeep                           ( s_axis_tx_tkeep ),
         .s_axis_tx_tuser                           ( s_axis_tx_tuser ),
         .s_axis_tx_tlast                           ( s_axis_tx_tlast ),
         .s_axis_tx_tvalid                          ( s_axis_tx_tvalid ),

         // Rx
         .m_axis_rx_tdata                           ( m_axis_rx_tdata ),
         .m_axis_rx_tkeep                           ( m_axis_rx_tkeep ),
         .m_axis_rx_tlast                           ( m_axis_rx_tlast ),
         .m_axis_rx_tvalid                          ( m_axis_rx_tvalid ),
         .m_axis_rx_tready                          ( m_axis_rx_tready ),
         .m_axis_rx_tuser                           ( m_axis_rx_tuser ),

         .tx_cfg_gnt                                ( tx_cfg_gnt ),
         .rx_np_ok                                  ( rx_np_ok ),
         .rx_np_req                                 ( rx_np_req ),
         .cfg_trn_pending                           ( cfg_trn_pending ),
         .cfg_pm_halt_aspm_l0s                      ( cfg_pm_halt_aspm_l0s ),
         .cfg_pm_halt_aspm_l1                       ( cfg_pm_halt_aspm_l1 ),
         .cfg_pm_force_state_en                     ( cfg_pm_force_state_en ),
         .cfg_pm_force_state                        ( cfg_pm_force_state ),
         .cfg_dsn                                   ( cfg_dsn ),
         .cfg_turnoff_ok                            ( cfg_turnoff_ok ),
         .cfg_pm_wake                               ( cfg_pm_wake ),
         .cfg_pm_send_pme_to                        ( 1'b0 ),
         .cfg_ds_bus_number                         ( 8'b0 ),
         .cfg_ds_device_number                      ( 5'b0 ),
         .cfg_ds_function_number                    ( 3'b0 ),

         //---------------------------------------------------------------------
         // Flow Control Interface
         //---------------------------------------------------------------------
         .fc_cpld                                   ( fc_cpld ),
         .fc_cplh                                   ( fc_cplh ),
         .fc_npd                                    ( fc_npd ),
         .fc_nph                                    ( fc_nph ),
         .fc_pd                                     ( fc_pd ),
         .fc_ph                                     ( fc_ph ),
         .fc_sel                                    ( fc_sel ),

         //---------------------------------------------------------------------
         // Configuration (CFG) Interface
         //---------------------------------------------------------------------
         .cfg_device_number                         ( cfg_device_number ),
         .cfg_dcommand2                             ( cfg_dcommand2 ),
         .cfg_pmcsr_pme_status                      ( cfg_pmcsr_pme_status ),
         .cfg_status                                ( cfg_status ),
         .cfg_to_turnoff                            ( cfg_to_turnoff ),
         .cfg_received_func_lvl_rst                 ( cfg_received_func_lvl_rst ),
         .cfg_dcommand                              ( cfg_dcommand ),
         .cfg_bus_number                            ( cfg_bus_number ),
         .cfg_function_number                       ( cfg_function_number ),
         .cfg_command                               ( cfg_command ),
         .cfg_dstatus                               ( cfg_dstatus ),
         .cfg_lstatus                               ( cfg_lstatus ),
         .cfg_pcie_link_state                       ( cfg_pcie_link_state ),
         .cfg_lcommand                              ( cfg_lcommand ),
         .cfg_pmcsr_pme_en                          ( cfg_pmcsr_pme_en ),
         .cfg_pmcsr_powerstate                      ( cfg_pmcsr_powerstate ),

         //------------------------------------------------//
         // EP Only                                        //
         //------------------------------------------------//
         .cfg_interrupt                             ( cfg_interrupt ),
         .cfg_interrupt_rdy                         ( cfg_interrupt_rdy ),
         .cfg_interrupt_assert                      ( cfg_interrupt_assert ),
         .cfg_interrupt_di                          ( cfg_interrupt_di ),
         .cfg_interrupt_do                          ( cfg_interrupt_do ),
         .cfg_interrupt_mmenable                    ( cfg_interrupt_mmenable ),
         .cfg_interrupt_msienable                   ( cfg_interrupt_msienable ),
         .cfg_interrupt_msixenable                  ( cfg_interrupt_msixenable ),
         .cfg_interrupt_msixfm                      ( cfg_interrupt_msixfm ),
         .cfg_interrupt_stat                        ( cfg_interrupt_stat ),
         .cfg_pciecap_interrupt_msgnum              ( cfg_pciecap_interrupt_msgnum ),
         //---------------------------------------------------------------------
         // System  (SYS) Interface
         //---------------------------------------------------------------------
         .sys_clk                                    ( pcie_refclk ),
         .sys_rst_n                                  ( pcie_reset_n )

         );


    riffa_wrapper_kc705
        #(/*AUTOINSTPARAM*/
          // Parameters
          .C_LOG_NUM_TAGS               (C_LOG_NUM_TAGS),
          .C_NUM_CHNL                   (C_NUM_CHNL),
          .C_PCI_DATA_WIDTH             (C_PCI_DATA_WIDTH),
          .C_MAX_PAYLOAD_BYTES          (C_MAX_PAYLOAD_BYTES))
    riffa
        (
         // Outputs
         .CFG_INTERRUPT                 (cfg_interrupt),
         .M_AXIS_RX_TREADY              (m_axis_rx_tready),
         .S_AXIS_TX_TDATA               (s_axis_tx_tdata[C_PCI_DATA_WIDTH-1:0]),
         .S_AXIS_TX_TKEEP               (s_axis_tx_tkeep[(C_PCI_DATA_WIDTH/8)-1:0]),
         .S_AXIS_TX_TLAST               (s_axis_tx_tlast),
         .S_AXIS_TX_TVALID              (s_axis_tx_tvalid),
         .S_AXIS_TX_TUSER               (s_axis_tx_tuser[`SIG_XIL_TX_TUSER_W-1:0]),
         .FC_SEL                        (fc_sel[`SIG_FC_SEL_W-1:0]),
         .RST_OUT                       (rst_out),
         .CHNL_RX                       (chnl_rx[C_NUM_CHNL-1:0]),
         .CHNL_RX_LAST                  (chnl_rx_last[C_NUM_CHNL-1:0]),
         .CHNL_RX_LEN                   (chnl_rx_len[(C_NUM_CHNL*`SIG_CHNL_LENGTH_W)-1:0]),
         .CHNL_RX_OFF                   (chnl_rx_off[(C_NUM_CHNL*`SIG_CHNL_OFFSET_W)-1:0]),
         .CHNL_RX_DATA                  (chnl_rx_data[(C_NUM_CHNL*C_PCI_DATA_WIDTH)-1:0]),
         .CHNL_RX_DATA_VALID            (chnl_rx_data_valid[C_NUM_CHNL-1:0]),
         .CHNL_TX_ACK                   (chnl_tx_ack[C_NUM_CHNL-1:0]),
         .CHNL_TX_DATA_REN              (chnl_tx_data_ren[C_NUM_CHNL-1:0]),
         // Inputs
         .M_AXIS_RX_TDATA               (m_axis_rx_tdata[C_PCI_DATA_WIDTH-1:0]),
         .M_AXIS_RX_TKEEP               (m_axis_rx_tkeep[(C_PCI_DATA_WIDTH/8)-1:0]),
         .M_AXIS_RX_TLAST               (m_axis_rx_tlast),
         .M_AXIS_RX_TVALID              (m_axis_rx_tvalid),
         .M_AXIS_RX_TUSER               (m_axis_rx_tuser[`SIG_XIL_RX_TUSER_W-1:0]),
         .S_AXIS_TX_TREADY              (s_axis_tx_tready),
         .CFG_BUS_NUMBER                (cfg_bus_number[`SIG_BUSID_W-1:0]),
         .CFG_DEVICE_NUMBER             (cfg_device_number[`SIG_DEVID_W-1:0]),
         .CFG_FUNCTION_NUMBER           (cfg_function_number[`SIG_FNID_W-1:0]),
         .CFG_COMMAND                   (cfg_command[`SIG_CFGREG_W-1:0]),
         .CFG_DCOMMAND                  (cfg_dcommand[`SIG_CFGREG_W-1:0]),
         .CFG_LSTATUS                   (cfg_lstatus[`SIG_CFGREG_W-1:0]),
         .CFG_LCOMMAND                  (cfg_lcommand[`SIG_CFGREG_W-1:0]),
         .FC_CPLD                       (fc_cpld[`SIG_FC_CPLD_W-1:0]),
         .FC_CPLH                       (fc_cplh[`SIG_FC_CPLH_W-1:0]),
         .CFG_INTERRUPT_MSIEN           (cfg_interrupt_msienable),// TODO: Rename
         .CFG_INTERRUPT_RDY             (cfg_interrupt_rdy),
         .USER_CLK                      (user_clk),
         .USER_RESET                    (user_reset),
         .CHNL_RX_CLK                   (chnl_rx_clk[C_NUM_CHNL-1:0]),
         .CHNL_RX_ACK                   (chnl_rx_ack[C_NUM_CHNL-1:0]),
         .CHNL_RX_DATA_REN              (chnl_rx_data_ren[C_NUM_CHNL-1:0]),
         .CHNL_TX_CLK                   (chnl_tx_clk[C_NUM_CHNL-1:0]),
         .CHNL_TX                       (chnl_tx[C_NUM_CHNL-1:0]),
         .CHNL_TX_LAST                  (chnl_tx_last[C_NUM_CHNL-1:0]),
         .CHNL_TX_LEN                   (chnl_tx_len[(C_NUM_CHNL*`SIG_CHNL_LENGTH_W)-1:0]),
         .CHNL_TX_OFF                   (chnl_tx_off[(C_NUM_CHNL*`SIG_CHNL_OFFSET_W)-1:0]),
         .CHNL_TX_DATA                  (chnl_tx_data[(C_NUM_CHNL*C_PCI_DATA_WIDTH)-1:0]),
         .CHNL_TX_DATA_VALID            (chnl_tx_data_valid[C_NUM_CHNL-1:0]),
         .RX_NP_OK                      (rx_np_ok),
         .TX_CFG_GNT                    (tx_cfg_gnt),
         .RX_NP_REQ                     (rx_np_req)
         /*AUTOINST*/);

	chnl_user_app #(
	 	.C_PCI_DATA_WIDTH(128)
	) chnl_user_app (
		.riffa_clk(user_clk),
	 	.riffa_rst(rst_out),

	 	//Channel 0 - node channel
	 	.chnl_rx_clk_0(chnl_rx_clk[0]),
	 	.chnl_rx_0(chnl_rx[0]),
	 	.chnl_rx_ack_0(chnl_rx_ack[0]),
	 	.chnl_rx_last_0(chnl_rx_last[0]),
	 	.chnl_rx_len_0(chnl_rx_len[32*0 +: 32]),
	 	.chnl_rx_off_0(chnl_rx_off[31*0 +: 31]),
	 	.chnl_rx_data_0(chnl_rx_data[C_PCI_DATA_WIDTH*0 +: C_PCI_DATA_WIDTH]),
	 	.chnl_rx_data_valid_0(chnl_rx_data_valid[0]),
	 	.chnl_rx_data_ren_0(chnl_rx_data_ren[0]),

	 	.chnl_tx_clk_0(chnl_tx_clk[0]),
	 	.chnl_tx_0(chnl_tx[0]),
	 	.chnl_tx_ack_0(chnl_tx_ack[0]),
	 	.chnl_tx_last_0(chnl_tx_last[0]),
	 	.chnl_tx_len_0(chnl_tx_len[32*0 +: 32]),
	 	.chnl_tx_off_0(chnl_tx_off[31*0 +: 31]),
	 	.chnl_tx_data_0(chnl_tx_data[C_PCI_DATA_WIDTH*0 +: C_PCI_DATA_WIDTH]),
	 	.chnl_tx_data_valid_0(chnl_tx_data_valid[0]),
	 	.chnl_tx_data_ren_0(chnl_tx_data_ren[0]),

	 	//channel 1 - edge channel
	 	.chnl_rx_clk_1(chnl_rx_clk[1]),
	 	.chnl_rx_1(chnl_rx[1]),
	 	.chnl_rx_ack_1(chnl_rx_ack[1]),
	 	.chnl_rx_last_1(chnl_rx_last[1]),
	 	.chnl_rx_len_1(chnl_rx_len[32*1 +: 32]),
	 	.chnl_rx_off_1(chnl_rx_off[31*1 +: 31]),
	 	.chnl_rx_data_1(chnl_rx_data[C_PCI_DATA_WIDTH*1 +: C_PCI_DATA_WIDTH]),
	 	.chnl_rx_data_valid_1(chnl_rx_data_valid[1]),
	 	.chnl_rx_data_ren_1(chnl_rx_data_ren[1]),

	 	//channel 2 - msg channel
	 	.chnl_rx_clk_2(chnl_rx_clk[2]),
	 	.chnl_rx_2(chnl_rx[2]),
	 	.chnl_rx_ack_2(chnl_rx_ack[2]),
	 	.chnl_rx_last_2(chnl_rx_last[2]),
	 	.chnl_rx_len_2(chnl_rx_len[32*2 +: 32]),
	 	.chnl_rx_off_2(chnl_rx_off[31*2 +: 31]),
	 	.chnl_rx_data_2(chnl_rx_data[C_PCI_DATA_WIDTH*2 +: C_PCI_DATA_WIDTH]),
	 	.chnl_rx_data_valid_2(chnl_rx_data_valid[2]),
	 	.chnl_rx_data_ren_2(chnl_rx_data_ren[2]),

	 	.chnl_tx_clk_2(chnl_tx_clk[2]),
	 	.chnl_tx_2(chnl_tx[2]),
	 	.chnl_tx_ack_2(chnl_tx_ack[2]),
	 	.chnl_tx_last_2(chnl_tx_last[2]),
	 	.chnl_tx_len_2(chnl_tx_len[32*2 +: 32]),
	 	.chnl_tx_off_2(chnl_tx_off[31*2 +: 31]),
	 	.chnl_tx_data_2(chnl_tx_data[C_PCI_DATA_WIDTH*2 +: C_PCI_DATA_WIDTH]),
	 	.chnl_tx_data_valid_2(chnl_tx_data_valid[2]),
	 	.chnl_tx_data_ren_2(chnl_tx_data_ren[2]),

	 	//channel 3 - metadata channel
	 	.chnl_rx_clk_3(chnl_rx_clk[3]),
	 	.chnl_rx_3(chnl_rx[3]),
	 	.chnl_rx_ack_3(chnl_rx_ack[3]),
	 	.chnl_rx_last_3(chnl_rx_last[3]),
	 	.chnl_rx_len_3(chnl_rx_len[32*3 +: 32]),
	 	.chnl_rx_off_3(chnl_rx_off[31*3 +: 31]),
	 	.chnl_rx_data_3(chnl_rx_data[C_PCI_DATA_WIDTH*3 +: C_PCI_DATA_WIDTH]),
	 	.chnl_rx_data_valid_3(chnl_rx_data_valid[3]),
	 	.chnl_rx_data_ren_3(chnl_rx_data_ren[3])
	);
endmodule
// Local Variables:
// verilog-library-directories:("." "../../../engine/" "ultrascale/rx/" "ultrascale/tx/" "classic/rx/" "classic/tx/" "../../../riffa/" "../..")
// End:
