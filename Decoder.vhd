library ieee;
use ieee.STD_LOGIC_1164.all;

Entity decoder is

Port ( c : in std_logic_vector(3 downto 0);
       m : out STD_LOGIC_VECTOR(6 downto 0));
end decoder ;

architecture behavior of decoder is
BEGIN	
	m <=	"1111110" when c="0000" else
		"0110000" when c="0001" else
		"1101101" when c="0010" else
		"1111001" when c="0011" else
		"0110011" when c="0100" else
		"1011011" when c="0101" else
		"1011111" when c="0110" else
		"1110000" when c="0111" else
		"1111111" when c="1000" else
		"1111011";
		
          
END behavior;
