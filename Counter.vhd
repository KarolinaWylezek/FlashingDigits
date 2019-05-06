LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter is
    Port ( clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
           count: out std_logic_vector(3 downto 0) -- output 4-bit counter
     );
end counter;

architecture Behavioral of counter is
signal counter: std_logic_vector(3 downto 0):="0000";
begin
-- up counter
process(clk,reset)
begin
if(rising_edge(clk)) then
    if(reset='1') then
         counter <= x"0";
    else
        counter <= counter + x"1";
    end if;
 end if;
end process;
 count <= counter;

end Behavioral;
