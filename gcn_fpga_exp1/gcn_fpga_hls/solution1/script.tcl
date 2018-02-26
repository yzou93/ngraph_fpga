############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gcn_fpga_hls
set_top top
add_files gcn_fpga_hls/src/mat_mult.cpp
add_files gcn_fpga_hls/src/top.cpp
add_files -tb gcn_fpga_hls/src/top_tb.cpp
open_solution "solution1"
set_part {xc7k325tffg900-2} -tool vivado
create_clock -period 250MHz -name default
config_rtl -encoding onehot -reset control -reset_async -reset_level high
source "./gcn_fpga_hls/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
