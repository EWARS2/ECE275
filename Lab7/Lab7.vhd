library ieee;
use ieee.std_logic_1164.all;

entity Lab7 is
    port (
        Reset, Clock  : in  std_logic;
        Q : out std_logic_vector(2 downto 0)
    );
end;

architecture arch of Lab7 is

    component JK_FF is
  port (clock, J, clrn, pren, K : in std_logic;
        Q: out std_logic;
        Qbar : out std_logic);
    end component;

	 
    signal signal0     : std_logic;

    signal Qa     : std_logic;
    signal Qb     : std_logic;
    signal Qc     : std_logic; 
	 
    signal QaNot     : std_logic;
    signal QbNot     : std_logic;
    signal QcNot     : std_logic; 

begin
	
	
	signal0 <= Qb and QcNot;
	stageA: JK_FF port map(Clock, signal0, Reset, '1', '1', Qa, QaNot);
	stageB: JK_FF port map(Clock, '1', '1', Reset, Qa, Qb, QbNot);
	stageC: JK_FF port map(Clock, QbNot, Reset, '1', '1', Qc, QcNot);
	
	Q(2) <= Qa;
	Q(1) <= Qb;
	Q(0) <= Qc;
	

end architecture;