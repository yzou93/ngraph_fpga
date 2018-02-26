onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib node_out_strm_opt

do {wave.do}

view wave
view structure
view signals

do {node_out_strm.udo}

run -all

quit -force
