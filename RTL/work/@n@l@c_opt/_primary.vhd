library verilog;
use verilog.vl_types.all;
entity NLC_opt is
    generic(
        IDLE            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        INP_CONV_NORM   : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        MULTI_ACC_S5    : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        MULTI_ACC_S4    : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        MULTI_ACC_S3    : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        MULTI_ACC_S2    : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        MULTI_ACC_S1    : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        RELEASE_OUTPUT  : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        srdyi           : in     vl_logic;
        srdyo           : out    vl_logic;
        operation_mode_i: in     vl_logic_vector(1 downto 0);
        x_ref_i         : in     vl_logic_vector(20 downto 0);
        ch15_x_lin      : out    vl_logic_vector(20 downto 0);
        ch15_x_adc      : in     vl_logic_vector(20 downto 0);
        ch15_recip_stdev: in     vl_logic_vector(31 downto 0);
        ch15_neg_mean   : in     vl_logic_vector(31 downto 0);
        ch15_coeff_5    : in     vl_logic_vector(31 downto 0);
        ch15_coeff_4    : in     vl_logic_vector(31 downto 0);
        ch15_coeff_3    : in     vl_logic_vector(31 downto 0);
        ch15_coeff_2    : in     vl_logic_vector(31 downto 0);
        ch15_coeff_1    : in     vl_logic_vector(31 downto 0);
        ch15_coeff_0    : in     vl_logic_vector(31 downto 0);
        ch14_x_lin      : out    vl_logic_vector(20 downto 0);
        ch14_x_adc      : in     vl_logic_vector(20 downto 0);
        ch14_recip_stdev: in     vl_logic_vector(31 downto 0);
        ch14_neg_mean   : in     vl_logic_vector(31 downto 0);
        ch14_coeff_5    : in     vl_logic_vector(31 downto 0);
        ch14_coeff_4    : in     vl_logic_vector(31 downto 0);
        ch14_coeff_3    : in     vl_logic_vector(31 downto 0);
        ch14_coeff_2    : in     vl_logic_vector(31 downto 0);
        ch14_coeff_1    : in     vl_logic_vector(31 downto 0);
        ch14_coeff_0    : in     vl_logic_vector(31 downto 0);
        ch13_x_lin      : out    vl_logic_vector(20 downto 0);
        ch13_x_adc      : in     vl_logic_vector(20 downto 0);
        ch13_recip_stdev: in     vl_logic_vector(31 downto 0);
        ch13_neg_mean   : in     vl_logic_vector(31 downto 0);
        ch13_coeff_5    : in     vl_logic_vector(31 downto 0);
        ch13_coeff_4    : in     vl_logic_vector(31 downto 0);
        ch13_coeff_3    : in     vl_logic_vector(31 downto 0);
        ch13_coeff_2    : in     vl_logic_vector(31 downto 0);
        ch13_coeff_1    : in     vl_logic_vector(31 downto 0);
        ch13_coeff_0    : in     vl_logic_vector(31 downto 0);
        ch12_x_lin      : out    vl_logic_vector(20 downto 0);
        ch12_x_adc      : in     vl_logic_vector(20 downto 0);
        ch12_recip_stdev: in     vl_logic_vector(31 downto 0);
        ch12_neg_mean   : in     vl_logic_vector(31 downto 0);
        ch12_coeff_5    : in     vl_logic_vector(31 downto 0);
        ch12_coeff_4    : in     vl_logic_vector(31 downto 0);
        ch12_coeff_3    : in     vl_logic_vector(31 downto 0);
        ch12_coeff_2    : in     vl_logic_vector(31 downto 0);
        ch12_coeff_1    : in     vl_logic_vector(31 downto 0);
        ch12_coeff_0    : in     vl_logic_vector(31 downto 0);
        ch11_x_lin      : out    vl_logic_vector(20 downto 0);
        ch11_x_adc      : in     vl_logic_vector(20 downto 0);
        ch11_recip_stdev: in     vl_logic_vector(31 downto 0);
        ch11_neg_mean   : in     vl_logic_vector(31 downto 0);
        ch11_coeff_5    : in     vl_logic_vector(31 downto 0);
        ch11_coeff_4    : in     vl_logic_vector(31 downto 0);
        ch11_coeff_3    : in     vl_logic_vector(31 downto 0);
        ch11_coeff_2    : in     vl_logic_vector(31 downto 0);
        ch11_coeff_1    : in     vl_logic_vector(31 downto 0);
        ch11_coeff_0    : in     vl_logic_vector(31 downto 0);
        ch10_x_lin      : out    vl_logic_vector(20 downto 0);
        ch10_x_adc      : in     vl_logic_vector(20 downto 0);
        ch10_recip_stdev: in     vl_logic_vector(31 downto 0);
        ch10_neg_mean   : in     vl_logic_vector(31 downto 0);
        ch10_coeff_5    : in     vl_logic_vector(31 downto 0);
        ch10_coeff_4    : in     vl_logic_vector(31 downto 0);
        ch10_coeff_3    : in     vl_logic_vector(31 downto 0);
        ch10_coeff_2    : in     vl_logic_vector(31 downto 0);
        ch10_coeff_1    : in     vl_logic_vector(31 downto 0);
        ch10_coeff_0    : in     vl_logic_vector(31 downto 0);
        ch9_x_lin       : out    vl_logic_vector(20 downto 0);
        ch9_x_adc       : in     vl_logic_vector(20 downto 0);
        ch9_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch9_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch9_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch9_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch9_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch9_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch9_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch9_coeff_0     : in     vl_logic_vector(31 downto 0);
        ch8_x_lin       : out    vl_logic_vector(20 downto 0);
        ch8_x_adc       : in     vl_logic_vector(20 downto 0);
        ch8_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch8_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch8_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch8_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch8_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch8_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch8_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch8_coeff_0     : in     vl_logic_vector(31 downto 0);
        ch7_x_lin       : out    vl_logic_vector(20 downto 0);
        ch7_x_adc       : in     vl_logic_vector(20 downto 0);
        ch7_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch7_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch7_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch7_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch7_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch7_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch7_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch7_coeff_0     : in     vl_logic_vector(31 downto 0);
        ch6_x_lin       : out    vl_logic_vector(20 downto 0);
        ch6_x_adc       : in     vl_logic_vector(20 downto 0);
        ch6_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch6_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch6_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch6_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch6_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch6_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch6_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch6_coeff_0     : in     vl_logic_vector(31 downto 0);
        ch5_x_lin       : out    vl_logic_vector(20 downto 0);
        ch5_x_adc       : in     vl_logic_vector(20 downto 0);
        ch5_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch5_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch5_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch5_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch5_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch5_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch5_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch5_coeff_0     : in     vl_logic_vector(31 downto 0);
        ch4_x_lin       : out    vl_logic_vector(20 downto 0);
        ch4_x_adc       : in     vl_logic_vector(20 downto 0);
        ch4_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch4_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch4_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch4_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch4_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch4_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch4_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch4_coeff_0     : in     vl_logic_vector(31 downto 0);
        ch3_x_lin       : out    vl_logic_vector(20 downto 0);
        ch3_x_adc       : in     vl_logic_vector(20 downto 0);
        ch3_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch3_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch3_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch3_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch3_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch3_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch3_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch3_coeff_0     : in     vl_logic_vector(31 downto 0);
        ch2_x_lin       : out    vl_logic_vector(20 downto 0);
        ch2_x_adc       : in     vl_logic_vector(20 downto 0);
        ch2_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch2_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch2_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch2_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch2_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch2_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch2_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch2_coeff_0     : in     vl_logic_vector(31 downto 0);
        ch1_x_lin       : out    vl_logic_vector(20 downto 0);
        ch1_x_adc       : in     vl_logic_vector(20 downto 0);
        ch1_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch1_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch1_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch1_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch1_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch1_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch1_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch1_coeff_0     : in     vl_logic_vector(31 downto 0);
        ch0_x_lin       : out    vl_logic_vector(20 downto 0);
        ch0_x_adc       : in     vl_logic_vector(20 downto 0);
        ch0_recip_stdev : in     vl_logic_vector(31 downto 0);
        ch0_neg_mean    : in     vl_logic_vector(31 downto 0);
        ch0_coeff_5     : in     vl_logic_vector(31 downto 0);
        ch0_coeff_4     : in     vl_logic_vector(31 downto 0);
        ch0_coeff_3     : in     vl_logic_vector(31 downto 0);
        ch0_coeff_2     : in     vl_logic_vector(31 downto 0);
        ch0_coeff_1     : in     vl_logic_vector(31 downto 0);
        ch0_coeff_0     : in     vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of INP_CONV_NORM : constant is 1;
    attribute mti_svvh_generic_type of MULTI_ACC_S5 : constant is 1;
    attribute mti_svvh_generic_type of MULTI_ACC_S4 : constant is 1;
    attribute mti_svvh_generic_type of MULTI_ACC_S3 : constant is 1;
    attribute mti_svvh_generic_type of MULTI_ACC_S2 : constant is 1;
    attribute mti_svvh_generic_type of MULTI_ACC_S1 : constant is 1;
    attribute mti_svvh_generic_type of RELEASE_OUTPUT : constant is 1;
end NLC_opt;
