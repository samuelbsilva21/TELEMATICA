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
-- Generated on "02/28/2021 20:45:13"
                                                             
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
SIGNAL CLK : STD_LOGIC;
SIGNAL DISPLAY_0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ENT_S1 : STD_LOGIC;
SIGNAL ENT_S2 : STD_LOGIC;
SIGNAL SAI_C1 : STD_LOGIC;
SIGNAL SAI_C2 : STD_LOGIC;
SIGNAL SAI_C3 : STD_LOGIC;
COMPONENT FMS_ESTPROJ
	PORT (
	CLK : IN STD_LOGIC;
	DISPLAY_0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	ENT_S1 : IN STD_LOGIC;
	ENT_S2 : IN STD_LOGIC;
	SAI_C1 : BUFFER STD_LOGIC;
	SAI_C2 : BUFFER STD_LOGIC;
	SAI_C3 : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FMS_ESTPROJ
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DISPLAY_0 => DISPLAY_0,
	ENT_S1 => ENT_S1,
	ENT_S2 => ENT_S2,
	SAI_C1 => SAI_C1,
	SAI_C2 => SAI_C2,
	SAI_C3 => SAI_C3
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- ENT_S1
t_prcs_ENT_S1: PROCESS
BEGIN
LOOP
	ENT_S1 <= '0';
	WAIT FOR 20000 ps;
	ENT_S1 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ENT_S1;

-- ENT_S2
t_prcs_ENT_S2: PROCESS
BEGIN
	FOR i IN 1 TO 16
	LOOP
		ENT_S2 <= '0';
		WAIT FOR 30000 ps;
		ENT_S2 <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	ENT_S2 <= '0';
	WAIT FOR 30000 ps;
	ENT_S2 <= '1';
WAIT;
END PROCESS t_prcs_ENT_S2;
END FMS_ESTPROJ_arch;
