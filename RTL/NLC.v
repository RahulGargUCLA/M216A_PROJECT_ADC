/*******************************************************************
* Module: NLC 
******************************************************************/

module NLC (
   //System clock and reset
   input wire                   clk,
   input wire                   reset,
   
   //Input valid and output read signal(one for all 16ch)
   input wire                   srdyi,
   output reg                   srdyo,
   
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

parameter IDLE = 2'b00;
parameter INP_FP_TO_SMC_CONV = 2'b01;
parameter MUNLTI_ACC = 2'b10;
parameter OUT_SMC_TO_FP_CONV = 2'b11;

reg [1:0]                       state;
reg [31:0]                      int_coeff[0:5];

reg                             srdyi_x_adc;
reg [31:0]                      x_adc_smc;
wire                            srdyo_x_adc;

fp_to_smc_float ifp_to_smc_float_x_adc (
    .clk(clk),
    .GlobalReset(reset),
    .x_i(x_adc),
    .srdyi_i(srdyi_x_adc), // Can reuse srdyi here;
    .srdyo_o(srdyo_x_adc),
    .y_o_portx(x_adc_smc)
);

always @(posedge clk) begin
   if (reset) begin
      srdyo <= 1'b0;
      srdyi_x_adc <= 1'b0;
      // To be replaced by actual coefficient values later on.
      int_coeff[0] <= 32'b0; 
      int_coeff[1] <= 32'b0;
      int_coeff[2] <= 32'b0;
      int_coeff[3] <= 32'b0;
      int_coeff[4] <= 32'b0;
      int_coeff[5] <= 32'b0;
   end else begin
      if (srdyi) begin
         state <= INP_FP_TO_SMC_CONV;
         srdyi_x_adc <= 1'b1;
      end else if ( corr_in_progress == 1'b1 ) begin
         case (state) begin
            INP_FP_TO_SMC_CONV: 
               if (srdyi_x_adc == 1'b1) begin
                  srdyi_x_adc <= 1'b0;
               end 
               if (srdyo_x_adc == 1'b1) begin
                  state <= MULTI_ACC;
               end else begin
                  state <= INP_FP_TO_SMC_CONV;
               end
         
            if (srdyi_x_adc == 1'b1) begin
            sr_dyi
       end else begin

      end
   end
end

endmodule // NLC
