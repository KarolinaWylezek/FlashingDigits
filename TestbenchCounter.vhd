library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counters is
end tb_counters;

architecture Behavioral of tb_counters is

component counter 
    Port ( clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
           count: out std_logic_vector(3 downto 0) -- output 4-bit counter
     );
end component;
signal reset,clk: std_logic;
signal count:std_logic_vector(3 downto 0);

begin
dut: counter port map (clk => clk, reset=>reset, count => count);
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
end Behavioral;
