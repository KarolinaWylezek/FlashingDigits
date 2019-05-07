LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter2 is
    Port ( clk: in std_logic; 
           reset: in std_logic; 
           enout : out std_logic
     );
end counter2;

architecture behaviour of counter2 is
signal tmp: std_logic_vector(22 downto 0):="00000000000000000000000";
begin
process(clk,reset)
begin
if(rising_edge(clk)) then
    if(reset='1') then tmp <= "00000000000000000000000";
    else tmp <= tmp + "00000000000000000000001";
    end if; 
 end if;

if(tmp="10011000100101101000000") then enout <= '1';
else enout<='0';
end if;
end process;
end behaviour;
