onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dst_stream_opt

do {wave.do}

view wave
view structure
view signals

do {dst_stream.udo}

run -all

quit -force
