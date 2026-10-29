library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbenchRCA is
end;

architecture arch of testbenchRCA is

    component RCA is
        port(A, B : in  std_logic_vector(3 downto 0);
		Cin : in std_logic;
         	Sum : out std_logic_vector(4 downto 0));
    end component;

    signal A, B : std_logic_vector(3 downto 0);
    signal Cin  : std_logic;
    signal Sum  : std_logic_vector(4 downto 0);

begin

    DUT: RCA port map(A, B, Cin, Sum);

    inputs: process
    begin

	Cin <= '0';
        for i in 0 to 15 loop
            for j in 0 to 15 loop

                A <= std_logic_vector(to_unsigned(i, A'length));
                B <= std_logic_vector(to_unsigned(j, B'length));

                wait for 10 ns;

                assert unsigned(Sum) = i + j
                    report "Incorrect result: A=" & integer'image(i) &
                           " B=" & integer'image(j)
                    severity error;

            end loop;
        end loop;

	Cin <= '1';
        for i in 0 to 15 loop
            for j in 0 to 15 loop

                A <= std_logic_vector(to_unsigned(i, A'length));
                B <= std_logic_vector(to_unsigned(j, B'length));

                wait for 10 ns;

                assert unsigned(Sum) = i + j + 1
                    report "Incorrect result: A=" & integer'image(i) &
                           " B=" & integer'image(j)
                    severity error;

            end loop;
        end loop;	

        report "Tests finished" severity note;
        wait;

    end process;

end;
