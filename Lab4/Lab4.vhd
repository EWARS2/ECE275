library ieee;
use ieee.std_logic_1164.all;

entity Lab4 is
    port(A, B : in  std_logic_vector(3 downto 0);
         P : out std_logic_vector(7 downto 0));
end;

architecture arch of Lab4 is

    component HA is
        port(
            A, B      : in std_logic;
            Sum, Cout : out std_logic
        );
    end component;

    component FA is
        port(
            A, B, Cin : in std_logic;
            Sum, Cout : out std_logic
        );
    end component;

    signal C0, C1 : std_logic_vector(3 downto 0);
    signal C2, S0, S1 : std_logic_vector(2 downto 0);
	 signal PP : std_logic_vector(15 downto 0);

begin
	 
	 --Row -1 and Partial Products
	 P(0) <= A(0) and B(0);
		PP(1)  <= A(1) and B(0);
		PP(2)  <= A(2) and B(0);
		PP(3)  <= A(3) and B(0);

		PP(4)  <= A(0) and B(1);
		PP(5)  <= A(1) and B(1);
		PP(6)  <= A(2) and B(1);
		PP(7)  <= A(3) and B(1);

		PP(8)  <= A(0) and B(2);
		PP(9)  <= A(1) and B(2);
		PP(10) <= A(2) and B(2);
		PP(11) <= A(3) and B(2);

		PP(12) <= A(0) and B(3);
		PP(13) <= A(1) and B(3);
		PP(14) <= A(2) and B(3);
		PP(15) <= A(3) and B(3);
	 
	 --Row 0
	 stage0_0: HA port map(PP(1), PP(4), P(1), C0(0));
	 stage0_1: FA port map(PP(2), PP(5), C0(0), S0(0), C0(1));
	 stage0_2: FA port map(PP(3), PP(6), C0(1), S0(1), C0(2));
	 stage0_3: HA port map(PP(7), C0(2), S0(2), C0(3));

	 --Row 1
	 stage1_0: HA port map(S0(0), PP(8), P(2), C1(0));
	 stage1_1: FA port map(S0(1), PP(9), C1(0), S1(0), C1(1));
	 stage1_2: FA port map(S0(2), PP(10), C1(1), S1(1), C1(2));
	 stage1_3: FA port map(C0(3), PP(11), C1(2), S1(2), C1(3));

	 --Row 2
	 stage2_0: HA port map(S1(0), PP(12), P(3), C2(0));
	 stage2_1: FA port map(S1(1), PP(13), C2(0), P(4), C2(1));
	 stage2_2: FA port map(S1(2), PP(14), C2(1), P(5), C2(2));
	 stage2_3: FA port map(C1(3), PP(15), C2(2), P(6), P(7));
	 

end architecture;