library verilog;
use verilog.vl_types.all;
entity StackMemory is
    port(
        InputData       : in     vl_logic_vector(15 downto 0);
        P               : in     vl_logic_vector(32 downto 0);
        OutputData      : out    vl_logic_vector(16 downto 0);
        clk             : in     vl_logic
    );
end StackMemory;
