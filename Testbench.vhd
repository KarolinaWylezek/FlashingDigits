library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- FPGA projects using Verilog code VHDL code
-- fpga4student.com: FPGA projects, Verilog projects, VHDL projects
-- VHDL project: VHDL code for counters with testbench  
-- VHDL project: Testbench VHDL code for up counter
entity testbench is
end testbench;

architecture behaviour of testbench is

component flashingDigits 
port(	CLOCK_50 : IN STD_LOGIC;
	resetting : in STD_LOGIC;
	HEX0 : out std_logic_vector(6 downto 0)
);
end component;

signal reset,clk: std_logic;
signal count:std_logic_vector(6 downto 0);

begin
dut: flashingDigits port map (CLOCK_50 => clk, resetting=>reset, HEX0 => count);
   -- Clock process definitions
clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;


-- Stimulus process
stim_proc: process
begin        
   -- hold reset state for 100 ns.
     reset <= '1';
   wait for 20 ns;    
    reset <= '0';
   wait;
end process;
end behaviour;
