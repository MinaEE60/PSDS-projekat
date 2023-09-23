#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/es/xilinx/Vitis/2020.2/bin:/es/xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/es/xilinx/Vivado/2020.2/bin
else
  PATH=/es/xilinx/Vitis/2020.2/bin:/es/xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/es/xilinx/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/student/Desktop/PSDS_FINALNA/IP_mina_opacic/IP_mina_opacic.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log MLP_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source MLP_wrapper.tcl
