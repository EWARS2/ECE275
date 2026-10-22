-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/15/2026 12:17:36"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab4 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	P : OUT std_logic_vector(7 DOWNTO 0)
	);
END Lab4;

-- Design Ports Information
-- P[0]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[4]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[5]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[6]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_P : std_logic_vector(7 DOWNTO 0);
SIGNAL \P[0]~output_o\ : std_logic;
SIGNAL \P[1]~output_o\ : std_logic;
SIGNAL \P[2]~output_o\ : std_logic;
SIGNAL \P[3]~output_o\ : std_logic;
SIGNAL \P[4]~output_o\ : std_logic;
SIGNAL \P[5]~output_o\ : std_logic;
SIGNAL \P[6]~output_o\ : std_logic;
SIGNAL \P[7]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \P~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \stage0_0|Sum~combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \stage0_1|Sum~4_combout\ : std_logic;
SIGNAL \stage0_1|Sum~5_combout\ : std_logic;
SIGNAL \stage1_0|Sum~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \stage0_1|Cout~3_combout\ : std_logic;
SIGNAL \stage0_1|Cout~9_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \stage0_2|Sum~combout\ : std_logic;
SIGNAL \stage1_1|Sum~combout\ : std_logic;
SIGNAL \stage2_0|Sum~combout\ : std_logic;
SIGNAL \stage1_1|Cout~0_combout\ : std_logic;
SIGNAL \stage0_2|Cout~0_combout\ : std_logic;
SIGNAL \stage1_2|Sum~combout\ : std_logic;
SIGNAL \stage2_1|Sum~combout\ : std_logic;
SIGNAL \stage1_3|Sum~2_combout\ : std_logic;
SIGNAL \stage1_2|Cout~0_combout\ : std_logic;
SIGNAL \stage2_1|Cout~0_combout\ : std_logic;
SIGNAL \stage2_2|Sum~combout\ : std_logic;
SIGNAL \stage2_2|Cout~0_combout\ : std_logic;
SIGNAL \stage1_3|Cout~0_combout\ : std_logic;
SIGNAL \stage2_3|Sum~0_combout\ : std_logic;
SIGNAL \stage2_3|Cout~0_combout\ : std_logic;
SIGNAL PP : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
P <= ww_P;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y0_N23
\P[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \P~0_combout\,
	devoe => ww_devoe,
	o => \P[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\P[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0_0|Sum~combout\,
	devoe => ww_devoe,
	o => \P[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\P[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1_0|Sum~combout\,
	devoe => ww_devoe,
	o => \P[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\P[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2_0|Sum~combout\,
	devoe => ww_devoe,
	o => \P[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\P[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2_1|Sum~combout\,
	devoe => ww_devoe,
	o => \P[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\P[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2_2|Sum~combout\,
	devoe => ww_devoe,
	o => \P[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\P[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2_3|Sum~0_combout\,
	devoe => ww_devoe,
	o => \P[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\P[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2_3|Cout~0_combout\,
	devoe => ww_devoe,
	o => \P[7]~output_o\);

-- Location: IOIBUF_X0_Y4_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X6_Y4_N24
\P~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \P~0_combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \P~0_combout\);

-- Location: IOIBUF_X5_Y0_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X6_Y4_N26
\stage0_0|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_0|Sum~combout\ = (\A[0]~input_o\ & (\B[1]~input_o\ $ (((\A[1]~input_o\ & \B[0]~input_o\))))) # (!\A[0]~input_o\ & (((\A[1]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \stage0_0|Sum~combout\);

-- Location: IOIBUF_X0_Y4_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X6_Y4_N4
\stage0_1|Sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_1|Sum~4_combout\ = \A[2]~input_o\ $ (((!\A[0]~input_o\ & (\B[1]~input_o\ & \A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \stage0_1|Sum~4_combout\);

-- Location: LCCOMB_X6_Y4_N30
\stage0_1|Sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_1|Sum~5_combout\ = (\B[0]~input_o\ & (((\stage0_1|Sum~4_combout\)))) # (!\B[0]~input_o\ & (\A[1]~input_o\ & (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \stage0_1|Sum~4_combout\,
	datad => \B[0]~input_o\,
	combout => \stage0_1|Sum~5_combout\);

-- Location: LCCOMB_X6_Y4_N28
\stage1_0|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_0|Sum~combout\ = \stage0_1|Sum~5_combout\ $ (((\A[0]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \stage0_1|Sum~5_combout\,
	combout => \stage1_0|Sum~combout\);

-- Location: IOIBUF_X7_Y0_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X6_Y4_N18
\PP[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- PP(9) = (\A[1]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => PP(9));

-- Location: LCCOMB_X6_Y4_N20
\PP[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- PP(8) = (\B[2]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => PP(8));

-- Location: LCCOMB_X6_Y4_N16
\stage0_1|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_1|Cout~3_combout\ = (\A[0]~input_o\) # (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \stage0_1|Cout~3_combout\);

-- Location: LCCOMB_X6_Y4_N10
\stage0_1|Cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_1|Cout~9_combout\ = (\A[1]~input_o\ & (\B[0]~input_o\ & (\B[1]~input_o\ & \stage0_1|Cout~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \stage0_1|Cout~3_combout\,
	combout => \stage0_1|Cout~9_combout\);

-- Location: IOIBUF_X9_Y0_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X6_Y4_N22
\PP[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- PP(3) = (\B[0]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => PP(3));

-- Location: LCCOMB_X6_Y4_N0
\stage0_2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_2|Sum~combout\ = \stage0_1|Cout~9_combout\ $ (PP(3) $ (((\B[1]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_1|Cout~9_combout\,
	datab => \B[1]~input_o\,
	datac => PP(3),
	datad => \A[2]~input_o\,
	combout => \stage0_2|Sum~combout\);

-- Location: LCCOMB_X6_Y4_N12
\stage1_1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|Sum~combout\ = PP(9) $ (\stage0_2|Sum~combout\ $ (((PP(8) & \stage0_1|Sum~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PP(9),
	datab => PP(8),
	datac => \stage0_1|Sum~5_combout\,
	datad => \stage0_2|Sum~combout\,
	combout => \stage1_1|Sum~combout\);

-- Location: LCCOMB_X7_Y4_N28
\stage2_0|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_0|Sum~combout\ = \stage1_1|Sum~combout\ $ (((\A[0]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[3]~input_o\,
	datad => \stage1_1|Sum~combout\,
	combout => \stage2_0|Sum~combout\);

-- Location: LCCOMB_X7_Y4_N8
\PP[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- PP(12) = (\A[0]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => PP(12));

-- Location: LCCOMB_X6_Y4_N14
\PP[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- PP(7) = (\B[1]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => PP(7));

-- Location: LCCOMB_X6_Y4_N8
\stage1_1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_1|Cout~0_combout\ = (PP(9) & ((\stage0_2|Sum~combout\) # ((PP(8) & \stage0_1|Sum~5_combout\)))) # (!PP(9) & (PP(8) & (\stage0_1|Sum~5_combout\ & \stage0_2|Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PP(9),
	datab => PP(8),
	datac => \stage0_1|Sum~5_combout\,
	datad => \stage0_2|Sum~combout\,
	combout => \stage1_1|Cout~0_combout\);

-- Location: LCCOMB_X7_Y4_N4
\PP[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- PP(10) = (\B[2]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => PP(10));

-- Location: LCCOMB_X6_Y4_N2
\stage0_2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0_2|Cout~0_combout\ = (\stage0_1|Cout~9_combout\ & ((PP(3)) # ((\B[1]~input_o\ & \A[2]~input_o\)))) # (!\stage0_1|Cout~9_combout\ & (\B[1]~input_o\ & (PP(3) & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_1|Cout~9_combout\,
	datab => \B[1]~input_o\,
	datac => PP(3),
	datad => \A[2]~input_o\,
	combout => \stage0_2|Cout~0_combout\);

-- Location: LCCOMB_X7_Y4_N22
\stage1_2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_2|Sum~combout\ = PP(7) $ (\stage1_1|Cout~0_combout\ $ (PP(10) $ (\stage0_2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PP(7),
	datab => \stage1_1|Cout~0_combout\,
	datac => PP(10),
	datad => \stage0_2|Cout~0_combout\,
	combout => \stage1_2|Sum~combout\);

-- Location: LCCOMB_X7_Y4_N18
\PP[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- PP(13) = (\A[1]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => PP(13));

-- Location: LCCOMB_X7_Y4_N0
\stage2_1|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_1|Sum~combout\ = \stage1_2|Sum~combout\ $ (PP(13) $ (((\stage1_1|Sum~combout\ & PP(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1_1|Sum~combout\,
	datab => PP(12),
	datac => \stage1_2|Sum~combout\,
	datad => PP(13),
	combout => \stage2_1|Sum~combout\);

-- Location: LCCOMB_X7_Y4_N26
\PP[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- PP(14) = (\B[3]~input_o\ & \A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	combout => PP(14));

-- Location: LCCOMB_X6_Y4_N6
\stage1_3|Sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_3|Sum~2_combout\ = (\A[3]~input_o\ & (\B[2]~input_o\ $ (((\stage0_2|Cout~0_combout\ & \B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_2|Cout~0_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \stage1_3|Sum~2_combout\);

-- Location: LCCOMB_X7_Y4_N30
\stage1_2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_2|Cout~0_combout\ = (\stage1_1|Cout~0_combout\ & ((PP(10)) # (PP(7) $ (\stage0_2|Cout~0_combout\)))) # (!\stage1_1|Cout~0_combout\ & (PP(10) & (PP(7) $ (\stage0_2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PP(7),
	datab => \stage1_1|Cout~0_combout\,
	datac => PP(10),
	datad => \stage0_2|Cout~0_combout\,
	combout => \stage1_2|Cout~0_combout\);

-- Location: LCCOMB_X7_Y4_N20
\stage2_1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_1|Cout~0_combout\ = (\stage1_2|Sum~combout\ & ((PP(13)) # ((\stage1_1|Sum~combout\ & PP(12))))) # (!\stage1_2|Sum~combout\ & (\stage1_1|Sum~combout\ & (PP(12) & PP(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1_1|Sum~combout\,
	datab => PP(12),
	datac => \stage1_2|Sum~combout\,
	datad => PP(13),
	combout => \stage2_1|Cout~0_combout\);

-- Location: LCCOMB_X7_Y4_N24
\stage2_2|Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|Sum~combout\ = PP(14) $ (\stage1_3|Sum~2_combout\ $ (\stage1_2|Cout~0_combout\ $ (\stage2_1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PP(14),
	datab => \stage1_3|Sum~2_combout\,
	datac => \stage1_2|Cout~0_combout\,
	datad => \stage2_1|Cout~0_combout\,
	combout => \stage2_2|Sum~combout\);

-- Location: LCCOMB_X7_Y4_N10
\stage2_2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_2|Cout~0_combout\ = (PP(14) & ((\stage2_1|Cout~0_combout\) # (\stage1_3|Sum~2_combout\ $ (\stage1_2|Cout~0_combout\)))) # (!PP(14) & (\stage2_1|Cout~0_combout\ & (\stage1_3|Sum~2_combout\ $ (\stage1_2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PP(14),
	datab => \stage1_3|Sum~2_combout\,
	datac => \stage1_2|Cout~0_combout\,
	datad => \stage2_1|Cout~0_combout\,
	combout => \stage2_2|Cout~0_combout\);

-- Location: LCCOMB_X7_Y4_N12
\PP[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- PP(11) = (\B[2]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => PP(11));

-- Location: LCCOMB_X7_Y4_N14
\stage1_3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1_3|Cout~0_combout\ = (\stage1_2|Cout~0_combout\ & ((PP(11)) # ((\stage0_2|Cout~0_combout\ & PP(7))))) # (!\stage1_2|Cout~0_combout\ & (\stage0_2|Cout~0_combout\ & (PP(7) & PP(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0_2|Cout~0_combout\,
	datab => PP(7),
	datac => \stage1_2|Cout~0_combout\,
	datad => PP(11),
	combout => \stage1_3|Cout~0_combout\);

-- Location: LCCOMB_X7_Y4_N16
\stage2_3|Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_3|Sum~0_combout\ = \stage2_2|Cout~0_combout\ $ (\stage1_3|Cout~0_combout\ $ (((\B[3]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \stage1_3|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \stage2_3|Sum~0_combout\);

-- Location: LCCOMB_X7_Y4_N2
\stage2_3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2_3|Cout~0_combout\ = (\stage2_2|Cout~0_combout\ & ((\stage1_3|Cout~0_combout\) # ((\B[3]~input_o\ & \A[3]~input_o\)))) # (!\stage2_2|Cout~0_combout\ & (\B[3]~input_o\ & (\stage1_3|Cout~0_combout\ & \A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage2_2|Cout~0_combout\,
	datab => \B[3]~input_o\,
	datac => \stage1_3|Cout~0_combout\,
	datad => \A[3]~input_o\,
	combout => \stage2_3|Cout~0_combout\);

ww_P(0) <= \P[0]~output_o\;

ww_P(1) <= \P[1]~output_o\;

ww_P(2) <= \P[2]~output_o\;

ww_P(3) <= \P[3]~output_o\;

ww_P(4) <= \P[4]~output_o\;

ww_P(5) <= \P[5]~output_o\;

ww_P(6) <= \P[6]~output_o\;

ww_P(7) <= \P[7]~output_o\;
END structure;


