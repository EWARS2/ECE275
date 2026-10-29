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

-- DATE "10/29/2026 12:43:10"

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

ENTITY 	Lab6 IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	Opcode : IN std_logic_vector(2 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0);
	Cout : OUT std_logic;
	Z : OUT std_logic
	);
END Lab6;

-- Design Ports Information
-- F[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[1]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Opcode[0]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6 IS
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
SIGNAL ww_Opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Opcode[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Opcode[0]~input_o\ : std_logic;
SIGNAL \Opcode[1]~input_o\ : std_logic;
SIGNAL \stage8|Mux4~0_combout\ : std_logic;
SIGNAL \stage8|Mux4~1_combout\ : std_logic;
SIGNAL \stage8|Mux3~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \stage8|Mux3~2_combout\ : std_logic;
SIGNAL \stage8|Mux3~3_combout\ : std_logic;
SIGNAL \stage8|Mux3~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \stage6|stage1|Cout~combout\ : std_logic;
SIGNAL \stage8|Mux2~0_combout\ : std_logic;
SIGNAL \stage8|Mux2~2_combout\ : std_logic;
SIGNAL \stage8|Mux2~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \stage8|Mux2~3_combout\ : std_logic;
SIGNAL \stage8|Mux2~4_combout\ : std_logic;
SIGNAL \stage7|stage1|Cout~0_combout\ : std_logic;
SIGNAL \stage8|Mux2~5_combout\ : std_logic;
SIGNAL \stage8|Mux2~6_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \stage8|Mux1~0_combout\ : std_logic;
SIGNAL \stage8|Mux1~1_combout\ : std_logic;
SIGNAL \stage8|Mux1~2_combout\ : std_logic;
SIGNAL \stage8|Mux1~3_combout\ : std_logic;
SIGNAL \stage0|stage2|Cout~combout\ : std_logic;
SIGNAL \stage8|Mux1~4_combout\ : std_logic;
SIGNAL \stage8|Mux1~5_combout\ : std_logic;
SIGNAL \stage8|Mux1~6_combout\ : std_logic;
SIGNAL \stage8|Mux1~7_combout\ : std_logic;
SIGNAL \stage8|Mux0~4_combout\ : std_logic;
SIGNAL \stage8|Mux0~5_combout\ : std_logic;
SIGNAL \stage8|Mux0~0_combout\ : std_logic;
SIGNAL \stage8|Mux0~1_combout\ : std_logic;
SIGNAL \stage8|Mux0~2_combout\ : std_logic;
SIGNAL \stage8|Mux0~3_combout\ : std_logic;
SIGNAL \stage8|Mux0~6_combout\ : std_logic;
SIGNAL \stage8|Mux0~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Opcode <= Opcode;
F <= ww_F;
Cout <= ww_Cout;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y67_N16
\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|Mux2~6_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|Mux1~7_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage8|Mux0~7_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X0_Y63_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y68_N8
\Opcode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(2),
	o => \Opcode[2]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y62_N22
\Opcode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(0),
	o => \Opcode[0]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\Opcode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Opcode(1),
	o => \Opcode[1]~input_o\);

-- Location: LCCOMB_X1_Y66_N24
\stage8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux4~0_combout\ = (\Opcode[0]~input_o\ & (\Opcode[1]~input_o\ $ (\Opcode[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datac => \Opcode[1]~input_o\,
	datad => \Opcode[2]~input_o\,
	combout => \stage8|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y66_N2
\stage8|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux4~1_combout\ = (\A[0]~input_o\ & (\stage8|Mux4~0_combout\ $ (((\Opcode[2]~input_o\ & !\B[0]~input_o\))))) # (!\A[0]~input_o\ & ((\Opcode[2]~input_o\ & (\B[0]~input_o\ & !\stage8|Mux4~0_combout\)) # (!\Opcode[2]~input_o\ & ((\B[0]~input_o\) # 
-- (!\stage8|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Opcode[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \stage8|Mux4~0_combout\,
	combout => \stage8|Mux4~1_combout\);

-- Location: LCCOMB_X1_Y66_N12
\stage8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux3~0_combout\ = (\Opcode[2]~input_o\ & (\B[0]~input_o\ & (\Opcode[0]~input_o\ $ (!\A[0]~input_o\)))) # (!\Opcode[2]~input_o\ & (((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Opcode[2]~input_o\,
	combout => \stage8|Mux3~0_combout\);

-- Location: IOIBUF_X0_Y63_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y66_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y66_N28
\stage8|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux3~2_combout\ = (\Opcode[0]~input_o\ & ((\Opcode[1]~input_o\ & ((!\B[1]~input_o\))) # (!\Opcode[1]~input_o\ & ((\B[1]~input_o\) # (!\A[1]~input_o\))))) # (!\Opcode[0]~input_o\ & ((\A[1]~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datab => \Opcode[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage8|Mux3~2_combout\);

-- Location: LCCOMB_X1_Y66_N6
\stage8|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux3~3_combout\ = (\Opcode[2]~input_o\ & (\stage8|Mux3~2_combout\ $ (((\Opcode[0]~input_o\ & !\A[1]~input_o\))))) # (!\Opcode[2]~input_o\ & ((\Opcode[0]~input_o\ & (!\A[1]~input_o\ & \stage8|Mux3~2_combout\)) # (!\Opcode[0]~input_o\ & 
-- (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datab => \Opcode[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \stage8|Mux3~2_combout\,
	combout => \stage8|Mux3~3_combout\);

-- Location: LCCOMB_X1_Y66_N14
\stage8|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux3~1_combout\ = \stage8|Mux3~3_combout\ $ (((\stage8|Mux3~0_combout\ & ((\Opcode[1]~input_o\))) # (!\stage8|Mux3~0_combout\ & (!\Opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage8|Mux3~0_combout\,
	datab => \Opcode[2]~input_o\,
	datac => \Opcode[1]~input_o\,
	datad => \stage8|Mux3~3_combout\,
	combout => \stage8|Mux3~1_combout\);

-- Location: IOIBUF_X0_Y59_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y66_N16
\stage6|stage1|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage6|stage1|Cout~combout\ = (\A[1]~input_o\ & (((\A[0]~input_o\) # (!\B[1]~input_o\)) # (!\B[0]~input_o\))) # (!\A[1]~input_o\ & (!\B[1]~input_o\ & ((\A[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage6|stage1|Cout~combout\);

-- Location: LCCOMB_X1_Y66_N10
\stage8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux2~0_combout\ = (\Opcode[1]~input_o\ & ((\Opcode[0]~input_o\) # (!\stage6|stage1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datac => \Opcode[1]~input_o\,
	datad => \stage6|stage1|Cout~combout\,
	combout => \stage8|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y66_N30
\stage8|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux2~2_combout\ = (\Opcode[0]~input_o\ & ((\B[2]~input_o\ & ((\stage8|Mux2~0_combout\))) # (!\B[2]~input_o\ & (\Opcode[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datab => \Opcode[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage8|Mux2~0_combout\,
	combout => \stage8|Mux2~2_combout\);

-- Location: LCCOMB_X1_Y66_N20
\stage8|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux2~1_combout\ = (\B[2]~input_o\ & ((\stage8|Mux2~0_combout\ & ((\Opcode[2]~input_o\))) # (!\stage8|Mux2~0_combout\ & (\Opcode[0]~input_o\)))) # (!\B[2]~input_o\ & (\Opcode[0]~input_o\ $ (((\Opcode[2]~input_o\ & !\stage8|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datab => \Opcode[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage8|Mux2~0_combout\,
	combout => \stage8|Mux2~1_combout\);

-- Location: IOIBUF_X0_Y62_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y66_N18
\stage8|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux2~3_combout\ = (\Opcode[0]~input_o\ & (\A[1]~input_o\ & \A[0]~input_o\)) # (!\Opcode[0]~input_o\ & ((\A[1]~input_o\) # (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \stage8|Mux2~3_combout\);

-- Location: LCCOMB_X1_Y66_N4
\stage8|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux2~4_combout\ = \A[2]~input_o\ $ (((!\Opcode[2]~input_o\ & (!\Opcode[1]~input_o\ & \stage8|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Opcode[2]~input_o\,
	datac => \Opcode[1]~input_o\,
	datad => \stage8|Mux2~3_combout\,
	combout => \stage8|Mux2~4_combout\);

-- Location: LCCOMB_X1_Y66_N8
\stage7|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|stage1|Cout~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \stage7|stage1|Cout~0_combout\);

-- Location: LCCOMB_X1_Y66_N22
\stage8|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux2~5_combout\ = \stage8|Mux2~4_combout\ $ (((\stage8|Mux2~2_combout\ & \stage7|stage1|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage8|Mux2~4_combout\,
	datac => \stage8|Mux2~2_combout\,
	datad => \stage7|stage1|Cout~0_combout\,
	combout => \stage8|Mux2~5_combout\);

-- Location: LCCOMB_X1_Y66_N0
\stage8|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux2~6_combout\ = (\stage8|Mux2~2_combout\ & (\B[2]~input_o\ $ (((\stage8|Mux2~1_combout\ & \stage8|Mux2~5_combout\))))) # (!\stage8|Mux2~2_combout\ & (\stage8|Mux2~1_combout\ $ (((!\stage8|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage8|Mux2~2_combout\,
	datab => \stage8|Mux2~1_combout\,
	datac => \B[2]~input_o\,
	datad => \stage8|Mux2~5_combout\,
	combout => \stage8|Mux2~6_combout\);

-- Location: IOIBUF_X0_Y61_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y65_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X1_Y65_N24
\stage8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux1~0_combout\ = (\Opcode[0]~input_o\ & (\stage7|stage1|Cout~0_combout\)) # (!\Opcode[0]~input_o\ & ((\stage6|stage1|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datab => \stage7|stage1|Cout~0_combout\,
	datad => \stage6|stage1|Cout~combout\,
	combout => \stage8|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y65_N26
\stage8|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux1~1_combout\ = (\A[2]~input_o\ & ((\stage8|Mux1~0_combout\) # (\B[2]~input_o\ $ (!\Opcode[0]~input_o\)))) # (!\A[2]~input_o\ & (\stage8|Mux1~0_combout\ & (\B[2]~input_o\ $ (!\Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \stage8|Mux1~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Opcode[0]~input_o\,
	combout => \stage8|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y65_N4
\stage8|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux1~2_combout\ = \B[3]~input_o\ $ (((\stage8|Mux1~1_combout\ & \Opcode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \stage8|Mux1~1_combout\,
	datad => \Opcode[1]~input_o\,
	combout => \stage8|Mux1~2_combout\);

-- Location: LCCOMB_X1_Y65_N22
\stage8|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux1~3_combout\ = (\Opcode[0]~input_o\ & ((\A[3]~input_o\ & (\stage8|Mux1~2_combout\ $ (\Opcode[1]~input_o\))) # (!\A[3]~input_o\ & (\stage8|Mux1~2_combout\ & \Opcode[1]~input_o\)))) # (!\Opcode[0]~input_o\ & (\A[3]~input_o\ $ 
-- (\stage8|Mux1~2_combout\ $ (\Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \stage8|Mux1~2_combout\,
	datad => \Opcode[1]~input_o\,
	combout => \stage8|Mux1~3_combout\);

-- Location: LCCOMB_X1_Y65_N16
\stage0|stage2|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage2|Cout~combout\ = (\A[1]~input_o\) # ((\A[2]~input_o\) # (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \stage0|stage2|Cout~combout\);

-- Location: LCCOMB_X1_Y65_N2
\stage8|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux1~4_combout\ = (\A[1]~input_o\ & (\A[2]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \stage8|Mux1~4_combout\);

-- Location: LCCOMB_X1_Y65_N20
\stage8|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux1~5_combout\ = (\Opcode[1]~input_o\ & (((\Opcode[0]~input_o\)))) # (!\Opcode[1]~input_o\ & ((\Opcode[0]~input_o\ & ((!\stage8|Mux1~4_combout\))) # (!\Opcode[0]~input_o\ & (\stage0|stage2|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[1]~input_o\,
	datab => \stage0|stage2|Cout~combout\,
	datac => \Opcode[0]~input_o\,
	datad => \stage8|Mux1~4_combout\,
	combout => \stage8|Mux1~5_combout\);

-- Location: LCCOMB_X1_Y65_N6
\stage8|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux1~6_combout\ = (\A[3]~input_o\ & (((\stage8|Mux1~5_combout\)))) # (!\A[3]~input_o\ & (((\Opcode[1]~input_o\ & \B[3]~input_o\)) # (!\stage8|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage8|Mux1~5_combout\,
	combout => \stage8|Mux1~6_combout\);

-- Location: LCCOMB_X1_Y65_N0
\stage8|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux1~7_combout\ = (\Opcode[2]~input_o\ & (\stage8|Mux1~3_combout\)) # (!\Opcode[2]~input_o\ & ((\stage8|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[2]~input_o\,
	datac => \stage8|Mux1~3_combout\,
	datad => \stage8|Mux1~6_combout\,
	combout => \stage8|Mux1~7_combout\);

-- Location: LCCOMB_X1_Y65_N8
\stage8|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux0~4_combout\ = (\Opcode[1]~input_o\ & (\Opcode[2]~input_o\ & (\A[3]~input_o\ $ (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Opcode[2]~input_o\,
	combout => \stage8|Mux0~4_combout\);

-- Location: LCCOMB_X1_Y65_N10
\stage8|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux0~5_combout\ = (\stage8|Mux0~4_combout\ & ((\A[2]~input_o\ & ((\stage6|stage1|Cout~combout\) # (!\B[2]~input_o\))) # (!\A[2]~input_o\ & (!\B[2]~input_o\ & \stage6|stage1|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \stage8|Mux0~4_combout\,
	datac => \B[2]~input_o\,
	datad => \stage6|stage1|Cout~combout\,
	combout => \stage8|Mux0~5_combout\);

-- Location: LCCOMB_X1_Y66_N26
\stage8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux0~0_combout\ = ((\A[2]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\))) # (!\Opcode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Opcode[0]~input_o\,
	combout => \stage8|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y65_N18
\stage8|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux0~1_combout\ = (\Opcode[0]~input_o\ & (\A[3]~input_o\ & (\stage8|Mux0~0_combout\))) # (!\Opcode[0]~input_o\ & ((\stage0|stage2|Cout~combout\) # ((\A[3]~input_o\ & \stage8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \stage8|Mux0~0_combout\,
	datad => \stage0|stage2|Cout~combout\,
	combout => \stage8|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y65_N28
\stage8|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux0~2_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # (\stage7|stage1|Cout~0_combout\))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & \stage7|stage1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \stage7|stage1|Cout~0_combout\,
	combout => \stage8|Mux0~2_combout\);

-- Location: LCCOMB_X1_Y65_N14
\stage8|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux0~3_combout\ = (\B[3]~input_o\ & (\Opcode[0]~input_o\ & ((\A[3]~input_o\) # (\stage8|Mux0~2_combout\)))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\stage8|Mux0~2_combout\) # (!\Opcode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \stage8|Mux0~2_combout\,
	combout => \stage8|Mux0~3_combout\);

-- Location: LCCOMB_X1_Y65_N12
\stage8|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux0~6_combout\ = (\Opcode[2]~input_o\ & (((\stage8|Mux0~3_combout\ & \Opcode[1]~input_o\)))) # (!\Opcode[2]~input_o\ & (\stage8|Mux0~1_combout\ & ((!\Opcode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Opcode[2]~input_o\,
	datab => \stage8|Mux0~1_combout\,
	datac => \stage8|Mux0~3_combout\,
	datad => \Opcode[1]~input_o\,
	combout => \stage8|Mux0~6_combout\);

-- Location: LCCOMB_X1_Y65_N30
\stage8|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage8|Mux0~7_combout\ = (\stage8|Mux0~6_combout\) # ((\stage8|Mux0~5_combout\ & !\Opcode[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage8|Mux0~5_combout\,
	datac => \Opcode[0]~input_o\,
	datad => \stage8|Mux0~6_combout\,
	combout => \stage8|Mux0~7_combout\);

-- Location: LCCOMB_X1_Y67_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\stage8|Mux3~1_combout\ & (!\stage8|Mux2~6_combout\ & (!\stage8|Mux1~7_combout\ & !\stage8|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage8|Mux3~1_combout\,
	datab => \stage8|Mux2~6_combout\,
	datac => \stage8|Mux1~7_combout\,
	datad => \stage8|Mux4~1_combout\,
	combout => \Equal0~0_combout\);

ww_F(0) <= \F[0]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Z <= \Z~output_o\;
END structure;


