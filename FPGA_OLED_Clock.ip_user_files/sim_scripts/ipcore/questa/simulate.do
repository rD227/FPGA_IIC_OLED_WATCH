onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ipcore_opt

do {wave.do}

view wave
view structure
view signals

do {ipcore.udo}

run -all

quit -force
