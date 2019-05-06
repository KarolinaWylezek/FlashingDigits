LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity flashingDigits is
port(	CLOCK_50 : IN STD_LOGIC;
	resetting : in STD_LOGIC;
	HEX0 : out std_logic_vector(6 downto 0)
);
end flashingDigits;

architecture behaviour of flashingDigits is

component decoder
port(	c : in std_logic_vector(3 downto 0);
	m : out STD_LOGIC_VECTOR(6 downto 0));
end component;

component counter
port (clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
           count: out std_logic_vector(3 downto 0) -- output 4-bit counter
);
end component;

signal Q : std_logic_vector(3 downto 0);

begin

counter1 : component counter
port map (clk=>CLOCK_50, reset=>resetting, count=>Q);

decoder1 : component decoder
port map (c=>Q, m=>HEX0);


end behaviour;

