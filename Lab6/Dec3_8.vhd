library ieee;
use ieee.std_logic_1164.all;

entity Dec3_8 is
    port(I : in  std_logic_vector(2 downto 0);
			Y : out std_logic_vector(7 downto 0));
end;

architecture arch of Dec3_8 is
signal O : std_logic_vector(2 downto 0);
begin
	O <= not I;
	Y(0) <= O(2) and O(1) and O(0);
	Y(1) <= O(2) and O(1) and I(0);
	Y(2) <= O(2) and I(1) and O(0);
	Y(3) <= O(2) and I(1) and I(0);
	Y(4) <= I(2) and O(1) and O(0);
	Y(5) <= I(2) and O(1) and I(0);
	Y(6) <= I(2) and I(1) and O(0);
	Y(7) <= I(2) and I(1) and I(0);	
end architecture;