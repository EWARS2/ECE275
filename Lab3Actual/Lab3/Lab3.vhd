library ieee;
use ieee.std_logic_1164.all;

entity lab3 is
	port(A, B, C, D: in std_logic;
			F1, F2, F3, F4: out std_logic);
end;

architecture dataflow of lab3 is
--signal temp_AB: std_logic;
begin
	F1 <= ((not A) and B and C) or (A and B and (not C)) or (A and B and C) or (not D); 
	F2 <= (((not A) or (not B)) and (A or C)) or D;
	F3 <= (A and (not C)) or (B and (not C)) or ((not C) and (not D)) or (A and B) or (A and (not D));
	F4 <= (A or (not C)) and (A or B or (not D)) and (B or (not C) or (not D));
end;