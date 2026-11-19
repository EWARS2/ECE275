LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;


entity clock_divider is
	port (clk_old : in std_logic;
			 clk_new : out std_logic);
end;

architecture arch of clock_divider is
	
	signal count : integer :=0;
	signal b : std_logic :='0';

begin

	process(clk_old) 
	begin
		if (rising_edge(clk_old)) then
			count <= count + 1;
			if (count = 25000000 - 1) then
				b <= not b;
				count <= 0;
			end if;
		end if;
	end process;
	clk_new <= b;
end;