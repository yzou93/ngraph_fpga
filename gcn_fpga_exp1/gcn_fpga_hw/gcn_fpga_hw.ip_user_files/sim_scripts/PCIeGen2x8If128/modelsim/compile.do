vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm

vlog -work xil_defaultlib -64 -incr -sv \
"/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pipe_clock.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pipe_eq.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pipe_drp.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pipe_rate.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pipe_reset.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pipe_sync.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_gtp_pipe_rate.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_gtp_pipe_drp.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_gtp_pipe_reset.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pipe_user.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pipe_wrapper.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_qpll_drp.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_qpll_reset.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_qpll_wrapper.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_rxeq_scan.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pcie_top.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_core_top.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_axi_basic_rx_null_gen.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_axi_basic_rx_pipeline.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_axi_basic_rx.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_axi_basic_top.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_axi_basic_tx_pipeline.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_axi_basic_tx_thrtl_ctl.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_axi_basic_tx.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pcie_7x.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pcie_bram_7x.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pcie_bram_top_7x.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pcie_brams_7x.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pcie_pipe_lane.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pcie_pipe_misc.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pcie_pipe_pipeline.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_gt_top.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_gt_common.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_gtp_cpllpd_ovrd.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_gtx_cpllpd_ovrd.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_gt_rx_valid_filter_7x.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_gt_wrapper.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/source/PCIeGen2x8If128_pcie2_top.v" \
"../../../../gcn_fpga_hw.srcs/PCIeGen2x8If128/ip/PCIeGen2x8If128/sim/PCIeGen2x8If128.v" \

vlog -work xil_defaultlib "glbl.v"

