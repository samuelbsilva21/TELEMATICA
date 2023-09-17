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
-- Generated on "02/20/2021 20:05:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FMS_ESTPROJ
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FMS_ESTPROJ_vhd_vec_tst IS
END FMS_ESTPROJ_vhd_vec_tst;
ARCHITECTURE FMS_ESTPROJ_arch OF FMS_ESTPROJ_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C1 : STD_LOGIC;
SIGNAL C2 : STD_LOGIC;
SIGNAL C3 : STD_LOGIC;
SIGNAL DISPLAY_7_SEG : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL EST_GB : STD_LOGIC;
SIGNAL EST_GP : STD_LOGIC;
SIGNAL EST_H1 : STD_LOGIC;
SIGNAL EST_H2 : STD_LOGIC;
SIGNAL EST_H3 : STD_LOGIC;
SIGNAL EST_H4 : STD_LOGIC;
SIGNAL EST_H5 : STD_LOGIC;
SIGNAL EST_PA : STD_LOGIC;
SIGNAL IN_CLK : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
COMPONENT FMS_ESTPROJ
	PORT (
	C1 : BUFFER STD_LOGIC;
	C2 : BUFFER STD_LOGIC;
	C3 : BUFFER STD_LOGIC;
	DISPLAY_7_SEG : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	EST_GB : BUFFER STD_LOGIC;
	EST_GP : BUFFER STD_LOGIC;
	EST_H1 : BUFFER STD_LOGIC;
	EST_H2 : BUFFER STD_LOGIC;
	EST_H3 : BUFFER STD_LOGIC;
	EST_H4 : BUFFER STD_LOGIC;
	EST_H5 : BUFFER STD_LOGIC;
	EST_PA : BUFFER STD_LOGIC;
	IN_CLK : IN STD_LOGIC;
	S1 : IN STD_LOGIC;
	S2 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FMS_ESTPROJ
	PORT MAP (
-- list connections between master ports and signals
	C1 => C1,
	C2 => C2,
	C3 => C3,
	DISPLAY_7_SEG => DISPLAY_7_SEG,
	EST_GB => EST_GB,
	EST_GP => EST_GP,
	EST_H1 => EST_H1,
	EST_H2 => EST_H2,
	EST_H3 => EST_H3,
	EST_H4 => EST_H4,
	EST_H5 => EST_H5,
	EST_PA => EST_PA,
	IN_CLK => IN_CLK,
	S1 => S1,
	S2 => S2
	);

-- IN_CLK
t_prcs_IN_CLK: PROCESS
BEGIN
LOOP
	IN_CLK <= '0';
	WAIT FOR 10000 ps;
	IN_CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_IN_CLK;

-- S1
t_prcs_S1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		S1 <= '0';
		WAIT FOR 40000 ps;
		S1 <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;

-- S2
t_prcs_S2: PROCESS
BEGIN
	FOR i IN 1 TO 8
	LOOP
		S2 <= '0';
		WAIT FOR 60000 ps;
		S2 <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	S2 <= '0';
WAIT;
END PROCESS t_prcs_S2;
END FMS_ESTPROJ_arch;
