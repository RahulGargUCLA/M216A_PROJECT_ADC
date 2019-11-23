#!/usr/bin/csh

irun  ../RTL/NLC_wrapper.v \
      ../RTL/NLC_opt.v \
      ../RTL/NLC_testbench_stud.v \
      ../RTL/fp_to_smc_float.v  \
      ../RTL/smc_float_adder.v  \
      ../RTL/smc_float_multiplier.v  \
      ../RTL/smc_float_to_fp.v \
      ../RTL/SynLib.v \
      -top NLC_6th_order_16ch_testbench \
      -access +rwc \
      -gui \
      -timescale 1ns/1ns \
      -l NLC_rtl_pipe_tb.log & 
   
