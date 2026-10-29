library ieee;
use ieee.std_logic_1164.all;

entity Increment is
    port(A : in  std_logic_vector(3 downto 0);
         F : out std_logic_vector(4 downto 0)
end;

architecture arch of Increment is

    component RCA is
        port(A, B : in  std_logic_vector(3 downto 0);
			Cin : in std_logic;
         Sum : out std_logic_vector(4 downto 0));
    end component;
	 
begin
	RCA port map(A, '0000', '1', F);

end architecture;