onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib wt_rom_opt

do {wave.do}

view wave
view structure
view signals

do {wt_rom.udo}

run -all

quit -force
