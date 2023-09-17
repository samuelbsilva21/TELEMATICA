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

-- DATE "02/28/2021 20:45:15"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	FMS_ESTPROJ IS
    PORT (
	CLK : IN std_logic;
	SAI_C1 : BUFFER std_logic;
	SAI_C2 : BUFFER std_logic;
	SAI_C3 : BUFFER std_logic;
	ENT_S1 : IN std_logic;
	ENT_S2 : IN std_logic;
	DISPLAY_0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END FMS_ESTPROJ;

-- Design Ports Information
-- SAI_C1	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAI_C2	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAI_C3	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DISPLAY_0[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENT_S2	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENT_S1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FMS_ESTPROJ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SAI_C1 : std_logic;
SIGNAL ww_SAI_C2 : std_logic;
SIGNAL ww_SAI_C3 : std_logic;
SIGNAL ww_ENT_S1 : std_logic;
SIGNAL ww_ENT_S2 : std_logic;
SIGNAL ww_DISPLAY_0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CHIP1|X~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SAI_C1~output_o\ : std_logic;
SIGNAL \SAI_C2~output_o\ : std_logic;
SIGNAL \SAI_C3~output_o\ : std_logic;
SIGNAL \DISPLAY_0[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[4]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[5]~output_o\ : std_logic;
SIGNAL \DISPLAY_0[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CHIP1|Add0~0_combout\ : std_logic;
SIGNAL \CHIP1|Add0~1\ : std_logic;
SIGNAL \CHIP1|Add0~2_combout\ : std_logic;
SIGNAL \CHIP1|Add0~3\ : std_logic;
SIGNAL \CHIP1|Add0~4_combout\ : std_logic;
SIGNAL \CHIP1|Add0~5\ : std_logic;
SIGNAL \CHIP1|Add0~6_combout\ : std_logic;
SIGNAL \CHIP1|Add0~7\ : std_logic;
SIGNAL \CHIP1|Add0~8_combout\ : std_logic;
SIGNAL \CHIP1|Equal0~1_combout\ : std_logic;
SIGNAL \CHIP1|Add0~21\ : std_logic;
SIGNAL \CHIP1|Add0~22_combout\ : std_logic;
SIGNAL \CHIP1|Y~3_combout\ : std_logic;
SIGNAL \CHIP1|Add0~23\ : std_logic;
SIGNAL \CHIP1|Add0~24_combout\ : std_logic;
SIGNAL \CHIP1|Add0~25\ : std_logic;
SIGNAL \CHIP1|Add0~26_combout\ : std_logic;
SIGNAL \CHIP1|Add0~27\ : std_logic;
SIGNAL \CHIP1|Add0~28_combout\ : std_logic;
SIGNAL \CHIP1|Y~4_combout\ : std_logic;
SIGNAL \CHIP1|Add0~29\ : std_logic;
SIGNAL \CHIP1|Add0~30_combout\ : std_logic;
SIGNAL \CHIP1|Add0~31\ : std_logic;
SIGNAL \CHIP1|Add0~32_combout\ : std_logic;
SIGNAL \CHIP1|Add0~33\ : std_logic;
SIGNAL \CHIP1|Add0~34_combout\ : std_logic;
SIGNAL \CHIP1|Add0~35\ : std_logic;
SIGNAL \CHIP1|Add0~36_combout\ : std_logic;
SIGNAL \CHIP1|Y~5_combout\ : std_logic;
SIGNAL \CHIP1|Add0~37\ : std_logic;
SIGNAL \CHIP1|Add0~38_combout\ : std_logic;
SIGNAL \CHIP1|Y~6_combout\ : std_logic;
SIGNAL \CHIP1|Add0~39\ : std_logic;
SIGNAL \CHIP1|Add0~40_combout\ : std_logic;
SIGNAL \CHIP1|Add0~41\ : std_logic;
SIGNAL \CHIP1|Add0~42_combout\ : std_logic;
SIGNAL \CHIP1|Add0~43\ : std_logic;
SIGNAL \CHIP1|Add0~44_combout\ : std_logic;
SIGNAL \CHIP1|Y~7_combout\ : std_logic;
SIGNAL \CHIP1|Equal0~5_combout\ : std_logic;
SIGNAL \CHIP1|Equal0~6_combout\ : std_logic;
SIGNAL \CHIP1|Add0~9\ : std_logic;
SIGNAL \CHIP1|Add0~10_combout\ : std_logic;
SIGNAL \CHIP1|Add0~11\ : std_logic;
SIGNAL \CHIP1|Add0~12_combout\ : std_logic;
SIGNAL \CHIP1|Y~1_combout\ : std_logic;
SIGNAL \CHIP1|Add0~13\ : std_logic;
SIGNAL \CHIP1|Add0~14_combout\ : std_logic;
SIGNAL \CHIP1|Add0~15\ : std_logic;
SIGNAL \CHIP1|Add0~16_combout\ : std_logic;
SIGNAL \CHIP1|Y~0_combout\ : std_logic;
SIGNAL \CHIP1|Add0~17\ : std_logic;
SIGNAL \CHIP1|Add0~18_combout\ : std_logic;
SIGNAL \CHIP1|Y~2_combout\ : std_logic;
SIGNAL \CHIP1|Add0~19\ : std_logic;
SIGNAL \CHIP1|Add0~20_combout\ : std_logic;
SIGNAL \CHIP1|Equal0~2_combout\ : std_logic;
SIGNAL \CHIP1|Equal0~0_combout\ : std_logic;
SIGNAL \CHIP1|Equal0~3_combout\ : std_logic;
SIGNAL \CHIP1|Equal0~4_combout\ : std_logic;
SIGNAL \CHIP1|X~0_combout\ : std_logic;
SIGNAL \CHIP1|X~feeder_combout\ : std_logic;
SIGNAL \CHIP1|X~q\ : std_logic;
SIGNAL \CHIP1|X~clkctrl_outclk\ : std_logic;
SIGNAL \ENT_S2~input_o\ : std_logic;
SIGNAL \ENT_S1~input_o\ : std_logic;
SIGNAL \CHIP2|Selector0~0_combout\ : std_logic;
SIGNAL \CHIP2|AUX.ESTADO_GB~q\ : std_logic;
SIGNAL \CHIP2|AUX~14_combout\ : std_logic;
SIGNAL \CHIP2|AUX.ESTADO_H5~q\ : std_logic;
SIGNAL \CHIP2|AUX~11_combout\ : std_logic;
SIGNAL \CHIP2|AUX.ESTADO_H4~q\ : std_logic;
SIGNAL \CHIP2|AUX~13_combout\ : std_logic;
SIGNAL \CHIP2|AUX.ESTADO_H2~q\ : std_logic;
SIGNAL \CHIP2|Selector1~0_combout\ : std_logic;
SIGNAL \CHIP2|AUX.ESTADO_PA~q\ : std_logic;
SIGNAL \CHIP2|AUX~15_combout\ : std_logic;
SIGNAL \CHIP2|AUX.ESTADO_H3~q\ : std_logic;
SIGNAL \CHIP2|Selector2~0_combout\ : std_logic;
SIGNAL \CHIP2|AUX.ESTADO_GP~q\ : std_logic;
SIGNAL \CHIP2|AUX~12_combout\ : std_logic;
SIGNAL \CHIP2|AUX.ESTADO_H1~q\ : std_logic;
SIGNAL \CHIP2|WideNor0~combout\ : std_logic;
SIGNAL \CHIP2|WideNor1~combout\ : std_logic;
SIGNAL \CHIP2|WideOr5~0_combout\ : std_logic;
SIGNAL \CHIP2|WideOr4~0_combout\ : std_logic;
SIGNAL \CHIP2|WideOr3~combout\ : std_logic;
SIGNAL \CHIP3|Mux6~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux5~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux4~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux3~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux2~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux1~0_combout\ : std_logic;
SIGNAL \CHIP3|Mux0~0_combout\ : std_logic;
SIGNAL \CHIP1|Y\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \CHIP3|ALT_INV_Mux3~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
SAI_C1 <= ww_SAI_C1;
SAI_C2 <= ww_SAI_C2;
SAI_C3 <= ww_SAI_C3;
ww_ENT_S1 <= ENT_S1;
ww_ENT_S2 <= ENT_S2;
DISPLAY_0 <= ww_DISPLAY_0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\CHIP1|X~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CHIP1|X~q\);
\CHIP3|ALT_INV_Mux3~0_combout\ <= NOT \CHIP3|Mux3~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N16
\SAI_C1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP2|WideNor0~combout\,
	devoe => ww_devoe,
	o => \SAI_C1~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\SAI_C2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP2|WideNor1~combout\,
	devoe => ww_devoe,
	o => \SAI_C2~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\SAI_C3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP2|WideNor0~combout\,
	devoe => ww_devoe,
	o => \SAI_C3~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\DISPLAY_0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\DISPLAY_0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\DISPLAY_0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\DISPLAY_0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\DISPLAY_0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\DISPLAY_0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\DISPLAY_0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CHIP3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_0[6]~output_o\);

-- Location: IOIBUF_X0_Y23_N22
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y2_N10
\CHIP1|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~0_combout\ = \CHIP1|Y\(0) $ (VCC)
-- \CHIP1|Add0~1\ = CARRY(\CHIP1|Y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(0),
	datad => VCC,
	combout => \CHIP1|Add0~0_combout\,
	cout => \CHIP1|Add0~1\);

-- Location: FF_X46_Y2_N11
\CHIP1|Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(0));

-- Location: LCCOMB_X46_Y2_N12
\CHIP1|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~2_combout\ = (\CHIP1|Y\(1) & (!\CHIP1|Add0~1\)) # (!\CHIP1|Y\(1) & ((\CHIP1|Add0~1\) # (GND)))
-- \CHIP1|Add0~3\ = CARRY((!\CHIP1|Add0~1\) # (!\CHIP1|Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(1),
	datad => VCC,
	cin => \CHIP1|Add0~1\,
	combout => \CHIP1|Add0~2_combout\,
	cout => \CHIP1|Add0~3\);

-- Location: FF_X46_Y2_N13
\CHIP1|Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(1));

-- Location: LCCOMB_X46_Y2_N14
\CHIP1|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~4_combout\ = (\CHIP1|Y\(2) & (\CHIP1|Add0~3\ $ (GND))) # (!\CHIP1|Y\(2) & (!\CHIP1|Add0~3\ & VCC))
-- \CHIP1|Add0~5\ = CARRY((\CHIP1|Y\(2) & !\CHIP1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(2),
	datad => VCC,
	cin => \CHIP1|Add0~3\,
	combout => \CHIP1|Add0~4_combout\,
	cout => \CHIP1|Add0~5\);

-- Location: FF_X46_Y2_N15
\CHIP1|Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(2));

-- Location: LCCOMB_X46_Y2_N16
\CHIP1|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~6_combout\ = (\CHIP1|Y\(3) & (!\CHIP1|Add0~5\)) # (!\CHIP1|Y\(3) & ((\CHIP1|Add0~5\) # (GND)))
-- \CHIP1|Add0~7\ = CARRY((!\CHIP1|Add0~5\) # (!\CHIP1|Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(3),
	datad => VCC,
	cin => \CHIP1|Add0~5\,
	combout => \CHIP1|Add0~6_combout\,
	cout => \CHIP1|Add0~7\);

-- Location: FF_X46_Y2_N17
\CHIP1|Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(3));

-- Location: LCCOMB_X46_Y2_N18
\CHIP1|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~8_combout\ = (\CHIP1|Y\(4) & (\CHIP1|Add0~7\ $ (GND))) # (!\CHIP1|Y\(4) & (!\CHIP1|Add0~7\ & VCC))
-- \CHIP1|Add0~9\ = CARRY((\CHIP1|Y\(4) & !\CHIP1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(4),
	datad => VCC,
	cin => \CHIP1|Add0~7\,
	combout => \CHIP1|Add0~8_combout\,
	cout => \CHIP1|Add0~9\);

-- Location: FF_X46_Y2_N19
\CHIP1|Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(4));

-- Location: LCCOMB_X46_Y2_N2
\CHIP1|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Equal0~1_combout\ = (\CHIP1|Y\(1) & (\CHIP1|Y\(4) & (\CHIP1|Y\(2) & \CHIP1|Y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(1),
	datab => \CHIP1|Y\(4),
	datac => \CHIP1|Y\(2),
	datad => \CHIP1|Y\(3),
	combout => \CHIP1|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y2_N30
\CHIP1|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~20_combout\ = (\CHIP1|Y\(10) & (\CHIP1|Add0~19\ $ (GND))) # (!\CHIP1|Y\(10) & (!\CHIP1|Add0~19\ & VCC))
-- \CHIP1|Add0~21\ = CARRY((\CHIP1|Y\(10) & !\CHIP1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(10),
	datad => VCC,
	cin => \CHIP1|Add0~19\,
	combout => \CHIP1|Add0~20_combout\,
	cout => \CHIP1|Add0~21\);

-- Location: LCCOMB_X46_Y1_N0
\CHIP1|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~22_combout\ = (\CHIP1|Y\(11) & (!\CHIP1|Add0~21\)) # (!\CHIP1|Y\(11) & ((\CHIP1|Add0~21\) # (GND)))
-- \CHIP1|Add0~23\ = CARRY((!\CHIP1|Add0~21\) # (!\CHIP1|Y\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(11),
	datad => VCC,
	cin => \CHIP1|Add0~21\,
	combout => \CHIP1|Add0~22_combout\,
	cout => \CHIP1|Add0~23\);

-- Location: LCCOMB_X45_Y2_N28
\CHIP1|Y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~3_combout\ = (\CHIP1|Add0~22_combout\ & ((!\CHIP1|Equal0~4_combout\) # (!\CHIP1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Equal0~6_combout\,
	datac => \CHIP1|Equal0~4_combout\,
	datad => \CHIP1|Add0~22_combout\,
	combout => \CHIP1|Y~3_combout\);

-- Location: FF_X45_Y2_N29
\CHIP1|Y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(11));

-- Location: LCCOMB_X46_Y1_N2
\CHIP1|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~24_combout\ = (\CHIP1|Y\(12) & (\CHIP1|Add0~23\ $ (GND))) # (!\CHIP1|Y\(12) & (!\CHIP1|Add0~23\ & VCC))
-- \CHIP1|Add0~25\ = CARRY((\CHIP1|Y\(12) & !\CHIP1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(12),
	datad => VCC,
	cin => \CHIP1|Add0~23\,
	combout => \CHIP1|Add0~24_combout\,
	cout => \CHIP1|Add0~25\);

-- Location: FF_X46_Y1_N3
\CHIP1|Y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(12));

-- Location: LCCOMB_X46_Y1_N4
\CHIP1|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~26_combout\ = (\CHIP1|Y\(13) & (!\CHIP1|Add0~25\)) # (!\CHIP1|Y\(13) & ((\CHIP1|Add0~25\) # (GND)))
-- \CHIP1|Add0~27\ = CARRY((!\CHIP1|Add0~25\) # (!\CHIP1|Y\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(13),
	datad => VCC,
	cin => \CHIP1|Add0~25\,
	combout => \CHIP1|Add0~26_combout\,
	cout => \CHIP1|Add0~27\);

-- Location: FF_X46_Y1_N5
\CHIP1|Y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(13));

-- Location: LCCOMB_X46_Y1_N6
\CHIP1|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~28_combout\ = (\CHIP1|Y\(14) & (\CHIP1|Add0~27\ $ (GND))) # (!\CHIP1|Y\(14) & (!\CHIP1|Add0~27\ & VCC))
-- \CHIP1|Add0~29\ = CARRY((\CHIP1|Y\(14) & !\CHIP1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(14),
	datad => VCC,
	cin => \CHIP1|Add0~27\,
	combout => \CHIP1|Add0~28_combout\,
	cout => \CHIP1|Add0~29\);

-- Location: LCCOMB_X46_Y1_N24
\CHIP1|Y~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~4_combout\ = (\CHIP1|Add0~28_combout\ & ((!\CHIP1|Equal0~4_combout\) # (!\CHIP1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Equal0~6_combout\,
	datac => \CHIP1|Equal0~4_combout\,
	datad => \CHIP1|Add0~28_combout\,
	combout => \CHIP1|Y~4_combout\);

-- Location: FF_X46_Y1_N25
\CHIP1|Y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(14));

-- Location: LCCOMB_X46_Y1_N8
\CHIP1|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~30_combout\ = (\CHIP1|Y\(15) & (!\CHIP1|Add0~29\)) # (!\CHIP1|Y\(15) & ((\CHIP1|Add0~29\) # (GND)))
-- \CHIP1|Add0~31\ = CARRY((!\CHIP1|Add0~29\) # (!\CHIP1|Y\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(15),
	datad => VCC,
	cin => \CHIP1|Add0~29\,
	combout => \CHIP1|Add0~30_combout\,
	cout => \CHIP1|Add0~31\);

-- Location: FF_X46_Y1_N9
\CHIP1|Y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(15));

-- Location: LCCOMB_X46_Y1_N10
\CHIP1|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~32_combout\ = (\CHIP1|Y\(16) & (\CHIP1|Add0~31\ $ (GND))) # (!\CHIP1|Y\(16) & (!\CHIP1|Add0~31\ & VCC))
-- \CHIP1|Add0~33\ = CARRY((\CHIP1|Y\(16) & !\CHIP1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(16),
	datad => VCC,
	cin => \CHIP1|Add0~31\,
	combout => \CHIP1|Add0~32_combout\,
	cout => \CHIP1|Add0~33\);

-- Location: FF_X46_Y1_N11
\CHIP1|Y[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(16));

-- Location: LCCOMB_X46_Y1_N12
\CHIP1|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~34_combout\ = (\CHIP1|Y\(17) & (!\CHIP1|Add0~33\)) # (!\CHIP1|Y\(17) & ((\CHIP1|Add0~33\) # (GND)))
-- \CHIP1|Add0~35\ = CARRY((!\CHIP1|Add0~33\) # (!\CHIP1|Y\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(17),
	datad => VCC,
	cin => \CHIP1|Add0~33\,
	combout => \CHIP1|Add0~34_combout\,
	cout => \CHIP1|Add0~35\);

-- Location: FF_X46_Y1_N13
\CHIP1|Y[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(17));

-- Location: LCCOMB_X46_Y1_N14
\CHIP1|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~36_combout\ = (\CHIP1|Y\(18) & (\CHIP1|Add0~35\ $ (GND))) # (!\CHIP1|Y\(18) & (!\CHIP1|Add0~35\ & VCC))
-- \CHIP1|Add0~37\ = CARRY((\CHIP1|Y\(18) & !\CHIP1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(18),
	datad => VCC,
	cin => \CHIP1|Add0~35\,
	combout => \CHIP1|Add0~36_combout\,
	cout => \CHIP1|Add0~37\);

-- Location: LCCOMB_X46_Y1_N30
\CHIP1|Y~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~5_combout\ = (\CHIP1|Add0~36_combout\ & ((!\CHIP1|Equal0~6_combout\) # (!\CHIP1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Equal0~4_combout\,
	datac => \CHIP1|Add0~36_combout\,
	datad => \CHIP1|Equal0~6_combout\,
	combout => \CHIP1|Y~5_combout\);

-- Location: FF_X46_Y1_N31
\CHIP1|Y[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(18));

-- Location: LCCOMB_X46_Y1_N16
\CHIP1|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~38_combout\ = (\CHIP1|Y\(19) & (!\CHIP1|Add0~37\)) # (!\CHIP1|Y\(19) & ((\CHIP1|Add0~37\) # (GND)))
-- \CHIP1|Add0~39\ = CARRY((!\CHIP1|Add0~37\) # (!\CHIP1|Y\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(19),
	datad => VCC,
	cin => \CHIP1|Add0~37\,
	combout => \CHIP1|Add0~38_combout\,
	cout => \CHIP1|Add0~39\);

-- Location: LCCOMB_X46_Y1_N28
\CHIP1|Y~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~6_combout\ = (\CHIP1|Add0~38_combout\ & ((!\CHIP1|Equal0~4_combout\) # (!\CHIP1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Equal0~6_combout\,
	datac => \CHIP1|Equal0~4_combout\,
	datad => \CHIP1|Add0~38_combout\,
	combout => \CHIP1|Y~6_combout\);

-- Location: FF_X46_Y1_N29
\CHIP1|Y[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(19));

-- Location: LCCOMB_X46_Y1_N18
\CHIP1|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~40_combout\ = (\CHIP1|Y\(20) & (\CHIP1|Add0~39\ $ (GND))) # (!\CHIP1|Y\(20) & (!\CHIP1|Add0~39\ & VCC))
-- \CHIP1|Add0~41\ = CARRY((\CHIP1|Y\(20) & !\CHIP1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(20),
	datad => VCC,
	cin => \CHIP1|Add0~39\,
	combout => \CHIP1|Add0~40_combout\,
	cout => \CHIP1|Add0~41\);

-- Location: FF_X46_Y1_N19
\CHIP1|Y[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(20));

-- Location: LCCOMB_X46_Y1_N20
\CHIP1|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~42_combout\ = (\CHIP1|Y\(21) & (!\CHIP1|Add0~41\)) # (!\CHIP1|Y\(21) & ((\CHIP1|Add0~41\) # (GND)))
-- \CHIP1|Add0~43\ = CARRY((!\CHIP1|Add0~41\) # (!\CHIP1|Y\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(21),
	datad => VCC,
	cin => \CHIP1|Add0~41\,
	combout => \CHIP1|Add0~42_combout\,
	cout => \CHIP1|Add0~43\);

-- Location: FF_X46_Y1_N21
\CHIP1|Y[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(21));

-- Location: LCCOMB_X46_Y1_N22
\CHIP1|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~44_combout\ = \CHIP1|Add0~43\ $ (!\CHIP1|Y\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CHIP1|Y\(22),
	cin => \CHIP1|Add0~43\,
	combout => \CHIP1|Add0~44_combout\);

-- Location: LCCOMB_X46_Y1_N26
\CHIP1|Y~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~7_combout\ = (\CHIP1|Add0~44_combout\ & ((!\CHIP1|Equal0~6_combout\) # (!\CHIP1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Equal0~4_combout\,
	datac => \CHIP1|Add0~44_combout\,
	datad => \CHIP1|Equal0~6_combout\,
	combout => \CHIP1|Y~7_combout\);

-- Location: FF_X46_Y1_N27
\CHIP1|Y[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(22));

-- Location: LCCOMB_X45_Y1_N18
\CHIP1|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Equal0~5_combout\ = (\CHIP1|Y\(18) & (!\CHIP1|Y\(17) & (!\CHIP1|Y\(16) & \CHIP1|Y\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(18),
	datab => \CHIP1|Y\(17),
	datac => \CHIP1|Y\(16),
	datad => \CHIP1|Y\(19),
	combout => \CHIP1|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y1_N24
\CHIP1|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Equal0~6_combout\ = (\CHIP1|Y\(22) & (!\CHIP1|Y\(20) & (!\CHIP1|Y\(21) & \CHIP1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(22),
	datab => \CHIP1|Y\(20),
	datac => \CHIP1|Y\(21),
	datad => \CHIP1|Equal0~5_combout\,
	combout => \CHIP1|Equal0~6_combout\);

-- Location: LCCOMB_X46_Y2_N20
\CHIP1|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~10_combout\ = (\CHIP1|Y\(5) & (!\CHIP1|Add0~9\)) # (!\CHIP1|Y\(5) & ((\CHIP1|Add0~9\) # (GND)))
-- \CHIP1|Add0~11\ = CARRY((!\CHIP1|Add0~9\) # (!\CHIP1|Y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(5),
	datad => VCC,
	cin => \CHIP1|Add0~9\,
	combout => \CHIP1|Add0~10_combout\,
	cout => \CHIP1|Add0~11\);

-- Location: FF_X46_Y2_N21
\CHIP1|Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(5));

-- Location: LCCOMB_X46_Y2_N22
\CHIP1|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~12_combout\ = (\CHIP1|Y\(6) & (\CHIP1|Add0~11\ $ (GND))) # (!\CHIP1|Y\(6) & (!\CHIP1|Add0~11\ & VCC))
-- \CHIP1|Add0~13\ = CARRY((\CHIP1|Y\(6) & !\CHIP1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(6),
	datad => VCC,
	cin => \CHIP1|Add0~11\,
	combout => \CHIP1|Add0~12_combout\,
	cout => \CHIP1|Add0~13\);

-- Location: LCCOMB_X46_Y2_N6
\CHIP1|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~1_combout\ = (\CHIP1|Add0~12_combout\ & ((!\CHIP1|Equal0~4_combout\) # (!\CHIP1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Equal0~6_combout\,
	datab => \CHIP1|Add0~12_combout\,
	datac => \CHIP1|Equal0~4_combout\,
	combout => \CHIP1|Y~1_combout\);

-- Location: FF_X46_Y2_N7
\CHIP1|Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(6));

-- Location: LCCOMB_X46_Y2_N24
\CHIP1|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~14_combout\ = (\CHIP1|Y\(7) & (!\CHIP1|Add0~13\)) # (!\CHIP1|Y\(7) & ((\CHIP1|Add0~13\) # (GND)))
-- \CHIP1|Add0~15\ = CARRY((!\CHIP1|Add0~13\) # (!\CHIP1|Y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(7),
	datad => VCC,
	cin => \CHIP1|Add0~13\,
	combout => \CHIP1|Add0~14_combout\,
	cout => \CHIP1|Add0~15\);

-- Location: FF_X46_Y2_N25
\CHIP1|Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(7));

-- Location: LCCOMB_X46_Y2_N26
\CHIP1|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~16_combout\ = (\CHIP1|Y\(8) & (\CHIP1|Add0~15\ $ (GND))) # (!\CHIP1|Y\(8) & (!\CHIP1|Add0~15\ & VCC))
-- \CHIP1|Add0~17\ = CARRY((\CHIP1|Y\(8) & !\CHIP1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CHIP1|Y\(8),
	datad => VCC,
	cin => \CHIP1|Add0~15\,
	combout => \CHIP1|Add0~16_combout\,
	cout => \CHIP1|Add0~17\);

-- Location: LCCOMB_X46_Y2_N4
\CHIP1|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~0_combout\ = (\CHIP1|Add0~16_combout\ & ((!\CHIP1|Equal0~4_combout\) # (!\CHIP1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Equal0~6_combout\,
	datab => \CHIP1|Add0~16_combout\,
	datac => \CHIP1|Equal0~4_combout\,
	combout => \CHIP1|Y~0_combout\);

-- Location: FF_X46_Y2_N5
\CHIP1|Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(8));

-- Location: LCCOMB_X46_Y2_N28
\CHIP1|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Add0~18_combout\ = (\CHIP1|Y\(9) & (!\CHIP1|Add0~17\)) # (!\CHIP1|Y\(9) & ((\CHIP1|Add0~17\) # (GND)))
-- \CHIP1|Add0~19\ = CARRY((!\CHIP1|Add0~17\) # (!\CHIP1|Y\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(9),
	datad => VCC,
	cin => \CHIP1|Add0~17\,
	combout => \CHIP1|Add0~18_combout\,
	cout => \CHIP1|Add0~19\);

-- Location: LCCOMB_X46_Y2_N0
\CHIP1|Y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Y~2_combout\ = (\CHIP1|Add0~18_combout\ & ((!\CHIP1|Equal0~6_combout\) # (!\CHIP1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Equal0~4_combout\,
	datac => \CHIP1|Equal0~6_combout\,
	datad => \CHIP1|Add0~18_combout\,
	combout => \CHIP1|Y~2_combout\);

-- Location: FF_X46_Y2_N1
\CHIP1|Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(9));

-- Location: FF_X46_Y2_N31
\CHIP1|Y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|Y\(10));

-- Location: LCCOMB_X45_Y2_N20
\CHIP1|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Equal0~2_combout\ = (!\CHIP1|Y\(10) & (\CHIP1|Y\(9) & (\CHIP1|Y\(0) & \CHIP1|Y\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(10),
	datab => \CHIP1|Y\(9),
	datac => \CHIP1|Y\(0),
	datad => \CHIP1|Y\(11),
	combout => \CHIP1|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y2_N8
\CHIP1|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Equal0~0_combout\ = (!\CHIP1|Y\(6) & (!\CHIP1|Y\(7) & (\CHIP1|Y\(8) & \CHIP1|Y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(6),
	datab => \CHIP1|Y\(7),
	datac => \CHIP1|Y\(8),
	datad => \CHIP1|Y\(5),
	combout => \CHIP1|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y1_N0
\CHIP1|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Equal0~3_combout\ = (!\CHIP1|Y\(13) & (!\CHIP1|Y\(15) & (!\CHIP1|Y\(12) & \CHIP1|Y\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Y\(13),
	datab => \CHIP1|Y\(15),
	datac => \CHIP1|Y\(12),
	datad => \CHIP1|Y\(14),
	combout => \CHIP1|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y2_N22
\CHIP1|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|Equal0~4_combout\ = (\CHIP1|Equal0~1_combout\ & (\CHIP1|Equal0~2_combout\ & (\CHIP1|Equal0~0_combout\ & \CHIP1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|Equal0~1_combout\,
	datab => \CHIP1|Equal0~2_combout\,
	datac => \CHIP1|Equal0~0_combout\,
	datad => \CHIP1|Equal0~3_combout\,
	combout => \CHIP1|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y2_N26
\CHIP1|X~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|X~0_combout\ = \CHIP1|X~q\ $ (((\CHIP1|Equal0~4_combout\ & \CHIP1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP1|X~q\,
	datac => \CHIP1|Equal0~4_combout\,
	datad => \CHIP1|Equal0~6_combout\,
	combout => \CHIP1|X~0_combout\);

-- Location: LCCOMB_X45_Y2_N24
\CHIP1|X~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP1|X~feeder_combout\ = \CHIP1|X~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIP1|X~0_combout\,
	combout => \CHIP1|X~feeder_combout\);

-- Location: FF_X45_Y2_N25
\CHIP1|X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CHIP1|X~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP1|X~q\);

-- Location: CLKCTRL_G15
\CHIP1|X~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CHIP1|X~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CHIP1|X~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\ENT_S2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENT_S2,
	o => \ENT_S2~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\ENT_S1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENT_S1,
	o => \ENT_S1~input_o\);

-- Location: LCCOMB_X51_Y53_N2
\CHIP2|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|Selector0~0_combout\ = ((!\ENT_S1~input_o\ & (\ENT_S2~input_o\ & \CHIP2|AUX.ESTADO_GB~q\))) # (!\CHIP2|AUX.ESTADO_H1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT_S1~input_o\,
	datab => \ENT_S2~input_o\,
	datac => \CHIP2|AUX.ESTADO_GB~q\,
	datad => \CHIP2|AUX.ESTADO_H1~q\,
	combout => \CHIP2|Selector0~0_combout\);

-- Location: FF_X51_Y53_N3
\CHIP2|AUX.ESTADO_GB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.ESTADO_GB~q\);

-- Location: LCCOMB_X51_Y53_N24
\CHIP2|AUX~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~14_combout\ = (\ENT_S1~input_o\ & \CHIP2|AUX.ESTADO_GB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENT_S1~input_o\,
	datad => \CHIP2|AUX.ESTADO_GB~q\,
	combout => \CHIP2|AUX~14_combout\);

-- Location: FF_X51_Y53_N25
\CHIP2|AUX.ESTADO_H5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.ESTADO_H5~q\);

-- Location: LCCOMB_X51_Y53_N0
\CHIP2|AUX~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~11_combout\ = (!\ENT_S2~input_o\ & (!\ENT_S1~input_o\ & \CHIP2|AUX.ESTADO_GP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENT_S2~input_o\,
	datac => \ENT_S1~input_o\,
	datad => \CHIP2|AUX.ESTADO_GP~q\,
	combout => \CHIP2|AUX~11_combout\);

-- Location: FF_X51_Y53_N1
\CHIP2|AUX.ESTADO_H4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.ESTADO_H4~q\);

-- Location: LCCOMB_X51_Y53_N12
\CHIP2|AUX~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~13_combout\ = (!\ENT_S2~input_o\ & (!\ENT_S1~input_o\ & \CHIP2|AUX.ESTADO_GB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENT_S2~input_o\,
	datac => \ENT_S1~input_o\,
	datad => \CHIP2|AUX.ESTADO_GB~q\,
	combout => \CHIP2|AUX~13_combout\);

-- Location: FF_X51_Y53_N13
\CHIP2|AUX.ESTADO_H2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.ESTADO_H2~q\);

-- Location: LCCOMB_X51_Y53_N16
\CHIP2|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|Selector1~0_combout\ = (\CHIP2|AUX.ESTADO_H4~q\) # ((\CHIP2|AUX.ESTADO_H2~q\) # ((!\ENT_S1~input_o\ & \CHIP2|AUX.ESTADO_PA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT_S1~input_o\,
	datab => \CHIP2|AUX.ESTADO_H4~q\,
	datac => \CHIP2|AUX.ESTADO_PA~q\,
	datad => \CHIP2|AUX.ESTADO_H2~q\,
	combout => \CHIP2|Selector1~0_combout\);

-- Location: FF_X51_Y53_N17
\CHIP2|AUX.ESTADO_PA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.ESTADO_PA~q\);

-- Location: LCCOMB_X51_Y53_N10
\CHIP2|AUX~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~15_combout\ = (\ENT_S1~input_o\ & \CHIP2|AUX.ESTADO_PA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ENT_S1~input_o\,
	datad => \CHIP2|AUX.ESTADO_PA~q\,
	combout => \CHIP2|AUX~15_combout\);

-- Location: FF_X51_Y53_N11
\CHIP2|AUX.ESTADO_H3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.ESTADO_H3~q\);

-- Location: LCCOMB_X51_Y53_N6
\CHIP2|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|Selector2~0_combout\ = (\CHIP2|AUX.ESTADO_H5~q\) # ((\CHIP2|AUX.ESTADO_H3~q\) # ((\ENT_S1~input_o\ & \CHIP2|AUX.ESTADO_GP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT_S1~input_o\,
	datab => \CHIP2|AUX.ESTADO_H5~q\,
	datac => \CHIP2|AUX.ESTADO_GP~q\,
	datad => \CHIP2|AUX.ESTADO_H3~q\,
	combout => \CHIP2|Selector2~0_combout\);

-- Location: FF_X51_Y53_N7
\CHIP2|AUX.ESTADO_GP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.ESTADO_GP~q\);

-- Location: LCCOMB_X51_Y53_N28
\CHIP2|AUX~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|AUX~12_combout\ = ((\ENT_S1~input_o\) # (!\CHIP2|AUX.ESTADO_GP~q\)) # (!\ENT_S2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ENT_S2~input_o\,
	datac => \ENT_S1~input_o\,
	datad => \CHIP2|AUX.ESTADO_GP~q\,
	combout => \CHIP2|AUX~12_combout\);

-- Location: FF_X51_Y53_N29
\CHIP2|AUX.ESTADO_H1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CHIP1|X~clkctrl_outclk\,
	d => \CHIP2|AUX~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CHIP2|AUX.ESTADO_H1~q\);

-- Location: LCCOMB_X51_Y53_N26
\CHIP2|WideNor0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideNor0~combout\ = ((\CHIP2|AUX.ESTADO_GP~q\) # (\CHIP2|AUX.ESTADO_H4~q\)) # (!\CHIP2|AUX.ESTADO_H1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.ESTADO_H1~q\,
	datac => \CHIP2|AUX.ESTADO_GP~q\,
	datad => \CHIP2|AUX.ESTADO_H4~q\,
	combout => \CHIP2|WideNor0~combout\);

-- Location: LCCOMB_X51_Y53_N30
\CHIP2|WideNor1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideNor1~combout\ = (\CHIP2|AUX.ESTADO_H5~q\) # ((\CHIP2|AUX.ESTADO_H2~q\) # (\CHIP2|AUX.ESTADO_GB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.ESTADO_H5~q\,
	datab => \CHIP2|AUX.ESTADO_H2~q\,
	datac => \CHIP2|AUX.ESTADO_GB~q\,
	combout => \CHIP2|WideNor1~combout\);

-- Location: LCCOMB_X51_Y53_N20
\CHIP2|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideOr5~0_combout\ = (\CHIP2|AUX.ESTADO_H3~q\) # ((\CHIP2|AUX.ESTADO_H2~q\) # ((\CHIP2|AUX.ESTADO_GB~q\) # (\CHIP2|AUX.ESTADO_GP~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.ESTADO_H3~q\,
	datab => \CHIP2|AUX.ESTADO_H2~q\,
	datac => \CHIP2|AUX.ESTADO_GB~q\,
	datad => \CHIP2|AUX.ESTADO_GP~q\,
	combout => \CHIP2|WideOr5~0_combout\);

-- Location: LCCOMB_X51_Y53_N18
\CHIP2|WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideOr4~0_combout\ = (\CHIP2|AUX.ESTADO_H3~q\) # ((\CHIP2|AUX.ESTADO_GB~q\) # ((\CHIP2|AUX.ESTADO_H5~q\) # (\CHIP2|AUX.ESTADO_H4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.ESTADO_H3~q\,
	datab => \CHIP2|AUX.ESTADO_GB~q\,
	datac => \CHIP2|AUX.ESTADO_H5~q\,
	datad => \CHIP2|AUX.ESTADO_H4~q\,
	combout => \CHIP2|WideOr4~0_combout\);

-- Location: LCCOMB_X51_Y53_N4
\CHIP2|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP2|WideOr3~combout\ = ((\CHIP2|AUX.ESTADO_GB~q\) # ((\CHIP2|AUX.ESTADO_H5~q\) # (\CHIP2|AUX.ESTADO_GP~q\))) # (!\CHIP2|AUX.ESTADO_H1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|AUX.ESTADO_H1~q\,
	datab => \CHIP2|AUX.ESTADO_GB~q\,
	datac => \CHIP2|AUX.ESTADO_H5~q\,
	datad => \CHIP2|AUX.ESTADO_GP~q\,
	combout => \CHIP2|WideOr3~combout\);

-- Location: LCCOMB_X63_Y53_N24
\CHIP3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux6~0_combout\ = (!\CHIP2|WideOr5~0_combout\ & (!\CHIP2|WideOr4~0_combout\ & \CHIP2|WideOr3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y53_N2
\CHIP3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux5~0_combout\ = (\CHIP2|WideOr5~0_combout\ & ((!\CHIP2|WideOr3~combout\))) # (!\CHIP2|WideOr5~0_combout\ & (!\CHIP2|WideOr4~0_combout\ & \CHIP2|WideOr3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux5~0_combout\);

-- Location: LCCOMB_X63_Y53_N28
\CHIP3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux4~0_combout\ = (\CHIP2|WideOr3~combout\ & (!\CHIP2|WideOr5~0_combout\)) # (!\CHIP2|WideOr3~combout\ & ((\CHIP2|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux4~0_combout\);

-- Location: LCCOMB_X63_Y53_N22
\CHIP3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux3~0_combout\ = (\CHIP2|WideOr3~combout\ & ((\CHIP2|WideOr4~0_combout\))) # (!\CHIP2|WideOr3~combout\ & (\CHIP2|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y53_N4
\CHIP3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux2~0_combout\ = (!\CHIP2|WideOr4~0_combout\ & \CHIP2|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr5~0_combout\,
	combout => \CHIP3|Mux2~0_combout\);

-- Location: LCCOMB_X63_Y53_N12
\CHIP3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux1~0_combout\ = (\CHIP2|WideOr4~0_combout\ & \CHIP2|WideOr3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y53_N10
\CHIP3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CHIP3|Mux0~0_combout\ = (\CHIP2|WideOr5~0_combout\ & (\CHIP2|WideOr4~0_combout\ & \CHIP2|WideOr3~combout\)) # (!\CHIP2|WideOr5~0_combout\ & (\CHIP2|WideOr4~0_combout\ $ (\CHIP2|WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CHIP2|WideOr5~0_combout\,
	datac => \CHIP2|WideOr4~0_combout\,
	datad => \CHIP2|WideOr3~combout\,
	combout => \CHIP3|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_SAI_C1 <= \SAI_C1~output_o\;

ww_SAI_C2 <= \SAI_C2~output_o\;

ww_SAI_C3 <= \SAI_C3~output_o\;

ww_DISPLAY_0(0) <= \DISPLAY_0[0]~output_o\;

ww_DISPLAY_0(1) <= \DISPLAY_0[1]~output_o\;

ww_DISPLAY_0(2) <= \DISPLAY_0[2]~output_o\;

ww_DISPLAY_0(3) <= \DISPLAY_0[3]~output_o\;

ww_DISPLAY_0(4) <= \DISPLAY_0[4]~output_o\;

ww_DISPLAY_0(5) <= \DISPLAY_0[5]~output_o\;

ww_DISPLAY_0(6) <= \DISPLAY_0[6]~output_o\;
END structure;


