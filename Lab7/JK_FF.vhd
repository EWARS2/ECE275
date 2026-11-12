library ieee;
use ieee.std_logic_1164.all;

entity JK_FF is
  port (clock, J, clrn, pren, K : in std_logic;
        Q: out std_logic;
        Qbar : out std_logic);
 end;

architecture arch of JK_FF is

signal temp, temp_bar: std_logic;

begin

	process(clock)
	begin
		if clock'event and clock='1' then
			if clrn='0' then
				temp <= '0';
			elsif pren='0' then
				temp <= '1';
			elsif (J='0' and K='0') then
				temp <= temp;
			elsif (J='0' and K='1') then
				temp <= '0';
			elsif (J='1' and K='0') then
				temp <= '1';
			elsif (J='1' and K='1') then
				temp <= not temp;
			end if;
		end if;
	end process;
	
	Q <= temp;
	Qbar <= not temp;

end architecture;