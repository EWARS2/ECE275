library ieee;
use ieee.std_logic_1164.all;

entity Stopwatch is
    port(reset, start, clk : in  std_logic;
         Seg0, seg1 : out std_logic_vector(6 downto 0));
end;

architecture arch of Stopwatch is

	component clock_divider is
		port (clk_old : in std_logic;
				 clk_new : out std_logic);
	end;

	component RegN is
		(generic N: integer := 4)
		port (clock, reset, load : in std_logic;
				D : in std_logic_vector(N-1 downto 0);
				Q : out std_logic_vector(N-1 downto 0);
		);
	end;
	component BCD_Decode is
		 port(I : in  std_logic_vector(3 downto 0);
				F : out std_logic_vector(6 down to 0));
	end;
	component RCA is
		 port(A : in  std_logic_vector(3 downto 0);
				B : in std_logic;
				Sum : out std_logic_vector(3 downto 0));
	end;
	component MUX2to1 is
		 port (
			  S   : in  std_logic;
			  I0, I1 : in std_logic_vector(3 downto 0);
			  Y   : out std_logic_vector(3 downto 0)
		 );
	end;
	 

    signal Q, Sum, D : std_logic_vector(3 downto 0);
	 signal Hz1 : std_logic;

begin

	stage0: clock_divider port map(clk, Hz1);
	stage1: RegN port map(Hz1, reset, start, D, Q);
	
	


end architecture;