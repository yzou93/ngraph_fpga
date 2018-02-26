# ----------------------------------------------------------------------
# Copyright (c) 2016, The Regents of the University of California All
# rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
#
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#
#     * Redistributions in binary form must reproduce the above
#       copyright notice, this list of conditions and the following
#       disclaimer in the documentation and/or other materials provided
#       with the distribution.
#
#     * Neither the name of The Regents of the University of California
#       nor the names of its contributors may be used to endorse or
#       promote products derived from this software without specific
#       prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL REGENTS OF THE
# UNIVERSITY OF CALIFORNIA BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
# OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
# TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
# USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
# DAMAGE.
# ----------------------------------------------------------------------
#----------------------------------------------------------------------------
# Filename:            KC705_Top.xdc
# Version:             1.00.a
# Verilog Standard:    Verilog-2001
# Description:         Xilinx Design Constraints for the KC705 (REVC) board.
# These constrain the PCIE_REFCLK, its DSBUF, LED Pins, and PCIE_RESET_N pin
#
# Author:              Dustin Richmond (@darichmond)
#-----------------------------------------------------------------------------#
#
###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################

###############################################################################
# User Physical Constraints
###############################################################################


###############################################################################
# Timing Constraints
###############################################################################


create_clock -period 10.000 -name pcie_refclk [get_pins refclk_ibuf/O]

###############################################################################
# Pinout and Related I/O Constraints
###############################################################################

#
# SYS reset (input) signal.  The sys_reset_n signal should be
# obtained from the PCI Express interface if possible.  For
# slot based form factors, a system reset signal is usually
# present on the connector.  For cable based form factors, a
# system reset signal may not be available.  In this case, the
# system reset signal must be generated locally by some form of
# supervisory circuit.  You may change the IOSTANDARD and LOC
# to suit your requirements and VCCO voltage banking rules.
# Some 7 series devices do not have 3.3 V I/Os available.
# Therefore the appropriate level shift is required to operate
# with these devices that contain only 1.8 V banks.
#

set_property IOSTANDARD LVCMOS25 [get_ports PCIE_RESET_N]
set_property PULLUP true [get_ports PCIE_RESET_N]
set_property PACKAGE_PIN G25 [get_ports PCIE_RESET_N]

set_property IOSTANDARD LVCMOS15 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {LED[3]}]

set_property PACKAGE_PIN AB8 [get_ports {LED[0]}]
set_property PACKAGE_PIN AA8 [get_ports {LED[1]}]
set_property PACKAGE_PIN AC9 [get_ports {LED[2]}]
set_property PACKAGE_PIN AB9 [get_ports {LED[3]}]

set_false_path -to [get_ports -filter NAME=~LED*]


###############################################################################
# Physical Constraints
###############################################################################
#
# SYS clock 100 MHz (input) signal. The sys_clk_p and sys_clk_n
# signals are the PCI Express reference clock. Virtex-7 GT
# Transceiver architecture requires the use of a dedicated clock
# resources (FPGA input pins) associated with each GT Transceiver.
# To use these pins an IBUFDS primitive (refclk_ibuf) is
# instantiated in user's design.
# Please refer to the Virtex-7 GT Transceiver User Guide
# (UG) for guidelines regarding clock resource selection.
#

set_property LOC IBUFDS_GTE2_X0Y1 [get_cells refclk_ibuf]

set_false_path -from [get_ports PCIE_RESET_N]


###############################################################################
# End
###############################################################################

connect_debug_port u_ila_0/probe2 [get_nets [list {chnl_user_app/perf_measure/msg_mon/monitor_counter[0]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[1]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[2]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[3]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[4]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[5]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[6]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[7]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[8]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[9]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[10]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[11]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[12]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[13]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[14]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[15]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[16]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[17]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[18]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[19]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[20]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[21]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[22]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[23]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[24]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[25]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[26]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[27]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[28]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[29]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[30]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[31]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[32]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[33]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[34]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[35]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[36]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[37]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[38]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[39]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[40]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[41]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[42]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[43]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[44]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[45]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[46]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[47]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[48]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[49]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[50]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[51]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[52]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[53]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[54]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[55]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[56]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[57]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[58]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[59]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[60]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[61]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[62]} {chnl_user_app/perf_measure/msg_mon/monitor_counter[63]}]]
connect_debug_port u_ila_0/probe3 [get_nets [list {chnl_user_app/perf_measure/msg_mon/clk_counter[0]} {chnl_user_app/perf_measure/msg_mon/clk_counter[1]} {chnl_user_app/perf_measure/msg_mon/clk_counter[2]} {chnl_user_app/perf_measure/msg_mon/clk_counter[3]} {chnl_user_app/perf_measure/msg_mon/clk_counter[4]} {chnl_user_app/perf_measure/msg_mon/clk_counter[5]} {chnl_user_app/perf_measure/msg_mon/clk_counter[6]} {chnl_user_app/perf_measure/msg_mon/clk_counter[7]} {chnl_user_app/perf_measure/msg_mon/clk_counter[8]} {chnl_user_app/perf_measure/msg_mon/clk_counter[9]} {chnl_user_app/perf_measure/msg_mon/clk_counter[10]} {chnl_user_app/perf_measure/msg_mon/clk_counter[11]} {chnl_user_app/perf_measure/msg_mon/clk_counter[12]} {chnl_user_app/perf_measure/msg_mon/clk_counter[13]} {chnl_user_app/perf_measure/msg_mon/clk_counter[14]} {chnl_user_app/perf_measure/msg_mon/clk_counter[15]} {chnl_user_app/perf_measure/msg_mon/clk_counter[16]} {chnl_user_app/perf_measure/msg_mon/clk_counter[17]} {chnl_user_app/perf_measure/msg_mon/clk_counter[18]} {chnl_user_app/perf_measure/msg_mon/clk_counter[19]} {chnl_user_app/perf_measure/msg_mon/clk_counter[20]} {chnl_user_app/perf_measure/msg_mon/clk_counter[21]} {chnl_user_app/perf_measure/msg_mon/clk_counter[22]} {chnl_user_app/perf_measure/msg_mon/clk_counter[23]} {chnl_user_app/perf_measure/msg_mon/clk_counter[24]} {chnl_user_app/perf_measure/msg_mon/clk_counter[25]} {chnl_user_app/perf_measure/msg_mon/clk_counter[26]} {chnl_user_app/perf_measure/msg_mon/clk_counter[27]} {chnl_user_app/perf_measure/msg_mon/clk_counter[28]} {chnl_user_app/perf_measure/msg_mon/clk_counter[29]} {chnl_user_app/perf_measure/msg_mon/clk_counter[30]} {chnl_user_app/perf_measure/msg_mon/clk_counter[31]} {chnl_user_app/perf_measure/msg_mon/clk_counter[32]} {chnl_user_app/perf_measure/msg_mon/clk_counter[33]} {chnl_user_app/perf_measure/msg_mon/clk_counter[34]} {chnl_user_app/perf_measure/msg_mon/clk_counter[35]} {chnl_user_app/perf_measure/msg_mon/clk_counter[36]} {chnl_user_app/perf_measure/msg_mon/clk_counter[37]} {chnl_user_app/perf_measure/msg_mon/clk_counter[38]} {chnl_user_app/perf_measure/msg_mon/clk_counter[39]} {chnl_user_app/perf_measure/msg_mon/clk_counter[40]} {chnl_user_app/perf_measure/msg_mon/clk_counter[41]} {chnl_user_app/perf_measure/msg_mon/clk_counter[42]} {chnl_user_app/perf_measure/msg_mon/clk_counter[43]} {chnl_user_app/perf_measure/msg_mon/clk_counter[44]} {chnl_user_app/perf_measure/msg_mon/clk_counter[45]} {chnl_user_app/perf_measure/msg_mon/clk_counter[46]} {chnl_user_app/perf_measure/msg_mon/clk_counter[47]} {chnl_user_app/perf_measure/msg_mon/clk_counter[48]} {chnl_user_app/perf_measure/msg_mon/clk_counter[49]} {chnl_user_app/perf_measure/msg_mon/clk_counter[50]} {chnl_user_app/perf_measure/msg_mon/clk_counter[51]} {chnl_user_app/perf_measure/msg_mon/clk_counter[52]} {chnl_user_app/perf_measure/msg_mon/clk_counter[53]} {chnl_user_app/perf_measure/msg_mon/clk_counter[54]} {chnl_user_app/perf_measure/msg_mon/clk_counter[55]} {chnl_user_app/perf_measure/msg_mon/clk_counter[56]} {chnl_user_app/perf_measure/msg_mon/clk_counter[57]} {chnl_user_app/perf_measure/msg_mon/clk_counter[58]} {chnl_user_app/perf_measure/msg_mon/clk_counter[59]} {chnl_user_app/perf_measure/msg_mon/clk_counter[60]} {chnl_user_app/perf_measure/msg_mon/clk_counter[61]} {chnl_user_app/perf_measure/msg_mon/clk_counter[62]} {chnl_user_app/perf_measure/msg_mon/clk_counter[63]}]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list PCIeGen2x8If128_i/inst/inst/gt_top_i/pipe_wrapper_i/pipe_clock_int.pipe_clock_i/CLK_USERCLK2]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 64 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {chnl_user_app/perf_measure/edge_mon/monitor_counter[0]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[1]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[2]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[3]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[4]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[5]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[6]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[7]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[8]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[9]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[10]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[11]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[12]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[13]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[14]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[15]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[16]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[17]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[18]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[19]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[20]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[21]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[22]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[23]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[24]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[25]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[26]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[27]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[28]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[29]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[30]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[31]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[32]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[33]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[34]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[35]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[36]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[37]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[38]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[39]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[40]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[41]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[42]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[43]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[44]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[45]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[46]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[47]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[48]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[49]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[50]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[51]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[52]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[53]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[54]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[55]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[56]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[57]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[58]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[59]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[60]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[61]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[62]} {chnl_user_app/perf_measure/edge_mon/monitor_counter[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 64 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {chnl_user_app/perf_measure/edge_mon/clk_counter[0]} {chnl_user_app/perf_measure/edge_mon/clk_counter[1]} {chnl_user_app/perf_measure/edge_mon/clk_counter[2]} {chnl_user_app/perf_measure/edge_mon/clk_counter[3]} {chnl_user_app/perf_measure/edge_mon/clk_counter[4]} {chnl_user_app/perf_measure/edge_mon/clk_counter[5]} {chnl_user_app/perf_measure/edge_mon/clk_counter[6]} {chnl_user_app/perf_measure/edge_mon/clk_counter[7]} {chnl_user_app/perf_measure/edge_mon/clk_counter[8]} {chnl_user_app/perf_measure/edge_mon/clk_counter[9]} {chnl_user_app/perf_measure/edge_mon/clk_counter[10]} {chnl_user_app/perf_measure/edge_mon/clk_counter[11]} {chnl_user_app/perf_measure/edge_mon/clk_counter[12]} {chnl_user_app/perf_measure/edge_mon/clk_counter[13]} {chnl_user_app/perf_measure/edge_mon/clk_counter[14]} {chnl_user_app/perf_measure/edge_mon/clk_counter[15]} {chnl_user_app/perf_measure/edge_mon/clk_counter[16]} {chnl_user_app/perf_measure/edge_mon/clk_counter[17]} {chnl_user_app/perf_measure/edge_mon/clk_counter[18]} {chnl_user_app/perf_measure/edge_mon/clk_counter[19]} {chnl_user_app/perf_measure/edge_mon/clk_counter[20]} {chnl_user_app/perf_measure/edge_mon/clk_counter[21]} {chnl_user_app/perf_measure/edge_mon/clk_counter[22]} {chnl_user_app/perf_measure/edge_mon/clk_counter[23]} {chnl_user_app/perf_measure/edge_mon/clk_counter[24]} {chnl_user_app/perf_measure/edge_mon/clk_counter[25]} {chnl_user_app/perf_measure/edge_mon/clk_counter[26]} {chnl_user_app/perf_measure/edge_mon/clk_counter[27]} {chnl_user_app/perf_measure/edge_mon/clk_counter[28]} {chnl_user_app/perf_measure/edge_mon/clk_counter[29]} {chnl_user_app/perf_measure/edge_mon/clk_counter[30]} {chnl_user_app/perf_measure/edge_mon/clk_counter[31]} {chnl_user_app/perf_measure/edge_mon/clk_counter[32]} {chnl_user_app/perf_measure/edge_mon/clk_counter[33]} {chnl_user_app/perf_measure/edge_mon/clk_counter[34]} {chnl_user_app/perf_measure/edge_mon/clk_counter[35]} {chnl_user_app/perf_measure/edge_mon/clk_counter[36]} {chnl_user_app/perf_measure/edge_mon/clk_counter[37]} {chnl_user_app/perf_measure/edge_mon/clk_counter[38]} {chnl_user_app/perf_measure/edge_mon/clk_counter[39]} {chnl_user_app/perf_measure/edge_mon/clk_counter[40]} {chnl_user_app/perf_measure/edge_mon/clk_counter[41]} {chnl_user_app/perf_measure/edge_mon/clk_counter[42]} {chnl_user_app/perf_measure/edge_mon/clk_counter[43]} {chnl_user_app/perf_measure/edge_mon/clk_counter[44]} {chnl_user_app/perf_measure/edge_mon/clk_counter[45]} {chnl_user_app/perf_measure/edge_mon/clk_counter[46]} {chnl_user_app/perf_measure/edge_mon/clk_counter[47]} {chnl_user_app/perf_measure/edge_mon/clk_counter[48]} {chnl_user_app/perf_measure/edge_mon/clk_counter[49]} {chnl_user_app/perf_measure/edge_mon/clk_counter[50]} {chnl_user_app/perf_measure/edge_mon/clk_counter[51]} {chnl_user_app/perf_measure/edge_mon/clk_counter[52]} {chnl_user_app/perf_measure/edge_mon/clk_counter[53]} {chnl_user_app/perf_measure/edge_mon/clk_counter[54]} {chnl_user_app/perf_measure/edge_mon/clk_counter[55]} {chnl_user_app/perf_measure/edge_mon/clk_counter[56]} {chnl_user_app/perf_measure/edge_mon/clk_counter[57]} {chnl_user_app/perf_measure/edge_mon/clk_counter[58]} {chnl_user_app/perf_measure/edge_mon/clk_counter[59]} {chnl_user_app/perf_measure/edge_mon/clk_counter[60]} {chnl_user_app/perf_measure/edge_mon/clk_counter[61]} {chnl_user_app/perf_measure/edge_mon/clk_counter[62]} {chnl_user_app/perf_measure/edge_mon/clk_counter[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 64 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {chnl_user_app/perf_measure/node_mon/monitor_counter[0]} {chnl_user_app/perf_measure/node_mon/monitor_counter[1]} {chnl_user_app/perf_measure/node_mon/monitor_counter[2]} {chnl_user_app/perf_measure/node_mon/monitor_counter[3]} {chnl_user_app/perf_measure/node_mon/monitor_counter[4]} {chnl_user_app/perf_measure/node_mon/monitor_counter[5]} {chnl_user_app/perf_measure/node_mon/monitor_counter[6]} {chnl_user_app/perf_measure/node_mon/monitor_counter[7]} {chnl_user_app/perf_measure/node_mon/monitor_counter[8]} {chnl_user_app/perf_measure/node_mon/monitor_counter[9]} {chnl_user_app/perf_measure/node_mon/monitor_counter[10]} {chnl_user_app/perf_measure/node_mon/monitor_counter[11]} {chnl_user_app/perf_measure/node_mon/monitor_counter[12]} {chnl_user_app/perf_measure/node_mon/monitor_counter[13]} {chnl_user_app/perf_measure/node_mon/monitor_counter[14]} {chnl_user_app/perf_measure/node_mon/monitor_counter[15]} {chnl_user_app/perf_measure/node_mon/monitor_counter[16]} {chnl_user_app/perf_measure/node_mon/monitor_counter[17]} {chnl_user_app/perf_measure/node_mon/monitor_counter[18]} {chnl_user_app/perf_measure/node_mon/monitor_counter[19]} {chnl_user_app/perf_measure/node_mon/monitor_counter[20]} {chnl_user_app/perf_measure/node_mon/monitor_counter[21]} {chnl_user_app/perf_measure/node_mon/monitor_counter[22]} {chnl_user_app/perf_measure/node_mon/monitor_counter[23]} {chnl_user_app/perf_measure/node_mon/monitor_counter[24]} {chnl_user_app/perf_measure/node_mon/monitor_counter[25]} {chnl_user_app/perf_measure/node_mon/monitor_counter[26]} {chnl_user_app/perf_measure/node_mon/monitor_counter[27]} {chnl_user_app/perf_measure/node_mon/monitor_counter[28]} {chnl_user_app/perf_measure/node_mon/monitor_counter[29]} {chnl_user_app/perf_measure/node_mon/monitor_counter[30]} {chnl_user_app/perf_measure/node_mon/monitor_counter[31]} {chnl_user_app/perf_measure/node_mon/monitor_counter[32]} {chnl_user_app/perf_measure/node_mon/monitor_counter[33]} {chnl_user_app/perf_measure/node_mon/monitor_counter[34]} {chnl_user_app/perf_measure/node_mon/monitor_counter[35]} {chnl_user_app/perf_measure/node_mon/monitor_counter[36]} {chnl_user_app/perf_measure/node_mon/monitor_counter[37]} {chnl_user_app/perf_measure/node_mon/monitor_counter[38]} {chnl_user_app/perf_measure/node_mon/monitor_counter[39]} {chnl_user_app/perf_measure/node_mon/monitor_counter[40]} {chnl_user_app/perf_measure/node_mon/monitor_counter[41]} {chnl_user_app/perf_measure/node_mon/monitor_counter[42]} {chnl_user_app/perf_measure/node_mon/monitor_counter[43]} {chnl_user_app/perf_measure/node_mon/monitor_counter[44]} {chnl_user_app/perf_measure/node_mon/monitor_counter[45]} {chnl_user_app/perf_measure/node_mon/monitor_counter[46]} {chnl_user_app/perf_measure/node_mon/monitor_counter[47]} {chnl_user_app/perf_measure/node_mon/monitor_counter[48]} {chnl_user_app/perf_measure/node_mon/monitor_counter[49]} {chnl_user_app/perf_measure/node_mon/monitor_counter[50]} {chnl_user_app/perf_measure/node_mon/monitor_counter[51]} {chnl_user_app/perf_measure/node_mon/monitor_counter[52]} {chnl_user_app/perf_measure/node_mon/monitor_counter[53]} {chnl_user_app/perf_measure/node_mon/monitor_counter[54]} {chnl_user_app/perf_measure/node_mon/monitor_counter[55]} {chnl_user_app/perf_measure/node_mon/monitor_counter[56]} {chnl_user_app/perf_measure/node_mon/monitor_counter[57]} {chnl_user_app/perf_measure/node_mon/monitor_counter[58]} {chnl_user_app/perf_measure/node_mon/monitor_counter[59]} {chnl_user_app/perf_measure/node_mon/monitor_counter[60]} {chnl_user_app/perf_measure/node_mon/monitor_counter[61]} {chnl_user_app/perf_measure/node_mon/monitor_counter[62]} {chnl_user_app/perf_measure/node_mon/monitor_counter[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 64 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {chnl_user_app/perf_measure/node_mon/clk_counter[0]} {chnl_user_app/perf_measure/node_mon/clk_counter[1]} {chnl_user_app/perf_measure/node_mon/clk_counter[2]} {chnl_user_app/perf_measure/node_mon/clk_counter[3]} {chnl_user_app/perf_measure/node_mon/clk_counter[4]} {chnl_user_app/perf_measure/node_mon/clk_counter[5]} {chnl_user_app/perf_measure/node_mon/clk_counter[6]} {chnl_user_app/perf_measure/node_mon/clk_counter[7]} {chnl_user_app/perf_measure/node_mon/clk_counter[8]} {chnl_user_app/perf_measure/node_mon/clk_counter[9]} {chnl_user_app/perf_measure/node_mon/clk_counter[10]} {chnl_user_app/perf_measure/node_mon/clk_counter[11]} {chnl_user_app/perf_measure/node_mon/clk_counter[12]} {chnl_user_app/perf_measure/node_mon/clk_counter[13]} {chnl_user_app/perf_measure/node_mon/clk_counter[14]} {chnl_user_app/perf_measure/node_mon/clk_counter[15]} {chnl_user_app/perf_measure/node_mon/clk_counter[16]} {chnl_user_app/perf_measure/node_mon/clk_counter[17]} {chnl_user_app/perf_measure/node_mon/clk_counter[18]} {chnl_user_app/perf_measure/node_mon/clk_counter[19]} {chnl_user_app/perf_measure/node_mon/clk_counter[20]} {chnl_user_app/perf_measure/node_mon/clk_counter[21]} {chnl_user_app/perf_measure/node_mon/clk_counter[22]} {chnl_user_app/perf_measure/node_mon/clk_counter[23]} {chnl_user_app/perf_measure/node_mon/clk_counter[24]} {chnl_user_app/perf_measure/node_mon/clk_counter[25]} {chnl_user_app/perf_measure/node_mon/clk_counter[26]} {chnl_user_app/perf_measure/node_mon/clk_counter[27]} {chnl_user_app/perf_measure/node_mon/clk_counter[28]} {chnl_user_app/perf_measure/node_mon/clk_counter[29]} {chnl_user_app/perf_measure/node_mon/clk_counter[30]} {chnl_user_app/perf_measure/node_mon/clk_counter[31]} {chnl_user_app/perf_measure/node_mon/clk_counter[32]} {chnl_user_app/perf_measure/node_mon/clk_counter[33]} {chnl_user_app/perf_measure/node_mon/clk_counter[34]} {chnl_user_app/perf_measure/node_mon/clk_counter[35]} {chnl_user_app/perf_measure/node_mon/clk_counter[36]} {chnl_user_app/perf_measure/node_mon/clk_counter[37]} {chnl_user_app/perf_measure/node_mon/clk_counter[38]} {chnl_user_app/perf_measure/node_mon/clk_counter[39]} {chnl_user_app/perf_measure/node_mon/clk_counter[40]} {chnl_user_app/perf_measure/node_mon/clk_counter[41]} {chnl_user_app/perf_measure/node_mon/clk_counter[42]} {chnl_user_app/perf_measure/node_mon/clk_counter[43]} {chnl_user_app/perf_measure/node_mon/clk_counter[44]} {chnl_user_app/perf_measure/node_mon/clk_counter[45]} {chnl_user_app/perf_measure/node_mon/clk_counter[46]} {chnl_user_app/perf_measure/node_mon/clk_counter[47]} {chnl_user_app/perf_measure/node_mon/clk_counter[48]} {chnl_user_app/perf_measure/node_mon/clk_counter[49]} {chnl_user_app/perf_measure/node_mon/clk_counter[50]} {chnl_user_app/perf_measure/node_mon/clk_counter[51]} {chnl_user_app/perf_measure/node_mon/clk_counter[52]} {chnl_user_app/perf_measure/node_mon/clk_counter[53]} {chnl_user_app/perf_measure/node_mon/clk_counter[54]} {chnl_user_app/perf_measure/node_mon/clk_counter[55]} {chnl_user_app/perf_measure/node_mon/clk_counter[56]} {chnl_user_app/perf_measure/node_mon/clk_counter[57]} {chnl_user_app/perf_measure/node_mon/clk_counter[58]} {chnl_user_app/perf_measure/node_mon/clk_counter[59]} {chnl_user_app/perf_measure/node_mon/clk_counter[60]} {chnl_user_app/perf_measure/node_mon/clk_counter[61]} {chnl_user_app/perf_measure/node_mon/clk_counter[62]} {chnl_user_app/perf_measure/node_mon/clk_counter[63]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets user_clk]
