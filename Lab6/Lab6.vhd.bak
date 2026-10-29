library ieee;
use ieee.std_logic_1164.all;

entity RCA is
    port(A, B : in  std_logic_vector(3 downto 0);
			Cin : in std_logic;
         Sum : out std_logic_vector(4 downto 0));
end;

architecture arch of RCA is

    component FA is
        port(
            A, B, Cin : in std_logic;
            Sum, Cout : out std_logic
        );
    end component;

    signal C : std_logic_vector(3 downto 0);
    signal S : std_logic_vector(4 downto 0);

begin

    stage0: FA port map(A(0), B(0), Cin, S(0), C(0));
    stage1: FA port map(A(1), B(1), C(0), S(1), C(1));
    stage2: FA port map(A(2), B(2), C(1), S(2), C(2));
    stage3: FA port map(A(3), B(3), C(2), S(3), S(4));

    Sum(4 downto 0) <= S;

end architecture;