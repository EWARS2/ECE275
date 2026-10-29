library ieee;
use ieee.std_logic_1164.all;

entity MUX8to1 is
    port (
        S   : in  std_logic_vector(2 downto 0);
        I0, I1, I2, I3 : in std_logic_vector(4 downto 0);
        I4, I5, I6, I7 : in std_logic_vector(4 downto 0);
        Y   : out std_logic_vector(4 downto 0)
    );
end MUX8to1;

architecture arch of MUX8to1 is
begin
    with S select
        Y <= I0 when "000",
             I1 when "001",
             I2 when "010",
             I3 when "011",
             I4 when "100",
             I5 when "101",
             I6 when "110",
             I7 when "111",
             "00000" when others;
end arch;