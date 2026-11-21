library ieee;
use ieee.std_logic_1164.all;

entity Digit is
    generic (
        Digit : integer := 0
    );
    port(reset, start, clk, Cin: in  std_logic;
         Seg : out std_logic_vector(6 downto 0);
			Detect : out std_logic);
end;

architecture arch of Digit is

	component RegN is
		generic (N: integer := 4);
		port (clock, reset, load : in std_logic;
				D : in std_logic_vector(N-1 downto 0);
				Q : out std_logic_vector(N-1 downto 0));
	end component;
	component BCD_Decode is
		 port(I : in  std_logic_vector(3 downto 0);
				F : out std_logic_vector(6 downto 0));
	end component;
	component RCA is
		 port(A : in  std_logic_vector(3 downto 0);
				B : in std_logic;
				Sum : out std_logic_vector(3 downto 0));
	end component;
	component MUX2to1 is
		 port (
			  S   : in  std_logic;
			  I0, I1 : in std_logic_vector(3 downto 0);
			  Y   : out std_logic_vector(3 downto 0));
	end component;
	 

    signal Q, Sum, D : std_logic_vector(3 downto 0);
	 signal Hz1, Detects : std_logic;

begin
	stage0: RegN port map(Hz1, reset, start, D, Q);
	stage1: BCD_Decode port map(Q, Seg);
	
	Detects <= '1' when
		(Digit = 0 and Q = "1010") or -- Binary 10
		(Digit = 1  and Q = "0110") -- Binary 6
	else '0';
	Detect <= Detects;
	
	stage2: RCA port map(Q, Cin, Sum);
	stage3: MUX2to1 port map(Detects, Sum, "0000", D);
end architecture;