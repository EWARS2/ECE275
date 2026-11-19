library ieee;
use ieee.std_logic_1164.all;

entity MUX2to1 is
    port (
        S   : in  std_logic;
        I0, I1 : in std_logic_vector(3 downto 0);
        Y   : out std_logic_vector(3 downto 0)
    );
end;

architecture arch of MUX2to1 is
begin
    with S select
        Y <= I0 when '0',
             I1 when '1',
             "0000" when others;
end arch;