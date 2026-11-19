library ieee;
use ieee.std_logic_1164.all;

entity BCD_Decode is
    port(I : in  std_logic_vector(3 downto 0);
			F : out std_logic_vector(6 down to 0));
end;

architecture arch of BCD_Decode is

signal O : std_logic_vector(3 downto 0);

begin
	O <= not I;
   -- From A to G
	F(0) <= (I(2) and O(1) and O(0)) or (O(3) and O(2) and O(1) and I(0));
	F(1) <= (I(2) and O(1) and I(0)) or (I(2) and I(1) and O(0));
	F(2) <= O(2) and I(1) and O(0);
	F(3) <= (I(2) and I(1) and I(0)) or (I(2) and O(1) and O(0)) or (O(3) and O(2) and O(1) and I(0));
	F(4) <= I(0) or (I(2) and O(1) and O(0));
	F(5) <= (I(1) and I(0)) or (O(2) and I(1)) or (O(3) and O(2) and I(0));
	F(6) <= (O(3) and O(2) and O(1)) or (I(2) and I(1) and I(0));
end architecture;