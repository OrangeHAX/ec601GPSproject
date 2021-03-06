-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/21/2016 18:49:35"

-- 
-- Device: Altera EP4CGX150DF31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	my_first_fpga IS
    PORT (
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END my_first_fpga;

-- Design Ports Information
-- LEDG[3]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF my_first_fpga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_NCSO~~ibuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|counter_out[0]~78_combout\ : std_logic;
SIGNAL \inst|counter_out[1]~26_combout\ : std_logic;
SIGNAL \inst|counter_out[1]~27\ : std_logic;
SIGNAL \inst|counter_out[2]~28_combout\ : std_logic;
SIGNAL \inst|counter_out[2]~29\ : std_logic;
SIGNAL \inst|counter_out[3]~30_combout\ : std_logic;
SIGNAL \inst|counter_out[3]~31\ : std_logic;
SIGNAL \inst|counter_out[4]~32_combout\ : std_logic;
SIGNAL \inst|counter_out[4]~33\ : std_logic;
SIGNAL \inst|counter_out[5]~34_combout\ : std_logic;
SIGNAL \inst|counter_out[5]~35\ : std_logic;
SIGNAL \inst|counter_out[6]~36_combout\ : std_logic;
SIGNAL \inst|counter_out[6]~37\ : std_logic;
SIGNAL \inst|counter_out[7]~38_combout\ : std_logic;
SIGNAL \inst|counter_out[7]~39\ : std_logic;
SIGNAL \inst|counter_out[8]~40_combout\ : std_logic;
SIGNAL \inst|counter_out[8]~41\ : std_logic;
SIGNAL \inst|counter_out[9]~42_combout\ : std_logic;
SIGNAL \inst|counter_out[9]~43\ : std_logic;
SIGNAL \inst|counter_out[10]~44_combout\ : std_logic;
SIGNAL \inst|counter_out[10]~45\ : std_logic;
SIGNAL \inst|counter_out[11]~46_combout\ : std_logic;
SIGNAL \inst|counter_out[11]~47\ : std_logic;
SIGNAL \inst|counter_out[12]~48_combout\ : std_logic;
SIGNAL \inst|counter_out[12]~49\ : std_logic;
SIGNAL \inst|counter_out[13]~50_combout\ : std_logic;
SIGNAL \inst|counter_out[13]~51\ : std_logic;
SIGNAL \inst|counter_out[14]~52_combout\ : std_logic;
SIGNAL \inst|counter_out[14]~53\ : std_logic;
SIGNAL \inst|counter_out[15]~54_combout\ : std_logic;
SIGNAL \inst|counter_out[15]~55\ : std_logic;
SIGNAL \inst|counter_out[16]~56_combout\ : std_logic;
SIGNAL \inst|counter_out[16]~57\ : std_logic;
SIGNAL \inst|counter_out[17]~58_combout\ : std_logic;
SIGNAL \inst|counter_out[17]~59\ : std_logic;
SIGNAL \inst|counter_out[18]~60_combout\ : std_logic;
SIGNAL \inst|counter_out[18]~61\ : std_logic;
SIGNAL \inst|counter_out[19]~62_combout\ : std_logic;
SIGNAL \inst|counter_out[19]~63\ : std_logic;
SIGNAL \inst|counter_out[20]~64_combout\ : std_logic;
SIGNAL \inst|counter_out[20]~65\ : std_logic;
SIGNAL \inst|counter_out[21]~66_combout\ : std_logic;
SIGNAL \inst|counter_out[21]~67\ : std_logic;
SIGNAL \inst|counter_out[22]~68_combout\ : std_logic;
SIGNAL \inst|counter_out[22]~69\ : std_logic;
SIGNAL \inst|counter_out[23]~70_combout\ : std_logic;
SIGNAL \inst|counter_out[23]~71\ : std_logic;
SIGNAL \inst|counter_out[24]~72_combout\ : std_logic;
SIGNAL \inst|counter_out[24]~73\ : std_logic;
SIGNAL \inst|counter_out[25]~74_combout\ : std_logic;
SIGNAL \inst|counter_out[25]~75\ : std_logic;
SIGNAL \inst|counter_out[26]~76_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ : std_logic;
SIGNAL \inst5|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ : std_logic;
SIGNAL \inst|counter_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

LEDG <= ww_LEDG;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: IOOBUF_X117_Y86_N2
\LEDG[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X117_Y86_N9
\LEDG[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X117_Y7_N2
\LEDG[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X117_Y7_N9
\LEDG[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_MUX_component|auto_generated|result_node[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOIBUF_X57_Y0_N8
\CLOCK_50~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_1
\inst1|altpll_component|auto_generated|pll1\ : cycloneiv_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 8,
	c0_initial => 1,
	c0_low => 8,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	dpa_divide_by => 0,
	dpa_divider => 1,
	dpa_multiply_by => 0,
	feedback_external_loop_divider => "false",
	feedback_source => -1,
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_type => "mpll",
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1250,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1250,
	vco_multiply_by => 0,
	vco_phase_shift_step => 156,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G29
\inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X115_Y16_N0
\inst|counter_out[0]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[0]~78_combout\ = !\inst|counter_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter_out\(0),
	combout => \inst|counter_out[0]~78_combout\);

-- Location: FF_X115_Y16_N1
\inst|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[0]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(0));

-- Location: LCCOMB_X115_Y16_N6
\inst|counter_out[1]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[1]~26_combout\ = (\inst|counter_out\(1) & (\inst|counter_out\(0) $ (VCC))) # (!\inst|counter_out\(1) & (\inst|counter_out\(0) & VCC))
-- \inst|counter_out[1]~27\ = CARRY((\inst|counter_out\(1) & \inst|counter_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(1),
	datab => \inst|counter_out\(0),
	datad => VCC,
	combout => \inst|counter_out[1]~26_combout\,
	cout => \inst|counter_out[1]~27\);

-- Location: FF_X115_Y16_N7
\inst|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(1));

-- Location: LCCOMB_X115_Y16_N8
\inst|counter_out[2]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[2]~28_combout\ = (\inst|counter_out\(2) & (!\inst|counter_out[1]~27\)) # (!\inst|counter_out\(2) & ((\inst|counter_out[1]~27\) # (GND)))
-- \inst|counter_out[2]~29\ = CARRY((!\inst|counter_out[1]~27\) # (!\inst|counter_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(2),
	datad => VCC,
	cin => \inst|counter_out[1]~27\,
	combout => \inst|counter_out[2]~28_combout\,
	cout => \inst|counter_out[2]~29\);

-- Location: FF_X115_Y16_N9
\inst|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(2));

-- Location: LCCOMB_X115_Y16_N10
\inst|counter_out[3]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[3]~30_combout\ = (\inst|counter_out\(3) & (\inst|counter_out[2]~29\ $ (GND))) # (!\inst|counter_out\(3) & (!\inst|counter_out[2]~29\ & VCC))
-- \inst|counter_out[3]~31\ = CARRY((\inst|counter_out\(3) & !\inst|counter_out[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(3),
	datad => VCC,
	cin => \inst|counter_out[2]~29\,
	combout => \inst|counter_out[3]~30_combout\,
	cout => \inst|counter_out[3]~31\);

-- Location: FF_X115_Y16_N11
\inst|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(3));

-- Location: LCCOMB_X115_Y16_N12
\inst|counter_out[4]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[4]~32_combout\ = (\inst|counter_out\(4) & (!\inst|counter_out[3]~31\)) # (!\inst|counter_out\(4) & ((\inst|counter_out[3]~31\) # (GND)))
-- \inst|counter_out[4]~33\ = CARRY((!\inst|counter_out[3]~31\) # (!\inst|counter_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(4),
	datad => VCC,
	cin => \inst|counter_out[3]~31\,
	combout => \inst|counter_out[4]~32_combout\,
	cout => \inst|counter_out[4]~33\);

-- Location: FF_X115_Y16_N13
\inst|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(4));

-- Location: LCCOMB_X115_Y16_N14
\inst|counter_out[5]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[5]~34_combout\ = (\inst|counter_out\(5) & (\inst|counter_out[4]~33\ $ (GND))) # (!\inst|counter_out\(5) & (!\inst|counter_out[4]~33\ & VCC))
-- \inst|counter_out[5]~35\ = CARRY((\inst|counter_out\(5) & !\inst|counter_out[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(5),
	datad => VCC,
	cin => \inst|counter_out[4]~33\,
	combout => \inst|counter_out[5]~34_combout\,
	cout => \inst|counter_out[5]~35\);

-- Location: FF_X115_Y16_N15
\inst|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(5));

-- Location: LCCOMB_X115_Y16_N16
\inst|counter_out[6]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[6]~36_combout\ = (\inst|counter_out\(6) & (!\inst|counter_out[5]~35\)) # (!\inst|counter_out\(6) & ((\inst|counter_out[5]~35\) # (GND)))
-- \inst|counter_out[6]~37\ = CARRY((!\inst|counter_out[5]~35\) # (!\inst|counter_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(6),
	datad => VCC,
	cin => \inst|counter_out[5]~35\,
	combout => \inst|counter_out[6]~36_combout\,
	cout => \inst|counter_out[6]~37\);

-- Location: FF_X115_Y16_N17
\inst|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(6));

-- Location: LCCOMB_X115_Y16_N18
\inst|counter_out[7]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[7]~38_combout\ = (\inst|counter_out\(7) & (\inst|counter_out[6]~37\ $ (GND))) # (!\inst|counter_out\(7) & (!\inst|counter_out[6]~37\ & VCC))
-- \inst|counter_out[7]~39\ = CARRY((\inst|counter_out\(7) & !\inst|counter_out[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(7),
	datad => VCC,
	cin => \inst|counter_out[6]~37\,
	combout => \inst|counter_out[7]~38_combout\,
	cout => \inst|counter_out[7]~39\);

-- Location: FF_X115_Y16_N19
\inst|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(7));

-- Location: LCCOMB_X115_Y16_N20
\inst|counter_out[8]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[8]~40_combout\ = (\inst|counter_out\(8) & (!\inst|counter_out[7]~39\)) # (!\inst|counter_out\(8) & ((\inst|counter_out[7]~39\) # (GND)))
-- \inst|counter_out[8]~41\ = CARRY((!\inst|counter_out[7]~39\) # (!\inst|counter_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(8),
	datad => VCC,
	cin => \inst|counter_out[7]~39\,
	combout => \inst|counter_out[8]~40_combout\,
	cout => \inst|counter_out[8]~41\);

-- Location: FF_X115_Y16_N21
\inst|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(8));

-- Location: LCCOMB_X115_Y16_N22
\inst|counter_out[9]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[9]~42_combout\ = (\inst|counter_out\(9) & (\inst|counter_out[8]~41\ $ (GND))) # (!\inst|counter_out\(9) & (!\inst|counter_out[8]~41\ & VCC))
-- \inst|counter_out[9]~43\ = CARRY((\inst|counter_out\(9) & !\inst|counter_out[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(9),
	datad => VCC,
	cin => \inst|counter_out[8]~41\,
	combout => \inst|counter_out[9]~42_combout\,
	cout => \inst|counter_out[9]~43\);

-- Location: FF_X115_Y16_N23
\inst|counter_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(9));

-- Location: LCCOMB_X115_Y16_N24
\inst|counter_out[10]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[10]~44_combout\ = (\inst|counter_out\(10) & (!\inst|counter_out[9]~43\)) # (!\inst|counter_out\(10) & ((\inst|counter_out[9]~43\) # (GND)))
-- \inst|counter_out[10]~45\ = CARRY((!\inst|counter_out[9]~43\) # (!\inst|counter_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(10),
	datad => VCC,
	cin => \inst|counter_out[9]~43\,
	combout => \inst|counter_out[10]~44_combout\,
	cout => \inst|counter_out[10]~45\);

-- Location: FF_X115_Y16_N25
\inst|counter_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[10]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(10));

-- Location: LCCOMB_X115_Y16_N26
\inst|counter_out[11]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[11]~46_combout\ = (\inst|counter_out\(11) & (\inst|counter_out[10]~45\ $ (GND))) # (!\inst|counter_out\(11) & (!\inst|counter_out[10]~45\ & VCC))
-- \inst|counter_out[11]~47\ = CARRY((\inst|counter_out\(11) & !\inst|counter_out[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(11),
	datad => VCC,
	cin => \inst|counter_out[10]~45\,
	combout => \inst|counter_out[11]~46_combout\,
	cout => \inst|counter_out[11]~47\);

-- Location: FF_X115_Y16_N27
\inst|counter_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[11]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(11));

-- Location: LCCOMB_X115_Y16_N28
\inst|counter_out[12]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[12]~48_combout\ = (\inst|counter_out\(12) & (!\inst|counter_out[11]~47\)) # (!\inst|counter_out\(12) & ((\inst|counter_out[11]~47\) # (GND)))
-- \inst|counter_out[12]~49\ = CARRY((!\inst|counter_out[11]~47\) # (!\inst|counter_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(12),
	datad => VCC,
	cin => \inst|counter_out[11]~47\,
	combout => \inst|counter_out[12]~48_combout\,
	cout => \inst|counter_out[12]~49\);

-- Location: FF_X115_Y16_N29
\inst|counter_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(12));

-- Location: LCCOMB_X115_Y16_N30
\inst|counter_out[13]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[13]~50_combout\ = (\inst|counter_out\(13) & (\inst|counter_out[12]~49\ $ (GND))) # (!\inst|counter_out\(13) & (!\inst|counter_out[12]~49\ & VCC))
-- \inst|counter_out[13]~51\ = CARRY((\inst|counter_out\(13) & !\inst|counter_out[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(13),
	datad => VCC,
	cin => \inst|counter_out[12]~49\,
	combout => \inst|counter_out[13]~50_combout\,
	cout => \inst|counter_out[13]~51\);

-- Location: FF_X115_Y16_N31
\inst|counter_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[13]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(13));

-- Location: LCCOMB_X115_Y15_N0
\inst|counter_out[14]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[14]~52_combout\ = (\inst|counter_out\(14) & (!\inst|counter_out[13]~51\)) # (!\inst|counter_out\(14) & ((\inst|counter_out[13]~51\) # (GND)))
-- \inst|counter_out[14]~53\ = CARRY((!\inst|counter_out[13]~51\) # (!\inst|counter_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(14),
	datad => VCC,
	cin => \inst|counter_out[13]~51\,
	combout => \inst|counter_out[14]~52_combout\,
	cout => \inst|counter_out[14]~53\);

-- Location: FF_X115_Y15_N1
\inst|counter_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[14]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(14));

-- Location: LCCOMB_X115_Y15_N2
\inst|counter_out[15]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[15]~54_combout\ = (\inst|counter_out\(15) & (\inst|counter_out[14]~53\ $ (GND))) # (!\inst|counter_out\(15) & (!\inst|counter_out[14]~53\ & VCC))
-- \inst|counter_out[15]~55\ = CARRY((\inst|counter_out\(15) & !\inst|counter_out[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(15),
	datad => VCC,
	cin => \inst|counter_out[14]~53\,
	combout => \inst|counter_out[15]~54_combout\,
	cout => \inst|counter_out[15]~55\);

-- Location: FF_X115_Y15_N3
\inst|counter_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(15));

-- Location: LCCOMB_X115_Y15_N4
\inst|counter_out[16]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[16]~56_combout\ = (\inst|counter_out\(16) & (!\inst|counter_out[15]~55\)) # (!\inst|counter_out\(16) & ((\inst|counter_out[15]~55\) # (GND)))
-- \inst|counter_out[16]~57\ = CARRY((!\inst|counter_out[15]~55\) # (!\inst|counter_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(16),
	datad => VCC,
	cin => \inst|counter_out[15]~55\,
	combout => \inst|counter_out[16]~56_combout\,
	cout => \inst|counter_out[16]~57\);

-- Location: FF_X115_Y15_N5
\inst|counter_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(16));

-- Location: LCCOMB_X115_Y15_N6
\inst|counter_out[17]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[17]~58_combout\ = (\inst|counter_out\(17) & (\inst|counter_out[16]~57\ $ (GND))) # (!\inst|counter_out\(17) & (!\inst|counter_out[16]~57\ & VCC))
-- \inst|counter_out[17]~59\ = CARRY((\inst|counter_out\(17) & !\inst|counter_out[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(17),
	datad => VCC,
	cin => \inst|counter_out[16]~57\,
	combout => \inst|counter_out[17]~58_combout\,
	cout => \inst|counter_out[17]~59\);

-- Location: FF_X115_Y15_N7
\inst|counter_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[17]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(17));

-- Location: LCCOMB_X115_Y15_N8
\inst|counter_out[18]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[18]~60_combout\ = (\inst|counter_out\(18) & (!\inst|counter_out[17]~59\)) # (!\inst|counter_out\(18) & ((\inst|counter_out[17]~59\) # (GND)))
-- \inst|counter_out[18]~61\ = CARRY((!\inst|counter_out[17]~59\) # (!\inst|counter_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(18),
	datad => VCC,
	cin => \inst|counter_out[17]~59\,
	combout => \inst|counter_out[18]~60_combout\,
	cout => \inst|counter_out[18]~61\);

-- Location: FF_X115_Y15_N9
\inst|counter_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[18]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(18));

-- Location: LCCOMB_X115_Y15_N10
\inst|counter_out[19]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[19]~62_combout\ = (\inst|counter_out\(19) & (\inst|counter_out[18]~61\ $ (GND))) # (!\inst|counter_out\(19) & (!\inst|counter_out[18]~61\ & VCC))
-- \inst|counter_out[19]~63\ = CARRY((\inst|counter_out\(19) & !\inst|counter_out[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(19),
	datad => VCC,
	cin => \inst|counter_out[18]~61\,
	combout => \inst|counter_out[19]~62_combout\,
	cout => \inst|counter_out[19]~63\);

-- Location: FF_X115_Y15_N11
\inst|counter_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(19));

-- Location: LCCOMB_X115_Y15_N12
\inst|counter_out[20]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[20]~64_combout\ = (\inst|counter_out\(20) & (!\inst|counter_out[19]~63\)) # (!\inst|counter_out\(20) & ((\inst|counter_out[19]~63\) # (GND)))
-- \inst|counter_out[20]~65\ = CARRY((!\inst|counter_out[19]~63\) # (!\inst|counter_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(20),
	datad => VCC,
	cin => \inst|counter_out[19]~63\,
	combout => \inst|counter_out[20]~64_combout\,
	cout => \inst|counter_out[20]~65\);

-- Location: FF_X115_Y15_N13
\inst|counter_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[20]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(20));

-- Location: LCCOMB_X115_Y15_N14
\inst|counter_out[21]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[21]~66_combout\ = (\inst|counter_out\(21) & (\inst|counter_out[20]~65\ $ (GND))) # (!\inst|counter_out\(21) & (!\inst|counter_out[20]~65\ & VCC))
-- \inst|counter_out[21]~67\ = CARRY((\inst|counter_out\(21) & !\inst|counter_out[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(21),
	datad => VCC,
	cin => \inst|counter_out[20]~65\,
	combout => \inst|counter_out[21]~66_combout\,
	cout => \inst|counter_out[21]~67\);

-- Location: FF_X115_Y15_N15
\inst|counter_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[21]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(21));

-- Location: LCCOMB_X115_Y15_N16
\inst|counter_out[22]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[22]~68_combout\ = (\inst|counter_out\(22) & (!\inst|counter_out[21]~67\)) # (!\inst|counter_out\(22) & ((\inst|counter_out[21]~67\) # (GND)))
-- \inst|counter_out[22]~69\ = CARRY((!\inst|counter_out[21]~67\) # (!\inst|counter_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(22),
	datad => VCC,
	cin => \inst|counter_out[21]~67\,
	combout => \inst|counter_out[22]~68_combout\,
	cout => \inst|counter_out[22]~69\);

-- Location: FF_X115_Y15_N17
\inst|counter_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[22]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(22));

-- Location: LCCOMB_X115_Y15_N18
\inst|counter_out[23]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[23]~70_combout\ = (\inst|counter_out\(23) & (\inst|counter_out[22]~69\ $ (GND))) # (!\inst|counter_out\(23) & (!\inst|counter_out[22]~69\ & VCC))
-- \inst|counter_out[23]~71\ = CARRY((\inst|counter_out\(23) & !\inst|counter_out[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(23),
	datad => VCC,
	cin => \inst|counter_out[22]~69\,
	combout => \inst|counter_out[23]~70_combout\,
	cout => \inst|counter_out[23]~71\);

-- Location: FF_X115_Y15_N19
\inst|counter_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(23));

-- Location: LCCOMB_X115_Y15_N20
\inst|counter_out[24]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[24]~72_combout\ = (\inst|counter_out\(24) & (!\inst|counter_out[23]~71\)) # (!\inst|counter_out\(24) & ((\inst|counter_out[23]~71\) # (GND)))
-- \inst|counter_out[24]~73\ = CARRY((!\inst|counter_out[23]~71\) # (!\inst|counter_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(24),
	datad => VCC,
	cin => \inst|counter_out[23]~71\,
	combout => \inst|counter_out[24]~72_combout\,
	cout => \inst|counter_out[24]~73\);

-- Location: FF_X115_Y15_N21
\inst|counter_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[24]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(24));

-- Location: LCCOMB_X115_Y15_N22
\inst|counter_out[25]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[25]~74_combout\ = (\inst|counter_out\(25) & (\inst|counter_out[24]~73\ $ (GND))) # (!\inst|counter_out\(25) & (!\inst|counter_out[24]~73\ & VCC))
-- \inst|counter_out[25]~75\ = CARRY((\inst|counter_out\(25) & !\inst|counter_out[24]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(25),
	datad => VCC,
	cin => \inst|counter_out[24]~73\,
	combout => \inst|counter_out[25]~74_combout\,
	cout => \inst|counter_out[25]~75\);

-- Location: FF_X115_Y15_N23
\inst|counter_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[25]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(25));

-- Location: LCCOMB_X115_Y15_N24
\inst|counter_out[26]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst|counter_out[26]~76_combout\ = \inst|counter_out[25]~75\ $ (\inst|counter_out\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter_out\(26),
	cin => \inst|counter_out[25]~75\,
	combout => \inst|counter_out[26]~76_combout\);

-- Location: FF_X115_Y15_N25
\inst|counter_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|counter_out[26]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter_out\(26));

-- Location: IOIBUF_X117_Y14_N1
\KEY[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X116_Y15_N8
\inst5|LPM_MUX_component|auto_generated|result_node[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\ = (\KEY[0]~input_o\ & ((\inst|counter_out\(24)))) # (!\KEY[0]~input_o\ & (\inst|counter_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(26),
	datac => \inst|counter_out\(24),
	datad => \KEY[0]~input_o\,
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[3]~0_combout\);

-- Location: LCCOMB_X116_Y15_N2
\inst5|LPM_MUX_component|auto_generated|result_node[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[2]~1_combout\ = (\KEY[0]~input_o\ & ((\inst|counter_out\(23)))) # (!\KEY[0]~input_o\ & (\inst|counter_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(25),
	datac => \inst|counter_out\(23),
	datad => \KEY[0]~input_o\,
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[2]~1_combout\);

-- Location: LCCOMB_X116_Y15_N20
\inst5|LPM_MUX_component|auto_generated|result_node[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\ = (\KEY[0]~input_o\ & ((\inst|counter_out\(22)))) # (!\KEY[0]~input_o\ & (\inst|counter_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter_out\(24),
	datac => \inst|counter_out\(22),
	datad => \KEY[0]~input_o\,
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[1]~2_combout\);

-- Location: LCCOMB_X116_Y15_N6
\inst5|LPM_MUX_component|auto_generated|result_node[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \inst5|LPM_MUX_component|auto_generated|result_node[0]~3_combout\ = (\KEY[0]~input_o\ & (\inst|counter_out\(21))) # (!\KEY[0]~input_o\ & ((\inst|counter_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter_out\(21),
	datab => \inst|counter_out\(23),
	datad => \KEY[0]~input_o\,
	combout => \inst5|LPM_MUX_component|auto_generated|result_node[0]~3_combout\);
END structure;


