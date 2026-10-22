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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
-- CREATED		"Thu Sep 10 11:56:05 2026"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Lab2 IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		F1 :  OUT  STD_LOGIC;
		F2 :  OUT  STD_LOGIC
	);
END Lab2;

ARCHITECTURE bdf_type OF Lab2 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_14 <= B AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_12 <= A AND SYNTHESIZED_WIRE_1;


SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_2 AND SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_14 AND SYNTHESIZED_WIRE_5;


F2 <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_15;


F1 <= SYNTHESIZED_WIRE_15 OR SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_11 <= B AND SYNTHESIZED_WIRE_10;


SYNTHESIZED_WIRE_13 <= C AND D;


SYNTHESIZED_WIRE_0 <= NOT(D);



SYNTHESIZED_WIRE_1 <= NOT(C);



SYNTHESIZED_WIRE_10 <= NOT(C);



SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_11 OR A;


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_12 OR D;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_13 OR A;


END bdf_type;