library ieee;
use ieee.std_logic_1164.all;

entity Lab5 is
    port(I : in  std_logic_vector(3 downto 0);
         A, B, C, D, E, F, G : out std_logic);
end;

architecture arch of Lab5 is

signal II : std_logic_vector(3 downto 0);

begin
	II <= not I;

	A <= (I(2) and II(1) and II(0)) or (II(3) and II(2) and II(1) and I(0));
	B <= (I(2) and II(1) and I(0)) or (I(2) and I(1) and II(0));
	C <= II(2) and I(1) and II(0);
	D <= (I(2) and I(1) and I(0)) or (I(2) and II(1) and II(0)) or (II(3) and II(2) and II(1) and I(0));
	E <= I(0) or (I(2) and II(1) and II(0));
	F <= (I(1) and I(0)) or (II(2) and I(1)) or (II(3) and II(2) and I(0));
	G <= (II(3) and II(2) and II(1)) or (I(2) and I(1) and I(0));
end architecture;