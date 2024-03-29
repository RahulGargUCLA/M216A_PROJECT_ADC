`timescale 1ns/1ns
module clock_gen(clk, rst); 
  parameter cperiod = 20;
  parameter rperiod = 100;
  parameter cperiodDiv = cperiod;
  output reg clk;
  output reg rst;

  wire [63 : 0] clockDivCounter;
  assign clockDivCounter = cperiod * cperiodDiv / 2;
  initial begin
    clk = 0;
    rst = 1;
    # (cperiod/2);  
    clk= 1;
    # (cperiod/2);  
    clk= 0;
    # (cperiod/2);  
    clk= 1;
    #(rperiod-(3*cperiod/2));  
    rst = 0;
    forever begin
    # clockDivCounter; clk = ~clk;
    end
  end
endmodule
//------------------------------------------
module clocks(clk,rst);
  parameter cperiod = 20;
  parameter rperiod = 100;
  output clk;
  output rst;
wire clk_loc, rst_loc;
  assign rst = rst_loc;
  clock_gen #(.cperiod(cperiod), .rperiod(rperiod), .cperiodDiv(1))
  cgen (.clk(clk), .rst(rst_loc)); 
endmodule
//------------------------------------------------------
module NLC_6th_order_16ch_testbench;

reg isSimulationEnd;

wire [31:0] mismatch;
integer mismatch1=0;
integer loop_cnt=0;

wire clk_int;
wire GlobalReset_int;
wire GlobalResetDsgn;
reg [1:0] operation_mode_i_int;

reg [31:0] recip_stdev_ch0;
reg [31:0] recip_stdev_ch1;
reg [31:0] recip_stdev_ch2;
reg [31:0] recip_stdev_ch3;
reg [31:0] recip_stdev_ch4;
reg [31:0] recip_stdev_ch5;
reg [31:0] recip_stdev_ch6;
reg [31:0] recip_stdev_ch7;
reg [31:0] recip_stdev_ch8;
reg [31:0] recip_stdev_ch9;
reg [31:0] recip_stdev_ch10;
reg [31:0] recip_stdev_ch11;
reg [31:0] recip_stdev_ch12;
reg [31:0] recip_stdev_ch13;
reg [31:0] recip_stdev_ch14;
reg [31:0] recip_stdev_ch15;

reg [31:0] neg_mean_ch0;
reg [31:0] neg_mean_ch1;
reg [31:0] neg_mean_ch2;
reg [31:0] neg_mean_ch3;
reg [31:0] neg_mean_ch4;
reg [31:0] neg_mean_ch5;
reg [31:0] neg_mean_ch6;
reg [31:0] neg_mean_ch7;
reg [31:0] neg_mean_ch8;
reg [31:0] neg_mean_ch9;
reg [31:0] neg_mean_ch10;
reg [31:0] neg_mean_ch11;
reg [31:0] neg_mean_ch12;
reg [31:0] neg_mean_ch13;
reg [31:0] neg_mean_ch14;
reg [31:0] neg_mean_ch15;


reg [31:0] coeff_5_ch0;
reg [31:0] coeff_4_ch0;
reg [31:0] coeff_3_ch0;
reg [31:0] coeff_2_ch0;
reg [31:0] coeff_1_ch0;
reg [31:0] coeff_0_ch0;

reg [31:0] coeff_5_ch1;
reg [31:0] coeff_4_ch1;
reg [31:0] coeff_3_ch1;
reg [31:0] coeff_2_ch1;
reg [31:0] coeff_1_ch1;
reg [31:0] coeff_0_ch1;

reg [31:0] coeff_5_ch2;
reg [31:0] coeff_4_ch2;
reg [31:0] coeff_3_ch2;
reg [31:0] coeff_2_ch2;
reg [31:0] coeff_1_ch2;
reg [31:0] coeff_0_ch2;

reg [31:0] coeff_5_ch3;
reg [31:0] coeff_4_ch3;
reg [31:0] coeff_3_ch3;
reg [31:0] coeff_2_ch3;
reg [31:0] coeff_1_ch3;
reg [31:0] coeff_0_ch3;

reg [31:0] coeff_5_ch4;
reg [31:0] coeff_4_ch4;
reg [31:0] coeff_3_ch4;
reg [31:0] coeff_2_ch4;
reg [31:0] coeff_1_ch4;
reg [31:0] coeff_0_ch4;

reg [31:0] coeff_5_ch5;
reg [31:0] coeff_4_ch5;
reg [31:0] coeff_3_ch5;
reg [31:0] coeff_2_ch5;
reg [31:0] coeff_1_ch5;
reg [31:0] coeff_0_ch5;

reg [31:0] coeff_5_ch6;
reg [31:0] coeff_4_ch6;
reg [31:0] coeff_3_ch6;
reg [31:0] coeff_2_ch6;
reg [31:0] coeff_1_ch6;
reg [31:0] coeff_0_ch6;

reg [31:0] coeff_5_ch7;
reg [31:0] coeff_4_ch7;
reg [31:0] coeff_3_ch7;
reg [31:0] coeff_2_ch7;
reg [31:0] coeff_1_ch7;
reg [31:0] coeff_0_ch7;

reg [31:0] coeff_5_ch8;
reg [31:0] coeff_4_ch8;
reg [31:0] coeff_3_ch8;
reg [31:0] coeff_2_ch8;
reg [31:0] coeff_1_ch8;
reg [31:0] coeff_0_ch8;

reg [31:0] coeff_5_ch9;
reg [31:0] coeff_4_ch9;
reg [31:0] coeff_3_ch9;
reg [31:0] coeff_2_ch9;
reg [31:0] coeff_1_ch9;
reg [31:0] coeff_0_ch9;

reg [31:0] coeff_5_ch10;
reg [31:0] coeff_4_ch10;
reg [31:0] coeff_3_ch10;
reg [31:0] coeff_2_ch10;
reg [31:0] coeff_1_ch10;
reg [31:0] coeff_0_ch10;

reg [31:0] coeff_5_ch11;
reg [31:0] coeff_4_ch11;
reg [31:0] coeff_3_ch11;
reg [31:0] coeff_2_ch11;
reg [31:0] coeff_1_ch11;
reg [31:0] coeff_0_ch11;

reg [31:0] coeff_5_ch12;
reg [31:0] coeff_4_ch12;
reg [31:0] coeff_3_ch12;
reg [31:0] coeff_2_ch12;
reg [31:0] coeff_1_ch12;
reg [31:0] coeff_0_ch12;

reg [31:0] coeff_5_ch13;
reg [31:0] coeff_4_ch13;
reg [31:0] coeff_3_ch13;
reg [31:0] coeff_2_ch13;
reg [31:0] coeff_1_ch13;
reg [31:0] coeff_0_ch13;

reg [31:0] coeff_5_ch14;
reg [31:0] coeff_4_ch14;
reg [31:0] coeff_3_ch14;
reg [31:0] coeff_2_ch14;
reg [31:0] coeff_1_ch14;
reg [31:0] coeff_0_ch14;

reg [31:0] coeff_5_ch15;
reg [31:0] coeff_4_ch15;
reg [31:0] coeff_3_ch15;
reg [31:0] coeff_2_ch15;
reg [31:0] coeff_1_ch15;
reg [31:0] coeff_0_ch15;




wire [20:0] x_lin_int_ch0;
wire [20:0] x_lin_int_ch1;
wire [20:0] x_lin_int_ch2;
wire [20:0] x_lin_int_ch3;
wire [20:0] x_lin_int_ch4;
wire [20:0] x_lin_int_ch5;
wire [20:0] x_lin_int_ch6;
wire [20:0] x_lin_int_ch7;
wire [20:0] x_lin_int_ch8;
wire [20:0] x_lin_int_ch9;
wire [20:0] x_lin_int_ch10;
wire [20:0] x_lin_int_ch11;
wire [20:0] x_lin_int_ch12;
wire [20:0] x_lin_int_ch13;
wire [20:0] x_lin_int_ch14;
wire [20:0] x_lin_int_ch15;
reg [20:0] x_adc_int_ch0;
reg [20:0] x_adc_int_ch1;
reg [20:0] x_adc_int_ch2;
reg [20:0] x_adc_int_ch3;
reg [20:0] x_adc_int_ch4;
reg [20:0] x_adc_int_ch5;
reg [20:0] x_adc_int_ch6;
reg [20:0] x_adc_int_ch7;
reg [20:0] x_adc_int_ch8;
reg [20:0] x_adc_int_ch9;
reg [20:0] x_adc_int_ch10;
reg [20:0] x_adc_int_ch11;
reg [20:0] x_adc_int_ch12;
reg [20:0] x_adc_int_ch13;
reg [20:0] x_adc_int_ch14;
reg [20:0] x_adc_int_ch15;
reg [20:0] x_ref_port_int;
wire [0:0] srdyo_int;
reg [0:0] srdyi_int;
reg [20:0]x_lin_ref_int;
reg [20:0]  x_ref_int;

NLC_opt NLC_opt_wrapper_DUT(
   .clk(clk_int),
   .reset(GlobalResetDsgn),
   .srdyi(srdyi_int),
   .srdyo(srdyo_int),
   .operation_mode_i(operation_mode_i_int),
   .x_ref_i(x_ref_int),
   
   .ch0_x_lin(x_lin_int_ch0),
   .ch0_x_adc(x_adc_int_ch0),
   .ch0_recip_stdev(recip_stdev_ch0),
   .ch0_neg_mean(neg_mean_ch0),
   .ch0_coeff_5(coeff_5_ch0),
   .ch0_coeff_4(coeff_4_ch0),
   .ch0_coeff_3(coeff_3_ch0),
   .ch0_coeff_2(coeff_2_ch0),
   .ch0_coeff_1(coeff_1_ch0),
   .ch0_coeff_0(coeff_0_ch0),

   .ch1_x_lin(x_lin_int_ch1),
   .ch1_x_adc(x_adc_int_ch1),
   .ch1_recip_stdev(recip_stdev_ch1),
   .ch1_neg_mean(neg_mean_ch1),
   .ch1_coeff_5(coeff_5_ch1),
   .ch1_coeff_4(coeff_4_ch1),
   .ch1_coeff_3(coeff_3_ch1),
   .ch1_coeff_2(coeff_2_ch1),
   .ch1_coeff_1(coeff_1_ch1),
   .ch1_coeff_0(coeff_0_ch1),
  
   .ch2_x_lin(x_lin_int_ch2),
   .ch2_x_adc(x_adc_int_ch2),
   .ch2_recip_stdev(recip_stdev_ch2),
   .ch2_neg_mean(neg_mean_ch2),
   .ch2_coeff_5(coeff_5_ch2),
   .ch2_coeff_4(coeff_4_ch2),
   .ch2_coeff_3(coeff_3_ch2),
   .ch2_coeff_2(coeff_2_ch2),
   .ch2_coeff_1(coeff_1_ch2),
   .ch2_coeff_0(coeff_0_ch2),
  
   .ch3_x_lin(x_lin_int_ch3),
   .ch3_x_adc(x_adc_int_ch3),
   .ch3_recip_stdev(recip_stdev_ch3),
   .ch3_neg_mean(neg_mean_ch3),
   .ch3_coeff_5(coeff_5_ch3),
   .ch3_coeff_4(coeff_4_ch3),
   .ch3_coeff_3(coeff_3_ch3),
   .ch3_coeff_2(coeff_2_ch3),
   .ch3_coeff_1(coeff_1_ch3),
   .ch3_coeff_0(coeff_0_ch3),
  
   .ch4_x_lin(x_lin_int_ch4),
   .ch4_x_adc(x_adc_int_ch4),
   .ch4_recip_stdev(recip_stdev_ch4),
   .ch4_neg_mean(neg_mean_ch4),
   .ch4_coeff_5(coeff_5_ch4),
   .ch4_coeff_4(coeff_4_ch4),
   .ch4_coeff_3(coeff_3_ch4),
   .ch4_coeff_2(coeff_2_ch4),
   .ch4_coeff_1(coeff_1_ch4),
   .ch4_coeff_0(coeff_0_ch4),
  
   .ch5_x_lin(x_lin_int_ch5),
   .ch5_x_adc(x_adc_int_ch5),
   .ch5_recip_stdev(recip_stdev_ch5),
   .ch5_neg_mean(neg_mean_ch5),
   .ch5_coeff_5(coeff_5_ch5),
   .ch5_coeff_4(coeff_4_ch5),
   .ch5_coeff_3(coeff_3_ch5),
   .ch5_coeff_2(coeff_2_ch5),
   .ch5_coeff_1(coeff_1_ch5),
   .ch5_coeff_0(coeff_0_ch5),
   
   .ch6_x_lin(x_lin_int_ch6),
   .ch6_x_adc(x_adc_int_ch6),
   .ch6_recip_stdev(recip_stdev_ch6),
   .ch6_neg_mean(neg_mean_ch6),
   .ch6_coeff_5(coeff_5_ch6),
   .ch6_coeff_4(coeff_4_ch6),
   .ch6_coeff_3(coeff_3_ch6),
   .ch6_coeff_2(coeff_2_ch6),
   .ch6_coeff_1(coeff_1_ch6),
   .ch6_coeff_0(coeff_0_ch6),
   
   .ch7_x_lin(x_lin_int_ch7),
   .ch7_x_adc(x_adc_int_ch7),
   .ch7_recip_stdev(recip_stdev_ch7),
   .ch7_neg_mean(neg_mean_ch7),
   .ch7_coeff_5(coeff_5_ch7),
   .ch7_coeff_4(coeff_4_ch7),
   .ch7_coeff_3(coeff_3_ch7),
   .ch7_coeff_2(coeff_2_ch7),
   .ch7_coeff_1(coeff_1_ch7),
   .ch7_coeff_0(coeff_0_ch7),

   .ch8_x_lin(x_lin_int_ch8),
   .ch8_x_adc(x_adc_int_ch8),
   .ch8_recip_stdev(recip_stdev_ch8),
   .ch8_neg_mean(neg_mean_ch8),
   .ch8_coeff_5(coeff_5_ch8),
   .ch8_coeff_4(coeff_4_ch8),
   .ch8_coeff_3(coeff_3_ch8),
   .ch8_coeff_2(coeff_2_ch8),
   .ch8_coeff_1(coeff_1_ch8),
   .ch8_coeff_0(coeff_0_ch8),
  
   .ch9_x_lin(x_lin_int_ch9),
   .ch9_x_adc(x_adc_int_ch9),
   .ch9_recip_stdev(recip_stdev_ch9),
   .ch9_neg_mean(neg_mean_ch9),
   .ch9_coeff_5(coeff_5_ch9),
   .ch9_coeff_4(coeff_4_ch9),
   .ch9_coeff_3(coeff_3_ch9),
   .ch9_coeff_2(coeff_2_ch9),
   .ch9_coeff_1(coeff_1_ch9),
   .ch9_coeff_0(coeff_0_ch9),

   .ch10_x_lin(x_lin_int_ch10),
   .ch10_x_adc(x_adc_int_ch10),
   .ch10_recip_stdev(recip_stdev_ch10),
   .ch10_neg_mean(neg_mean_ch10),
   .ch10_coeff_5(coeff_5_ch10),
   .ch10_coeff_4(coeff_4_ch10),
   .ch10_coeff_3(coeff_3_ch10),
   .ch10_coeff_2(coeff_2_ch10),
   .ch10_coeff_1(coeff_1_ch10),
   .ch10_coeff_0(coeff_0_ch10),

   .ch11_x_lin(x_lin_int_ch11),
   .ch11_x_adc(x_adc_int_ch11),
   .ch11_recip_stdev(recip_stdev_ch11),
   .ch11_neg_mean(neg_mean_ch11),
   .ch11_coeff_5(coeff_5_ch11),
   .ch11_coeff_4(coeff_4_ch11),
   .ch11_coeff_3(coeff_3_ch11),
   .ch11_coeff_2(coeff_2_ch11),
   .ch11_coeff_1(coeff_1_ch11),
   .ch11_coeff_0(coeff_0_ch11),
   
   .ch12_x_lin(x_lin_int_ch12),
   .ch12_x_adc(x_adc_int_ch12),
   .ch12_recip_stdev(recip_stdev_ch12),
   .ch12_neg_mean(neg_mean_ch12),
   .ch12_coeff_5(coeff_5_ch12),
   .ch12_coeff_4(coeff_4_ch12),
   .ch12_coeff_3(coeff_3_ch12),
   .ch12_coeff_2(coeff_2_ch12),
   .ch12_coeff_1(coeff_1_ch12),
   .ch12_coeff_0(coeff_0_ch12),

   .ch13_x_lin(x_lin_int_ch13),
   .ch13_x_adc(x_adc_int_ch13),
   .ch13_recip_stdev(recip_stdev_ch13),
   .ch13_neg_mean(neg_mean_ch13),
   .ch13_coeff_5(coeff_5_ch13),
   .ch13_coeff_4(coeff_4_ch13),
   .ch13_coeff_3(coeff_3_ch13),
   .ch13_coeff_2(coeff_2_ch13),
   .ch13_coeff_1(coeff_1_ch13),
   .ch13_coeff_0(coeff_0_ch13),
   
   .ch14_x_lin(x_lin_int_ch14),
   .ch14_x_adc(x_adc_int_ch14),
   .ch14_recip_stdev(recip_stdev_ch14),
   .ch14_neg_mean(neg_mean_ch14),
   .ch14_coeff_5(coeff_5_ch14),
   .ch14_coeff_4(coeff_4_ch14),
   .ch14_coeff_3(coeff_3_ch14),
   .ch14_coeff_2(coeff_2_ch14),
   .ch14_coeff_1(coeff_1_ch14),
   .ch14_coeff_0(coeff_0_ch14),

   .ch15_x_lin(x_lin_int_ch15),
   .ch15_x_adc(x_adc_int_ch15),
   .ch15_recip_stdev(recip_stdev_ch15),
   .ch15_neg_mean(neg_mean_ch15),
   .ch15_coeff_5(coeff_5_ch15),
   .ch15_coeff_4(coeff_4_ch15),
   .ch15_coeff_3(coeff_3_ch15),
   .ch15_coeff_2(coeff_2_ch15),
   .ch15_coeff_1(coeff_1_ch15),
   .ch15_coeff_0(coeff_0_ch15)
   
);

clocks #(.cperiod(166666), .rperiod(1666660)) CL(
  .clk(clk_int),
  .rst(GlobalReset_int)
  );

  assign GlobalResetDsgn = GlobalReset_int;

  assign mismatch = mismatch1;

  //------------------------------------------------------------
  //-- Process for Rate Domain of clk 
  //-- Inputs are applied on rising edge of clock, 
  //-- Outputs are tested on rising edge of clock as well.
  //------------------------------------------------------------

//-- Apply Input Vectors -----  

  always @(posedge clk_int)
  begin
      if(loop_cnt == 1) begin
         operation_mode_i_int  <=  2'b00;
         // recip_stdev_ch0       <=  32'd921889856;
         // recip_stdev_ch1       <=  32'd921889856;
         // recip_stdev_ch2       <=  32'd921889856;
         // recip_stdev_ch3       <=  32'd921889856;
         // recip_stdev_ch4       <=  32'd921889856;
         // recip_stdev_ch5       <=  32'd921889856;
         // recip_stdev_ch6       <=  32'd921889856;
         // recip_stdev_ch7       <=  32'd921889856;
         // recip_stdev_ch8       <=  32'd921889856;
         // recip_stdev_ch9       <=  32'd921889856;
         // recip_stdev_ch10      <=  32'd921889856;
         // recip_stdev_ch11      <=  32'd921889856;
         // recip_stdev_ch12      <=  32'd921889856;
         // recip_stdev_ch13      <=  32'd921889856;
         // recip_stdev_ch14      <=  32'd921889856;
         // recip_stdev_ch15      <=  32'd921889856;
         // neg_mean_ch0          <=  32'd3342340864;
         // neg_mean_ch1          <=  32'd3342340864;
         // neg_mean_ch2          <=  32'd3342340864;
         // neg_mean_ch3          <=  32'd3342340864;
         // neg_mean_ch4          <=  32'd3342340864;
         // neg_mean_ch5          <=  32'd3342340864;
         // neg_mean_ch6          <=  32'd3342340864;
         // neg_mean_ch7          <=  32'd3342340864;
         // neg_mean_ch8          <=  32'd3342340864;
         // neg_mean_ch9          <=  32'd3342340864;
         // neg_mean_ch10         <=  32'd3342340864;
         // neg_mean_ch11         <=  32'd3342340864;
         // neg_mean_ch12         <=  32'd3342340864;
         // neg_mean_ch13         <=  32'd3342340864;
         // neg_mean_ch14         <=  32'd3342340864;
         // neg_mean_ch15         <=  32'd3342340864;
         // coeff_5_ch0           <=  32'd1140169600;
         // coeff_5_ch1           <=  32'd1140169600;
         // coeff_5_ch2           <=  32'd1140169600;
         // coeff_5_ch3           <=  32'd1140169600;
         // coeff_5_ch4           <=  32'd1140169600;
         // coeff_5_ch5           <=  32'd1140169600;
         // coeff_5_ch6           <=  32'd1140169600;
         // coeff_5_ch7           <=  32'd1140169600;
         // coeff_5_ch8           <=  32'd1140169600;
         // coeff_5_ch9           <=  32'd1140169600;
         // coeff_5_ch10          <=  32'd1140169600;
         // coeff_5_ch11          <=  32'd1140169600;
         // coeff_5_ch12          <=  32'd1140169600;
         // coeff_5_ch13          <=  32'd1140169600;
         // coeff_5_ch14          <=  32'd1140169600;
         // coeff_5_ch15          <=  32'd1140169600;
         // coeff_4_ch0           <=  32'd1130617856;
         // coeff_4_ch1           <=  32'd1130617856;
         // coeff_4_ch2           <=  32'd1130617856;
         // coeff_4_ch3           <=  32'd1130617856;
         // coeff_4_ch4           <=  32'd1130617856;
         // coeff_4_ch5           <=  32'd1130617856;
         // coeff_4_ch6           <=  32'd1130617856;
         // coeff_4_ch7           <=  32'd1130617856;
         // coeff_4_ch8           <=  32'd1130617856;
         // coeff_4_ch9           <=  32'd1130617856;
         // coeff_4_ch10          <=  32'd1130617856;
         // coeff_4_ch11          <=  32'd1130617856;
         // coeff_4_ch12          <=  32'd1130617856;
         // coeff_4_ch13          <=  32'd1130617856;
         // coeff_4_ch14          <=  32'd1130617856;
         // coeff_4_ch15          <=  32'd1130617856;
         // coeff_3_ch0           <=  32'd1161335040;
         // coeff_3_ch1           <=  32'd1161335040;
         // coeff_3_ch2           <=  32'd1161335040;
         // coeff_3_ch3           <=  32'd1161335040;
         // coeff_3_ch4           <=  32'd1161335040;
         // coeff_3_ch5           <=  32'd1161335040;
         // coeff_3_ch6           <=  32'd1161335040;
         // coeff_3_ch7           <=  32'd1161335040;
         // coeff_3_ch8           <=  32'd1161335040;
         // coeff_3_ch9           <=  32'd1161335040;
         // coeff_3_ch10          <=  32'd1161335040;
         // coeff_3_ch11          <=  32'd1161335040;
         // coeff_3_ch12          <=  32'd1161335040;
         // coeff_3_ch13          <=  32'd1161335040;
         // coeff_3_ch14          <=  32'd1161335040;
         // coeff_3_ch15          <=  32'd1161335040;
         // coeff_2_ch0           <=  32'd1144191360;
         // coeff_2_ch1           <=  32'd1144191360;
         // coeff_2_ch2           <=  32'd1144191360;
         // coeff_2_ch3           <=  32'd1144191360;
         // coeff_2_ch4           <=  32'd1144191360;
         // coeff_2_ch5           <=  32'd1144191360;
         // coeff_2_ch6           <=  32'd1144191360;
         // coeff_2_ch7           <=  32'd1144191360;
         // coeff_2_ch8           <=  32'd1144191360;
         // coeff_2_ch9           <=  32'd1144191360;
         // coeff_2_ch10          <=  32'd1144191360;
         // coeff_2_ch11          <=  32'd1144191360;
         // coeff_2_ch12          <=  32'd1144191360;
         // coeff_2_ch13          <=  32'd1144191360;
         // coeff_2_ch14          <=  32'd1144191360;
         // coeff_2_ch15          <=  32'd1144191360;
         // coeff_1_ch0           <=  32'd1204777600;
         // coeff_1_ch1           <=  32'd1204777600;
         // coeff_1_ch2           <=  32'd1204777600;
         // coeff_1_ch3           <=  32'd1204777600;
         // coeff_1_ch4           <=  32'd1204777600;
         // coeff_1_ch5           <=  32'd1204777600;
         // coeff_1_ch6           <=  32'd1204777600;
         // coeff_1_ch7           <=  32'd1204777600;
         // coeff_1_ch8           <=  32'd1204777600;
         // coeff_1_ch9           <=  32'd1204777600;
         // coeff_1_ch10          <=  32'd1204777600;
         // coeff_1_ch11          <=  32'd1204777600;
         // coeff_1_ch12          <=  32'd1204777600;
         // coeff_1_ch13          <=  32'd1204777600;
         // coeff_1_ch14          <=  32'd1204777600;
         // coeff_1_ch15          <=  32'd1204777600;
         // coeff_0_ch0           <=  32'd3295300608;
         // coeff_0_ch1           <=  32'd3295300608;
         // coeff_0_ch2           <=  32'd3295300608;
         // coeff_0_ch3           <=  32'd3295300608;
         // coeff_0_ch4           <=  32'd3295300608;
         // coeff_0_ch5           <=  32'd3295300608;
         // coeff_0_ch6           <=  32'd3295300608;
         // coeff_0_ch7           <=  32'd3295300608;
         // coeff_0_ch8           <=  32'd3295300608;
         // coeff_0_ch9           <=  32'd3295300608;
         // coeff_0_ch10          <=  32'd3295300608;
         // coeff_0_ch11          <=  32'd3295300608;
         // coeff_0_ch12          <=  32'd3295300608;
         // coeff_0_ch13          <=  32'd3295300608;
         // coeff_0_ch14          <=  32'd3295300608;
         // coeff_0_ch15          <=  32'd3295300608;
         // x_adc_int_ch0         <=  23333;
         // x_adc_int_ch1         <=  23334;
         // x_adc_int_ch2         <=  23335;
         // x_adc_int_ch3         <=  23336;
         // x_adc_int_ch4         <=  23337;
         // x_adc_int_ch5         <=  23338;
         // x_adc_int_ch6         <=  23339;
         // x_adc_int_ch7         <=  16666;
         // x_adc_int_ch8         <=  16667;
         // x_adc_int_ch9         <=  16668;
         // x_adc_int_ch10        <=  16669;
         // x_adc_int_ch11        <=  16670;
         // x_adc_int_ch12        <=  16671;
         // x_adc_int_ch13        <=  16672;
         // x_adc_int_ch14        <=  16673;
         // x_adc_int_ch15        <=  23333;
         coeff_0_ch0  <=  32'd3295300608;
         coeff_0_ch10  <=  32'd3378321920;
         coeff_0_ch11  <=  32'd3379769344;
         coeff_0_ch12  <=  32'd3380912896;
         coeff_0_ch1  <=  32'd3350365952;
         coeff_0_ch13  <=  32'd3381636608;
         coeff_0_ch14  <=  32'd3382360576;
         coeff_0_ch15  <=  32'd3383084032;
         coeff_0_ch2  <=  32'd3358694400;
         coeff_0_ch3  <=  32'd3364158208;
         coeff_0_ch4  <=  32'd3367053312;
         coeff_0_ch5  <=  32'd3369948160;
         coeff_0_ch6  <=  32'd3372531712;
         coeff_0_ch7  <=  32'd3373979136;
         coeff_0_ch8  <=  32'd3375426816;
         coeff_0_ch9  <=  32'd3376874240;
         coeff_1_ch0  <=  32'd1204777600;
         coeff_1_ch10  <=  32'd1226544640;
         coeff_1_ch11  <=  32'd1227394304;
         coeff_1_ch12  <=  32'd1228244096;
         coeff_1_ch1  <=  32'd1209767424;
         coeff_1_ch13  <=  32'd1229093760;
         coeff_1_ch14  <=  32'd1229943424;
         coeff_1_ch15  <=  32'd1230793216;
         coeff_1_ch2  <=  32'd1213166208;
         coeff_1_ch3  <=  32'd1216456576;
         coeff_1_ch4  <=  32'd1218156032;
         coeff_1_ch5  <=  32'd1219855488;
         coeff_1_ch6  <=  32'd1221554816;
         coeff_1_ch7  <=  32'd1223254272;
         coeff_1_ch8  <=  32'd1224845184;
         coeff_1_ch9  <=  32'd1225694976;
         coeff_2_ch0  <=  32'd1144191360;
         coeff_2_ch10  <=  32'd1166424448;
         coeff_2_ch11  <=  32'd1167157248;
         coeff_2_ch12  <=  32'd1167889792;
         coeff_2_ch1  <=  32'd1149647360;
         coeff_2_ch13  <=  32'd1168623360;
         coeff_2_ch14  <=  32'd1169356544;
         coeff_2_ch15  <=  32'd1170090112;
         coeff_2_ch2  <=  32'd1152579584;
         coeff_2_ch3  <=  32'd1155511808;
         coeff_2_ch4  <=  32'd1158035840;
         coeff_2_ch5  <=  32'd1159501440;
         coeff_2_ch6  <=  32'd1160967936;
         coeff_2_ch7  <=  32'd1162433408;
         coeff_2_ch8  <=  32'd1163899520;
         coeff_2_ch9  <=  32'd1165366272;
         coeff_3_ch0  <=  32'd1161335040;
         coeff_3_ch10  <=  32'd1183476864;
         coeff_3_ch11  <=  32'd1184232960;
         coeff_3_ch12  <=  32'd1184988928;
         coeff_3_ch1  <=  32'd1166699648;
         coeff_3_ch13  <=  32'd1185745024;
         coeff_3_ch14  <=  32'd1186500864;
         coeff_3_ch15  <=  32'd1187256832;
         coeff_3_ch2  <=  32'd1169723648;
         coeff_3_ch3  <=  32'd1172747648;
         coeff_3_ch4  <=  32'd1175088256;
         coeff_3_ch5  <=  32'd1176600192;
         coeff_3_ch6  <=  32'd1178112384;
         coeff_3_ch7  <=  32'd1179624320;
         coeff_3_ch8  <=  32'd1181136128;
         coeff_3_ch9  <=  32'd1182648064;
         coeff_4_ch0  <=  32'd1130617856;
         coeff_4_ch10  <=  32'd1152050560;
         coeff_4_ch11  <=  32'd1152984320;
         coeff_4_ch12  <=  32'd1153918336;
         coeff_4_ch1  <=  32'd1135273472;
         coeff_4_ch13  <=  32'd1154850816;
         coeff_4_ch14  <=  32'd1155783936;
         coeff_4_ch15  <=  32'd1156716672;
         coeff_4_ch2  <=  32'd1139006720;
         coeff_4_ch3  <=  32'd1141795200;
         coeff_4_ch4  <=  32'd1143662208;
         coeff_4_ch5  <=  32'd1145529472;
         coeff_4_ch6  <=  32'd1147395328;
         coeff_4_ch7  <=  32'd1149251072;
         coeff_4_ch8  <=  32'd1150184576;
         coeff_4_ch9  <=  32'd1151117440;
         coeff_5_ch0  <=  32'd1140169600;
         coeff_5_ch10  <=  32'd1161311232;
         coeff_5_ch11  <=  32'd1162317184;
         coeff_5_ch12  <=  32'd1163323136;
         coeff_5_ch1  <=  32'd1144534144;
         coeff_5_ch13  <=  32'd1164328832;
         coeff_5_ch14  <=  32'd1165335040;
         coeff_5_ch15  <=  32'd1166178944;
         coeff_5_ch2  <=  32'd1148557952;
         coeff_5_ch3  <=  32'd1150910720;
         coeff_5_ch4  <=  32'd1152922880;
         coeff_5_ch5  <=  32'd1154934784;
         coeff_5_ch6  <=  32'd1156946304;
         coeff_5_ch7  <=  32'd1158293120;
         coeff_5_ch8  <=  32'd1159299456;
         coeff_5_ch9  <=  32'd1160305280;
         neg_mean_ch0  <=  32'd3342340864;
         neg_mean_ch10  <=  32'd3342340864;
         neg_mean_ch11  <=  32'd3342340864;
         neg_mean_ch12  <=  32'd3342340864;
         neg_mean_ch1  <=  32'd3342340864;
         neg_mean_ch13  <=  32'd3342340864;
         neg_mean_ch14  <=  32'd3342340864;
         neg_mean_ch15  <=  32'd3342340864;
         neg_mean_ch2  <=  32'd3342340864;
         neg_mean_ch3  <=  32'd3342340864;
         neg_mean_ch4  <=  32'd3342340864;
         neg_mean_ch5  <=  32'd3342340864;
         neg_mean_ch6  <=  32'd3342340864;
         neg_mean_ch7  <=  32'd3342340864;
         neg_mean_ch8  <=  32'd3342340864;
         neg_mean_ch9  <=  32'd3342340864;
         // out_ch0  <=  32'hC4802141;
         // out_ch0  <=  -512.5195778;
         // out_ch10  <=  32'hC95CF2DB;
         // out_ch10  <=  -452502.8435;
         // out_ch11  <=  32'hC972FDC9;
         // out_ch11  <=  -497646.2706;
         // out_ch12  <=  32'hC98483C1;
         // out_ch12  <=  -542780.0807;
         // out_ch1  <=  32'hC7B2BA79;
         // out_ch13  <=  32'hC98F8805;
         // out_ch13  <=  -587904.2837;
         // out_ch14  <=  32'hC99A8CAE;
         // out_ch1  <=  -45754.4713;
         // out_ch14  <=  -633034.875;
         // out_ch15  <=  32'hC9A58EBE;
         // out_ch15  <=  -678123.8469;
         // out_ch2  <=  32'hC831B4B4;
         // out_ch2  <=  -90985.40466;
         // out_ch3  <=  -136209.7263;
         // out_ch3  <=  32'hC885046E;
         // out_ch4  <=  -181424.4363;
         // out_ch4  <=  32'hC8B12C1C;
         // out_ch5  <=  -226625.5341;
         // out_ch5  <=  32'hC8DD5062;
         // out_ch6  <=  -271817.0202;
         // out_ch6  <=  32'hC904B921;
         // out_ch7  <=  -316998.894;
         // out_ch7  <=  32'hC91AC8DD;
         // out_ch8  <=  32'hC930D865;
         // out_ch8  <=  -362179.1567;
         // out_ch9  <=  32'hC946E5BA;
         // out_ch9  <=  -407341.8046;
         recip_stdev_ch0  <=  32'd921889856;
         recip_stdev_ch10  <=  32'd921889856;
         recip_stdev_ch11  <=  32'd921889856;
         recip_stdev_ch12  <=  32'd921889856;
         recip_stdev_ch1  <=  32'd921889856;
         recip_stdev_ch13  <=  32'd921889856;
         recip_stdev_ch14  <=  32'd921889856;
         recip_stdev_ch15  <=  32'd921889856;
         recip_stdev_ch2  <=  32'd921889856;
         recip_stdev_ch3  <=  32'd921889856;
         recip_stdev_ch4  <=  32'd921889856;
         recip_stdev_ch5  <=  32'd921889856;
         recip_stdev_ch6  <=  32'd921889856;
         recip_stdev_ch7  <=  32'd921889856;
         recip_stdev_ch8  <=  32'd921889856;
         recip_stdev_ch9  <=  32'd921889856;
         x_adc_int_ch0  <=  32'd23333;
         x_adc_int_ch10  <=  32'd23833;
         x_adc_int_ch11  <=  32'd23883;
         x_adc_int_ch12  <=  32'd23933;
         x_adc_int_ch1  <=  32'd23383;
         x_adc_int_ch13  <=  32'd23983;
         x_adc_int_ch14  <=  32'd24033;
         x_adc_int_ch15  <=  32'd24083;
         x_adc_int_ch2  <=  32'd23433;
         x_adc_int_ch3  <=  32'd23483;
         x_adc_int_ch4  <=  32'd23533;
         x_adc_int_ch5  <=  32'd23583;
         x_adc_int_ch6  <=  32'd23633;
         x_adc_int_ch7  <=  32'd23683;
         x_adc_int_ch8  <=  32'd23733;
         x_adc_int_ch9  <=  32'd23783;

         x_ref_int             <=  0;
         srdyi_int             <=  1;
      end else if(loop_cnt == 201) begin
         operation_mode_i_int  <=  2'b10;
         recip_stdev_ch0       <=  32'd921889856;
         x_adc_int_ch0         <=  32'd23333;
         x_ref_int             <=  21'h1FFE00;
         neg_mean_ch0          <=  32'd3342340864;
         srdyi_int             <=  1;
      end else if(loop_cnt == 401) begin
         operation_mode_i_int  <=  2'b10;
         recip_stdev_ch0       <=  32'd921889856;
         x_adc_int_ch0         <=  32'd23333;
         x_ref_int             <=  21'h1EEE00;
         neg_mean_ch0          <=  32'd3342340864;
         srdyi_int             <=  1;
      end else if(loop_cnt == 601) begin
         operation_mode_i_int  <=  2'b10;
         recip_stdev_ch0       <=  32'd921889856;
         x_adc_int_ch0         <=  32'd23333;
         x_ref_int             <=  21'h1FFF00;
         neg_mean_ch0          <=  32'd3342340864;
         srdyi_int             <=  1;
      end else if(loop_cnt == 801) begin
         operation_mode_i_int  <=  2'b10;
         recip_stdev_ch0       <=  32'd921889856;
         x_adc_int_ch0         <=  32'd23333;
         x_ref_int             <=  21'h0FFE00;
         neg_mean_ch0          <=  32'd3342340864;
         srdyi_int             <=  1;
      end else begin
        operation_mode_i_int <= 0;
        recip_stdev_ch0    <= 0; 
        recip_stdev_ch1    <= 0; 
        recip_stdev_ch2    <= 0; 
        recip_stdev_ch3    <= 0; 
        recip_stdev_ch4    <= 0; 
        recip_stdev_ch5    <= 0; 
        recip_stdev_ch6    <= 0; 
        recip_stdev_ch7    <= 0; 
        recip_stdev_ch8    <= 0; 
        recip_stdev_ch9    <= 0; 
        recip_stdev_ch10   <= 0;
        recip_stdev_ch11   <= 0;
        recip_stdev_ch12   <= 0;
        recip_stdev_ch13   <= 0;
        recip_stdev_ch14   <= 0;        
        recip_stdev_ch15   <= 0;
        neg_mean_ch0    <= 0; 
        neg_mean_ch1    <= 0; 
        neg_mean_ch2    <= 0; 
        neg_mean_ch3    <= 0; 
        neg_mean_ch4    <= 0; 
        neg_mean_ch5    <= 0; 
        neg_mean_ch6    <= 0; 
        neg_mean_ch7    <= 0; 
        neg_mean_ch8    <= 0; 
        neg_mean_ch9    <= 0; 
        neg_mean_ch10   <= 0;
        neg_mean_ch11   <= 0;
        neg_mean_ch12   <= 0;
        neg_mean_ch13   <= 0;
        neg_mean_ch14   <= 0;
        neg_mean_ch15   <= 0;
        coeff_5_ch0    <= 0; 
        coeff_5_ch1    <= 0;
        coeff_5_ch2    <= 0;
        coeff_5_ch3    <= 0;
        coeff_5_ch4    <= 0;
        coeff_5_ch5    <= 0;
        coeff_5_ch6    <= 0;
        coeff_5_ch7    <= 0;
        coeff_5_ch8    <= 0;
        coeff_5_ch9    <= 0;
        coeff_5_ch10   <= 0;
        coeff_5_ch11   <= 0;
        coeff_5_ch12   <= 0;
        coeff_5_ch13   <= 0;
        coeff_5_ch14   <= 0;
        coeff_5_ch15   <= 0;
        coeff_4_ch0    <= 0;
        coeff_4_ch1    <= 0;
        coeff_4_ch2    <= 0;
        coeff_4_ch3    <= 0;
        coeff_4_ch4    <= 0;
        coeff_4_ch5    <= 0;
        coeff_4_ch6    <= 0;
        coeff_4_ch7    <= 0;
        coeff_4_ch8    <= 0;
        coeff_4_ch9    <= 0;
        coeff_4_ch10   <= 0;
        coeff_4_ch11   <= 0;
        coeff_4_ch12   <= 0;
        coeff_4_ch13   <= 0;
        coeff_4_ch14   <= 0;
        coeff_4_ch15   <= 0;
        coeff_3_ch0    <= 0;        
        coeff_3_ch1    <= 0;        
        coeff_3_ch2    <= 0;        
        coeff_3_ch3    <= 0;        
        coeff_3_ch4    <= 0;        
        coeff_3_ch5    <= 0;        
        coeff_3_ch6    <= 0;        
        coeff_3_ch7    <= 0;        
        coeff_3_ch8    <= 0;        
        coeff_3_ch9    <= 0;        
        coeff_3_ch10   <= 0;        
        coeff_3_ch11   <= 0;        
        coeff_3_ch12   <= 0;        
        coeff_3_ch13   <= 0;        
        coeff_3_ch14   <= 0;        
        coeff_3_ch15   <= 0;        
        coeff_2_ch0    <= 0;
        coeff_2_ch1    <= 0;
        coeff_2_ch2    <= 0;
        coeff_2_ch3    <= 0;
        coeff_2_ch4    <= 0;
        coeff_2_ch5    <= 0;
        coeff_2_ch6    <= 0;
        coeff_2_ch7    <= 0;
        coeff_2_ch8    <= 0;
        coeff_2_ch9    <= 0;
        coeff_2_ch10   <= 0;
        coeff_2_ch11   <= 0;
        coeff_2_ch12   <= 0;
        coeff_2_ch13   <= 0;
        coeff_2_ch14   <= 0;
        coeff_2_ch15   <= 0;
        coeff_1_ch0    <= 0;
        coeff_1_ch1    <= 0;
        coeff_1_ch2    <= 0;
        coeff_1_ch3    <= 0;
        coeff_1_ch4    <= 0;
        coeff_1_ch5    <= 0;
        coeff_1_ch6    <= 0;
        coeff_1_ch7    <= 0;
        coeff_1_ch8    <= 0;
        coeff_1_ch9    <= 0;
        coeff_1_ch10   <= 0;
        coeff_1_ch11   <= 0;
        coeff_1_ch12   <= 0;        
        coeff_1_ch13   <= 0;        
        coeff_1_ch14   <= 0;        
        coeff_1_ch15   <= 0;        
        coeff_0_ch0    <= 0;
        coeff_0_ch1    <= 0;
        coeff_0_ch2    <= 0;
        coeff_0_ch3    <= 0;
        coeff_0_ch4    <= 0;
        coeff_0_ch5    <= 0;
        coeff_0_ch6    <= 0;
        coeff_0_ch7    <= 0;
        coeff_0_ch8    <= 0;
        coeff_0_ch9    <= 0;
        coeff_0_ch10   <= 0;
        coeff_0_ch11   <= 0;
        coeff_0_ch12   <= 0;        
        coeff_0_ch13   <= 0;        
        coeff_0_ch14   <= 0;        
        coeff_0_ch15   <= 0;        
        x_adc_int_ch0  <= 0; 
        x_adc_int_ch1  <= 0; 
        x_adc_int_ch2  <= 0; 
        x_adc_int_ch3  <= 0; 
        x_adc_int_ch4  <= 0; 
        x_adc_int_ch5  <= 0; 
        x_adc_int_ch6  <= 0; 
        x_adc_int_ch7  <= 0; 
        x_adc_int_ch8  <= 0; 
        x_adc_int_ch9  <= 0; 
        x_adc_int_ch10 <= 0;
        x_adc_int_ch11 <= 0;
        x_adc_int_ch12 <= 0;
        x_adc_int_ch13 <= 0;
        x_adc_int_ch14 <= 0;
        x_adc_int_ch15 <= 0;

        x_ref_port_int <= 0;
        srdyi_int <= 0;
      end

  end



//-- Test Outputs-----
  always@(posedge clk_int) begin 
      if (GlobalReset_int==0) begin 
            if(loop_cnt>=1000) begin
               $finish;
            end
      end
      loop_cnt <= loop_cnt + 1;
  end //always

endmodule
