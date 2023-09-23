onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc "  -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.IP_0

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {IP_0.udo}

run 1000ns

quit -force
