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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/09/2021 22:58:11"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DIV_CLK IS
    PORT (
	IN_CLK : IN std_logic;
	OUT_CLK : BUFFER std_logic
	);
END DIV_CLK;

-- Design Ports Information
-- OUT_CLK	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DIV_CLK IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IN_CLK : std_logic;
SIGNAL ww_OUT_CLK : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \IN_CLK~input_o\ : std_logic;
SIGNAL \IN_CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Y[0]~3_combout\ : std_logic;
SIGNAL \Y[1]~2_combout\ : std_logic;
SIGNAL \Y[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Y~0_combout\ : std_logic;
SIGNAL \Y~1_combout\ : std_logic;
SIGNAL \X~0_combout\ : std_logic;
SIGNAL \X~q\ : std_logic;
SIGNAL Y : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_X~q\ : std_logic;
SIGNAL ALT_INV_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Y[1]~DUPLICATE_q\ : std_logic;

BEGIN

ww_IN_CLK <= IN_CLK;
OUT_CLK <= ww_OUT_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_X~q\ <= NOT \X~q\;
ALT_INV_Y(2) <= NOT Y(2);
ALT_INV_Y(3) <= NOT Y(3);
ALT_INV_Y(0) <= NOT Y(0);
ALT_INV_Y(1) <= NOT Y(1);
\ALT_INV_Y[1]~DUPLICATE_q\ <= NOT \Y[1]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y38_N39
\OUT_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \X~q\,
	devoe => ww_devoe,
	o => ww_OUT_CLK);

-- Location: IOIBUF_X89_Y35_N61
\IN_CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_CLK,
	o => \IN_CLK~input_o\);

-- Location: CLKCTRL_G10
\IN_CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \IN_CLK~input_o\,
	outclk => \IN_CLK~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y38_N12
\Y[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[0]~3_combout\ = ( !Y(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_Y(0),
	combout => \Y[0]~3_combout\);

-- Location: FF_X88_Y38_N14
\Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IN_CLK~inputCLKENA0_outclk\,
	d => \Y[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(0));

-- Location: FF_X88_Y38_N19
\Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IN_CLK~inputCLKENA0_outclk\,
	d => \Y[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(1));

-- Location: LABCELL_X88_Y38_N18
\Y[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y[1]~2_combout\ = ( !Y(1) & ( Y(0) ) ) # ( Y(1) & ( !Y(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_Y(1),
	dataf => ALT_INV_Y(0),
	combout => \Y[1]~2_combout\);

-- Location: FF_X88_Y38_N20
\Y[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IN_CLK~inputCLKENA0_outclk\,
	d => \Y[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Y[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y38_N27
\Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~0_combout\ = ( Y(2) & ( Y(1) & ( !Y(0) ) ) ) # ( !Y(2) & ( Y(1) & ( (Y(0) & !Y(3)) ) ) ) # ( Y(2) & ( !Y(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110000001100001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Y(0),
	datac => ALT_INV_Y(3),
	datae => ALT_INV_Y(2),
	dataf => ALT_INV_Y(1),
	combout => \Y~0_combout\);

-- Location: FF_X88_Y38_N29
\Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IN_CLK~inputCLKENA0_outclk\,
	d => \Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(2));

-- Location: LABCELL_X88_Y38_N30
\Y~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Y~1_combout\ = ( Y(3) & ( Y(2) & ( (!\Y[1]~DUPLICATE_q\) # (!Y(0)) ) ) ) # ( !Y(3) & ( Y(2) & ( (\Y[1]~DUPLICATE_q\ & Y(0)) ) ) ) # ( Y(3) & ( !Y(2) & ( (!\Y[1]~DUPLICATE_q\) # (!Y(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y[1]~DUPLICATE_q\,
	datad => ALT_INV_Y(0),
	datae => ALT_INV_Y(3),
	dataf => ALT_INV_Y(2),
	combout => \Y~1_combout\);

-- Location: FF_X88_Y38_N32
\Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IN_CLK~inputCLKENA0_outclk\,
	d => \Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Y(3));

-- Location: LABCELL_X88_Y38_N57
\X~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \X~0_combout\ = ( \X~q\ & ( Y(2) ) ) # ( \X~q\ & ( !Y(2) & ( (!Y(0)) # ((!Y(3)) # (!\Y[1]~DUPLICATE_q\)) ) ) ) # ( !\X~q\ & ( !Y(2) & ( (Y(0) & (Y(3) & \Y[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111111110000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Y(0),
	datac => ALT_INV_Y(3),
	datad => \ALT_INV_Y[1]~DUPLICATE_q\,
	datae => \ALT_INV_X~q\,
	dataf => ALT_INV_Y(2),
	combout => \X~0_combout\);

-- Location: FF_X88_Y38_N58
X : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \IN_CLK~inputCLKENA0_outclk\,
	d => \X~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X~q\);

-- Location: LABCELL_X62_Y33_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


