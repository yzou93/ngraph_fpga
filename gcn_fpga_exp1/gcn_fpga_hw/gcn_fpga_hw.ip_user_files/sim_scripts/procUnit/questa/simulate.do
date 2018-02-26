onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib procUnit_opt

do {wave.do}

view wave
view structure
view signals

do {procUnit.udo}

run -all

quit -force
