onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib msg_in_strm_opt

do {wave.do}

view wave
view structure
view signals

do {msg_in_strm.udo}

run -all

quit -force
