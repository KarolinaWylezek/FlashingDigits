LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
Port (	clk: in std_logic; 
	reset: in std_logic; 
	count: out std_logic_vector(3 downto 0)
     );
end counter;

architecture behaviour of counter is

component counter2
port (	clk: in std_logic; 
	reset: in std_logic; 
	enout : out std_logic);
end component;


signal tmp: std_logic_vector(3 downto 0):="0000";
signal enable:std_logic;

begin

C2 : component counter2
port map(clk=>clk, reset=>reset, enout=>enable);



process(clk,reset,enable)
begin
if(rising_edge(clk)) then
	if(reset='1') then tmp <= "0000";
	elsif(enable='1') then tmp <= tmp + "0001";
    end if; 
 end if;
end process;
 count <= tmp;

end behaviour;
