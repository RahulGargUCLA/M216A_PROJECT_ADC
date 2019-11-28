################################################################################
# DESIGN COMPILER:  Logic Synthesis Tool                                       #
################################################################################
remove_design -all

# Add search paths for our technology libs.
# Please use the default voltage for all the synthesis
set hdlin_vrlg_std "2001"
set search_path "$search_path . ./verilog /w/apps2/public.2/tech/synopsys/32-28nm/SAED32_EDK/lib/stdcell_rvt/db_nldm" 
set target_library "saed32rvt_ff1p16vn40c.db saed32rvt_ss0p95v125c.db"
set link_library "* saed32rvt_ff1p16vn40c.db saed32rvt_ss0p95v125c.db dw_foundation.sldb"
set synthetic_library "dw_foundation.sldb"




# Define work path (note: The work path must exist, so you need to create a folder WORK first)
define_design_lib WORK -path ./work
set alib_library_analysis_path ?/alib-52/?

# Read the gate-level verilog files 
#Add all your files that compose your project here
#analyze -format verilog {define.h }


analyze -format verilog {SynLib.v}
analyze -format verilog {smc_float_adder.v}
analyze -format verilog {smc_float_to_fp.v}
analyze -format verilog {smc_float_multiplier.v}
analyze -format verilog {fp_to_smc_float.v}
analyze -format verilog {NLC_opt.v}

set DESIGN_NAME NLC_opt

elaborate $DESIGN_NAME
current_design $DESIGN_NAME
link


set_operating_conditions -min ff1p16vn40c -max ss0p95v125c


# Describe the clock waveform & setup operating conditions
# Tclk as frequency of 6.144MHz and put all other parameters #relative to it
# Please do not change any of the number below. These numbers are given as part of the spec
set Tclk 162.7
set TCU  0.1
set IN_DEL 0.6
set IN_DEL_MIN 0.3
set OUT_DEL 0.6
set OUT_DEL_MIN 0.3
set ALL_IN_BUT_CLK [remove_from_collection [all_inputs] "clk"]
set_load 1 [all_outputs]

create_clock -name "clk" -period $Tclk [get_ports "clk"]
set_fix_hold clk
set_dont_touch_network [get_clocks "clk"]
set_clock_uncertainty $TCU [get_clocks "clk"]

set_input_delay $IN_DEL -clock "clk" $ALL_IN_BUT_CLK
set_input_delay -min $IN_DEL_MIN -clock "clk" $ALL_IN_BUT_CLK
set_output_delay $OUT_DEL -clock "clk" [all_outputs]
set_output_delay -min $OUT_DEL_MIN -clock "clk" [all_outputs]
# Please do not change any of the number above. These numbers are given as part of the spec


# Synthesis constraint 
set_max_total_power 0.0


set_leakage_optimization true
#set_cost_priority -delay

ungroup -flatten -all
uniquify

compile -map_effort low

#compile_ultra -incremental -retime 
#compile_ultra -only_design_rule -incremental 


#Export the report
report_timing -path full -delay min -max_paths 10 -nworst 2 > holdtiming.report
report_timing -path full -delay max -max_paths 10 -nworst 2 > setuptiming.report
report_area -hierarchy > area.report
report_power -hier -hier_level 2 > power.report
report_resources > resources.report
report_constraint -verbose > constraint.report
check_design > check-design.report
check_timing > timing.report

#Export the sdf and gate level synthesis file
write -hierarchy -format verilog -output $DESIGN_NAME.vg
write_sdf -version 1.0 -context verilog $DESIGN_NAME.sdf
set_propagated_clock [all_clocks]
write_sdc $DESIGN_NAME.sdc
