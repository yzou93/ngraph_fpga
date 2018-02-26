onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L fifo_generator_v13_1_3 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.msg_out_strm xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {msg_out_strm.udo}

run -all

quit -force
