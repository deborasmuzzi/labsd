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

-- DATE "11/03/2026 18:02:31"

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

ENTITY 	controller IS
    PORT (
	eq : IN std_logic;
	l : IN std_logic;
	p : IN std_logic;
	clk : IN std_logic;
	sw_z : IN std_logic;
	a : IN std_logic;
	m : IN std_logic_vector(2 DOWNTO 0);
	clr_tim : OUT std_logic;
	clr_lev : OUT std_logic;
	clr_rand : OUT std_logic;
	led_z : OUT std_logic;
	ld_lev : OUT std_logic;
	ld_tim : OUT std_logic;
	ld_rand : OUT std_logic;
	d : OUT std_logic;
	stg : OUT std_logic_vector(1 DOWNTO 0)
	);
END controller;

-- Design Ports Information
-- clr_tim	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_lev	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_rand	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_z	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_lev	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_tim	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_rand	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stg[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stg[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_z	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[2]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[1]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- eq	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_eq : std_logic;
SIGNAL ww_l : std_logic;
SIGNAL ww_p : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sw_z : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_m : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clr_tim : std_logic;
SIGNAL ww_clr_lev : std_logic;
SIGNAL ww_clr_rand : std_logic;
SIGNAL ww_led_z : std_logic;
SIGNAL ww_ld_lev : std_logic;
SIGNAL ww_ld_tim : std_logic;
SIGNAL ww_ld_rand : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_stg : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clr_tim~output_o\ : std_logic;
SIGNAL \clr_lev~output_o\ : std_logic;
SIGNAL \clr_rand~output_o\ : std_logic;
SIGNAL \led_z~output_o\ : std_logic;
SIGNAL \ld_lev~output_o\ : std_logic;
SIGNAL \ld_tim~output_o\ : std_logic;
SIGNAL \ld_rand~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \stg[0]~output_o\ : std_logic;
SIGNAL \stg[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \m[2]~input_o\ : std_logic;
SIGNAL \m[0]~input_o\ : std_logic;
SIGNAL \p~input_o\ : std_logic;
SIGNAL \m[1]~input_o\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \comb_proc~0_combout\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \sw_z~input_o\ : std_logic;
SIGNAL \l~input_o\ : std_logic;
SIGNAL \comb_proc~2_combout\ : std_logic;
SIGNAL \eq~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \PS.P2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \PS.S2~q\ : std_logic;
SIGNAL \comb_proc~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \PS.P1~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \PS.S1~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \PS.P3~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \PS.S3~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \PS.S4~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \PS.S0~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \stg~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \ALT_INV_PS.S0~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_eq <= eq;
ww_l <= l;
ww_p <= p;
ww_clk <= clk;
ww_sw_z <= sw_z;
ww_a <= a;
ww_m <= m;
clr_tim <= ww_clr_tim;
clr_lev <= ww_clr_lev;
clr_rand <= ww_clr_rand;
led_z <= ww_led_z;
ld_lev <= ww_ld_lev;
ld_tim <= ww_ld_tim;
ld_rand <= ww_ld_rand;
d <= ww_d;
stg <= ww_stg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_WideOr4~0_combout\ <= NOT \WideOr4~0_combout\;
\ALT_INV_PS.S0~q\ <= NOT \PS.S0~q\;
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

-- Location: IOOBUF_X20_Y0_N30
\clr_tim~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_PS.S0~q\,
	devoe => ww_devoe,
	o => \clr_tim~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\clr_lev~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_PS.S0~q\,
	devoe => ww_devoe,
	o => \clr_lev~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\clr_rand~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_PS.S0~q\,
	devoe => ww_devoe,
	o => \clr_rand~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\led_z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led_z~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\ld_lev~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector8~0_combout\,
	devoe => ww_devoe,
	o => \ld_lev~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\ld_tim~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~combout\,
	devoe => ww_devoe,
	o => \ld_tim~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ld_rand~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector8~0_combout\,
	devoe => ww_devoe,
	o => \ld_rand~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\d~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\stg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \stg[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\stg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stg~0_combout\,
	devoe => ww_devoe,
	o => \stg[1]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y0_N8
\m[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(2),
	o => \m[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\m[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(0),
	o => \m[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\p~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p,
	o => \p~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\m[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m(1),
	o => \m[1]~input_o\);

-- Location: LCCOMB_X17_Y1_N4
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\m[2]~input_o\) # ((\m[0]~input_o\ $ (!\m[1]~input_o\)) # (!\p~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \m[0]~input_o\,
	datac => \p~input_o\,
	datad => \m[1]~input_o\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X17_Y1_N10
\comb_proc~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_proc~0_combout\ = (\m[2]~input_o\ & (!\m[0]~input_o\ & (\p~input_o\ & !\m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \m[0]~input_o\,
	datac => \p~input_o\,
	datad => \m[1]~input_o\,
	combout => \comb_proc~0_combout\);

-- Location: IOIBUF_X16_Y0_N29
\a~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\sw_z~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_z,
	o => \sw_z~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\l~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l,
	o => \l~input_o\);

-- Location: LCCOMB_X17_Y1_N14
\comb_proc~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_proc~2_combout\ = (!\m[2]~input_o\ & (!\m[0]~input_o\ & (\p~input_o\ & \m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \m[0]~input_o\,
	datac => \p~input_o\,
	datad => \m[1]~input_o\,
	combout => \comb_proc~2_combout\);

-- Location: IOIBUF_X20_Y0_N8
\eq~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_eq,
	o => \eq~input_o\);

-- Location: LCCOMB_X16_Y1_N30
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\sw_z~input_o\ & !\l~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_z~input_o\,
	datac => \l~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X16_Y1_N8
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector2~0_combout\ & ((\PS.S2~q\) # ((!\eq~input_o\ & \PS.P2~q\)))) # (!\Selector2~0_combout\ & (!\eq~input_o\ & (\PS.P2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \eq~input_o\,
	datac => \PS.P2~q\,
	datad => \PS.S2~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X16_Y1_N9
\PS.P2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.P2~q\);

-- Location: LCCOMB_X16_Y1_N18
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\comb_proc~2_combout\ & (((\eq~input_o\ & \PS.P2~q\)) # (!\PS.S0~q\))) # (!\comb_proc~2_combout\ & (\eq~input_o\ & (\PS.P2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_proc~2_combout\,
	datab => \eq~input_o\,
	datac => \PS.P2~q\,
	datad => \PS.S0~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X16_Y1_N6
\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((!\sw_z~input_o\ & (!\l~input_o\ & \PS.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_z~input_o\,
	datab => \l~input_o\,
	datac => \PS.S2~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X16_Y1_N7
\PS.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S2~q\);

-- Location: LCCOMB_X17_Y1_N24
\comb_proc~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \comb_proc~1_combout\ = (!\m[2]~input_o\ & (\m[0]~input_o\ & (\p~input_o\ & !\m[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m[2]~input_o\,
	datab => \m[0]~input_o\,
	datac => \p~input_o\,
	datad => \m[1]~input_o\,
	combout => \comb_proc~1_combout\);

-- Location: LCCOMB_X16_Y1_N22
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\ & ((\PS.S1~q\) # ((!\eq~input_o\ & \PS.P1~q\)))) # (!\Selector2~0_combout\ & (!\eq~input_o\ & (\PS.P1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \eq~input_o\,
	datac => \PS.P1~q\,
	datad => \PS.S1~q\,
	combout => \Selector2~1_combout\);

-- Location: FF_X16_Y1_N23
\PS.P1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.P1~q\);

-- Location: LCCOMB_X16_Y1_N24
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\eq~input_o\ & ((\PS.P1~q\) # ((\comb_proc~1_combout\ & !\PS.S0~q\)))) # (!\eq~input_o\ & (\comb_proc~1_combout\ & ((!\PS.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \eq~input_o\,
	datab => \comb_proc~1_combout\,
	datac => \PS.P1~q\,
	datad => \PS.S0~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X16_Y1_N28
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((!\sw_z~input_o\ & (!\l~input_o\ & \PS.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_z~input_o\,
	datab => \l~input_o\,
	datac => \PS.S1~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X16_Y1_N29
\PS.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S1~q\);

-- Location: LCCOMB_X16_Y1_N4
\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Selector2~0_combout\ & ((\PS.S3~q\) # ((!\eq~input_o\ & \PS.P3~q\)))) # (!\Selector2~0_combout\ & (!\eq~input_o\ & (\PS.P3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \eq~input_o\,
	datac => \PS.P3~q\,
	datad => \PS.S3~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X16_Y1_N5
\PS.P3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.P3~q\);

-- Location: LCCOMB_X16_Y1_N0
\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\comb_proc~0_combout\ & (((\eq~input_o\ & \PS.P3~q\)) # (!\PS.S0~q\))) # (!\comb_proc~0_combout\ & (\eq~input_o\ & (\PS.P3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_proc~0_combout\,
	datab => \eq~input_o\,
	datac => \PS.P3~q\,
	datad => \PS.S0~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X16_Y1_N12
\Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((!\sw_z~input_o\ & (!\l~input_o\ & \PS.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_z~input_o\,
	datab => \l~input_o\,
	datac => \PS.S3~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X16_Y1_N13
\PS.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S3~q\);

-- Location: LCCOMB_X16_Y1_N2
\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\PS.S3~q\ & ((\l~input_o\) # ((!\a~input_o\ & \PS.S4~q\)))) # (!\PS.S3~q\ & (!\a~input_o\ & ((\PS.S4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S3~q\,
	datab => \a~input_o\,
	datac => \l~input_o\,
	datad => \PS.S4~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X16_Y1_N20
\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\l~input_o\ & ((\PS.S2~q\) # (\PS.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S2~q\,
	datab => \l~input_o\,
	datac => \PS.S1~q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X16_Y1_N21
\PS.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S4~q\);

-- Location: LCCOMB_X16_Y1_N10
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\a~input_o\ & \PS.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~input_o\,
	datad => \PS.S4~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X16_Y1_N16
\Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~0_combout\ & (((\comb_proc~0_combout\) # (\PS.S0~q\)) # (!\Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \comb_proc~0_combout\,
	datac => \PS.S0~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X16_Y1_N17
\PS.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.S0~q\);

-- Location: LCCOMB_X16_Y1_N26
\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Selector2~0_combout\ & ((\PS.S2~q\) # ((\PS.S1~q\) # (\PS.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.S2~q\,
	datab => \PS.S1~q\,
	datac => \Selector2~0_combout\,
	datad => \PS.S3~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X16_Y1_N14
WideOr4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\PS.P1~q\) # ((\PS.P3~q\) # (\PS.P2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS.P1~q\,
	datac => \PS.P3~q\,
	datad => \PS.P2~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X15_Y1_N0
\WideOr4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\PS.P3~q\ & !\PS.P1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.P3~q\,
	datad => \PS.P1~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X15_Y1_N2
\stg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \stg~0_combout\ = (\PS.P2~q\) # (\PS.P3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS.P2~q\,
	datad => \PS.P3~q\,
	combout => \stg~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

ww_clr_tim <= \clr_tim~output_o\;

ww_clr_lev <= \clr_lev~output_o\;

ww_clr_rand <= \clr_rand~output_o\;

ww_led_z <= \led_z~output_o\;

ww_ld_lev <= \ld_lev~output_o\;

ww_ld_tim <= \ld_tim~output_o\;

ww_ld_rand <= \ld_rand~output_o\;

ww_d <= \d~output_o\;

ww_stg(0) <= \stg[0]~output_o\;

ww_stg(1) <= \stg[1]~output_o\;
END structure;


