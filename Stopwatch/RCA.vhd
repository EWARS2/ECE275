library ieee;
use ieee.std_logic_1164.all;

entity RCA is
    port(A : in  std_logic_vector(3 downto 0);
			B : in std_logic;
         Sum : out std_logic_vector(3 downto 0));
end;

architecture arch of RCA is

    component HA is
        port(
            A, B      : in std_logic;
            Sum, Cout : out std_logic
        );
    end component;

    signal C : std_logic_vector(3 downto 0);
    signal S : std_logic_vector(4 downto 0);

begin

    stage0: HA port map(A(0), B, S(0), C(0));
    stage1: HA port map(A(1), C(0), S(1), C(1));
    stage2: HA port map(A(2), C(1), S(2), C(2));
    stage3: HA port map(A(3), C(2), S(3), S(4));

    Sum(3 downto 0) <= S(3 downto 0);

end architecture;