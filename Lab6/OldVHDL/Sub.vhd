library ieee;
use ieee.std_logic_1164.all;

entity Sub is
    port(A, B : in  std_logic_vector(3 downto 0);
         F : out std_logic_vector(4 downto 0)
end;

architecture arch of Sub is

    component RCA is
        port(A, B : in  std_logic_vector(3 downto 0);
			Cin : in std_logic;
         Sum : out std_logic_vector(4 downto 0));
    end component;

	 signal BB : std_logic_vector(3 downto 0);
	 
begin
	BB <= not B;
	RCA port map(A, BB, '1', F);

end architecture;