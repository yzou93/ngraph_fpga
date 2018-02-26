onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib src_stream_opt

do {wave.do}

view wave
view structure
view signals

do {src_stream.udo}

run -all

quit -force
