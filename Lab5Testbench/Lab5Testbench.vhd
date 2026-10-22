library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab5Testbench is
end entity;

architecture arch of Lab5Testbench is

    component Lab5 is
        port (
            I : in std_logic_vector(3 downto 0);
            A, B, C, D, E, F, G : out std_logic
        );
    end component;

    signal I : std_logic_vector(3 downto 0);
    signal A, B, C, D, E, F, G : std_logic;

begin

    DUT: Lab5 port map(I, A, B, C, D, E, F, G);

    inputs: process
        variable expected : std_logic_vector(6 downto 0);
    begin
        for j in 0 to 15 loop

            I <= std_logic_vector(to_unsigned(j, I'length));

            wait for 10 ns;

            case j is
                when 0  => expected := "0000001";
                when 1  => expected := "1001111";
                when 2  => expected := "0010010";
                when 3  => expected := "0000110";
                when 4  => expected := "1001100";
                when 5  => expected := "0100100";
                when 6  => expected := "0100000";
                when 7  => expected := "0001111";
                when 8  => expected := "0000000";
                when 9  => expected := "0000100";
                when others =>
                    expected := "XXXXXXX";
            end case;

            assert (A & B & C & D & E & F & G) = expected
                report "Incorrect output for input " &
                       integer'image(j) &
                       ", expected " &
                       std_logic'image(expected(6)) &
                       std_logic'image(expected(5)) &
                       std_logic'image(expected(4)) &
                       std_logic'image(expected(3)) &
                       std_logic'image(expected(2)) &
                       std_logic'image(expected(1)) &
                       std_logic'image(expected(0))
                severity error;

        end loop;

        report "Tests finished" severity note;
        wait;
    end process;

end architecture;

