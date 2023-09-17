-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/06/2021 10:35:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SUBTRATOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SUBTRATOR_vhd_vec_tst IS
END SUBTRATOR_vhd_vec_tst;
ARCHITECTURE SUBTRATOR_arch OF SUBTRATOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL TE : STD_LOGIC;
SIGNAL TS : STD_LOGIC;
COMPONENT SUBTRATOR
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	S : BUFFER STD_LOGIC;
	TE : IN STD_LOGIC;
	TS : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SUBTRATOR
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	S => S,
	TE => TE,
	TS => TS
	);

-- A
t_prcs_A: PROCESS
BEGIN
LOOP
	A <= '0';
	WAIT FOR 10000 ps;
	A <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
LOOP
	B <= '0';
	WAIT FOR 20000 ps;
	B <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B;

-- TE
t_prcs_TE: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		TE <= '0';
		WAIT FOR 40000 ps;
		TE <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	TE <= '0';
WAIT;
END PROCESS t_prcs_TE;
END SUBTRATOR_arch;
