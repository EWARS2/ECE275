library ieee;
use ieee.std_logic_1164.all;

entity Counter is
    port (
        Reset, Clock  : in  std_logic;
        Q : out std_logic_vector(2 downto 0)
    );
end Lab6;

architecture arch of Counter is

    component RCA is
        port (
            A, B : in  std_logic_vector(3 downto 0);
            Cin  : in  std_logic;
            Sum  : out std_logic_vector(4 downto 0)
        );
    end component;

    signal BB     : std_logic_vector(3 downto 0);

begin

	

end architecture;