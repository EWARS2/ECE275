library ieee;
use ieee.std_logic_1164.all;

entity Lab6 is
    port(A, B : in  std_logic_vector(3 downto 0);
			Opcode : in std_logic_vector(2 downto 0);
         F : out std_logic_vector(3 downto 0);
			Cout, Z : out std_logic);
end;

architecture arch of Lab6 is

    component RCA is
        port(A, B : in  std_logic_vector(3 downto 0);
			Cin : in std_logic;
         Sum : out std_logic_vector(4 downto 0));
    end component;
	 
	 component MUX8to1 is
    port (
        S   : in  std_logic_vector(2 downto 0);
        I0, I1, I2, I3 : in std_logic_vector(4 downto 0);
        I4, I5, I6, I7 : in std_logic_vector(4 downto 0);
        Y   : out std_logic_vector(4 downto 0)
    );
	end component;
	
	signal BB : std_logic_vector(3 downto 0);
	signal MuxOut : std_logic_vector(4 downto 0);
	
	signal Dec : std_logic_vector(4 downto 0);
   signal Inc : std_logic_vector(4 downto 0);
   signal Not2 : std_logic_vector(4 downto 0);
   signal Or2 : std_logic_vector(4 downto 0);
	signal XOR2 : std_logic_vector(4 downto 0);
   signal AND2 : std_logic_vector(4 downto 0);
   signal Sub : std_logic_vector(4 downto 0);
   signal Add : std_logic_vector(4 downto 0);

begin
	BB <= not B;

	stage0: RCA port map(A, "1111", "0", Dec);
	stage1: RCA port map(A, "0000", "1", Inc);
	Not2 <= not A;
	Or2 <= A or B;
	XOR2 <= A xor B;
	AND2 <= A and B;
	stage6: RCA port map(A, BB, "1", Sub);
	stage7: RCA port map(A, B, "0", Add);
	
	
   stage8: Mux8to1 port map(Opcode, Dec, Inc, Not2, Or2, Xor2, And2, Sub, Add, MuxOut);
	
	F <= Muxout(3 downto 0);
	Cout <= MuxOut(4);
	Z <= MuxOut(0);
	

end architecture;