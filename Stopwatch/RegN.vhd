library ieee;
use ieee.std_logic_1164.all;

entity RegN is
	generic (N : integer := 4);
	port (clock, reset, load : in std_logic;
			D : in std_logic_vector(N-1 downto 0);
			Q : out std_logic_vector(N-1 downto 0));
end;

architecture arch of RegN is
begin
	process(clock)
	begin
		if clock'event and clock='1' then
			if reset='0' then
				Q <= (others => '0');
			elsif load='1' then
				Q <= D;
			end if;
		end if;
	end process;
end;
