
module NLC_4sec_8th_order_16ch_v0 (
  input clk,
  input GlobalReset,

  output srdyo, // ufix1
  input srdyi, // ufix1

  //NLC ports for channel 15
  output [20:0] ch15_x_lin, // sfix21
  input  [20:0] ch15_x_adc, // sfix21
  input  [19:0] ch15_section_limit, // ufix20
  input  [31:0] ch15_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch15_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 14
  output [20:0] ch14_x_lin, // sfix21
  input  [20:0] ch14_x_adc, // sfix21
  input  [19:0] ch14_section_limit, // ufix20
  input  [31:0] ch14_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch14_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 13
  output [20:0] ch13_x_lin, // sfix21
  input  [20:0] ch13_x_adc, // sfix21
  input  [19:0] ch13_section_limit, // ufix20
  input  [31:0] ch13_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch13_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 12
  output [20:0] ch12_x_lin, // sfix21
  input  [20:0] ch12_x_adc, // sfix21
  input  [19:0] ch12_section_limit, // ufix20
  input  [31:0] ch12_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch12_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 11
  output [20:0] ch11_x_lin, // sfix21
  input  [20:0] ch11_x_adc, // sfix21
  input  [19:0] ch11_section_limit, // ufix20
  input  [31:0] ch11_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch11_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 10
  output [20:0] ch10_x_lin, // sfix21
  input  [20:0] ch10_x_adc, // sfix21
  input  [19:0] ch10_section_limit, // ufix20
  input  [31:0] ch10_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch10_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 9
  output [20:0] ch9_x_lin, // sfix21
  input  [20:0] ch9_x_adc, // sfix21
  input  [19:0] ch9_section_limit, // ufix20
  input  [31:0] ch9_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch9_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 8
  output [20:0] ch8_x_lin, // sfix21
  input  [20:0] ch8_x_adc, // sfix21
  input  [19:0] ch8_section_limit, // ufix20
  input  [31:0] ch8_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch8_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 7
  output [20:0] ch7_x_lin, // sfix21
  input  [20:0] ch7_x_adc, // sfix21
  input  [19:0] ch7_section_limit, // ufix20
  input  [31:0] ch7_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch7_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 6
  output [20:0] ch6_x_lin, // sfix21
  input  [20:0] ch6_x_adc, // sfix21
  input  [19:0] ch6_section_limit, // ufix20
  input  [31:0] ch6_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch6_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 5
  output [20:0] ch5_x_lin, // sfix21
  input  [20:0] ch5_x_adc, // sfix21
  input  [19:0] ch5_section_limit, // ufix20
  input  [31:0] ch5_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch5_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 4
  output [20:0] ch4_x_lin, // sfix21
  input  [20:0] ch4_x_adc, // sfix21
  input  [19:0] ch4_section_limit, // ufix20
  input  [31:0] ch4_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch4_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 3
  output [20:0] ch3_x_lin, // sfix21
  input  [20:0] ch3_x_adc, // sfix21
  input  [19:0] ch3_section_limit, // ufix20
  input  [31:0] ch3_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch3_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 2
  output [20:0] ch2_x_lin, // sfix21
  input  [20:0] ch2_x_adc, // sfix21
  input  [19:0] ch2_section_limit, // ufix20
  input  [31:0] ch2_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch2_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 1
  output [20:0] ch1_x_lin, // sfix21
  input  [20:0] ch1_x_adc, // sfix21
  input  [19:0] ch1_section_limit, // ufix20
  input  [31:0] ch1_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch1_select_section_coefficients_coeff_1_0_porty, // ufix32

  //NLC ports for channel 0
  output [20:0] ch0_x_lin, // sfix21
  input  [20:0] ch0_x_adc, // sfix21
  input  [19:0] ch0_section_limit, // ufix20
  input  [31:0] ch0_select_section_coefficients_stdev_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_stdev_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_mean_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_4_0_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_3_0_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_2_0_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_8_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_7_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_6_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_5_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_4_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_3_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_2_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_1_porty, // ufix32
  input  [31:0] ch0_select_section_coefficients_coeff_1_0_porty // ufix32

);

NLC_1ch UUT(
  //System clock and reset
  .clk(clk),
  .reset(GlobalReset),

  //Input valid and output ready signals (one for all 32ch)  
  .srdyi(srdyi), 
  .srdyo(srdyo), 

  .ch15_x_adc(ch15_x_adc),//NLC output 
  .ch15_x_lin(ch15_x_lin),//ADC output 
  .ch15_section_limit(ch15_section_limit),//X-value that separates the sections 
  .ch15_recip_stdev_4(ch15_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch15_recip_stdev_3(ch15_select_section_coefficients_stdev_3_porty), 
  .ch15_recip_stdev_2(ch15_select_section_coefficients_stdev_2_porty), 
  .ch15_recip_stdev_1(ch15_select_section_coefficients_stdev_1_porty), 
  .ch15_neg_mean_4(ch15_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch15_neg_mean_3(ch15_select_section_coefficients_mean_3_porty), 
  .ch15_neg_mean_2(ch15_select_section_coefficients_mean_2_porty), 
  .ch15_neg_mean_1(ch15_select_section_coefficients_mean_1_porty), 
  .ch15_coeff_4_8(ch15_select_section_coefficients_coeff_4_8_porty), 
  .ch15_coeff_4_7(ch15_select_section_coefficients_coeff_4_7_porty), 
  .ch15_coeff_4_6(ch15_select_section_coefficients_coeff_4_6_porty), 
  .ch15_coeff_4_5(ch15_select_section_coefficients_coeff_4_5_porty), 
  .ch15_coeff_4_4(ch15_select_section_coefficients_coeff_4_4_porty), 
  .ch15_coeff_4_3(ch15_select_section_coefficients_coeff_4_3_porty), 
  .ch15_coeff_4_2(ch15_select_section_coefficients_coeff_4_2_porty), 
  .ch15_coeff_4_1(ch15_select_section_coefficients_coeff_4_1_porty), 
  .ch15_coeff_4_0(ch15_select_section_coefficients_coeff_4_0_porty), 
  .ch15_coeff_3_8(ch15_select_section_coefficients_coeff_3_8_porty), 
  .ch15_coeff_3_7(ch15_select_section_coefficients_coeff_3_7_porty), 
  .ch15_coeff_3_6(ch15_select_section_coefficients_coeff_3_6_porty), 
  .ch15_coeff_3_5(ch15_select_section_coefficients_coeff_3_5_porty), 
  .ch15_coeff_3_4(ch15_select_section_coefficients_coeff_3_4_porty), 
  .ch15_coeff_3_3(ch15_select_section_coefficients_coeff_3_3_porty), 
  .ch15_coeff_3_2(ch15_select_section_coefficients_coeff_3_2_porty), 
  .ch15_coeff_3_1(ch15_select_section_coefficients_coeff_3_1_porty), 
  .ch15_coeff_3_0(ch15_select_section_coefficients_coeff_3_0_porty), 
  .ch15_coeff_2_8(ch15_select_section_coefficients_coeff_2_8_porty), 
  .ch15_coeff_2_7(ch15_select_section_coefficients_coeff_2_7_porty), 
  .ch15_coeff_2_6(ch15_select_section_coefficients_coeff_2_6_porty), 
  .ch15_coeff_2_5(ch15_select_section_coefficients_coeff_2_5_porty), 
  .ch15_coeff_2_4(ch15_select_section_coefficients_coeff_2_4_porty), 
  .ch15_coeff_2_3(ch15_select_section_coefficients_coeff_2_3_porty), 
  .ch15_coeff_2_2(ch15_select_section_coefficients_coeff_2_2_porty), 
  .ch15_coeff_2_1(ch15_select_section_coefficients_coeff_2_1_porty), 
  .ch15_coeff_2_0(ch15_select_section_coefficients_coeff_2_0_porty), 
  .ch15_coeff_1_8(ch15_select_section_coefficients_coeff_1_8_porty), 
  .ch15_coeff_1_7(ch15_select_section_coefficients_coeff_1_7_porty), 
  .ch15_coeff_1_6(ch15_select_section_coefficients_coeff_1_6_porty), 
  .ch15_coeff_1_5(ch15_select_section_coefficients_coeff_1_5_porty), 
  .ch15_coeff_1_4(ch15_select_section_coefficients_coeff_1_4_porty), 
  .ch15_coeff_1_3(ch15_select_section_coefficients_coeff_1_3_porty), 
  .ch15_coeff_1_2(ch15_select_section_coefficients_coeff_1_2_porty), 
  .ch15_coeff_1_1(ch15_select_section_coefficients_coeff_1_1_porty), 
  .ch15_coeff_1_0(ch15_select_section_coefficients_coeff_1_0_porty), 

  .ch14_x_adc(ch14_x_adc),//NLC output 
  .ch14_x_lin(ch14_x_lin),//ADC output 
  .ch14_section_limit(ch14_section_limit),//X-value that separates the sections 
  .ch14_recip_stdev_4(ch14_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch14_recip_stdev_3(ch14_select_section_coefficients_stdev_3_porty), 
  .ch14_recip_stdev_2(ch14_select_section_coefficients_stdev_2_porty), 
  .ch14_recip_stdev_1(ch14_select_section_coefficients_stdev_1_porty), 
  .ch14_neg_mean_4(ch14_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch14_neg_mean_3(ch14_select_section_coefficients_mean_3_porty), 
  .ch14_neg_mean_2(ch14_select_section_coefficients_mean_2_porty), 
  .ch14_neg_mean_1(ch14_select_section_coefficients_mean_1_porty), 
  .ch14_coeff_4_8(ch14_select_section_coefficients_coeff_4_8_porty), 
  .ch14_coeff_4_7(ch14_select_section_coefficients_coeff_4_7_porty), 
  .ch14_coeff_4_6(ch14_select_section_coefficients_coeff_4_6_porty), 
  .ch14_coeff_4_5(ch14_select_section_coefficients_coeff_4_5_porty), 
  .ch14_coeff_4_4(ch14_select_section_coefficients_coeff_4_4_porty), 
  .ch14_coeff_4_3(ch14_select_section_coefficients_coeff_4_3_porty), 
  .ch14_coeff_4_2(ch14_select_section_coefficients_coeff_4_2_porty), 
  .ch14_coeff_4_1(ch14_select_section_coefficients_coeff_4_1_porty), 
  .ch14_coeff_4_0(ch14_select_section_coefficients_coeff_4_0_porty), 
  .ch14_coeff_3_8(ch14_select_section_coefficients_coeff_3_8_porty), 
  .ch14_coeff_3_7(ch14_select_section_coefficients_coeff_3_7_porty), 
  .ch14_coeff_3_6(ch14_select_section_coefficients_coeff_3_6_porty), 
  .ch14_coeff_3_5(ch14_select_section_coefficients_coeff_3_5_porty), 
  .ch14_coeff_3_4(ch14_select_section_coefficients_coeff_3_4_porty), 
  .ch14_coeff_3_3(ch14_select_section_coefficients_coeff_3_3_porty), 
  .ch14_coeff_3_2(ch14_select_section_coefficients_coeff_3_2_porty), 
  .ch14_coeff_3_1(ch14_select_section_coefficients_coeff_3_1_porty), 
  .ch14_coeff_3_0(ch14_select_section_coefficients_coeff_3_0_porty), 
  .ch14_coeff_2_8(ch14_select_section_coefficients_coeff_2_8_porty), 
  .ch14_coeff_2_7(ch14_select_section_coefficients_coeff_2_7_porty), 
  .ch14_coeff_2_6(ch14_select_section_coefficients_coeff_2_6_porty), 
  .ch14_coeff_2_5(ch14_select_section_coefficients_coeff_2_5_porty), 
  .ch14_coeff_2_4(ch14_select_section_coefficients_coeff_2_4_porty), 
  .ch14_coeff_2_3(ch14_select_section_coefficients_coeff_2_3_porty), 
  .ch14_coeff_2_2(ch14_select_section_coefficients_coeff_2_2_porty), 
  .ch14_coeff_2_1(ch14_select_section_coefficients_coeff_2_1_porty), 
  .ch14_coeff_2_0(ch14_select_section_coefficients_coeff_2_0_porty), 
  .ch14_coeff_1_8(ch14_select_section_coefficients_coeff_1_8_porty), 
  .ch14_coeff_1_7(ch14_select_section_coefficients_coeff_1_7_porty), 
  .ch14_coeff_1_6(ch14_select_section_coefficients_coeff_1_6_porty), 
  .ch14_coeff_1_5(ch14_select_section_coefficients_coeff_1_5_porty), 
  .ch14_coeff_1_4(ch14_select_section_coefficients_coeff_1_4_porty), 
  .ch14_coeff_1_3(ch14_select_section_coefficients_coeff_1_3_porty), 
  .ch14_coeff_1_2(ch14_select_section_coefficients_coeff_1_2_porty), 
  .ch14_coeff_1_1(ch14_select_section_coefficients_coeff_1_1_porty), 
  .ch14_coeff_1_0(ch14_select_section_coefficients_coeff_1_0_porty), 

  .ch13_x_adc(ch13_x_adc),//NLC output 
  .ch13_x_lin(ch13_x_lin),//ADC output 
  .ch13_section_limit(ch13_section_limit),//X-value that separates the sections 
  .ch13_recip_stdev_4(ch13_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch13_recip_stdev_3(ch13_select_section_coefficients_stdev_3_porty), 
  .ch13_recip_stdev_2(ch13_select_section_coefficients_stdev_2_porty), 
  .ch13_recip_stdev_1(ch13_select_section_coefficients_stdev_1_porty), 
  .ch13_neg_mean_4(ch13_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch13_neg_mean_3(ch13_select_section_coefficients_mean_3_porty), 
  .ch13_neg_mean_2(ch13_select_section_coefficients_mean_2_porty), 
  .ch13_neg_mean_1(ch13_select_section_coefficients_mean_1_porty), 
  .ch13_coeff_4_8(ch13_select_section_coefficients_coeff_4_8_porty), 
  .ch13_coeff_4_7(ch13_select_section_coefficients_coeff_4_7_porty), 
  .ch13_coeff_4_6(ch13_select_section_coefficients_coeff_4_6_porty), 
  .ch13_coeff_4_5(ch13_select_section_coefficients_coeff_4_5_porty), 
  .ch13_coeff_4_4(ch13_select_section_coefficients_coeff_4_4_porty), 
  .ch13_coeff_4_3(ch13_select_section_coefficients_coeff_4_3_porty), 
  .ch13_coeff_4_2(ch13_select_section_coefficients_coeff_4_2_porty), 
  .ch13_coeff_4_1(ch13_select_section_coefficients_coeff_4_1_porty), 
  .ch13_coeff_4_0(ch13_select_section_coefficients_coeff_4_0_porty), 
  .ch13_coeff_3_8(ch13_select_section_coefficients_coeff_3_8_porty), 
  .ch13_coeff_3_7(ch13_select_section_coefficients_coeff_3_7_porty), 
  .ch13_coeff_3_6(ch13_select_section_coefficients_coeff_3_6_porty), 
  .ch13_coeff_3_5(ch13_select_section_coefficients_coeff_3_5_porty), 
  .ch13_coeff_3_4(ch13_select_section_coefficients_coeff_3_4_porty), 
  .ch13_coeff_3_3(ch13_select_section_coefficients_coeff_3_3_porty), 
  .ch13_coeff_3_2(ch13_select_section_coefficients_coeff_3_2_porty), 
  .ch13_coeff_3_1(ch13_select_section_coefficients_coeff_3_1_porty), 
  .ch13_coeff_3_0(ch13_select_section_coefficients_coeff_3_0_porty), 
  .ch13_coeff_2_8(ch13_select_section_coefficients_coeff_2_8_porty), 
  .ch13_coeff_2_7(ch13_select_section_coefficients_coeff_2_7_porty), 
  .ch13_coeff_2_6(ch13_select_section_coefficients_coeff_2_6_porty), 
  .ch13_coeff_2_5(ch13_select_section_coefficients_coeff_2_5_porty), 
  .ch13_coeff_2_4(ch13_select_section_coefficients_coeff_2_4_porty), 
  .ch13_coeff_2_3(ch13_select_section_coefficients_coeff_2_3_porty), 
  .ch13_coeff_2_2(ch13_select_section_coefficients_coeff_2_2_porty), 
  .ch13_coeff_2_1(ch13_select_section_coefficients_coeff_2_1_porty), 
  .ch13_coeff_2_0(ch13_select_section_coefficients_coeff_2_0_porty), 
  .ch13_coeff_1_8(ch13_select_section_coefficients_coeff_1_8_porty), 
  .ch13_coeff_1_7(ch13_select_section_coefficients_coeff_1_7_porty), 
  .ch13_coeff_1_6(ch13_select_section_coefficients_coeff_1_6_porty), 
  .ch13_coeff_1_5(ch13_select_section_coefficients_coeff_1_5_porty), 
  .ch13_coeff_1_4(ch13_select_section_coefficients_coeff_1_4_porty), 
  .ch13_coeff_1_3(ch13_select_section_coefficients_coeff_1_3_porty), 
  .ch13_coeff_1_2(ch13_select_section_coefficients_coeff_1_2_porty), 
  .ch13_coeff_1_1(ch13_select_section_coefficients_coeff_1_1_porty), 
  .ch13_coeff_1_0(ch13_select_section_coefficients_coeff_1_0_porty), 

  .ch12_x_adc(ch12_x_adc),//NLC output 
  .ch12_x_lin(ch12_x_lin),//ADC output 
  .ch12_section_limit(ch12_section_limit),//X-value that separates the sections 
  .ch12_recip_stdev_4(ch12_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch12_recip_stdev_3(ch12_select_section_coefficients_stdev_3_porty), 
  .ch12_recip_stdev_2(ch12_select_section_coefficients_stdev_2_porty), 
  .ch12_recip_stdev_1(ch12_select_section_coefficients_stdev_1_porty), 
  .ch12_neg_mean_4(ch12_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch12_neg_mean_3(ch12_select_section_coefficients_mean_3_porty), 
  .ch12_neg_mean_2(ch12_select_section_coefficients_mean_2_porty), 
  .ch12_neg_mean_1(ch12_select_section_coefficients_mean_1_porty), 
  .ch12_coeff_4_8(ch12_select_section_coefficients_coeff_4_8_porty), 
  .ch12_coeff_4_7(ch12_select_section_coefficients_coeff_4_7_porty), 
  .ch12_coeff_4_6(ch12_select_section_coefficients_coeff_4_6_porty), 
  .ch12_coeff_4_5(ch12_select_section_coefficients_coeff_4_5_porty), 
  .ch12_coeff_4_4(ch12_select_section_coefficients_coeff_4_4_porty), 
  .ch12_coeff_4_3(ch12_select_section_coefficients_coeff_4_3_porty), 
  .ch12_coeff_4_2(ch12_select_section_coefficients_coeff_4_2_porty), 
  .ch12_coeff_4_1(ch12_select_section_coefficients_coeff_4_1_porty), 
  .ch12_coeff_4_0(ch12_select_section_coefficients_coeff_4_0_porty), 
  .ch12_coeff_3_8(ch12_select_section_coefficients_coeff_3_8_porty), 
  .ch12_coeff_3_7(ch12_select_section_coefficients_coeff_3_7_porty), 
  .ch12_coeff_3_6(ch12_select_section_coefficients_coeff_3_6_porty), 
  .ch12_coeff_3_5(ch12_select_section_coefficients_coeff_3_5_porty), 
  .ch12_coeff_3_4(ch12_select_section_coefficients_coeff_3_4_porty), 
  .ch12_coeff_3_3(ch12_select_section_coefficients_coeff_3_3_porty), 
  .ch12_coeff_3_2(ch12_select_section_coefficients_coeff_3_2_porty), 
  .ch12_coeff_3_1(ch12_select_section_coefficients_coeff_3_1_porty), 
  .ch12_coeff_3_0(ch12_select_section_coefficients_coeff_3_0_porty), 
  .ch12_coeff_2_8(ch12_select_section_coefficients_coeff_2_8_porty), 
  .ch12_coeff_2_7(ch12_select_section_coefficients_coeff_2_7_porty), 
  .ch12_coeff_2_6(ch12_select_section_coefficients_coeff_2_6_porty), 
  .ch12_coeff_2_5(ch12_select_section_coefficients_coeff_2_5_porty), 
  .ch12_coeff_2_4(ch12_select_section_coefficients_coeff_2_4_porty), 
  .ch12_coeff_2_3(ch12_select_section_coefficients_coeff_2_3_porty), 
  .ch12_coeff_2_2(ch12_select_section_coefficients_coeff_2_2_porty), 
  .ch12_coeff_2_1(ch12_select_section_coefficients_coeff_2_1_porty), 
  .ch12_coeff_2_0(ch12_select_section_coefficients_coeff_2_0_porty), 
  .ch12_coeff_1_8(ch12_select_section_coefficients_coeff_1_8_porty), 
  .ch12_coeff_1_7(ch12_select_section_coefficients_coeff_1_7_porty), 
  .ch12_coeff_1_6(ch12_select_section_coefficients_coeff_1_6_porty), 
  .ch12_coeff_1_5(ch12_select_section_coefficients_coeff_1_5_porty), 
  .ch12_coeff_1_4(ch12_select_section_coefficients_coeff_1_4_porty), 
  .ch12_coeff_1_3(ch12_select_section_coefficients_coeff_1_3_porty), 
  .ch12_coeff_1_2(ch12_select_section_coefficients_coeff_1_2_porty), 
  .ch12_coeff_1_1(ch12_select_section_coefficients_coeff_1_1_porty), 
  .ch12_coeff_1_0(ch12_select_section_coefficients_coeff_1_0_porty), 

  .ch11_x_adc(ch11_x_adc),//NLC output 
  .ch11_x_lin(ch11_x_lin),//ADC output 
  .ch11_section_limit(ch11_section_limit),//X-value that separates the sections 
  .ch11_recip_stdev_4(ch11_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch11_recip_stdev_3(ch11_select_section_coefficients_stdev_3_porty), 
  .ch11_recip_stdev_2(ch11_select_section_coefficients_stdev_2_porty), 
  .ch11_recip_stdev_1(ch11_select_section_coefficients_stdev_1_porty), 
  .ch11_neg_mean_4(ch11_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch11_neg_mean_3(ch11_select_section_coefficients_mean_3_porty), 
  .ch11_neg_mean_2(ch11_select_section_coefficients_mean_2_porty), 
  .ch11_neg_mean_1(ch11_select_section_coefficients_mean_1_porty), 
  .ch11_coeff_4_8(ch11_select_section_coefficients_coeff_4_8_porty), 
  .ch11_coeff_4_7(ch11_select_section_coefficients_coeff_4_7_porty), 
  .ch11_coeff_4_6(ch11_select_section_coefficients_coeff_4_6_porty), 
  .ch11_coeff_4_5(ch11_select_section_coefficients_coeff_4_5_porty), 
  .ch11_coeff_4_4(ch11_select_section_coefficients_coeff_4_4_porty), 
  .ch11_coeff_4_3(ch11_select_section_coefficients_coeff_4_3_porty), 
  .ch11_coeff_4_2(ch11_select_section_coefficients_coeff_4_2_porty), 
  .ch11_coeff_4_1(ch11_select_section_coefficients_coeff_4_1_porty), 
  .ch11_coeff_4_0(ch11_select_section_coefficients_coeff_4_0_porty), 
  .ch11_coeff_3_8(ch11_select_section_coefficients_coeff_3_8_porty), 
  .ch11_coeff_3_7(ch11_select_section_coefficients_coeff_3_7_porty), 
  .ch11_coeff_3_6(ch11_select_section_coefficients_coeff_3_6_porty), 
  .ch11_coeff_3_5(ch11_select_section_coefficients_coeff_3_5_porty), 
  .ch11_coeff_3_4(ch11_select_section_coefficients_coeff_3_4_porty), 
  .ch11_coeff_3_3(ch11_select_section_coefficients_coeff_3_3_porty), 
  .ch11_coeff_3_2(ch11_select_section_coefficients_coeff_3_2_porty), 
  .ch11_coeff_3_1(ch11_select_section_coefficients_coeff_3_1_porty), 
  .ch11_coeff_3_0(ch11_select_section_coefficients_coeff_3_0_porty), 
  .ch11_coeff_2_8(ch11_select_section_coefficients_coeff_2_8_porty), 
  .ch11_coeff_2_7(ch11_select_section_coefficients_coeff_2_7_porty), 
  .ch11_coeff_2_6(ch11_select_section_coefficients_coeff_2_6_porty), 
  .ch11_coeff_2_5(ch11_select_section_coefficients_coeff_2_5_porty), 
  .ch11_coeff_2_4(ch11_select_section_coefficients_coeff_2_4_porty), 
  .ch11_coeff_2_3(ch11_select_section_coefficients_coeff_2_3_porty), 
  .ch11_coeff_2_2(ch11_select_section_coefficients_coeff_2_2_porty), 
  .ch11_coeff_2_1(ch11_select_section_coefficients_coeff_2_1_porty), 
  .ch11_coeff_2_0(ch11_select_section_coefficients_coeff_2_0_porty), 
  .ch11_coeff_1_8(ch11_select_section_coefficients_coeff_1_8_porty), 
  .ch11_coeff_1_7(ch11_select_section_coefficients_coeff_1_7_porty), 
  .ch11_coeff_1_6(ch11_select_section_coefficients_coeff_1_6_porty), 
  .ch11_coeff_1_5(ch11_select_section_coefficients_coeff_1_5_porty), 
  .ch11_coeff_1_4(ch11_select_section_coefficients_coeff_1_4_porty), 
  .ch11_coeff_1_3(ch11_select_section_coefficients_coeff_1_3_porty), 
  .ch11_coeff_1_2(ch11_select_section_coefficients_coeff_1_2_porty), 
  .ch11_coeff_1_1(ch11_select_section_coefficients_coeff_1_1_porty), 
  .ch11_coeff_1_0(ch11_select_section_coefficients_coeff_1_0_porty), 

  .ch10_x_adc(ch10_x_adc),//NLC output 
  .ch10_x_lin(ch10_x_lin),//ADC output 
  .ch10_section_limit(ch10_section_limit),//X-value that separates the sections 
  .ch10_recip_stdev_4(ch10_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch10_recip_stdev_3(ch10_select_section_coefficients_stdev_3_porty), 
  .ch10_recip_stdev_2(ch10_select_section_coefficients_stdev_2_porty), 
  .ch10_recip_stdev_1(ch10_select_section_coefficients_stdev_1_porty), 
  .ch10_neg_mean_4(ch10_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch10_neg_mean_3(ch10_select_section_coefficients_mean_3_porty), 
  .ch10_neg_mean_2(ch10_select_section_coefficients_mean_2_porty), 
  .ch10_neg_mean_1(ch10_select_section_coefficients_mean_1_porty), 
  .ch10_coeff_4_8(ch10_select_section_coefficients_coeff_4_8_porty), 
  .ch10_coeff_4_7(ch10_select_section_coefficients_coeff_4_7_porty), 
  .ch10_coeff_4_6(ch10_select_section_coefficients_coeff_4_6_porty), 
  .ch10_coeff_4_5(ch10_select_section_coefficients_coeff_4_5_porty), 
  .ch10_coeff_4_4(ch10_select_section_coefficients_coeff_4_4_porty), 
  .ch10_coeff_4_3(ch10_select_section_coefficients_coeff_4_3_porty), 
  .ch10_coeff_4_2(ch10_select_section_coefficients_coeff_4_2_porty), 
  .ch10_coeff_4_1(ch10_select_section_coefficients_coeff_4_1_porty), 
  .ch10_coeff_4_0(ch10_select_section_coefficients_coeff_4_0_porty), 
  .ch10_coeff_3_8(ch10_select_section_coefficients_coeff_3_8_porty), 
  .ch10_coeff_3_7(ch10_select_section_coefficients_coeff_3_7_porty), 
  .ch10_coeff_3_6(ch10_select_section_coefficients_coeff_3_6_porty), 
  .ch10_coeff_3_5(ch10_select_section_coefficients_coeff_3_5_porty), 
  .ch10_coeff_3_4(ch10_select_section_coefficients_coeff_3_4_porty), 
  .ch10_coeff_3_3(ch10_select_section_coefficients_coeff_3_3_porty), 
  .ch10_coeff_3_2(ch10_select_section_coefficients_coeff_3_2_porty), 
  .ch10_coeff_3_1(ch10_select_section_coefficients_coeff_3_1_porty), 
  .ch10_coeff_3_0(ch10_select_section_coefficients_coeff_3_0_porty), 
  .ch10_coeff_2_8(ch10_select_section_coefficients_coeff_2_8_porty), 
  .ch10_coeff_2_7(ch10_select_section_coefficients_coeff_2_7_porty), 
  .ch10_coeff_2_6(ch10_select_section_coefficients_coeff_2_6_porty), 
  .ch10_coeff_2_5(ch10_select_section_coefficients_coeff_2_5_porty), 
  .ch10_coeff_2_4(ch10_select_section_coefficients_coeff_2_4_porty), 
  .ch10_coeff_2_3(ch10_select_section_coefficients_coeff_2_3_porty), 
  .ch10_coeff_2_2(ch10_select_section_coefficients_coeff_2_2_porty), 
  .ch10_coeff_2_1(ch10_select_section_coefficients_coeff_2_1_porty), 
  .ch10_coeff_2_0(ch10_select_section_coefficients_coeff_2_0_porty), 
  .ch10_coeff_1_8(ch10_select_section_coefficients_coeff_1_8_porty), 
  .ch10_coeff_1_7(ch10_select_section_coefficients_coeff_1_7_porty), 
  .ch10_coeff_1_6(ch10_select_section_coefficients_coeff_1_6_porty), 
  .ch10_coeff_1_5(ch10_select_section_coefficients_coeff_1_5_porty), 
  .ch10_coeff_1_4(ch10_select_section_coefficients_coeff_1_4_porty), 
  .ch10_coeff_1_3(ch10_select_section_coefficients_coeff_1_3_porty), 
  .ch10_coeff_1_2(ch10_select_section_coefficients_coeff_1_2_porty), 
  .ch10_coeff_1_1(ch10_select_section_coefficients_coeff_1_1_porty), 
  .ch10_coeff_1_0(ch10_select_section_coefficients_coeff_1_0_porty), 

  .ch9_x_adc(ch9_x_adc),//NLC output 
  .ch9_x_lin(ch9_x_lin),//ADC output 
  .ch9_section_limit(ch9_section_limit),//X-value that separates the sections 
  .ch9_recip_stdev_4(ch9_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch9_recip_stdev_3(ch9_select_section_coefficients_stdev_3_porty), 
  .ch9_recip_stdev_2(ch9_select_section_coefficients_stdev_2_porty), 
  .ch9_recip_stdev_1(ch9_select_section_coefficients_stdev_1_porty), 
  .ch9_neg_mean_4(ch9_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch9_neg_mean_3(ch9_select_section_coefficients_mean_3_porty), 
  .ch9_neg_mean_2(ch9_select_section_coefficients_mean_2_porty), 
  .ch9_neg_mean_1(ch9_select_section_coefficients_mean_1_porty), 
  .ch9_coeff_4_8(ch9_select_section_coefficients_coeff_4_8_porty), 
  .ch9_coeff_4_7(ch9_select_section_coefficients_coeff_4_7_porty), 
  .ch9_coeff_4_6(ch9_select_section_coefficients_coeff_4_6_porty), 
  .ch9_coeff_4_5(ch9_select_section_coefficients_coeff_4_5_porty), 
  .ch9_coeff_4_4(ch9_select_section_coefficients_coeff_4_4_porty), 
  .ch9_coeff_4_3(ch9_select_section_coefficients_coeff_4_3_porty), 
  .ch9_coeff_4_2(ch9_select_section_coefficients_coeff_4_2_porty), 
  .ch9_coeff_4_1(ch9_select_section_coefficients_coeff_4_1_porty), 
  .ch9_coeff_4_0(ch9_select_section_coefficients_coeff_4_0_porty), 
  .ch9_coeff_3_8(ch9_select_section_coefficients_coeff_3_8_porty), 
  .ch9_coeff_3_7(ch9_select_section_coefficients_coeff_3_7_porty), 
  .ch9_coeff_3_6(ch9_select_section_coefficients_coeff_3_6_porty), 
  .ch9_coeff_3_5(ch9_select_section_coefficients_coeff_3_5_porty), 
  .ch9_coeff_3_4(ch9_select_section_coefficients_coeff_3_4_porty), 
  .ch9_coeff_3_3(ch9_select_section_coefficients_coeff_3_3_porty), 
  .ch9_coeff_3_2(ch9_select_section_coefficients_coeff_3_2_porty), 
  .ch9_coeff_3_1(ch9_select_section_coefficients_coeff_3_1_porty), 
  .ch9_coeff_3_0(ch9_select_section_coefficients_coeff_3_0_porty), 
  .ch9_coeff_2_8(ch9_select_section_coefficients_coeff_2_8_porty), 
  .ch9_coeff_2_7(ch9_select_section_coefficients_coeff_2_7_porty), 
  .ch9_coeff_2_6(ch9_select_section_coefficients_coeff_2_6_porty), 
  .ch9_coeff_2_5(ch9_select_section_coefficients_coeff_2_5_porty), 
  .ch9_coeff_2_4(ch9_select_section_coefficients_coeff_2_4_porty), 
  .ch9_coeff_2_3(ch9_select_section_coefficients_coeff_2_3_porty), 
  .ch9_coeff_2_2(ch9_select_section_coefficients_coeff_2_2_porty), 
  .ch9_coeff_2_1(ch9_select_section_coefficients_coeff_2_1_porty), 
  .ch9_coeff_2_0(ch9_select_section_coefficients_coeff_2_0_porty), 
  .ch9_coeff_1_8(ch9_select_section_coefficients_coeff_1_8_porty), 
  .ch9_coeff_1_7(ch9_select_section_coefficients_coeff_1_7_porty), 
  .ch9_coeff_1_6(ch9_select_section_coefficients_coeff_1_6_porty), 
  .ch9_coeff_1_5(ch9_select_section_coefficients_coeff_1_5_porty), 
  .ch9_coeff_1_4(ch9_select_section_coefficients_coeff_1_4_porty), 
  .ch9_coeff_1_3(ch9_select_section_coefficients_coeff_1_3_porty), 
  .ch9_coeff_1_2(ch9_select_section_coefficients_coeff_1_2_porty), 
  .ch9_coeff_1_1(ch9_select_section_coefficients_coeff_1_1_porty), 
  .ch9_coeff_1_0(ch9_select_section_coefficients_coeff_1_0_porty), 

  .ch8_x_adc(ch8_x_adc),//NLC output 
  .ch8_x_lin(ch8_x_lin),//ADC output 
  .ch8_section_limit(ch8_section_limit),//X-value that separates the sections 
  .ch8_recip_stdev_4(ch8_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch8_recip_stdev_3(ch8_select_section_coefficients_stdev_3_porty), 
  .ch8_recip_stdev_2(ch8_select_section_coefficients_stdev_2_porty), 
  .ch8_recip_stdev_1(ch8_select_section_coefficients_stdev_1_porty), 
  .ch8_neg_mean_4(ch8_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch8_neg_mean_3(ch8_select_section_coefficients_mean_3_porty), 
  .ch8_neg_mean_2(ch8_select_section_coefficients_mean_2_porty), 
  .ch8_neg_mean_1(ch8_select_section_coefficients_mean_1_porty), 
  .ch8_coeff_4_8(ch8_select_section_coefficients_coeff_4_8_porty), 
  .ch8_coeff_4_7(ch8_select_section_coefficients_coeff_4_7_porty), 
  .ch8_coeff_4_6(ch8_select_section_coefficients_coeff_4_6_porty), 
  .ch8_coeff_4_5(ch8_select_section_coefficients_coeff_4_5_porty), 
  .ch8_coeff_4_4(ch8_select_section_coefficients_coeff_4_4_porty), 
  .ch8_coeff_4_3(ch8_select_section_coefficients_coeff_4_3_porty), 
  .ch8_coeff_4_2(ch8_select_section_coefficients_coeff_4_2_porty), 
  .ch8_coeff_4_1(ch8_select_section_coefficients_coeff_4_1_porty), 
  .ch8_coeff_4_0(ch8_select_section_coefficients_coeff_4_0_porty), 
  .ch8_coeff_3_8(ch8_select_section_coefficients_coeff_3_8_porty), 
  .ch8_coeff_3_7(ch8_select_section_coefficients_coeff_3_7_porty), 
  .ch8_coeff_3_6(ch8_select_section_coefficients_coeff_3_6_porty), 
  .ch8_coeff_3_5(ch8_select_section_coefficients_coeff_3_5_porty), 
  .ch8_coeff_3_4(ch8_select_section_coefficients_coeff_3_4_porty), 
  .ch8_coeff_3_3(ch8_select_section_coefficients_coeff_3_3_porty), 
  .ch8_coeff_3_2(ch8_select_section_coefficients_coeff_3_2_porty), 
  .ch8_coeff_3_1(ch8_select_section_coefficients_coeff_3_1_porty), 
  .ch8_coeff_3_0(ch8_select_section_coefficients_coeff_3_0_porty), 
  .ch8_coeff_2_8(ch8_select_section_coefficients_coeff_2_8_porty), 
  .ch8_coeff_2_7(ch8_select_section_coefficients_coeff_2_7_porty), 
  .ch8_coeff_2_6(ch8_select_section_coefficients_coeff_2_6_porty), 
  .ch8_coeff_2_5(ch8_select_section_coefficients_coeff_2_5_porty), 
  .ch8_coeff_2_4(ch8_select_section_coefficients_coeff_2_4_porty), 
  .ch8_coeff_2_3(ch8_select_section_coefficients_coeff_2_3_porty), 
  .ch8_coeff_2_2(ch8_select_section_coefficients_coeff_2_2_porty), 
  .ch8_coeff_2_1(ch8_select_section_coefficients_coeff_2_1_porty), 
  .ch8_coeff_2_0(ch8_select_section_coefficients_coeff_2_0_porty), 
  .ch8_coeff_1_8(ch8_select_section_coefficients_coeff_1_8_porty), 
  .ch8_coeff_1_7(ch8_select_section_coefficients_coeff_1_7_porty), 
  .ch8_coeff_1_6(ch8_select_section_coefficients_coeff_1_6_porty), 
  .ch8_coeff_1_5(ch8_select_section_coefficients_coeff_1_5_porty), 
  .ch8_coeff_1_4(ch8_select_section_coefficients_coeff_1_4_porty), 
  .ch8_coeff_1_3(ch8_select_section_coefficients_coeff_1_3_porty), 
  .ch8_coeff_1_2(ch8_select_section_coefficients_coeff_1_2_porty), 
  .ch8_coeff_1_1(ch8_select_section_coefficients_coeff_1_1_porty), 
  .ch8_coeff_1_0(ch8_select_section_coefficients_coeff_1_0_porty), 

  .ch7_x_adc(ch7_x_adc),//NLC output 
  .ch7_x_lin(ch7_x_lin),//ADC output 
  .ch7_section_limit(ch7_section_limit),//X-value that separates the sections 
  .ch7_recip_stdev_4(ch7_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch7_recip_stdev_3(ch7_select_section_coefficients_stdev_3_porty), 
  .ch7_recip_stdev_2(ch7_select_section_coefficients_stdev_2_porty), 
  .ch7_recip_stdev_1(ch7_select_section_coefficients_stdev_1_porty), 
  .ch7_neg_mean_4(ch7_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch7_neg_mean_3(ch7_select_section_coefficients_mean_3_porty), 
  .ch7_neg_mean_2(ch7_select_section_coefficients_mean_2_porty), 
  .ch7_neg_mean_1(ch7_select_section_coefficients_mean_1_porty), 
  .ch7_coeff_4_8(ch7_select_section_coefficients_coeff_4_8_porty), 
  .ch7_coeff_4_7(ch7_select_section_coefficients_coeff_4_7_porty), 
  .ch7_coeff_4_6(ch7_select_section_coefficients_coeff_4_6_porty), 
  .ch7_coeff_4_5(ch7_select_section_coefficients_coeff_4_5_porty), 
  .ch7_coeff_4_4(ch7_select_section_coefficients_coeff_4_4_porty), 
  .ch7_coeff_4_3(ch7_select_section_coefficients_coeff_4_3_porty), 
  .ch7_coeff_4_2(ch7_select_section_coefficients_coeff_4_2_porty), 
  .ch7_coeff_4_1(ch7_select_section_coefficients_coeff_4_1_porty), 
  .ch7_coeff_4_0(ch7_select_section_coefficients_coeff_4_0_porty), 
  .ch7_coeff_3_8(ch7_select_section_coefficients_coeff_3_8_porty), 
  .ch7_coeff_3_7(ch7_select_section_coefficients_coeff_3_7_porty), 
  .ch7_coeff_3_6(ch7_select_section_coefficients_coeff_3_6_porty), 
  .ch7_coeff_3_5(ch7_select_section_coefficients_coeff_3_5_porty), 
  .ch7_coeff_3_4(ch7_select_section_coefficients_coeff_3_4_porty), 
  .ch7_coeff_3_3(ch7_select_section_coefficients_coeff_3_3_porty), 
  .ch7_coeff_3_2(ch7_select_section_coefficients_coeff_3_2_porty), 
  .ch7_coeff_3_1(ch7_select_section_coefficients_coeff_3_1_porty), 
  .ch7_coeff_3_0(ch7_select_section_coefficients_coeff_3_0_porty), 
  .ch7_coeff_2_8(ch7_select_section_coefficients_coeff_2_8_porty), 
  .ch7_coeff_2_7(ch7_select_section_coefficients_coeff_2_7_porty), 
  .ch7_coeff_2_6(ch7_select_section_coefficients_coeff_2_6_porty), 
  .ch7_coeff_2_5(ch7_select_section_coefficients_coeff_2_5_porty), 
  .ch7_coeff_2_4(ch7_select_section_coefficients_coeff_2_4_porty), 
  .ch7_coeff_2_3(ch7_select_section_coefficients_coeff_2_3_porty), 
  .ch7_coeff_2_2(ch7_select_section_coefficients_coeff_2_2_porty), 
  .ch7_coeff_2_1(ch7_select_section_coefficients_coeff_2_1_porty), 
  .ch7_coeff_2_0(ch7_select_section_coefficients_coeff_2_0_porty), 
  .ch7_coeff_1_8(ch7_select_section_coefficients_coeff_1_8_porty), 
  .ch7_coeff_1_7(ch7_select_section_coefficients_coeff_1_7_porty), 
  .ch7_coeff_1_6(ch7_select_section_coefficients_coeff_1_6_porty), 
  .ch7_coeff_1_5(ch7_select_section_coefficients_coeff_1_5_porty), 
  .ch7_coeff_1_4(ch7_select_section_coefficients_coeff_1_4_porty), 
  .ch7_coeff_1_3(ch7_select_section_coefficients_coeff_1_3_porty), 
  .ch7_coeff_1_2(ch7_select_section_coefficients_coeff_1_2_porty), 
  .ch7_coeff_1_1(ch7_select_section_coefficients_coeff_1_1_porty), 
  .ch7_coeff_1_0(ch7_select_section_coefficients_coeff_1_0_porty), 

  .ch6_x_adc(ch6_x_adc),//NLC output 
  .ch6_x_lin(ch6_x_lin),//ADC output 
  .ch6_section_limit(ch6_section_limit),//X-value that separates the sections 
  .ch6_recip_stdev_4(ch6_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch6_recip_stdev_3(ch6_select_section_coefficients_stdev_3_porty), 
  .ch6_recip_stdev_2(ch6_select_section_coefficients_stdev_2_porty), 
  .ch6_recip_stdev_1(ch6_select_section_coefficients_stdev_1_porty), 
  .ch6_neg_mean_4(ch6_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch6_neg_mean_3(ch6_select_section_coefficients_mean_3_porty), 
  .ch6_neg_mean_2(ch6_select_section_coefficients_mean_2_porty), 
  .ch6_neg_mean_1(ch6_select_section_coefficients_mean_1_porty), 
  .ch6_coeff_4_8(ch6_select_section_coefficients_coeff_4_8_porty), 
  .ch6_coeff_4_7(ch6_select_section_coefficients_coeff_4_7_porty), 
  .ch6_coeff_4_6(ch6_select_section_coefficients_coeff_4_6_porty), 
  .ch6_coeff_4_5(ch6_select_section_coefficients_coeff_4_5_porty), 
  .ch6_coeff_4_4(ch6_select_section_coefficients_coeff_4_4_porty), 
  .ch6_coeff_4_3(ch6_select_section_coefficients_coeff_4_3_porty), 
  .ch6_coeff_4_2(ch6_select_section_coefficients_coeff_4_2_porty), 
  .ch6_coeff_4_1(ch6_select_section_coefficients_coeff_4_1_porty), 
  .ch6_coeff_4_0(ch6_select_section_coefficients_coeff_4_0_porty), 
  .ch6_coeff_3_8(ch6_select_section_coefficients_coeff_3_8_porty), 
  .ch6_coeff_3_7(ch6_select_section_coefficients_coeff_3_7_porty), 
  .ch6_coeff_3_6(ch6_select_section_coefficients_coeff_3_6_porty), 
  .ch6_coeff_3_5(ch6_select_section_coefficients_coeff_3_5_porty), 
  .ch6_coeff_3_4(ch6_select_section_coefficients_coeff_3_4_porty), 
  .ch6_coeff_3_3(ch6_select_section_coefficients_coeff_3_3_porty), 
  .ch6_coeff_3_2(ch6_select_section_coefficients_coeff_3_2_porty), 
  .ch6_coeff_3_1(ch6_select_section_coefficients_coeff_3_1_porty), 
  .ch6_coeff_3_0(ch6_select_section_coefficients_coeff_3_0_porty), 
  .ch6_coeff_2_8(ch6_select_section_coefficients_coeff_2_8_porty), 
  .ch6_coeff_2_7(ch6_select_section_coefficients_coeff_2_7_porty), 
  .ch6_coeff_2_6(ch6_select_section_coefficients_coeff_2_6_porty), 
  .ch6_coeff_2_5(ch6_select_section_coefficients_coeff_2_5_porty), 
  .ch6_coeff_2_4(ch6_select_section_coefficients_coeff_2_4_porty), 
  .ch6_coeff_2_3(ch6_select_section_coefficients_coeff_2_3_porty), 
  .ch6_coeff_2_2(ch6_select_section_coefficients_coeff_2_2_porty), 
  .ch6_coeff_2_1(ch6_select_section_coefficients_coeff_2_1_porty), 
  .ch6_coeff_2_0(ch6_select_section_coefficients_coeff_2_0_porty), 
  .ch6_coeff_1_8(ch6_select_section_coefficients_coeff_1_8_porty), 
  .ch6_coeff_1_7(ch6_select_section_coefficients_coeff_1_7_porty), 
  .ch6_coeff_1_6(ch6_select_section_coefficients_coeff_1_6_porty), 
  .ch6_coeff_1_5(ch6_select_section_coefficients_coeff_1_5_porty), 
  .ch6_coeff_1_4(ch6_select_section_coefficients_coeff_1_4_porty), 
  .ch6_coeff_1_3(ch6_select_section_coefficients_coeff_1_3_porty), 
  .ch6_coeff_1_2(ch6_select_section_coefficients_coeff_1_2_porty), 
  .ch6_coeff_1_1(ch6_select_section_coefficients_coeff_1_1_porty), 
  .ch6_coeff_1_0(ch6_select_section_coefficients_coeff_1_0_porty), 

  .ch5_x_adc(ch5_x_adc),//NLC output 
  .ch5_x_lin(ch5_x_lin),//ADC output 
  .ch5_section_limit(ch5_section_limit),//X-value that separates the sections 
  .ch5_recip_stdev_4(ch5_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch5_recip_stdev_3(ch5_select_section_coefficients_stdev_3_porty), 
  .ch5_recip_stdev_2(ch5_select_section_coefficients_stdev_2_porty), 
  .ch5_recip_stdev_1(ch5_select_section_coefficients_stdev_1_porty), 
  .ch5_neg_mean_4(ch5_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch5_neg_mean_3(ch5_select_section_coefficients_mean_3_porty), 
  .ch5_neg_mean_2(ch5_select_section_coefficients_mean_2_porty), 
  .ch5_neg_mean_1(ch5_select_section_coefficients_mean_1_porty), 
  .ch5_coeff_4_8(ch5_select_section_coefficients_coeff_4_8_porty), 
  .ch5_coeff_4_7(ch5_select_section_coefficients_coeff_4_7_porty), 
  .ch5_coeff_4_6(ch5_select_section_coefficients_coeff_4_6_porty), 
  .ch5_coeff_4_5(ch5_select_section_coefficients_coeff_4_5_porty), 
  .ch5_coeff_4_4(ch5_select_section_coefficients_coeff_4_4_porty), 
  .ch5_coeff_4_3(ch5_select_section_coefficients_coeff_4_3_porty), 
  .ch5_coeff_4_2(ch5_select_section_coefficients_coeff_4_2_porty), 
  .ch5_coeff_4_1(ch5_select_section_coefficients_coeff_4_1_porty), 
  .ch5_coeff_4_0(ch5_select_section_coefficients_coeff_4_0_porty), 
  .ch5_coeff_3_8(ch5_select_section_coefficients_coeff_3_8_porty), 
  .ch5_coeff_3_7(ch5_select_section_coefficients_coeff_3_7_porty), 
  .ch5_coeff_3_6(ch5_select_section_coefficients_coeff_3_6_porty), 
  .ch5_coeff_3_5(ch5_select_section_coefficients_coeff_3_5_porty), 
  .ch5_coeff_3_4(ch5_select_section_coefficients_coeff_3_4_porty), 
  .ch5_coeff_3_3(ch5_select_section_coefficients_coeff_3_3_porty), 
  .ch5_coeff_3_2(ch5_select_section_coefficients_coeff_3_2_porty), 
  .ch5_coeff_3_1(ch5_select_section_coefficients_coeff_3_1_porty), 
  .ch5_coeff_3_0(ch5_select_section_coefficients_coeff_3_0_porty), 
  .ch5_coeff_2_8(ch5_select_section_coefficients_coeff_2_8_porty), 
  .ch5_coeff_2_7(ch5_select_section_coefficients_coeff_2_7_porty), 
  .ch5_coeff_2_6(ch5_select_section_coefficients_coeff_2_6_porty), 
  .ch5_coeff_2_5(ch5_select_section_coefficients_coeff_2_5_porty), 
  .ch5_coeff_2_4(ch5_select_section_coefficients_coeff_2_4_porty), 
  .ch5_coeff_2_3(ch5_select_section_coefficients_coeff_2_3_porty), 
  .ch5_coeff_2_2(ch5_select_section_coefficients_coeff_2_2_porty), 
  .ch5_coeff_2_1(ch5_select_section_coefficients_coeff_2_1_porty), 
  .ch5_coeff_2_0(ch5_select_section_coefficients_coeff_2_0_porty), 
  .ch5_coeff_1_8(ch5_select_section_coefficients_coeff_1_8_porty), 
  .ch5_coeff_1_7(ch5_select_section_coefficients_coeff_1_7_porty), 
  .ch5_coeff_1_6(ch5_select_section_coefficients_coeff_1_6_porty), 
  .ch5_coeff_1_5(ch5_select_section_coefficients_coeff_1_5_porty), 
  .ch5_coeff_1_4(ch5_select_section_coefficients_coeff_1_4_porty), 
  .ch5_coeff_1_3(ch5_select_section_coefficients_coeff_1_3_porty), 
  .ch5_coeff_1_2(ch5_select_section_coefficients_coeff_1_2_porty), 
  .ch5_coeff_1_1(ch5_select_section_coefficients_coeff_1_1_porty), 
  .ch5_coeff_1_0(ch5_select_section_coefficients_coeff_1_0_porty), 

  .ch4_x_adc(ch4_x_adc),//NLC output 
  .ch4_x_lin(ch4_x_lin),//ADC output 
  .ch4_section_limit(ch4_section_limit),//X-value that separates the sections 
  .ch4_recip_stdev_4(ch4_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch4_recip_stdev_3(ch4_select_section_coefficients_stdev_3_porty), 
  .ch4_recip_stdev_2(ch4_select_section_coefficients_stdev_2_porty), 
  .ch4_recip_stdev_1(ch4_select_section_coefficients_stdev_1_porty), 
  .ch4_neg_mean_4(ch4_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch4_neg_mean_3(ch4_select_section_coefficients_mean_3_porty), 
  .ch4_neg_mean_2(ch4_select_section_coefficients_mean_2_porty), 
  .ch4_neg_mean_1(ch4_select_section_coefficients_mean_1_porty), 
  .ch4_coeff_4_8(ch4_select_section_coefficients_coeff_4_8_porty), 
  .ch4_coeff_4_7(ch4_select_section_coefficients_coeff_4_7_porty), 
  .ch4_coeff_4_6(ch4_select_section_coefficients_coeff_4_6_porty), 
  .ch4_coeff_4_5(ch4_select_section_coefficients_coeff_4_5_porty), 
  .ch4_coeff_4_4(ch4_select_section_coefficients_coeff_4_4_porty), 
  .ch4_coeff_4_3(ch4_select_section_coefficients_coeff_4_3_porty), 
  .ch4_coeff_4_2(ch4_select_section_coefficients_coeff_4_2_porty), 
  .ch4_coeff_4_1(ch4_select_section_coefficients_coeff_4_1_porty), 
  .ch4_coeff_4_0(ch4_select_section_coefficients_coeff_4_0_porty), 
  .ch4_coeff_3_8(ch4_select_section_coefficients_coeff_3_8_porty), 
  .ch4_coeff_3_7(ch4_select_section_coefficients_coeff_3_7_porty), 
  .ch4_coeff_3_6(ch4_select_section_coefficients_coeff_3_6_porty), 
  .ch4_coeff_3_5(ch4_select_section_coefficients_coeff_3_5_porty), 
  .ch4_coeff_3_4(ch4_select_section_coefficients_coeff_3_4_porty), 
  .ch4_coeff_3_3(ch4_select_section_coefficients_coeff_3_3_porty), 
  .ch4_coeff_3_2(ch4_select_section_coefficients_coeff_3_2_porty), 
  .ch4_coeff_3_1(ch4_select_section_coefficients_coeff_3_1_porty), 
  .ch4_coeff_3_0(ch4_select_section_coefficients_coeff_3_0_porty), 
  .ch4_coeff_2_8(ch4_select_section_coefficients_coeff_2_8_porty), 
  .ch4_coeff_2_7(ch4_select_section_coefficients_coeff_2_7_porty), 
  .ch4_coeff_2_6(ch4_select_section_coefficients_coeff_2_6_porty), 
  .ch4_coeff_2_5(ch4_select_section_coefficients_coeff_2_5_porty), 
  .ch4_coeff_2_4(ch4_select_section_coefficients_coeff_2_4_porty), 
  .ch4_coeff_2_3(ch4_select_section_coefficients_coeff_2_3_porty), 
  .ch4_coeff_2_2(ch4_select_section_coefficients_coeff_2_2_porty), 
  .ch4_coeff_2_1(ch4_select_section_coefficients_coeff_2_1_porty), 
  .ch4_coeff_2_0(ch4_select_section_coefficients_coeff_2_0_porty), 
  .ch4_coeff_1_8(ch4_select_section_coefficients_coeff_1_8_porty), 
  .ch4_coeff_1_7(ch4_select_section_coefficients_coeff_1_7_porty), 
  .ch4_coeff_1_6(ch4_select_section_coefficients_coeff_1_6_porty), 
  .ch4_coeff_1_5(ch4_select_section_coefficients_coeff_1_5_porty), 
  .ch4_coeff_1_4(ch4_select_section_coefficients_coeff_1_4_porty), 
  .ch4_coeff_1_3(ch4_select_section_coefficients_coeff_1_3_porty), 
  .ch4_coeff_1_2(ch4_select_section_coefficients_coeff_1_2_porty), 
  .ch4_coeff_1_1(ch4_select_section_coefficients_coeff_1_1_porty), 
  .ch4_coeff_1_0(ch4_select_section_coefficients_coeff_1_0_porty), 

  .ch3_x_adc(ch3_x_adc),//NLC output 
  .ch3_x_lin(ch3_x_lin),//ADC output 
  .ch3_section_limit(ch3_section_limit),//X-value that separates the sections 
  .ch3_recip_stdev_4(ch3_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch3_recip_stdev_3(ch3_select_section_coefficients_stdev_3_porty), 
  .ch3_recip_stdev_2(ch3_select_section_coefficients_stdev_2_porty), 
  .ch3_recip_stdev_1(ch3_select_section_coefficients_stdev_1_porty), 
  .ch3_neg_mean_4(ch3_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch3_neg_mean_3(ch3_select_section_coefficients_mean_3_porty), 
  .ch3_neg_mean_2(ch3_select_section_coefficients_mean_2_porty), 
  .ch3_neg_mean_1(ch3_select_section_coefficients_mean_1_porty), 
  .ch3_coeff_4_8(ch3_select_section_coefficients_coeff_4_8_porty), 
  .ch3_coeff_4_7(ch3_select_section_coefficients_coeff_4_7_porty), 
  .ch3_coeff_4_6(ch3_select_section_coefficients_coeff_4_6_porty), 
  .ch3_coeff_4_5(ch3_select_section_coefficients_coeff_4_5_porty), 
  .ch3_coeff_4_4(ch3_select_section_coefficients_coeff_4_4_porty), 
  .ch3_coeff_4_3(ch3_select_section_coefficients_coeff_4_3_porty), 
  .ch3_coeff_4_2(ch3_select_section_coefficients_coeff_4_2_porty), 
  .ch3_coeff_4_1(ch3_select_section_coefficients_coeff_4_1_porty), 
  .ch3_coeff_4_0(ch3_select_section_coefficients_coeff_4_0_porty), 
  .ch3_coeff_3_8(ch3_select_section_coefficients_coeff_3_8_porty), 
  .ch3_coeff_3_7(ch3_select_section_coefficients_coeff_3_7_porty), 
  .ch3_coeff_3_6(ch3_select_section_coefficients_coeff_3_6_porty), 
  .ch3_coeff_3_5(ch3_select_section_coefficients_coeff_3_5_porty), 
  .ch3_coeff_3_4(ch3_select_section_coefficients_coeff_3_4_porty), 
  .ch3_coeff_3_3(ch3_select_section_coefficients_coeff_3_3_porty), 
  .ch3_coeff_3_2(ch3_select_section_coefficients_coeff_3_2_porty), 
  .ch3_coeff_3_1(ch3_select_section_coefficients_coeff_3_1_porty), 
  .ch3_coeff_3_0(ch3_select_section_coefficients_coeff_3_0_porty), 
  .ch3_coeff_2_8(ch3_select_section_coefficients_coeff_2_8_porty), 
  .ch3_coeff_2_7(ch3_select_section_coefficients_coeff_2_7_porty), 
  .ch3_coeff_2_6(ch3_select_section_coefficients_coeff_2_6_porty), 
  .ch3_coeff_2_5(ch3_select_section_coefficients_coeff_2_5_porty), 
  .ch3_coeff_2_4(ch3_select_section_coefficients_coeff_2_4_porty), 
  .ch3_coeff_2_3(ch3_select_section_coefficients_coeff_2_3_porty), 
  .ch3_coeff_2_2(ch3_select_section_coefficients_coeff_2_2_porty), 
  .ch3_coeff_2_1(ch3_select_section_coefficients_coeff_2_1_porty), 
  .ch3_coeff_2_0(ch3_select_section_coefficients_coeff_2_0_porty), 
  .ch3_coeff_1_8(ch3_select_section_coefficients_coeff_1_8_porty), 
  .ch3_coeff_1_7(ch3_select_section_coefficients_coeff_1_7_porty), 
  .ch3_coeff_1_6(ch3_select_section_coefficients_coeff_1_6_porty), 
  .ch3_coeff_1_5(ch3_select_section_coefficients_coeff_1_5_porty), 
  .ch3_coeff_1_4(ch3_select_section_coefficients_coeff_1_4_porty), 
  .ch3_coeff_1_3(ch3_select_section_coefficients_coeff_1_3_porty), 
  .ch3_coeff_1_2(ch3_select_section_coefficients_coeff_1_2_porty), 
  .ch3_coeff_1_1(ch3_select_section_coefficients_coeff_1_1_porty), 
  .ch3_coeff_1_0(ch3_select_section_coefficients_coeff_1_0_porty), 

  .ch2_x_adc(ch2_x_adc),//NLC output 
  .ch2_x_lin(ch2_x_lin),//ADC output 
  .ch2_section_limit(ch2_section_limit),//X-value that separates the sections 
  .ch2_recip_stdev_4(ch2_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch2_recip_stdev_3(ch2_select_section_coefficients_stdev_3_porty), 
  .ch2_recip_stdev_2(ch2_select_section_coefficients_stdev_2_porty), 
  .ch2_recip_stdev_1(ch2_select_section_coefficients_stdev_1_porty), 
  .ch2_neg_mean_4(ch2_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch2_neg_mean_3(ch2_select_section_coefficients_mean_3_porty), 
  .ch2_neg_mean_2(ch2_select_section_coefficients_mean_2_porty), 
  .ch2_neg_mean_1(ch2_select_section_coefficients_mean_1_porty), 
  .ch2_coeff_4_8(ch2_select_section_coefficients_coeff_4_8_porty), 
  .ch2_coeff_4_7(ch2_select_section_coefficients_coeff_4_7_porty), 
  .ch2_coeff_4_6(ch2_select_section_coefficients_coeff_4_6_porty), 
  .ch2_coeff_4_5(ch2_select_section_coefficients_coeff_4_5_porty), 
  .ch2_coeff_4_4(ch2_select_section_coefficients_coeff_4_4_porty), 
  .ch2_coeff_4_3(ch2_select_section_coefficients_coeff_4_3_porty), 
  .ch2_coeff_4_2(ch2_select_section_coefficients_coeff_4_2_porty), 
  .ch2_coeff_4_1(ch2_select_section_coefficients_coeff_4_1_porty), 
  .ch2_coeff_4_0(ch2_select_section_coefficients_coeff_4_0_porty), 
  .ch2_coeff_3_8(ch2_select_section_coefficients_coeff_3_8_porty), 
  .ch2_coeff_3_7(ch2_select_section_coefficients_coeff_3_7_porty), 
  .ch2_coeff_3_6(ch2_select_section_coefficients_coeff_3_6_porty), 
  .ch2_coeff_3_5(ch2_select_section_coefficients_coeff_3_5_porty), 
  .ch2_coeff_3_4(ch2_select_section_coefficients_coeff_3_4_porty), 
  .ch2_coeff_3_3(ch2_select_section_coefficients_coeff_3_3_porty), 
  .ch2_coeff_3_2(ch2_select_section_coefficients_coeff_3_2_porty), 
  .ch2_coeff_3_1(ch2_select_section_coefficients_coeff_3_1_porty), 
  .ch2_coeff_3_0(ch2_select_section_coefficients_coeff_3_0_porty), 
  .ch2_coeff_2_8(ch2_select_section_coefficients_coeff_2_8_porty), 
  .ch2_coeff_2_7(ch2_select_section_coefficients_coeff_2_7_porty), 
  .ch2_coeff_2_6(ch2_select_section_coefficients_coeff_2_6_porty), 
  .ch2_coeff_2_5(ch2_select_section_coefficients_coeff_2_5_porty), 
  .ch2_coeff_2_4(ch2_select_section_coefficients_coeff_2_4_porty), 
  .ch2_coeff_2_3(ch2_select_section_coefficients_coeff_2_3_porty), 
  .ch2_coeff_2_2(ch2_select_section_coefficients_coeff_2_2_porty), 
  .ch2_coeff_2_1(ch2_select_section_coefficients_coeff_2_1_porty), 
  .ch2_coeff_2_0(ch2_select_section_coefficients_coeff_2_0_porty), 
  .ch2_coeff_1_8(ch2_select_section_coefficients_coeff_1_8_porty), 
  .ch2_coeff_1_7(ch2_select_section_coefficients_coeff_1_7_porty), 
  .ch2_coeff_1_6(ch2_select_section_coefficients_coeff_1_6_porty), 
  .ch2_coeff_1_5(ch2_select_section_coefficients_coeff_1_5_porty), 
  .ch2_coeff_1_4(ch2_select_section_coefficients_coeff_1_4_porty), 
  .ch2_coeff_1_3(ch2_select_section_coefficients_coeff_1_3_porty), 
  .ch2_coeff_1_2(ch2_select_section_coefficients_coeff_1_2_porty), 
  .ch2_coeff_1_1(ch2_select_section_coefficients_coeff_1_1_porty), 
  .ch2_coeff_1_0(ch2_select_section_coefficients_coeff_1_0_porty), 

  .ch1_x_adc(ch1_x_adc),//NLC output 
  .ch1_x_lin(ch1_x_lin),//ADC output 
  .ch1_section_limit(ch1_section_limit),//X-value that separates the sections 
  .ch1_recip_stdev_4(ch1_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch1_recip_stdev_3(ch1_select_section_coefficients_stdev_3_porty), 
  .ch1_recip_stdev_2(ch1_select_section_coefficients_stdev_2_porty), 
  .ch1_recip_stdev_1(ch1_select_section_coefficients_stdev_1_porty), 
  .ch1_neg_mean_4(ch1_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch1_neg_mean_3(ch1_select_section_coefficients_mean_3_porty), 
  .ch1_neg_mean_2(ch1_select_section_coefficients_mean_2_porty), 
  .ch1_neg_mean_1(ch1_select_section_coefficients_mean_1_porty), 
  .ch1_coeff_4_8(ch1_select_section_coefficients_coeff_4_8_porty), 
  .ch1_coeff_4_7(ch1_select_section_coefficients_coeff_4_7_porty), 
  .ch1_coeff_4_6(ch1_select_section_coefficients_coeff_4_6_porty), 
  .ch1_coeff_4_5(ch1_select_section_coefficients_coeff_4_5_porty), 
  .ch1_coeff_4_4(ch1_select_section_coefficients_coeff_4_4_porty), 
  .ch1_coeff_4_3(ch1_select_section_coefficients_coeff_4_3_porty), 
  .ch1_coeff_4_2(ch1_select_section_coefficients_coeff_4_2_porty), 
  .ch1_coeff_4_1(ch1_select_section_coefficients_coeff_4_1_porty), 
  .ch1_coeff_4_0(ch1_select_section_coefficients_coeff_4_0_porty), 
  .ch1_coeff_3_8(ch1_select_section_coefficients_coeff_3_8_porty), 
  .ch1_coeff_3_7(ch1_select_section_coefficients_coeff_3_7_porty), 
  .ch1_coeff_3_6(ch1_select_section_coefficients_coeff_3_6_porty), 
  .ch1_coeff_3_5(ch1_select_section_coefficients_coeff_3_5_porty), 
  .ch1_coeff_3_4(ch1_select_section_coefficients_coeff_3_4_porty), 
  .ch1_coeff_3_3(ch1_select_section_coefficients_coeff_3_3_porty), 
  .ch1_coeff_3_2(ch1_select_section_coefficients_coeff_3_2_porty), 
  .ch1_coeff_3_1(ch1_select_section_coefficients_coeff_3_1_porty), 
  .ch1_coeff_3_0(ch1_select_section_coefficients_coeff_3_0_porty), 
  .ch1_coeff_2_8(ch1_select_section_coefficients_coeff_2_8_porty), 
  .ch1_coeff_2_7(ch1_select_section_coefficients_coeff_2_7_porty), 
  .ch1_coeff_2_6(ch1_select_section_coefficients_coeff_2_6_porty), 
  .ch1_coeff_2_5(ch1_select_section_coefficients_coeff_2_5_porty), 
  .ch1_coeff_2_4(ch1_select_section_coefficients_coeff_2_4_porty), 
  .ch1_coeff_2_3(ch1_select_section_coefficients_coeff_2_3_porty), 
  .ch1_coeff_2_2(ch1_select_section_coefficients_coeff_2_2_porty), 
  .ch1_coeff_2_1(ch1_select_section_coefficients_coeff_2_1_porty), 
  .ch1_coeff_2_0(ch1_select_section_coefficients_coeff_2_0_porty), 
  .ch1_coeff_1_8(ch1_select_section_coefficients_coeff_1_8_porty), 
  .ch1_coeff_1_7(ch1_select_section_coefficients_coeff_1_7_porty), 
  .ch1_coeff_1_6(ch1_select_section_coefficients_coeff_1_6_porty), 
  .ch1_coeff_1_5(ch1_select_section_coefficients_coeff_1_5_porty), 
  .ch1_coeff_1_4(ch1_select_section_coefficients_coeff_1_4_porty), 
  .ch1_coeff_1_3(ch1_select_section_coefficients_coeff_1_3_porty), 
  .ch1_coeff_1_2(ch1_select_section_coefficients_coeff_1_2_porty), 
  .ch1_coeff_1_1(ch1_select_section_coefficients_coeff_1_1_porty), 
  .ch1_coeff_1_0(ch1_select_section_coefficients_coeff_1_0_porty), 

  .ch0_x_adc(ch0_x_adc),//NLC output 
  .ch0_x_lin(ch0_x_lin),//ADC output 
  .ch0_section_limit(ch0_section_limit),//X-value that separates the sections 
  .ch0_recip_stdev_4(ch0_select_section_coefficients_stdev_4_porty),//Reciprocal standard deviation for the centered and scaled fit  
  .ch0_recip_stdev_3(ch0_select_section_coefficients_stdev_3_porty), 
  .ch0_recip_stdev_2(ch0_select_section_coefficients_stdev_2_porty), 
  .ch0_recip_stdev_1(ch0_select_section_coefficients_stdev_1_porty), 
  .ch0_neg_mean_4(ch0_select_section_coefficients_mean_4_porty),//Negative meand for the centered and scaled fit  
  .ch0_neg_mean_3(ch0_select_section_coefficients_mean_3_porty), 
  .ch0_neg_mean_2(ch0_select_section_coefficients_mean_2_porty), 
  .ch0_neg_mean_1(ch0_select_section_coefficients_mean_1_porty), 
  .ch0_coeff_4_8(ch0_select_section_coefficients_coeff_4_8_porty), 
  .ch0_coeff_4_7(ch0_select_section_coefficients_coeff_4_7_porty), 
  .ch0_coeff_4_6(ch0_select_section_coefficients_coeff_4_6_porty), 
  .ch0_coeff_4_5(ch0_select_section_coefficients_coeff_4_5_porty), 
  .ch0_coeff_4_4(ch0_select_section_coefficients_coeff_4_4_porty), 
  .ch0_coeff_4_3(ch0_select_section_coefficients_coeff_4_3_porty), 
  .ch0_coeff_4_2(ch0_select_section_coefficients_coeff_4_2_porty), 
  .ch0_coeff_4_1(ch0_select_section_coefficients_coeff_4_1_porty), 
  .ch0_coeff_4_0(ch0_select_section_coefficients_coeff_4_0_porty), 
  .ch0_coeff_3_8(ch0_select_section_coefficients_coeff_3_8_porty), 
  .ch0_coeff_3_7(ch0_select_section_coefficients_coeff_3_7_porty), 
  .ch0_coeff_3_6(ch0_select_section_coefficients_coeff_3_6_porty), 
  .ch0_coeff_3_5(ch0_select_section_coefficients_coeff_3_5_porty), 
  .ch0_coeff_3_4(ch0_select_section_coefficients_coeff_3_4_porty), 
  .ch0_coeff_3_3(ch0_select_section_coefficients_coeff_3_3_porty), 
  .ch0_coeff_3_2(ch0_select_section_coefficients_coeff_3_2_porty), 
  .ch0_coeff_3_1(ch0_select_section_coefficients_coeff_3_1_porty), 
  .ch0_coeff_3_0(ch0_select_section_coefficients_coeff_3_0_porty), 
  .ch0_coeff_2_8(ch0_select_section_coefficients_coeff_2_8_porty), 
  .ch0_coeff_2_7(ch0_select_section_coefficients_coeff_2_7_porty), 
  .ch0_coeff_2_6(ch0_select_section_coefficients_coeff_2_6_porty), 
  .ch0_coeff_2_5(ch0_select_section_coefficients_coeff_2_5_porty), 
  .ch0_coeff_2_4(ch0_select_section_coefficients_coeff_2_4_porty), 
  .ch0_coeff_2_3(ch0_select_section_coefficients_coeff_2_3_porty), 
  .ch0_coeff_2_2(ch0_select_section_coefficients_coeff_2_2_porty), 
  .ch0_coeff_2_1(ch0_select_section_coefficients_coeff_2_1_porty), 
  .ch0_coeff_2_0(ch0_select_section_coefficients_coeff_2_0_porty), 
  .ch0_coeff_1_8(ch0_select_section_coefficients_coeff_1_8_porty), 
  .ch0_coeff_1_7(ch0_select_section_coefficients_coeff_1_7_porty), 
  .ch0_coeff_1_6(ch0_select_section_coefficients_coeff_1_6_porty), 
  .ch0_coeff_1_5(ch0_select_section_coefficients_coeff_1_5_porty), 
  .ch0_coeff_1_4(ch0_select_section_coefficients_coeff_1_4_porty), 
  .ch0_coeff_1_3(ch0_select_section_coefficients_coeff_1_3_porty), 
  .ch0_coeff_1_2(ch0_select_section_coefficients_coeff_1_2_porty), 
  .ch0_coeff_1_1(ch0_select_section_coefficients_coeff_1_1_porty), 
  .ch0_coeff_1_0(ch0_select_section_coefficients_coeff_1_0_porty) 

);


endmodule

