library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter2 is
end tb_counter2;

architecture behaviour of tb_counter2 is

component counter2 
    Port ( clk: in std_logic; 
           reset: in std_logic; 
           enout : out std_logic
     );
end component;
signal treset,tclk: std_logic;
signal tenout : std_logic;
--signal tcount:std_logic_vector(22 downto 0);

begin
counter1: component counter2 
port map (clk => tclk, reset=>treset, enout => tenout);

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
	wait;
--	wait for 180 ns;
	--treset <='1';
--	wait for 10 ns;
end process;
end behaviour;
