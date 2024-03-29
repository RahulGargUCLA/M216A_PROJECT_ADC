/*******************************************************************
* Module: NLC 
******************************************************************/

module NLC (
   //System clock and reset
   input wire                   clk,
   input wire                   reset,
   
   //Input valid and output read signal(one for all 16ch)
   input wire                   srdyi,
   output wire                  srdyo,
   
   //Calibration control and reference ADC input
   //00 Fit the ADC with external coefficients feed with the ADC reading
   //01 Upgrade the fitting to 8th order with provided adc reading, coefficients and reference x
   //10 Calculate the fitting error of current coeefficients set with giving x reading, and x refe
   //11 Fit the ADC reading with stored coefficients
   input wire [1:0]             operation_mode_i, 
   input wire [20:0]            x_ref_i,
   
   //NLC IO ports
   //IO ports for ch15
   output wire [20:0]           x_lin,
   input wire [20:0]            x_adc, 
   input wire [31:0]            recip_stdev,
   input wire [31:0]            neg_mean,
   input wire [31:0]            coeff_5,
   input wire [31:0]            coeff_4,
   input wire [31:0]            coeff_3,
   input wire [31:0]            coeff_2,
   input wire [31:0]            coeff_1,
   input wire [31:0]            coeff_0
);

parameter INP_FP_TO_SMC_CONV    = 4'b0001;
parameter SCALE_INPUT_ADD       = 4'b0010;
parameter SCALE_INPUT_MUL       = 4'b0011;
parameter MULTI_ACC_S5          = 4'b0100;
parameter MULTI_ACC_S4          = 4'b0101;
parameter MULTI_ACC_S3          = 4'b0110;
parameter MULTI_ACC_S2          = 4'b0111;
parameter MULTI_ACC_S1          = 4'b1000;
parameter OUT_SMC_TO_FP_CONV    = 4'b1001;

parameter INT_COEFF_0 = 32'd3295300608;
parameter INT_COEFF_1 = 32'd1204777600;
parameter INT_COEFF_2 = 32'd1144191360;
parameter INT_COEFF_3 = 32'd1161335040;
parameter INT_COEFF_4 = 32'd1130617856;
parameter INT_COEFF_5 = 32'd1140169600;
parameter INT_NEG_MEAN = 32'd3342340864;
parameter INT_RECIP_STDEV = 32'd921889856;

reg [3:0]                       state;
reg [31:0]                      int_coeff[0:5];
reg [31:0]                      int_recip_stdev;
reg [31:0]                      int_neg_mean;
reg [31:0]                      x_adc_smc_scaled;

wire [31:0]                     x_adc_smc;
reg [31:0]                      x_lin_smc;
wire                            srdyi_x_adc;
reg                             srdyi_x_lin;
wire                            srdyo_x_adc;
wire                            srdyo_x_lin;
reg                             srdyi_i_add;
reg [31:0]                      x_i_porty_add;
reg [31:0]                      y_i_porty_add;
reg                             srdyi_i_mul;
reg [31:0]                      x_i_porty_mul;
reg [31:0]                      y_i_porty_mul;
wire [31:0]                     z_o_portx_add;
wire [31:0]                     z_o_portx_mul;

assign srdyi_x_adc = srdyi;
assign srdyo = srdyo_x_lin;

fp_to_smc_float ifp_to_smc_float_x_adc (
    .clk(clk),
    .GlobalReset(reset),
    .x_i(x_adc),
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

always @(*) begin
   srdyi_i_mul    <=  1'b0;
   x_i_porty_mul  <=  32'b0;
   y_i_porty_mul  <=  32'b0;
   srdyi_i_add    <=  1'b0;
   x_i_porty_add  <=  32'b0;
   y_i_porty_add  <=  32'b0;
   srdyi_x_lin    <=  1'b0;
   x_lin_smc      <=  32'b0;
   case(state) 
      INP_FP_TO_SMC_CONV: begin
         srdyi_i_add    <=  srdyo_x_adc;
         x_i_porty_add  <=  x_adc_smc;
         y_i_porty_add  <=  int_neg_mean;
      end
      SCALE_INPUT_ADD: begin
         srdyi_i_mul    <=  srdyo_o_add;
         x_i_porty_mul  <=  z_o_portx_add;
         y_i_porty_mul  <=  int_recip_stdev;
      end
      SCALE_INPUT_MUL: begin
         srdyi_i_mul    <=  srdyo_o_mul;
         x_i_porty_mul  <=  z_o_portx_mul;
         y_i_porty_mul  <=  int_coeff[5];
      end
      MULTI_ACC_S5: begin
         srdyi_i_add    <=  srdyo_o_mul;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[4];
         srdyi_i_mul    <=  srdyo_o_add;
         x_i_porty_mul  <=  z_o_portx_add;
         y_i_porty_mul  <=  x_adc_smc_scaled;
      end
      MULTI_ACC_S4: begin
         srdyi_i_add    <=  srdyo_o_mul;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[3];
         srdyi_i_mul    <=  srdyo_o_add;
         x_i_porty_mul  <=  z_o_portx_add;
         y_i_porty_mul  <=  x_adc_smc_scaled;
      end
      MULTI_ACC_S3: begin
         srdyi_i_add    <=  srdyo_o_mul;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[2];
         srdyi_i_mul    <=  srdyo_o_add;
         x_i_porty_mul  <=  z_o_portx_add;
         y_i_porty_mul  <=  x_adc_smc_scaled;
      end
      MULTI_ACC_S2: begin
         srdyi_i_add    <=  srdyo_o_mul;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[1];
         srdyi_i_mul    <=  srdyo_o_add;
         x_i_porty_mul  <=  z_o_portx_add;
         y_i_porty_mul  <=  x_adc_smc_scaled;
      end
      MULTI_ACC_S1: begin
         srdyi_i_add    <=  srdyo_o_mul;
         x_i_porty_add  <=  z_o_portx_mul;
         y_i_porty_add  <=  int_coeff[0];
         srdyi_x_lin    <=  srdyo_o_add;
         x_lin_smc      <=  z_o_portx_add;
      end
   endcase
end

always @(posedge clk) begin
   if (reset) begin
      state <= INP_FP_TO_SMC_CONV;      
      x_adc_smc_scaled <= 32'b0;
   end else begin
      case (state)
         INP_FP_TO_SMC_CONV: begin 
            if (srdyo_x_adc) 
               state <= SCALE_INPUT_ADD;
         end
         SCALE_INPUT_ADD: begin
            if (srdyo_o_add) 
               state <= SCALE_INPUT_MUL;
         end
         SCALE_INPUT_MUL: begin      
            if (srdyo_o_mul) begin
               x_adc_smc_scaled <= z_o_portx_mul;
               state <= MULTI_ACC_S5;
            end
         end
         MULTI_ACC_S5: begin
            if (srdyo_o_add)
               state <= MULTI_ACC_S4;
         end
         MULTI_ACC_S4: begin
            if (srdyo_o_add)
               state <= MULTI_ACC_S3;
         end
         MULTI_ACC_S3: begin
            if (srdyo_o_add)
               state <= MULTI_ACC_S2;
         end
         MULTI_ACC_S2: begin
            if (srdyo_o_add)
               state <= MULTI_ACC_S1;
         end
         MULTI_ACC_S1: begin
            if (srdyo_o_add)
               state <= OUT_SMC_TO_FP_CONV;
         end
         OUT_SMC_TO_FP_CONV: begin
            if(srdyo_x_lin == 1'b1) 
               state <= INP_FP_TO_SMC_CONV;
         end
         default: state <= INP_FP_TO_SMC_CONV;
      endcase
   end
end

// Latches for storing coefficients and other parameters.
always @(posedge clk) begin
   if (reset) begin
      int_coeff[0]      <= INT_COEFF_0; 
      int_coeff[1]      <= INT_COEFF_1;
      int_coeff[2]      <= INT_COEFF_2;
      int_coeff[3]      <= INT_COEFF_3;
      int_coeff[4]      <= INT_COEFF_4;
      int_coeff[5]      <= INT_COEFF_5;
      int_neg_mean      <= INT_NEG_MEAN; 
      int_recip_stdev   <= INT_RECIP_STDEV;
   end else if (srdyi) begin
      case (operation_mode_i) 
         // Take inputs from outside
         2'b00: begin
            int_coeff[0] <= coeff_0;          
            int_coeff[1] <= coeff_1;
            int_coeff[2] <= coeff_2;
            int_coeff[3] <= coeff_3;
            int_coeff[4] <= coeff_4;
            int_coeff[5] <= coeff_5;
            int_neg_mean     <= neg_mean;
            int_recip_stdev  <= recip_stdev;
         end
      endcase
   end
end

endmodule // NLC
