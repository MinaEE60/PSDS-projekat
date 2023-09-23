onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+IP_0  -L xil_defaultlib -L secureip -O5 xil_defaultlib.IP_0

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {IP_0.udo}

run 1000ns

endsim

quit -force
