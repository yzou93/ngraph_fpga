onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+src_stream -L xil_defaultlib -L xpm -L fifo_generator_v13_1_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.src_stream xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {src_stream.udo}

run -all

endsim

quit -force
