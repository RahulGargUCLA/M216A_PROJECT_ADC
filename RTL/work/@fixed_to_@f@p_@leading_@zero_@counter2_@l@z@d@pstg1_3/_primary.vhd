library verilog;
use verilog.vl_types.all;
entity Fixed_to_FP_Leading_Zero_Counter2_LZDPstg1_3 is
    port(
        clk             : in     vl_logic;
        GlobalEnable1   : in     vl_logic;
        GlobalReset     : in     vl_logic;
        y_sel           : out    vl_logic;
        y               : out    vl_logic_vector(4 downto 0);
        x2_sel          : in     vl_logic;
        x2              : in     vl_logic_vector(4 downto 0);
        x1_sel          : in     vl_logic;
        x1              : in     vl_logic_vector(4 downto 0)
    );
end Fixed_to_FP_Leading_Zero_Counter2_LZDPstg1_3;
