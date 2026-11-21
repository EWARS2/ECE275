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
		end component;
	component Digit is
		 generic (Digit : integer := 0);
		 port(reset, start, clk, Cin: in  std_logic;
				Seg : out std_logic_vector(6 downto 0);
				Detect : out std_logic);
	end component;
	 

    signal Sum, D : std_logic_vector(3 downto 0);
	 signal Carry : std_logic;
	 signal Hz1 : std_logic;
	 signal Discard : std_logic;

begin

	stage0: clock_divider port map(clk, Hz1);
	stage1: Digit
		generic map(Digit => 0 )
		port map(reset, start, Hz1, '1', Seg0, Carry);
	stage2: Digit
		generic map(Digit => 1 )
		port map(reset, start, Hz1, Carry, Seg1, Discard);

end architecture;