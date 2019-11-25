//Please do not change the name and port of the exitingance module

module NLC_opt(
	
	//System clock and reset
	input wire clk,
	input wire reset,

	//Input valid and output read signal(one for all 16ch)
	input wire srdyi,
	output reg srdyo,

	//Calibration control and reference ADC input
	//00 Fit the ADC with external coefficients feed with the ADC reading
	//01 Upgrade the fitting to 8th order with provided adc reading, coefficients and reference x
	//10 Calculate the fitting error of current coeefficients set with giving x reading, and x refe
	//11 Fit the ADC reading with stored coefficients
	input wire [1:0]operation_mode_i, 
	input wire [20:0] x_ref_i,

	//NLC IO ports
	//IO ports for ch15
	output wire [20:0] ch15_x_lin,
	input wire [20:0] ch15_x_adc, 
	input wire [31:0] ch15_recip_stdev,
	input wire [31:0] ch15_neg_mean,
	input wire [31:0] ch15_coeff_5,
	input wire [31:0] ch15_coeff_4,
	input wire [31:0] ch15_coeff_3,
	input wire [31:0] ch15_coeff_2,
	input wire [31:0] ch15_coeff_1,
	input wire [31:0] ch15_coeff_0,

	//IO ports for ch14
	output wire [20:0] ch14_x_lin,
	input wire [20:0] ch14_x_adc,
	input wire [31:0] ch14_recip_stdev,
	input wire [31:0] ch14_neg_mean,
	input wire [31:0] ch14_coeff_5,
	input wire [31:0] ch14_coeff_4,
	input wire [31:0] ch14_coeff_3,
	input wire [31:0] ch14_coeff_2,
	input wire [31:0] ch14_coeff_1,
	input wire [31:0] ch14_coeff_0,

	//IO ports for ch13
	output wire [20:0] ch13_x_lin,
	input wire [20:0] ch13_x_adc,
	input wire [31:0] ch13_recip_stdev,
	input wire [31:0] ch13_neg_mean,
	input wire [31:0] ch13_coeff_5,
	input wire [31:0] ch13_coeff_4,
	input wire [31:0] ch13_coeff_3,
	input wire [31:0] ch13_coeff_2,
	input wire [31:0] ch13_coeff_1,
	input wire [31:0] ch13_coeff_0,

	//IO ports for ch12
	output wire [20:0] ch12_x_lin,
	input wire [20:0] ch12_x_adc,
	input wire [31:0] ch12_recip_stdev,
	input wire [31:0] ch12_neg_mean,
	input wire [31:0] ch12_coeff_5,
	input wire [31:0] ch12_coeff_4,
	input wire [31:0] ch12_coeff_3,
	input wire [31:0] ch12_coeff_2,
	input wire [31:0] ch12_coeff_1,
	input wire [31:0] ch12_coeff_0,

	//IO ports for ch11
	output wire [20:0] ch11_x_lin,
	input wire [20:0] ch11_x_adc,
	input wire [31:0] ch11_recip_stdev,
	input wire [31:0] ch11_neg_mean,
	input wire [31:0] ch11_coeff_5,
	input wire [31:0] ch11_coeff_4,
	input wire [31:0] ch11_coeff_3,
	input wire [31:0] ch11_coeff_2,
	input wire [31:0] ch11_coeff_1,
	input wire [31:0] ch11_coeff_0,

	//IO ports for ch10
	output wire [20:0] ch10_x_lin,
	input wire [20:0] ch10_x_adc,
	input wire [31:0] ch10_recip_stdev,
	input wire [31:0] ch10_neg_mean,
	input wire [31:0] ch10_coeff_5,
	input wire [31:0] ch10_coeff_4,
	input wire [31:0] ch10_coeff_3,
	input wire [31:0] ch10_coeff_2,
	input wire [31:0] ch10_coeff_1,
	input wire [31:0] ch10_coeff_0,

	//IO ports for ch5
	output wire [20:0] ch9_x_lin,
	input wire [20:0] ch9_x_adc,
	input wire [31:0] ch9_recip_stdev,
	input wire [31:0] ch9_neg_mean,
	input wire [31:0] ch9_coeff_5,
	input wire [31:0] ch9_coeff_4,
	input wire [31:0] ch9_coeff_3,
	input wire [31:0] ch9_coeff_2,
	input wire [31:0] ch9_coeff_1,
	input wire [31:0] ch9_coeff_0,

	//IO ports for ch8
	output wire [20:0] ch8_x_lin,
	input wire [20:0] ch8_x_adc,
	input wire [31:0] ch8_recip_stdev,
	input wire [31:0] ch8_neg_mean,
	input wire [31:0] ch8_coeff_5,
	input wire [31:0] ch8_coeff_4,
	input wire [31:0] ch8_coeff_3,
	input wire [31:0] ch8_coeff_2,
	input wire [31:0] ch8_coeff_1,
	input wire [31:0] ch8_coeff_0,

	//IO ports for ch7
	output wire [20:0] ch7_x_lin,
	input wire [20:0] ch7_x_adc,
	input wire [31:0] ch7_recip_stdev,
	input wire [31:0] ch7_neg_mean,
	input wire [31:0] ch7_coeff_5,
	input wire [31:0] ch7_coeff_4,
	input wire [31:0] ch7_coeff_3,
	input wire [31:0] ch7_coeff_2,
	input wire [31:0] ch7_coeff_1,
	input wire [31:0] ch7_coeff_0,

	//IO ports for ch6
	output wire [20:0] ch6_x_lin,
	input wire [20:0] ch6_x_adc,
	input wire [31:0] ch6_recip_stdev,
	input wire [31:0] ch6_neg_mean,
	input wire [31:0] ch6_coeff_5,
	input wire [31:0] ch6_coeff_4,
	input wire [31:0] ch6_coeff_3,
	input wire [31:0] ch6_coeff_2,
	input wire [31:0] ch6_coeff_1,
	input wire [31:0] ch6_coeff_0,

	//IO ports for ch5
	output wire [20:0] ch5_x_lin, 
	input wire [20:0] ch5_x_adc,
	input wire [31:0] ch5_recip_stdev,
	input wire [31:0] ch5_neg_mean,
	input wire [31:0] ch5_coeff_5,
	input wire [31:0] ch5_coeff_4,
	input wire [31:0] ch5_coeff_3,
	input wire [31:0] ch5_coeff_2,
	input wire [31:0] ch5_coeff_1,
	input wire [31:0] ch5_coeff_0,

	//IO ports for ch4,
	output wire [20:0] ch4_x_lin, 
	input wire [20:0] ch4_x_adc,
	input wire [31:0] ch4_recip_stdev,
	input wire [31:0] ch4_neg_mean,
	input wire [31:0] ch4_coeff_5,
	input wire [31:0] ch4_coeff_4,
	input wire [31:0] ch4_coeff_3,
	input wire [31:0] ch4_coeff_2,
	input wire [31:0] ch4_coeff_1,
	input wire [31:0] ch4_coeff_0,

	//IO ports for ch3
	output wire [20:0] ch3_x_lin, 
	input wire [20:0] ch3_x_adc,
	input wire [31:0] ch3_recip_stdev,
	input wire [31:0] ch3_neg_mean,
	input wire [31:0] ch3_coeff_5,
	input wire [31:0] ch3_coeff_4,
	input wire [31:0] ch3_coeff_3,
	input wire [31:0] ch3_coeff_2,
	input wire [31:0] ch3_coeff_1,
	input wire [31:0] ch3_coeff_0,

	//IO ports for ch2
	output wire [20:0] ch2_x_lin, 
	input wire [20:0] ch2_x_adc,
	input wire [31:0] ch2_recip_stdev,
	input wire [31:0] ch2_neg_mean,
	input wire [31:0] ch2_coeff_5,
	input wire [31:0] ch2_coeff_4,
	input wire [31:0] ch2_coeff_3,
	input wire [31:0] ch2_coeff_2,
	input wire [31:0] ch2_coeff_1,
	input wire [31:0] ch2_coeff_0,

	//IO ports for ch1
	output wire [20:0] ch1_x_lin, 
	input wire [20:0] ch1_x_adc,
	input wire [31:0] ch1_recip_stdev,
	input wire [31:0] ch1_neg_mean,
	input wire [31:0] ch1_coeff_5,
	input wire [31:0] ch1_coeff_4,
	input wire [31:0] ch1_coeff_3,
	input wire [31:0] ch1_coeff_2,
	input wire [31:0] ch1_coeff_1,
	input wire [31:0] ch1_coeff_0,

	//IO ports for ch0
	output wire [20:0] ch0_x_lin, 
	input wire [20:0] ch0_x_adc,
	input wire [31:0] ch0_recip_stdev,
	input wire [31:0] ch0_neg_mean,
	input wire [31:0] ch0_coeff_5,
	input wire [31:0] ch0_coeff_4,
	input wire [31:0] ch0_coeff_3,
	input wire [31:0] ch0_coeff_2,
	input wire [31:0] ch0_coeff_1,
	input wire [31:0] ch0_coeff_0

);

// States
parameter IDLE                  = 3'b000;
parameter INP_CONV_NORM         = 3'b001;
parameter MULTI_ACC_S5          = 3'b010;
parameter MULTI_ACC_S4          = 3'b011;
parameter MULTI_ACC_S3          = 3'b100;
parameter MULTI_ACC_S2          = 3'b101;
parameter MULTI_ACC_S1          = 3'b110;
parameter RELEASE_OUTPUT        = 3'b111;

reg [31:0]                      pipe_buff[0:15];
reg [31:0]                      mac_pipe_buff;
reg [3:0]                       counter1;
reg [3:0]                       counter2;
reg [3:0]                       counter3;
reg [3:0]                       counter4;
reg [2:0]                       state;
reg [31:0]                      int_coeff[0:15][0:5];
reg [31:0]                      int_recip_stdev[0:15];
reg [31:0]                      int_neg_mean[0:15];

reg [20:0]                      x_adc_fp;
reg [31:0]                      x_i_porty_add;
reg [31:0]                      x_i_porty_mul;
reg [31:0]                      x_lin_smc;
reg [31:0]                      y_i_porty_add;
reg [31:0]                      y_i_porty_mul;
reg                             srdyi_i_add;
reg                             srdyi_i_mul;
reg                             srdyi_i_mul_mac;
reg                             srdyi_x_adc;
reg                             srdyi_x_lin;
wire [31:0]                     x_adc_smc;
wire [31:0]                     z_o_portx_add;
wire [31:0]                     z_o_portx_mul;
wire                            srdyo_x_adc;
wire                            srdyo_x_lin;
wire [20:0]                     x_lin;
reg [20:0]                      x_lin_reg[0:15];

fp_to_smc_float ifp_to_smc_float_x_adc (
    .clk(clk),
    .GlobalReset(reset),
    .x_i(x_adc_fp),
    .srdyi_i(srdyi_x_adc), 
    .srdyo_o(srdyo_x_adc),
    .y_o_portx(x_adc_smc)
);

smc_float_to_fp ismc_float_to_fp_x_lin (
   .clk(clk),
   .GlobalReset(reset),
   .x_i_porty(x_lin_smc),
   .y_o(x_lin),
   .srdyo_o(srdyo_x_lin),
   .srdyi_i(srdyi_x_lin) 
);

smc_float_multiplier ismc_float_multiplier (
   .clk(clk),
   .GlobalReset(reset),
   .x_i_porty(x_i_porty_mul),
   .y_i_porty(y_i_porty_mul),
   .z_o_portx(z_o_portx_mul),
   .srdyo_o(srdyo_o_mul),
   .srdyi_i(srdyi_i_mul)
);

smc_float_adder ismc_float_adder (
   .clk(clk),
   .GlobalReset(reset),
   .x_i_porty(x_i_porty_add),
   .y_i_porty(y_i_porty_add),
   .z_o_portx(z_o_portx_add),
   .srdyo_o(srdyo_o_add),
   .srdyi_i(srdyi_i_add)
);

// x_lin_reg are 16 21-bit registers holding the final ieee fp o/p of each
// channel

assign ch0_x_lin = x_lin_reg[0];
assign ch1_x_lin = x_lin_reg[1];
assign ch2_x_lin = x_lin_reg[2];
assign ch3_x_lin = x_lin_reg[3];
assign ch4_x_lin = x_lin_reg[4];
assign ch5_x_lin = x_lin_reg[5];
assign ch6_x_lin = x_lin_reg[6];
assign ch7_x_lin = x_lin_reg[7];
assign ch8_x_lin = x_lin_reg[8];
assign ch9_x_lin = x_lin_reg[9];
assign ch10_x_lin = x_lin_reg[10];
assign ch11_x_lin = x_lin_reg[11];
assign ch12_x_lin = x_lin_reg[12];
assign ch13_x_lin = x_lin_reg[13];
assign ch14_x_lin = x_lin_reg[14];
assign ch15_x_lin = x_lin_reg[15];

always @(*) begin
   x_adc_fp            <=  21'b0;
   x_i_porty_add       <=  32'b0;
   y_i_porty_add       <=  32'b0;
   srdyi_i_add         <=  1'b0;
   x_i_porty_mul       <=  32'b0;
   y_i_porty_mul       <=  32'b0;
   srdyi_i_mul         <=  1'b0;
   x_lin_smc           <=  32'b0;
   srdyo               <=  1'b0;
   x_lin_reg[0]        <=  21'b0;
   x_lin_reg[1]        <=  21'b0;
   x_lin_reg[2]        <=  21'b0;
   x_lin_reg[3]        <=  21'b0;
   x_lin_reg[4]        <=  21'b0;
   x_lin_reg[5]        <=  21'b0;
   x_lin_reg[6]        <=  21'b0;
   x_lin_reg[7]        <=  21'b0;
   x_lin_reg[8]        <=  21'b0;
   x_lin_reg[9]        <=  21'b0;
   x_lin_reg[10]       <=  21'b0;
   x_lin_reg[11]       <=  21'b0;
   x_lin_reg[12]       <=  21'b0;
   x_lin_reg[13]       <=  21'b0;
   x_lin_reg[14]       <=  21'b0;
   x_lin_reg[15]       <=  21'b0;
   case(state) 
      INP_CONV_NORM: begin
         x_adc_fp       <=  pipe_buff[counter1][20:0]; // give input fp values to the converter 
         x_i_porty_add  <=  x_adc_smc; // connect converter o/p to the adder
         y_i_porty_add  <=  int_neg_mean[counter2]; // give channel mean to the adder
         srdyi_i_add    <=  srdyo_x_adc; // activate the adder when conversion is done
         if (counter4==15) begin
            x_i_porty_mul  <=  pipe_buff[counter1];
            y_i_porty_mul  <=  int_coeff[counter1][5];
         end else begin
            x_i_porty_mul  <=  z_o_portx_add; // feed the adder o/p to the multiplier
            y_i_porty_mul  <=  int_recip_stdev[counter3]; // feed the mean to the multiplier
         end
         srdyi_i_mul    <=  srdyo_o_add | srdyi_i_mul_mac; // 
      end
      MULTI_ACC_S5: begin
         if (counter2 > 9) begin
            y_i_porty_mul  <=  mac_pipe_buff;
         end else begin
            y_i_porty_mul  <=  int_coeff[counter1][5];
         end
         x_i_porty_mul  <=  pipe_buff[counter1];
         srdyi_i_mul    <=  srdyi_i_mul_mac;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[counter2][4];
         srdyi_i_add    <=  srdyo_o_mul;
      end
      MULTI_ACC_S4: begin
         y_i_porty_mul  <=  mac_pipe_buff;
         x_i_porty_mul  <=  pipe_buff[counter1];
         srdyi_i_mul    <=  srdyi_i_mul_mac;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[counter2][3];
         srdyi_i_add    <=  srdyo_o_mul;
      end
      MULTI_ACC_S3: begin
         y_i_porty_mul  <=  mac_pipe_buff;
         x_i_porty_mul  <=  pipe_buff[counter1];
         srdyi_i_mul    <=  srdyi_i_mul_mac;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[counter2][2];
         srdyi_i_add    <=  srdyo_o_mul;
      end
       MULTI_ACC_S2: begin
         y_i_porty_mul  <=  mac_pipe_buff;
         x_i_porty_mul  <=  pipe_buff[counter1];
         srdyi_i_mul    <=  srdyi_i_mul_mac;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[counter2][1];
         srdyi_i_add    <=  srdyo_o_mul;
      end
      MULTI_ACC_S1: begin
         y_i_porty_mul  <=  mac_pipe_buff;
         x_i_porty_mul  <=  pipe_buff[counter1];
         srdyi_i_mul    <=  srdyi_i_mul_mac;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[counter2][0];
         srdyi_i_add    <=  srdyo_o_mul;
         x_lin_smc      <=  z_o_portx_add;
      end
      RELEASE_OUTPUT: begin
         x_lin_reg[0]   <=  pipe_buff[0][20:0];
         x_lin_reg[1]   <=  pipe_buff[1][20:0];
         x_lin_reg[2]   <=  pipe_buff[2][20:0];
         x_lin_reg[3]   <=  pipe_buff[3][20:0];
         x_lin_reg[4]   <=  pipe_buff[4][20:0];
         x_lin_reg[5]   <=  pipe_buff[5][20:0];
         x_lin_reg[6]   <=  pipe_buff[6][20:0];
         x_lin_reg[7]   <=  pipe_buff[7][20:0];
         x_lin_reg[8]   <=  pipe_buff[8][20:0];
         x_lin_reg[9]   <=  pipe_buff[9][20:0];
         x_lin_reg[10]  <=  pipe_buff[10][20:0];
         x_lin_reg[11]  <=  pipe_buff[11][20:0];
         x_lin_reg[12]  <=  pipe_buff[12][20:0];
         x_lin_reg[13]  <=  pipe_buff[13][20:0];
         x_lin_reg[14]  <=  pipe_buff[14][20:0];
         x_lin_reg[15]  <=  pipe_buff[15][20:0];
         srdyo          <=  1'b1;
      end
  endcase
end

always @(posedge clk) begin
   if (reset) begin
      state            <=  IDLE;
      counter1         <=  4'b0;
      counter2         <=  4'b0;
      counter3         <=  4'b0;
      counter4         <=  4'b0;
      srdyi_i_mul_mac  <=  1'b0;
      srdyi_x_lin      <=  1'b0;
      srdyi_x_adc      <=  1'b0;
      mac_pipe_buff   <=  32'b0;
      pipe_buff[0]     <=  32'b0;
      pipe_buff[1]     <=  32'b0;
      pipe_buff[2]     <=  32'b0;
      pipe_buff[3]     <=  32'b0;
      pipe_buff[4]     <=  32'b0;
      pipe_buff[5]     <=  32'b0;
      pipe_buff[6]     <=  32'b0;
      pipe_buff[7]     <=  32'b0;
      pipe_buff[8]     <=  32'b0;
      pipe_buff[9]     <=  32'b0;
      pipe_buff[10]    <=  32'b0;
      pipe_buff[11]    <=  32'b0;
      pipe_buff[12]    <=  32'b0;
      pipe_buff[13]    <=  32'b0;
      pipe_buff[14]    <=  32'b0;
      pipe_buff[15]    <=  32'b0;
   end else begin
      case (state)
         IDLE: begin
            // if i/p is valid on the channels, latch them into pipe_buff
            // move to the conversion and normalization state
            if (srdyi) begin
               pipe_buff[0][20:0]   <=  ch0_x_adc;
               pipe_buff[1][20:0]   <=  ch1_x_adc;
               pipe_buff[2][20:0]   <=  ch2_x_adc;
               pipe_buff[3][20:0]   <=  ch3_x_adc;
               pipe_buff[4][20:0]   <=  ch4_x_adc;
               pipe_buff[5][20:0]   <=  ch5_x_adc;
               pipe_buff[6][20:0]   <=  ch6_x_adc;
               pipe_buff[7][20:0]   <=  ch7_x_adc;
               pipe_buff[8][20:0]   <=  ch8_x_adc;
               pipe_buff[9][20:0]   <=  ch9_x_adc;
               pipe_buff[10][20:0]  <=  ch10_x_adc;
               pipe_buff[11][20:0]  <=  ch11_x_adc;
               pipe_buff[12][20:0]  <=  ch12_x_adc;
               pipe_buff[13][20:0]  <=  ch13_x_adc;
               pipe_buff[14][20:0]  <=  ch14_x_adc;
               pipe_buff[15][20:0]  <=  ch15_x_adc;
               counter1             <=  4'b0; 
               counter2             <=  4'b0;
               counter3             <=  4'b0;
               counter4             <=  4'b0;
               state                <=  INP_CONV_NORM;
               srdyi_x_adc          <=  1'b1; // start the converter
            end
         end
         INP_CONV_NORM: begin
            if (counter1!=15)  
               counter1 <= counter1+1;
            else
               srdyi_x_adc <= 1'b0; // conversion is finished, invalidate it's i/p
            
            if (srdyo_x_adc==1'b1) // if converter is producing a valid o/p
               counter2 <= counter2+1; // give the next mean to the adder
            
            if (srdyo_o_add==1'b1) // if the adder is producing a valid o/p
               counter3 <= counter3+1; // give the next stdev to the mult
           
            if (srdyo_o_mul==1'b1) begin // if the multiplier is producing a valid o/p
               pipe_buff[counter4] <= z_o_portx_mul; // store the normalized valued in pipe_buff
               counter4 <= counter4+1;
            end

            if (counter4==15) begin // we are done with normalization, move on to MAC stages
               counter1 <= 4'b0;
               srdyi_i_mul_mac <= 1'b1; // keep the multiplier i/p valid
               state <= MULTI_ACC_S5;
            end 
         end
         MULTI_ACC_S5: begin
            if (counter1 != 15)  
               counter1 <= counter1+1;
            else 
               srdyi_i_mul_mac <= 1'b0;
            if (srdyo_o_mul) 
               counter2 <= counter2+1;
            if (counter2 == 9) begin 
               srdyi_i_mul_mac <= 1'b1;
               counter1 <= counter1+1;
            end
            if (counter2 == 15) 
               state <= MULTI_ACC_S4;
            if (srdyo_o_add)
               mac_pipe_buff <= z_o_portx_add;
         end
         MULTI_ACC_S4: begin
            if (counter1 != 15)  
               counter1 <= counter1+1;
            else 
               srdyi_i_mul_mac <= 1'b0;
            if (srdyo_o_mul) 
               counter2 <= counter2+1;
            if (counter2 == 9) begin 
               srdyi_i_mul_mac <= 1'b1;
               counter1 <= counter1+1;
            end
            if (counter2 == 15) 
               state <= MULTI_ACC_S3;
            if (srdyo_o_add)
               mac_pipe_buff <= z_o_portx_add;
         end
         MULTI_ACC_S3: begin
            if (counter1 != 15)  
               counter1 <= counter1+1;
            else 
               srdyi_i_mul_mac <= 1'b0;
            if (srdyo_o_mul) 
               counter2 <= counter2+1;
            if (counter2 == 9) begin 
               srdyi_i_mul_mac <= 1'b1;
               counter1 <= counter1+1;
            end
            if (counter2 == 15) 
               state <= MULTI_ACC_S2;
            if (srdyo_o_add)
               mac_pipe_buff <= z_o_portx_add;
         end
         MULTI_ACC_S2: begin
            if (counter1 != 15)  
               counter1 <= counter1+1;
            else 
               srdyi_i_mul_mac <= 1'b0;
            if (srdyo_o_mul) 
               counter2 <= counter2+1;
            if (counter2 == 9) begin 
               srdyi_i_mul_mac <= 1'b1;
               counter1 <= counter1+1;
            end
            if (counter2 == 15) 
               state <= MULTI_ACC_S1;
            if (srdyo_o_add)
               mac_pipe_buff <= z_o_portx_add;
         end
         MULTI_ACC_S1: begin
            if (counter1 != 15)  
               counter1 <= counter1+1;
            else 
               srdyi_i_mul_mac <= 1'b0;
            if (srdyo_o_mul) 
               counter2 <= counter2+1;
            if (counter2 == 8) 
               srdyi_x_lin <= 1'b1;
            if (counter3 == 12) 
               srdyi_x_lin <= 1'b0;
            if (counter3 == 15) 
               state <= RELEASE_OUTPUT;
            if (srdyo_x_lin) begin
               pipe_buff[counter3][20:0] <= x_lin;
               counter3 <= counter3+1;
            end
            if (srdyo_o_add)
               mac_pipe_buff <= z_o_portx_add;
         end
         RELEASE_OUTPUT: begin
            state <= IDLE;
         end
      endcase
   end
end

// Coefficients/Mean/Standard Deviation 
always @(posedge clk) begin
   if (reset) begin
      int_coeff[0][0]           <= 32'b0;
      int_coeff[0][1]           <= 32'b0;
      int_coeff[0][2]           <= 32'b0;
      int_coeff[0][3]           <= 32'b0;
      int_coeff[0][4]           <= 32'b0;
      int_coeff[0][5]           <= 32'b0;
      int_neg_mean[0]           <= 32'b0;
      int_recip_stdev[0]        <= 32'b0;
      int_coeff[1][0]           <= 32'b0;
      int_coeff[1][1]           <= 32'b0;
      int_coeff[1][2]           <= 32'b0;
      int_coeff[1][3]           <= 32'b0;
      int_coeff[1][4]           <= 32'b0;
      int_coeff[1][5]           <= 32'b0;
      int_neg_mean[1]           <= 32'b0;
      int_recip_stdev[1]        <= 32'b0;
      int_coeff[2][0]           <= 32'b0;
      int_coeff[2][1]           <= 32'b0;
      int_coeff[2][2]           <= 32'b0;
      int_coeff[2][3]           <= 32'b0;
      int_coeff[2][4]           <= 32'b0;
      int_coeff[2][5]           <= 32'b0;
      int_neg_mean[2]           <= 32'b0;
      int_recip_stdev[2]        <= 32'b0;
      int_coeff[3][0]           <= 32'b0;
      int_coeff[3][1]           <= 32'b0;
      int_coeff[3][2]           <= 32'b0;
      int_coeff[3][3]           <= 32'b0;
      int_coeff[3][4]           <= 32'b0;
      int_coeff[3][5]           <= 32'b0;
      int_neg_mean[3]           <= 32'b0;
      int_recip_stdev[3]        <= 32'b0;
      int_coeff[4][0]           <= 32'b0;
      int_coeff[4][1]           <= 32'b0;
      int_coeff[4][2]           <= 32'b0;
      int_coeff[4][3]           <= 32'b0;
      int_coeff[4][4]           <= 32'b0;
      int_coeff[4][5]           <= 32'b0;
      int_neg_mean[4]           <= 32'b0;
      int_recip_stdev[4]        <= 32'b0;
      int_coeff[5][0]           <= 32'b0;
      int_coeff[5][1]           <= 32'b0;
      int_coeff[5][2]           <= 32'b0;
      int_coeff[5][3]           <= 32'b0;
      int_coeff[5][4]           <= 32'b0;
      int_coeff[5][5]           <= 32'b0;
      int_neg_mean[5]           <= 32'b0;
      int_recip_stdev[5]        <= 32'b0;
      int_coeff[6][0]           <= 32'b0;
      int_coeff[6][1]           <= 32'b0;
      int_coeff[6][2]           <= 32'b0;
      int_coeff[6][3]           <= 32'b0;
      int_coeff[6][4]           <= 32'b0;
      int_coeff[6][5]           <= 32'b0;
      int_neg_mean[6]           <= 32'b0;
      int_recip_stdev[6]        <= 32'b0;
      int_coeff[7][0]           <= 32'b0;
      int_coeff[7][1]           <= 32'b0;
      int_coeff[7][2]           <= 32'b0;
      int_coeff[7][3]           <= 32'b0;
      int_coeff[7][4]           <= 32'b0;
      int_coeff[7][5]           <= 32'b0;
      int_neg_mean[7]           <= 32'b0;
      int_recip_stdev[7]        <= 32'b0;
      int_coeff[8][0]           <= 32'b0;
      int_coeff[8][1]           <= 32'b0;
      int_coeff[8][2]           <= 32'b0;
      int_coeff[8][3]           <= 32'b0;
      int_coeff[8][4]           <= 32'b0;
      int_coeff[8][5]           <= 32'b0;
      int_neg_mean[8]           <= 32'b0;
      int_recip_stdev[8]        <= 32'b0;
      int_coeff[9][0]           <= 32'b0;
      int_coeff[9][1]           <= 32'b0;
      int_coeff[9][2]           <= 32'b0;
      int_coeff[9][3]           <= 32'b0;
      int_coeff[9][4]           <= 32'b0;
      int_coeff[9][5]           <= 32'b0;
      int_neg_mean[9]           <= 32'b0;
      int_recip_stdev[9]        <= 32'b0;
      int_coeff[10][0]           <= 32'b0;
      int_coeff[10][1]           <= 32'b0;
      int_coeff[10][2]           <= 32'b0;
      int_coeff[10][3]           <= 32'b0;
      int_coeff[10][4]           <= 32'b0;
      int_coeff[10][5]           <= 32'b0;
      int_neg_mean[10]           <= 32'b0;
      int_recip_stdev[10]        <= 32'b0;
      int_coeff[11][0]           <= 32'b0;
      int_coeff[11][1]           <= 32'b0;
      int_coeff[11][2]           <= 32'b0;
      int_coeff[11][3]           <= 32'b0;
      int_coeff[11][4]           <= 32'b0;
      int_coeff[11][5]           <= 32'b0;
      int_neg_mean[11]           <= 32'b0;
      int_recip_stdev[11]        <= 32'b0;
      int_coeff[12][0]           <= 32'b0;
      int_coeff[12][1]           <= 32'b0;
      int_coeff[12][2]           <= 32'b0;
      int_coeff[12][3]           <= 32'b0;
      int_coeff[12][4]           <= 32'b0;
      int_coeff[12][5]           <= 32'b0;
      int_neg_mean[12]           <= 32'b0;
      int_recip_stdev[12]        <= 32'b0;
      int_coeff[13][0]           <= 32'b0;
      int_coeff[13][1]           <= 32'b0;
      int_coeff[13][2]           <= 32'b0;
      int_coeff[13][3]           <= 32'b0;
      int_coeff[13][4]           <= 32'b0;
      int_coeff[13][5]           <= 32'b0;
      int_neg_mean[13]           <= 32'b0;
      int_recip_stdev[13]        <= 32'b0;
      int_coeff[14][0]           <= 32'b0;
      int_coeff[14][1]           <= 32'b0;
      int_coeff[14][2]           <= 32'b0;
      int_coeff[14][3]           <= 32'b0;
      int_coeff[14][4]           <= 32'b0;
      int_coeff[14][5]           <= 32'b0;
      int_neg_mean[14]           <= 32'b0;
      int_recip_stdev[14]        <= 32'b0;
      int_coeff[15][0]           <= 32'b0;
      int_coeff[15][1]           <= 32'b0;
      int_coeff[15][2]           <= 32'b0;
      int_coeff[15][3]           <= 32'b0;
      int_coeff[15][4]           <= 32'b0;
      int_coeff[15][5]           <= 32'b0;
      int_neg_mean[15]           <= 32'b0;
      int_recip_stdev[15]        <= 32'b0;
   end else if (srdyi) begin
      case (operation_mode_i) 
         // Take inputs from outside
         2'b00: begin
            int_coeff[0][0]     <= ch0_coeff_0;          
            int_coeff[0][1]     <= ch0_coeff_1;
            int_coeff[0][2]     <= ch0_coeff_2;
            int_coeff[0][3]     <= ch0_coeff_3;
            int_coeff[0][4]     <= ch0_coeff_4;
            int_coeff[0][5]     <= ch0_coeff_5;
            int_neg_mean[0]     <= ch0_neg_mean;
            int_recip_stdev[0]  <= ch0_recip_stdev;
            int_coeff[1][0]     <= ch1_coeff_0;          
            int_coeff[1][1]     <= ch1_coeff_1;
            int_coeff[1][2]     <= ch1_coeff_2;
            int_coeff[1][3]     <= ch1_coeff_3;
            int_coeff[1][4]     <= ch1_coeff_4;
            int_coeff[1][5]     <= ch1_coeff_5;
            int_neg_mean[1]     <= ch1_neg_mean;
            int_recip_stdev[1]  <= ch1_recip_stdev;
            int_coeff[2][0]     <= ch2_coeff_0;          
            int_coeff[2][1]     <= ch2_coeff_1;
            int_coeff[2][2]     <= ch2_coeff_2;
            int_coeff[2][3]     <= ch2_coeff_3;
            int_coeff[2][4]     <= ch2_coeff_4;
            int_coeff[2][5]     <= ch2_coeff_5;
            int_neg_mean[2]     <= ch2_neg_mean;
            int_recip_stdev[2]  <= ch2_recip_stdev;
            int_coeff[3][0]     <= ch3_coeff_0;          
            int_coeff[3][1]     <= ch3_coeff_1;
            int_coeff[3][2]     <= ch3_coeff_2;
            int_coeff[3][3]     <= ch3_coeff_3;
            int_coeff[3][4]     <= ch3_coeff_4;
            int_coeff[3][5]     <= ch3_coeff_5;
            int_neg_mean[3]     <= ch3_neg_mean;
            int_recip_stdev[3]  <= ch3_recip_stdev;
            int_coeff[4][0]     <= ch4_coeff_0;          
            int_coeff[4][1]     <= ch4_coeff_1;
            int_coeff[4][2]     <= ch4_coeff_2;
            int_coeff[4][3]     <= ch4_coeff_3;
            int_coeff[4][4]     <= ch4_coeff_4;
            int_coeff[4][5]     <= ch4_coeff_5;
            int_neg_mean[4]     <= ch4_neg_mean;
            int_recip_stdev[4]  <= ch4_recip_stdev;
            int_coeff[5][0]     <= ch5_coeff_0;          
            int_coeff[5][1]     <= ch5_coeff_1;
            int_coeff[5][2]     <= ch5_coeff_2;
            int_coeff[5][3]     <= ch5_coeff_3;
            int_coeff[5][4]     <= ch5_coeff_4;
            int_coeff[5][5]     <= ch5_coeff_5;
            int_neg_mean[5]     <= ch5_neg_mean;
            int_recip_stdev[5]  <= ch5_recip_stdev;
            int_coeff[6][0]     <= ch6_coeff_0;          
            int_coeff[6][1]     <= ch6_coeff_1;
            int_coeff[6][2]     <= ch6_coeff_2;
            int_coeff[6][3]     <= ch6_coeff_3;
            int_coeff[6][4]     <= ch6_coeff_4;
            int_coeff[6][5]     <= ch6_coeff_5;
            int_neg_mean[6]     <= ch6_neg_mean;
            int_recip_stdev[6]  <= ch6_recip_stdev;
            int_coeff[7][0]     <= ch7_coeff_0;          
            int_coeff[7][1]     <= ch7_coeff_1;
            int_coeff[7][2]     <= ch7_coeff_2;
            int_coeff[7][3]     <= ch7_coeff_3;
            int_coeff[7][4]     <= ch7_coeff_4;
            int_coeff[7][5]     <= ch7_coeff_5;
            int_neg_mean[7]     <= ch7_neg_mean;
            int_recip_stdev[7]  <= ch7_recip_stdev;
            int_coeff[8][0]     <= ch8_coeff_0;          
            int_coeff[8][1]     <= ch8_coeff_1;
            int_coeff[8][2]     <= ch8_coeff_2;
            int_coeff[8][3]     <= ch8_coeff_3;
            int_coeff[8][4]     <= ch8_coeff_4;
            int_coeff[8][5]     <= ch8_coeff_5;
            int_neg_mean[8]     <= ch8_neg_mean;
            int_recip_stdev[8]  <= ch8_recip_stdev;
            int_coeff[9][0]     <= ch9_coeff_0;          
            int_coeff[9][1]     <= ch9_coeff_1;
            int_coeff[9][2]     <= ch9_coeff_2;
            int_coeff[9][3]     <= ch9_coeff_3;
            int_coeff[9][4]     <= ch9_coeff_4;
            int_coeff[9][5]     <= ch9_coeff_5;
            int_neg_mean[9]     <= ch9_neg_mean;
            int_recip_stdev[9]  <= ch9_recip_stdev;
            int_coeff[10][0]     <= ch10_coeff_0;          
            int_coeff[10][1]     <= ch10_coeff_1;
            int_coeff[10][2]     <= ch10_coeff_2;
            int_coeff[10][3]     <= ch10_coeff_3;
            int_coeff[10][4]     <= ch10_coeff_4;
            int_coeff[10][5]     <= ch10_coeff_5;
            int_neg_mean[10]     <= ch10_neg_mean;
            int_recip_stdev[10]  <= ch10_recip_stdev;
            int_coeff[11][0]     <= ch11_coeff_0;          
            int_coeff[11][1]     <= ch11_coeff_1;
            int_coeff[11][2]     <= ch11_coeff_2;
            int_coeff[11][3]     <= ch11_coeff_3;
            int_coeff[11][4]     <= ch11_coeff_4;
            int_coeff[11][5]     <= ch11_coeff_5;
            int_neg_mean[11]     <= ch11_neg_mean;
            int_recip_stdev[11]  <= ch11_recip_stdev;
            int_coeff[12][0]     <= ch12_coeff_0;          
            int_coeff[12][1]     <= ch12_coeff_1;
            int_coeff[12][2]     <= ch12_coeff_2;
            int_coeff[12][3]     <= ch12_coeff_3;
            int_coeff[12][4]     <= ch12_coeff_4;
            int_coeff[12][5]     <= ch12_coeff_5;
            int_neg_mean[12]     <= ch12_neg_mean;
            int_recip_stdev[12]  <= ch12_recip_stdev;
            int_coeff[13][0]     <= ch13_coeff_0;          
            int_coeff[13][1]     <= ch13_coeff_1;
            int_coeff[13][2]     <= ch13_coeff_2;
            int_coeff[13][3]     <= ch13_coeff_3;
            int_coeff[13][4]     <= ch13_coeff_4;
            int_coeff[13][5]     <= ch13_coeff_5;
            int_neg_mean[13]     <= ch13_neg_mean;
            int_recip_stdev[13]  <= ch13_recip_stdev;
            int_coeff[14][0]     <= ch14_coeff_0;          
            int_coeff[14][1]     <= ch14_coeff_1;
            int_coeff[14][2]     <= ch14_coeff_2;
            int_coeff[14][3]     <= ch14_coeff_3;
            int_coeff[14][4]     <= ch14_coeff_4;
            int_coeff[14][5]     <= ch14_coeff_5;
            int_neg_mean[14]     <= ch14_neg_mean;
            int_recip_stdev[14]  <= ch14_recip_stdev;
            int_coeff[15][0]     <= ch15_coeff_0;          
            int_coeff[15][1]     <= ch15_coeff_1;
            int_coeff[15][2]     <= ch15_coeff_2;
            int_coeff[15][3]     <= ch15_coeff_3;
            int_coeff[15][4]     <= ch15_coeff_4;
            int_coeff[15][5]     <= ch15_coeff_5;
            int_neg_mean[15]     <= ch15_neg_mean;
            int_recip_stdev[15]  <= ch15_recip_stdev;         
         end
      endcase
   end
end

endmodule
