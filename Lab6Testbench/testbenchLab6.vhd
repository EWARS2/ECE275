library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbenchLab6 is
end;

architecture arch of testbenchLab6 is

    component Lab6 is
        port (
            A, B   : in  std_logic_vector(3 downto 0);
            Opcode : in  std_logic_vector(2 downto 0);
            F      : out std_logic_vector(3 downto 0);
            Cout, Z : out std_logic
        );
    end component;

    signal A, B : std_logic_vector(3 downto 0);
    signal Opcode : std_logic_vector(2 downto 0);

    signal F : std_logic_vector(3 downto 0);
    signal Cout, Z : std_logic;

begin

    DUT: Lab6 port map(A, B, Opcode, F, Cout, Z);

    inputs: process

        variable expected_cout : std_logic;

        procedure check_result(
            expected : integer;
            expected_cout : std_logic;
            operation : string;
            a_value, b_value : integer
        ) is
        begin

            -- Check the 4-bit function output
            assert F = std_logic_vector(to_unsigned(expected mod 16, 4))
                report operation & " Incorrect F: A=" &
                       integer'image(a_value) & " B=" &
                       integer'image(b_value)
                severity error;

            -- Check the carry/borrow flag
            assert Cout = expected_cout
                report operation & " Incorrect Cout: A=" &
                       integer'image(a_value) & " B=" &
                       integer'image(b_value)
                severity error;

            -- Check the zero flag
            if (expected mod 16) = 0 then
                assert Z = '1'
                    report operation & " Incorrect Z: A=" &
                           integer'image(a_value) & " B=" &
                           integer'image(b_value)
                    severity error;
            else
                assert Z = '0'
                    report operation & " Incorrect Z: A=" &
                           integer'image(a_value) & " B=" &
                           integer'image(b_value)
                    severity error;
            end if;

        end procedure;

    begin

        for i in 0 to 15 loop
            for j in 0 to 15 loop

                A <= std_logic_vector(to_unsigned(i, 4));
                B <= std_logic_vector(to_unsigned(j, 4));

                -- Opcode 000: A - 1 (Decrement)
                Opcode <= "000";
                wait for 10 ns;

                if i = 0 then
                    expected_cout := '1';
                else
                    expected_cout := '0';
                end if;

                check_result(i + 15, expected_cout,
                             "Decrement", i, j);

                -- Opcode 001: A + 1 (Increment)
                Opcode <= "001";
                wait for 10 ns;

                if i = 15 then
                    expected_cout := '1';
                else
                    expected_cout := '0';
                end if;

                check_result(i + 1, expected_cout,
                             "Increment", i, j);

                -- Opcode 010: NOT A
                Opcode <= "010";
                wait for 10 ns;

                check_result(to_integer(unsigned(not A)),
                             '0', "NOT", i, j);

                -- Opcode 011: A OR B
                Opcode <= "011";
                wait for 10 ns;

                check_result(to_integer(unsigned(A or B)),
                             '0', "OR", i, j);

                -- Opcode 100: A XOR B
                Opcode <= "100";
                wait for 10 ns;

                check_result(to_integer(unsigned(A xor B)),
                             '0', "XOR", i, j);

                -- Opcode 101: A AND B
                Opcode <= "101";
                wait for 10 ns;

                check_result(to_integer(unsigned(A and B)),
                             '0', "AND", i, j);

                -- Opcode 110: A - B (Subtract)
                Opcode <= "110";
                wait for 10 ns;

                if i < j then
                    expected_cout := '1';
                else
                    expected_cout := '0';
                end if;

                check_result(i - j + 16, expected_cout,
                             "Subtract", i, j);

                -- Opcode 111: A + B (Add)
                Opcode <= "111";
                wait for 10 ns;

                if (i + j) > 15 then
                    expected_cout := '1';
                else
                    expected_cout := '0';
                end if;

                check_result(i + j, expected_cout,
                             "Add", i, j);

            end loop;
        end loop;

        report "All tests finished" severity note;
        wait;

    end process;

end architecture;

