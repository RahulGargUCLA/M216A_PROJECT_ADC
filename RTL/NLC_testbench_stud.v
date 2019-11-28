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

         recip_stdev_ch0  <=  32'd921889856;
         recip_stdev_ch1  <=  32'd1073741824;
         recip_stdev_ch2  <=  32'd1073741824;
         recip_stdev_ch3  <=  32'd1073741824;
         recip_stdev_ch4  <=  32'd1073741824;
         recip_stdev_ch5  <=  32'd1073741824;
         recip_stdev_ch6  <=  32'd1073741824;
         recip_stdev_ch7  <=  32'd1073741824;
         recip_stdev_ch8  <=  32'd1073741824;
         recip_stdev_ch9  <=  32'd1073741824;
         recip_stdev_ch10  <=  32'd1073741824;
         recip_stdev_ch11  <=  32'd1073741824;
         recip_stdev_ch12  <=  32'd1073741824;
         recip_stdev_ch13  <=  32'd1073741824;
         recip_stdev_ch14  <=  32'd1073741824;
         recip_stdev_ch15  <=  32'd1073741824;
         neg_mean_ch0  <=  32'd3342340864;
         neg_mean_ch1  <=  32'd879037952;
         neg_mean_ch2  <=  32'd852988928;
         neg_mean_ch3  <=  32'd852988928;
         neg_mean_ch4  <=  32'd852988928;
         neg_mean_ch5  <=  32'd852988928;
         neg_mean_ch6  <=  32'd852988928;
         neg_mean_ch7  <=  32'd852988928;
         neg_mean_ch8  <=  32'd852988928;
         neg_mean_ch9  <=  32'd852988928;
         neg_mean_ch10  <=  32'd852988928;
         neg_mean_ch11  <=  32'd852988928;
         neg_mean_ch12  <=  32'd852988928;
         neg_mean_ch13  <=  32'd852988928;
         neg_mean_ch14  <=  32'd852988928;
         neg_mean_ch15  <=  32'd3013717760;
         coeff_0_ch0  <=  32'd3308753664;
         coeff_1_ch0  <=  32'd1204777728;
         coeff_2_ch0  <=  32'd1144191232;
         coeff_3_ch0  <=  32'd1161334912;
         coeff_4_ch0  <=  32'd1130617984;
         coeff_5_ch0  <=  32'd1140169984;
         coeff_0_ch1  <=  32'd3315223040;
         coeff_1_ch1  <=  32'd1204777728;
         coeff_2_ch1  <=  32'd1144191232;
         coeff_3_ch1  <=  32'd1161334784;
         coeff_4_ch1  <=  32'd1130618112;
         coeff_5_ch1  <=  32'd1140169856;
         coeff_0_ch2  <=  32'd3319319040;
         coeff_1_ch2  <=  32'd1204777728;
         coeff_2_ch2  <=  32'd1144191360;
         coeff_3_ch2  <=  32'd1161334784;
         coeff_4_ch2  <=  32'd1130618112;
         coeff_5_ch2  <=  32'd1140169984;
         coeff_0_ch3  <=  32'd3322651904;
         coeff_1_ch3  <=  32'd1204777728;
         coeff_2_ch3  <=  32'd1144191360;
         coeff_3_ch3  <=  32'd1161334528;
         coeff_4_ch3  <=  32'd1130618112;
         coeff_5_ch3  <=  32'd1140170880;
         coeff_0_ch4  <=  32'd3324699904;
         coeff_1_ch4  <=  32'd1204777728;
         coeff_2_ch4  <=  32'd1144191360;
         coeff_3_ch4  <=  32'd1161334528;
         coeff_4_ch4  <=  32'd1130618112;
         coeff_5_ch4  <=  32'd1140170624;
         coeff_0_ch5  <=  32'd3326747904;
         coeff_1_ch5  <=  32'd1204777728;
         coeff_2_ch5  <=  32'd1144191360;
         coeff_3_ch5  <=  32'd1161334656;
         coeff_4_ch5  <=  32'd1130618112;
         coeff_5_ch5  <=  32'd1140170240;
         coeff_0_ch6  <=  32'd3328795904;
         coeff_1_ch6  <=  32'd1204777728;
         coeff_2_ch6  <=  32'd1144191488;
         coeff_3_ch6  <=  32'd1161334784;
         coeff_4_ch6  <=  32'd1130617856;
         coeff_5_ch6  <=  32'd1140169984;
         coeff_0_ch7  <=  32'd3330560512;
         coeff_1_ch7  <=  32'd1204777728;
         coeff_2_ch7  <=  32'd1144191360;
         coeff_3_ch7  <=  32'd1161334784;
         coeff_4_ch7  <=  32'd1130618112;
         coeff_5_ch7  <=  32'd1140170112;
         coeff_0_ch8  <=  32'd3331584512;
         coeff_1_ch8  <=  32'd1204777728;
         coeff_2_ch8  <=  32'd1144191360;
         coeff_3_ch8  <=  32'd1161334784;
         coeff_4_ch8  <=  32'd1130618112;
         coeff_5_ch8  <=  32'd1140169984;
         coeff_0_ch9  <=  32'd3332608512;
         coeff_1_ch9  <=  32'd1204777728;
         coeff_2_ch9  <=  32'd1144191488;
         coeff_3_ch9  <=  32'd1161334656;
         coeff_4_ch9  <=  32'd1130617728;
         coeff_5_ch9  <=  32'd1140170240;
         coeff_0_ch10  <=  32'd3333632512;
         coeff_1_ch10  <=  32'd1204777728;
         coeff_2_ch10  <=  32'd1144191488;
         coeff_3_ch10  <=  32'd1161334656;
         coeff_4_ch10  <=  32'd1130617856;
         coeff_5_ch10  <=  32'd1140170496;
         coeff_0_ch11  <=  32'd3334656512;
         coeff_1_ch11  <=  32'd1204777728;
         coeff_2_ch11  <=  32'd1144191488;
         coeff_3_ch11  <=  32'd1161334656;
         coeff_4_ch11  <=  32'd1130617984;
         coeff_5_ch11  <=  32'd1140170368;
         coeff_0_ch12  <=  32'd3335680512;
         coeff_1_ch12  <=  32'd1204777728;
         coeff_2_ch12  <=  32'd1144191616;
         coeff_3_ch12  <=  32'd1161334656;
         coeff_4_ch12  <=  32'd1130617600;
         coeff_5_ch12  <=  32'd1140170240;
         coeff_0_ch13  <=  32'd3336704512;
         coeff_1_ch13  <=  32'd1204777728;
         coeff_2_ch13  <=  32'd1144191616;
         coeff_3_ch13  <=  32'd1161334656;
         coeff_4_ch13  <=  32'd1130617600;
         coeff_5_ch13  <=  32'd1140170112;
         coeff_0_ch14  <=  32'd3337728512;
         coeff_1_ch14  <=  32'd1204777728;
         coeff_2_ch14  <=  32'd1144191488;
         coeff_3_ch14  <=  32'd1161334784;
         coeff_4_ch14  <=  32'd1130617856;
         coeff_5_ch14  <=  32'd1140169984;
         coeff_0_ch15  <=  32'd3338709248;
         coeff_1_ch15  <=  32'd1204777600;
         coeff_2_ch15  <=  32'd1144191360;
         coeff_3_ch15  <=  32'd1161334912;
         coeff_4_ch15  <=  32'd1130617856;
         coeff_5_ch15  <=  32'd1140169728;
         x_adc_int_ch0  <=  32'd23283;
         x_adc_int_ch1  <=  32'd23233;
         x_adc_int_ch2  <=  32'd23183;
         x_adc_int_ch3  <=  32'd23133;
         x_adc_int_ch4  <=  32'd23083;
         x_adc_int_ch5  <=  32'd23033;
         x_adc_int_ch6  <=  32'd22983;
         x_adc_int_ch7  <=  32'd22933;
         x_adc_int_ch8  <=  32'd22883;
         x_adc_int_ch9  <=  32'd22833;
         x_adc_int_ch10  <=  32'd22783;
         x_adc_int_ch11  <=  32'd22733;
         x_adc_int_ch12  <=  32'd22683;
         x_adc_int_ch13  <=  32'd22633;
         x_adc_int_ch14  <=  32'd22583;
         x_adc_int_ch15  <=  32'd22533;
         // out_ch0  <=  32'hC53E4438;
         // out_ch1  <=  32'h6830086C;
         // out_ch2  <=  32'h682E25F2;
         // out_ch3  <=  32'h682C49B5;
         // out_ch4  <=  32'h682A6E6B;
         // out_ch5  <=  32'h682896E5;
         // out_ch6  <=  32'h6826C3CD;
         // out_ch7  <=  32'h6824F5C5;
         // out_ch8  <=  32'h68232B15;
         // out_ch9  <=  32'h68216561;
         // out_ch10  <=  32'h681FA39F;
         // out_ch11  <=  32'h681DE4D2;
         // out_ch12  <=  32'h681C29F0;
         // out_ch13  <=  32'h681A72F3;
         // out_ch14  <=  32'h6818BFD3;
         // out_ch15  <=  32'h6817103C;

         x_ref_port_int        <=  0;
         srdyi_int             <=  1;
      end else if(loop_cnt == 201) begin
        operation_mode_i_int <= 2'b11;
        x_adc_int_ch0 <= 16666;
        x_adc_int_ch1 <= 16667;
        x_adc_int_ch2 <= 16668;
        x_adc_int_ch3 <= 16669;
        x_adc_int_ch4 <= 16670;
        x_adc_int_ch5 <= 16671;
        x_adc_int_ch6 <= 16672;
        x_adc_int_ch7 <= 23342;
        x_adc_int_ch8 <= 23336;
        x_adc_int_ch9 <= 23335;
        x_adc_int_ch10 <= 23338;
        x_adc_int_ch11 <= 23335;
        x_adc_int_ch12 <= 23334;
        x_adc_int_ch13 <= 23333;
        x_adc_int_ch14 <= 24000;
        x_adc_int_ch15 <= 23332;

        srdyi_int <= 1;
      end else if(loop_cnt == 401) begin
        operation_mode_i_int <= 2'b11;
        x_adc_int_ch0 <= 20000;
        x_adc_int_ch1 <= 20000;
        x_adc_int_ch2 <= 20000;
        x_adc_int_ch3 <= 20000;
        x_adc_int_ch4 <= 20000;
        x_adc_int_ch5 <= 20000;
        x_adc_int_ch6 <= 20000;
        x_adc_int_ch7 <= 20000;
        x_adc_int_ch8 <= 20000;
        x_adc_int_ch9 <= 20000;
        x_adc_int_ch10 <= 20000;
        x_adc_int_ch11 <= 20000;
        x_adc_int_ch12 <= 20000;
        x_adc_int_ch13 <= 20000;
        x_adc_int_ch14 <= 20000;
        x_adc_int_ch15 <= 20000;

        srdyi_int <= 1;
      end else if(loop_cnt == 601) begin
        operation_mode_i_int <= 2'b11;
        x_adc_int_ch0 <= 15000;
        x_adc_int_ch1 <= 15000;
        x_adc_int_ch2 <= 15000;
        x_adc_int_ch3 <= 15000;
        x_adc_int_ch4 <= 15000;
        x_adc_int_ch5 <= 15000;
        x_adc_int_ch6 <= 15000;
        x_adc_int_ch7 <= 15000;
        x_adc_int_ch8 <= 15000;
        x_adc_int_ch9 <= 15000;
        x_adc_int_ch10 <= 15000;
        x_adc_int_ch11 <= 15000;
        x_adc_int_ch12 <= 15000;
        x_adc_int_ch13 <= 15000;
        x_adc_int_ch14 <= 15000;
        x_adc_int_ch15 <= 15000;

        srdyi_int <= 1;
      end else if(loop_cnt == 801) begin
        operation_mode_i_int <= 2'b11;
        x_adc_int_ch0 <= 25000;
        x_adc_int_ch1 <= 25000;
        x_adc_int_ch2 <= 25000;
        x_adc_int_ch3 <= 25000;
        x_adc_int_ch4 <= 25000;
        x_adc_int_ch5 <= 25000;
        x_adc_int_ch6 <= 25000;
        x_adc_int_ch7 <= 25000;
        x_adc_int_ch8 <= 25000;
        x_adc_int_ch9 <= 25000;
        x_adc_int_ch10 <= 25000;
        x_adc_int_ch11 <= 25000;
        x_adc_int_ch12 <= 25000;
        x_adc_int_ch13 <= 25000;
        x_adc_int_ch14 <= 25000;
        x_adc_int_ch15 <= 25000;

        srdyi_int <= 1;
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
