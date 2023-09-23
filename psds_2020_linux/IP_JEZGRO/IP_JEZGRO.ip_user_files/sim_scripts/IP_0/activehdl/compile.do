vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../../IP_JEZGRO.gen/sources_1/ip/IP_0/hdl/IP_v1_0_S00_AXI.vhd" \
"../../../../IP_JEZGRO.gen/sources_1/ip/IP_0/hdl/IP_v1_0.vhd" \
"../../../../IP_JEZGRO.gen/sources_1/ip/IP_0/sim/IP_0.vhd" \


