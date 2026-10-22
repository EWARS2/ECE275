library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end;

architecture arch of testbench is

    component Lab4 is
        port(A, B : in  std_logic_vector(3 downto 0);
             P  : out std_logic_vector(7 downto 0));
    end component;

    signal A, B : std_logic_vector(3 downto 0);
    signal P  : std_logic_vector(7 downto 0);

begin

    DUT: Lab4 port map(A, B, P);

    inputs: process
    begin

        for i in 0 to 15 loop
            for j in 0 to 15 loop

                A <= std_logic_vector(to_unsigned(i, A'length));
                B <= std_logic_vector(to_unsigned(j, B'length));

                wait for 10 ns;

                assert unsigned(P) = i * j
                    report "Incorrect result: A=" & integer'image(i) &
                           " B=" & integer'image(j)
                    severity error;

            end loop;
        end loop;

        report "Tests finished" severity note;
        wait;

    end process;

end;