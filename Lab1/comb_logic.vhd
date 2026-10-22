-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"
-- CREATED		"Thu Sep 03 12:14:44 2026"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY comb_logic IS 
	PORT
	(
		X1 :  IN  STD_LOGIC;
		X2 :  IN  STD_LOGIC;
		F :  OUT  STD_LOGIC
	);
END comb_logic;

ARCHITECTURE bdf_type OF comb_logic IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_3 <= X1 AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_1 AND X2;


SYNTHESIZED_WIRE_0 <= NOT(X2);



SYNTHESIZED_WIRE_1 <= NOT(X1);



F <= SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


END bdf_type;