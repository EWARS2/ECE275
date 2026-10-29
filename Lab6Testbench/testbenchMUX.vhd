
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbenchMUX is
end;

architecture arch of testbenchMUX is

    component Mux8to1 is
        port (
            S : in std_logic_vector(2 downto 0);
            I0, I1, I2, I3 : in std_logic_vector(4 downto 0);
            I4, I5, I6, I7 : in std_logic_vector(4 downto 0);
            Y : out std_logic_vector(4 downto 0)
        );
    end component;

    signal S : std_logic_vector(2 downto 0);
    signal I0, I1, I2, I3, I4, I5, I6, I7, Y :
        std_logic_vector(4 downto 0);

begin

    DUT: Mux8to1 port map(S, I0, I1, I2, I3,
                          I4, I5, I6, I7, Y);

    inputs: process
    begin

        I0 <= "00001";
        I1 <= "00010";
        I2 <= "00100";
        I3 <= "01000";
        I4 <= "10000";
        I5 <= "00011";
        I6 <= "00110";
        I7 <= "01100";

        S <= "000";
        wait for 10 ns;
        assert Y = I0
            report "Incorrect result for I0"
            severity error;

        S <= "001";
        wait for 10 ns;
        assert Y = I1
            report "Incorrect result for I1"
            severity error;

        S <= "010";
        wait for 10 ns;
        assert Y = I2
            report "Incorrect result for I2"
            severity error;

        S <= "011";
        wait for 10 ns;
        assert Y = I3
            report "Incorrect result for I3"
            severity error;

        S <= "100";
        wait for 10 ns;
        assert Y = I4
            report "Incorrect result for I4"
            severity error;

        S <= "101";
        wait for 10 ns;
        assert Y = I5
            report "Incorrect result for I5"
            severity error;

        S <= "110";
        wait for 10 ns;
        assert Y = I6
            report "Incorrect result for I6"
            severity error;

        S <= "111";
        wait for 10 ns;
        assert Y = I7
            report "Incorrect result for I7"
            severity error;

        report "Tests finished" severity note;
        wait;

    end process;

end;
