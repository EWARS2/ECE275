library ieee;
use ieee.std_logic_1164.all;

entity comb_logic is
	port(A, B, C: in std_logic;
			F: out std_logic);
end;

architecture dataflow of comb_logic is
signal temp_AB: std_logic;
begin
	F <= temp_AB or C;
	temp_AB <= A and B;
end;