library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter is
end tb_counter;

architecture behaviour of tb_counter is

component counter 
    Port ( clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
           count: out std_logic_vector(3 downto 0) 
     );
end component;
signal treset,tclk: std_logic;
signal tcount:std_logic_vector(3 downto 0);

begin
counter1: component counter 
port map (clk => tclk, reset=>treset, count => tcount);

process
begin
	tclk <= '0';
	wait for 10 ns;
	tclk <= '1';
	wait for 10 ns;
end process;


process
begin        
	wait for 20 ns;
	treset <= '1';
	wait for 20 ns;    
	treset <= '0';
	wait for 180 ns;
	treset <='1';
	wait for 10 ns;
end process;
end behaviour;
