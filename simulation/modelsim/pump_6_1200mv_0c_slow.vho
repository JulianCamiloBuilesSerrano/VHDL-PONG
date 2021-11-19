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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/19/2021 01:59:39"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pong IS
    PORT (
	clk : IN std_logic;
	ena : IN std_logic;
	rst : IN std_logic;
	button_up : IN std_logic;
	button_down : IN std_logic;
	button_up_2 : IN std_logic;
	button_down_2 : IN std_logic;
	leds_x : OUT std_logic_vector(7 DOWNTO 0);
	leds_y1 : OUT std_logic_vector(7 DOWNTO 0);
	leds_x2 : OUT std_logic_vector(7 DOWNTO 0);
	leds_y2 : OUT std_logic_vector(7 DOWNTO 0);
	pointsPLeft : OUT std_logic_vector(6 DOWNTO 0);
	pointsPRight : OUT std_logic_vector(6 DOWNTO 0)
	);
END pong;

-- Design Ports Information
-- leds_x[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x[6]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x[7]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y1[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y1[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y1[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y1[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y1[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y1[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y1[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y1[7]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x2[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x2[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x2[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x2[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x2[4]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x2[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x2[6]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_x2[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y2[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y2[1]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y2[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y2[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y2[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y2[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y2[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_y2[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPLeft[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPLeft[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPLeft[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPLeft[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPLeft[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPLeft[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPLeft[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPRight[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPRight[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPRight[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPRight[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPRight[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPRight[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pointsPRight[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_up	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_down	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_up_2	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_down_2	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pong IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_button_up : std_logic;
SIGNAL ww_button_down : std_logic;
SIGNAL ww_button_up_2 : std_logic;
SIGNAL ww_button_down_2 : std_logic;
SIGNAL ww_leds_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds_y1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds_x2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds_y2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pointsPLeft : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_pointsPRight : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds_x[0]~output_o\ : std_logic;
SIGNAL \leds_x[1]~output_o\ : std_logic;
SIGNAL \leds_x[2]~output_o\ : std_logic;
SIGNAL \leds_x[3]~output_o\ : std_logic;
SIGNAL \leds_x[4]~output_o\ : std_logic;
SIGNAL \leds_x[5]~output_o\ : std_logic;
SIGNAL \leds_x[6]~output_o\ : std_logic;
SIGNAL \leds_x[7]~output_o\ : std_logic;
SIGNAL \leds_y1[0]~output_o\ : std_logic;
SIGNAL \leds_y1[1]~output_o\ : std_logic;
SIGNAL \leds_y1[2]~output_o\ : std_logic;
SIGNAL \leds_y1[3]~output_o\ : std_logic;
SIGNAL \leds_y1[4]~output_o\ : std_logic;
SIGNAL \leds_y1[5]~output_o\ : std_logic;
SIGNAL \leds_y1[6]~output_o\ : std_logic;
SIGNAL \leds_y1[7]~output_o\ : std_logic;
SIGNAL \leds_x2[0]~output_o\ : std_logic;
SIGNAL \leds_x2[1]~output_o\ : std_logic;
SIGNAL \leds_x2[2]~output_o\ : std_logic;
SIGNAL \leds_x2[3]~output_o\ : std_logic;
SIGNAL \leds_x2[4]~output_o\ : std_logic;
SIGNAL \leds_x2[5]~output_o\ : std_logic;
SIGNAL \leds_x2[6]~output_o\ : std_logic;
SIGNAL \leds_x2[7]~output_o\ : std_logic;
SIGNAL \leds_y2[0]~output_o\ : std_logic;
SIGNAL \leds_y2[1]~output_o\ : std_logic;
SIGNAL \leds_y2[2]~output_o\ : std_logic;
SIGNAL \leds_y2[3]~output_o\ : std_logic;
SIGNAL \leds_y2[4]~output_o\ : std_logic;
SIGNAL \leds_y2[5]~output_o\ : std_logic;
SIGNAL \leds_y2[6]~output_o\ : std_logic;
SIGNAL \leds_y2[7]~output_o\ : std_logic;
SIGNAL \pointsPLeft[0]~output_o\ : std_logic;
SIGNAL \pointsPLeft[1]~output_o\ : std_logic;
SIGNAL \pointsPLeft[2]~output_o\ : std_logic;
SIGNAL \pointsPLeft[3]~output_o\ : std_logic;
SIGNAL \pointsPLeft[4]~output_o\ : std_logic;
SIGNAL \pointsPLeft[5]~output_o\ : std_logic;
SIGNAL \pointsPLeft[6]~output_o\ : std_logic;
SIGNAL \pointsPRight[0]~output_o\ : std_logic;
SIGNAL \pointsPRight[1]~output_o\ : std_logic;
SIGNAL \pointsPRight[2]~output_o\ : std_logic;
SIGNAL \pointsPRight[3]~output_o\ : std_logic;
SIGNAL \pointsPRight[4]~output_o\ : std_logic;
SIGNAL \pointsPRight[5]~output_o\ : std_logic;
SIGNAL \pointsPRight[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ball|counter1|temp[0]~24_combout\ : std_logic;
SIGNAL \game|Equal4~0_combout\ : std_logic;
SIGNAL \game|Equal4~1_combout\ : std_logic;
SIGNAL \game|Equal4~2_combout\ : std_logic;
SIGNAL \game|autoResetBall~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \game|autoResetBall~q\ : std_logic;
SIGNAL \game|Equal5~2_combout\ : std_logic;
SIGNAL \game|next_state2.add_right~0_combout\ : std_logic;
SIGNAL \game|pr_state2.add_right~q\ : std_logic;
SIGNAL \game|counter1|temp[0]~24_combout\ : std_logic;
SIGNAL \game|counter1|temp[13]~51\ : std_logic;
SIGNAL \game|counter1|temp[14]~52_combout\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \game|counter1|temp[14]~53\ : std_logic;
SIGNAL \game|counter1|temp[15]~54_combout\ : std_logic;
SIGNAL \game|counter1|temp[15]~55\ : std_logic;
SIGNAL \game|counter1|temp[16]~56_combout\ : std_logic;
SIGNAL \game|counter1|temp[16]~57\ : std_logic;
SIGNAL \game|counter1|temp[17]~58_combout\ : std_logic;
SIGNAL \game|counter1|Equal0~2_combout\ : std_logic;
SIGNAL \game|counter1|temp[17]~59\ : std_logic;
SIGNAL \game|counter1|temp[18]~60_combout\ : std_logic;
SIGNAL \game|counter1|temp[18]~61\ : std_logic;
SIGNAL \game|counter1|temp[19]~62_combout\ : std_logic;
SIGNAL \game|counter1|temp[19]~63\ : std_logic;
SIGNAL \game|counter1|temp[20]~64_combout\ : std_logic;
SIGNAL \game|counter1|temp[20]~65\ : std_logic;
SIGNAL \game|counter1|temp[21]~66_combout\ : std_logic;
SIGNAL \game|counter1|temp[21]~67\ : std_logic;
SIGNAL \game|counter1|temp[22]~68_combout\ : std_logic;
SIGNAL \game|counter1|Equal0~0_combout\ : std_logic;
SIGNAL \game|counter1|Equal0~1_combout\ : std_logic;
SIGNAL \game|counter1|Equal0~4_combout\ : std_logic;
SIGNAL \game|counter1|temp[22]~69\ : std_logic;
SIGNAL \game|counter1|temp[23]~70_combout\ : std_logic;
SIGNAL \game|counter1|Equal0~5_combout\ : std_logic;
SIGNAL \game|counter1|Equal0~3_combout\ : std_logic;
SIGNAL \game|counter1|Equal0~6_combout\ : std_logic;
SIGNAL \game|counter1|Equal0~7_combout\ : std_logic;
SIGNAL \game|counter1|temp[0]~25\ : std_logic;
SIGNAL \game|counter1|temp[1]~26_combout\ : std_logic;
SIGNAL \game|counter1|temp[1]~27\ : std_logic;
SIGNAL \game|counter1|temp[2]~28_combout\ : std_logic;
SIGNAL \game|counter1|temp[2]~29\ : std_logic;
SIGNAL \game|counter1|temp[3]~30_combout\ : std_logic;
SIGNAL \game|counter1|temp[3]~31\ : std_logic;
SIGNAL \game|counter1|temp[4]~32_combout\ : std_logic;
SIGNAL \game|counter1|temp[4]~33\ : std_logic;
SIGNAL \game|counter1|temp[5]~34_combout\ : std_logic;
SIGNAL \game|counter1|temp[5]~35\ : std_logic;
SIGNAL \game|counter1|temp[6]~36_combout\ : std_logic;
SIGNAL \game|counter1|temp[6]~37\ : std_logic;
SIGNAL \game|counter1|temp[7]~38_combout\ : std_logic;
SIGNAL \game|counter1|temp[7]~39\ : std_logic;
SIGNAL \game|counter1|temp[8]~40_combout\ : std_logic;
SIGNAL \game|counter1|temp[8]~41\ : std_logic;
SIGNAL \game|counter1|temp[9]~42_combout\ : std_logic;
SIGNAL \game|counter1|temp[9]~43\ : std_logic;
SIGNAL \game|counter1|temp[10]~44_combout\ : std_logic;
SIGNAL \game|counter1|temp[10]~45\ : std_logic;
SIGNAL \game|counter1|temp[11]~46_combout\ : std_logic;
SIGNAL \game|counter1|temp[11]~47\ : std_logic;
SIGNAL \game|counter1|temp[12]~48_combout\ : std_logic;
SIGNAL \game|counter1|temp[12]~49\ : std_logic;
SIGNAL \game|counter1|temp[13]~50_combout\ : std_logic;
SIGNAL \game|counter1|Equal1~3_combout\ : std_logic;
SIGNAL \game|counter1|Equal1~4_combout\ : std_logic;
SIGNAL \game|counter1|Equal1~1_combout\ : std_logic;
SIGNAL \game|counter1|Equal1~0_combout\ : std_logic;
SIGNAL \game|counter1|Equal1~2_combout\ : std_logic;
SIGNAL \game|counter1|max_tick~0_combout\ : std_logic;
SIGNAL \game|Selector3~0_combout\ : std_logic;
SIGNAL \game|pr_state2.wait_time~q\ : std_logic;
SIGNAL \game|Selector2~0_combout\ : std_logic;
SIGNAL \game|pr_state2.init~q\ : std_logic;
SIGNAL \game|next_state2.add_left~0_combout\ : std_logic;
SIGNAL \game|pr_state2.add_left~q\ : std_logic;
SIGNAL \game|points_Left_next[0]~0_combout\ : std_logic;
SIGNAL \game|points_Left_next[1]~1_combout\ : std_logic;
SIGNAL \game|points_Left[1]~feeder_combout\ : std_logic;
SIGNAL \game|points_Left_next[2]~2_combout\ : std_logic;
SIGNAL \game|points_Left[2]~feeder_combout\ : std_logic;
SIGNAL \game|Add0~0_combout\ : std_logic;
SIGNAL \game|points_Left_next[3]~3_combout\ : std_logic;
SIGNAL \game|points_Left[3]~feeder_combout\ : std_logic;
SIGNAL \game|Equal6~0_combout\ : std_logic;
SIGNAL \game|points_Right_next[0]~0_combout\ : std_logic;
SIGNAL \game|points_Right[0]~feeder_combout\ : std_logic;
SIGNAL \game|points_Right_next[1]~1_combout\ : std_logic;
SIGNAL \game|points_Right_next[2]~2_combout\ : std_logic;
SIGNAL \game|points_Right[2]~feeder_combout\ : std_logic;
SIGNAL \game|Add1~0_combout\ : std_logic;
SIGNAL \game|points_Right_next[3]~3_combout\ : std_logic;
SIGNAL \game|points_Right[3]~feeder_combout\ : std_logic;
SIGNAL \game|Equal7~0_combout\ : std_logic;
SIGNAL \game|tempwin~combout\ : std_logic;
SIGNAL \game|win~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \ball|counter1|temp[0]~25\ : std_logic;
SIGNAL \ball|counter1|temp[1]~26_combout\ : std_logic;
SIGNAL \ball|counter1|temp[1]~27\ : std_logic;
SIGNAL \ball|counter1|temp[2]~28_combout\ : std_logic;
SIGNAL \ball|counter1|temp[2]~29\ : std_logic;
SIGNAL \ball|counter1|temp[3]~30_combout\ : std_logic;
SIGNAL \ball|counter1|temp[3]~31\ : std_logic;
SIGNAL \ball|counter1|temp[4]~32_combout\ : std_logic;
SIGNAL \ball|counter1|temp[4]~33\ : std_logic;
SIGNAL \ball|counter1|temp[5]~34_combout\ : std_logic;
SIGNAL \ball|counter1|temp[5]~35\ : std_logic;
SIGNAL \ball|counter1|temp[6]~36_combout\ : std_logic;
SIGNAL \ball|counter1|temp[6]~37\ : std_logic;
SIGNAL \ball|counter1|temp[7]~38_combout\ : std_logic;
SIGNAL \ball|counter1|temp[7]~39\ : std_logic;
SIGNAL \ball|counter1|temp[8]~40_combout\ : std_logic;
SIGNAL \ball|counter1|temp[8]~41\ : std_logic;
SIGNAL \ball|counter1|temp[9]~42_combout\ : std_logic;
SIGNAL \ball|counter1|temp[9]~43\ : std_logic;
SIGNAL \ball|counter1|temp[10]~44_combout\ : std_logic;
SIGNAL \ball|counter1|temp[10]~45\ : std_logic;
SIGNAL \ball|counter1|temp[11]~46_combout\ : std_logic;
SIGNAL \ball|counter1|temp[11]~47\ : std_logic;
SIGNAL \ball|counter1|temp[12]~48_combout\ : std_logic;
SIGNAL \ball|counter1|temp[12]~49\ : std_logic;
SIGNAL \ball|counter1|temp[13]~50_combout\ : std_logic;
SIGNAL \ball|counter1|temp[13]~51\ : std_logic;
SIGNAL \ball|counter1|temp[14]~52_combout\ : std_logic;
SIGNAL \ball|counter1|temp[14]~53\ : std_logic;
SIGNAL \ball|counter1|temp[15]~54_combout\ : std_logic;
SIGNAL \ball|counter1|temp[15]~55\ : std_logic;
SIGNAL \ball|counter1|temp[16]~56_combout\ : std_logic;
SIGNAL \ball|counter1|Equal0~5_combout\ : std_logic;
SIGNAL \ball|counter1|temp[16]~57\ : std_logic;
SIGNAL \ball|counter1|temp[17]~58_combout\ : std_logic;
SIGNAL \ball|counter1|temp[17]~59\ : std_logic;
SIGNAL \ball|counter1|temp[18]~60_combout\ : std_logic;
SIGNAL \ball|counter1|temp[18]~61\ : std_logic;
SIGNAL \ball|counter1|temp[19]~62_combout\ : std_logic;
SIGNAL \ball|counter1|temp[19]~63\ : std_logic;
SIGNAL \ball|counter1|temp[20]~64_combout\ : std_logic;
SIGNAL \ball|counter1|temp[20]~65\ : std_logic;
SIGNAL \ball|counter1|temp[21]~66_combout\ : std_logic;
SIGNAL \ball|counter1|temp[21]~67\ : std_logic;
SIGNAL \ball|counter1|temp[22]~68_combout\ : std_logic;
SIGNAL \ball|counter1|temp[22]~69\ : std_logic;
SIGNAL \ball|counter1|temp[23]~70_combout\ : std_logic;
SIGNAL \ball|counter1|Equal0~6_combout\ : std_logic;
SIGNAL \ball|counter1|Equal0~2_combout\ : std_logic;
SIGNAL \ball|counter1|Equal0~0_combout\ : std_logic;
SIGNAL \ball|counter1|Equal0~3_combout\ : std_logic;
SIGNAL \ball|counter1|Equal0~1_combout\ : std_logic;
SIGNAL \ball|counter1|Equal0~4_combout\ : std_logic;
SIGNAL \ball|counter1|Equal0~7_combout\ : std_logic;
SIGNAL \ball|counter1|Equal1~4_combout\ : std_logic;
SIGNAL \ball|counter1|Equal1~1_combout\ : std_logic;
SIGNAL \ball|counter1|Equal1~0_combout\ : std_logic;
SIGNAL \ball|counter1|Equal1~2_combout\ : std_logic;
SIGNAL \ball|counter1|Equal1~3_combout\ : std_logic;
SIGNAL \ball|Selector18~0_combout\ : std_logic;
SIGNAL \ball|Selector19~0_combout\ : std_logic;
SIGNAL \ball|next_state.move_right~0_combout\ : std_logic;
SIGNAL \ball|pr_state.move_right~q\ : std_logic;
SIGNAL \ball|Selector18~1_combout\ : std_logic;
SIGNAL \ball|pr_state.wait_seconds~q\ : std_logic;
SIGNAL \ball|pr_state.move~0_combout\ : std_logic;
SIGNAL \ball|pr_state.move~q\ : std_logic;
SIGNAL \ball|temporal_ball_x~2_combout\ : std_logic;
SIGNAL \ball|Selector17~0_combout\ : std_logic;
SIGNAL \ball|Selector16~0_combout\ : std_logic;
SIGNAL \ball|Selector15~0_combout\ : std_logic;
SIGNAL \ball|Selector14~0_combout\ : std_logic;
SIGNAL \ball|Selector13~0_combout\ : std_logic;
SIGNAL \ball|Selector12~0_combout\ : std_logic;
SIGNAL \ball|Selector11~0_combout\ : std_logic;
SIGNAL \ball|Selector10~0_combout\ : std_logic;
SIGNAL \ball|Selector9~0_combout\ : std_logic;
SIGNAL \ball|Selector9~1_combout\ : std_logic;
SIGNAL \ball|Selector8~0_combout\ : std_logic;
SIGNAL \ball|Selector7~0_combout\ : std_logic;
SIGNAL \game|Equal5~0_combout\ : std_logic;
SIGNAL \game|Equal5~1_combout\ : std_logic;
SIGNAL \button_down~input_o\ : std_logic;
SIGNAL \button_up~input_o\ : std_logic;
SIGNAL \mov_left|next_state.click_r~0_combout\ : std_logic;
SIGNAL \rst_t~0_combout\ : std_logic;
SIGNAL \mov_left|pr_state.click_r~q\ : std_logic;
SIGNAL \mov_left|counter_1|temp[0]~24_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[15]~55\ : std_logic;
SIGNAL \mov_left|counter_1|temp[16]~56_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal0~5_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal0~3_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal0~0_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[16]~57\ : std_logic;
SIGNAL \mov_left|counter_1|temp[17]~58_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[17]~59\ : std_logic;
SIGNAL \mov_left|counter_1|temp[18]~60_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[18]~61\ : std_logic;
SIGNAL \mov_left|counter_1|temp[19]~62_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[19]~63\ : std_logic;
SIGNAL \mov_left|counter_1|temp[20]~64_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[20]~65\ : std_logic;
SIGNAL \mov_left|counter_1|temp[21]~66_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[21]~67\ : std_logic;
SIGNAL \mov_left|counter_1|temp[22]~68_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal0~1_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal0~2_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal0~4_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[22]~69\ : std_logic;
SIGNAL \mov_left|counter_1|temp[23]~70_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal0~6_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal0~7_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[0]~25\ : std_logic;
SIGNAL \mov_left|counter_1|temp[1]~26_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[1]~27\ : std_logic;
SIGNAL \mov_left|counter_1|temp[2]~28_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[2]~29\ : std_logic;
SIGNAL \mov_left|counter_1|temp[3]~30_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[3]~31\ : std_logic;
SIGNAL \mov_left|counter_1|temp[4]~32_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[4]~33\ : std_logic;
SIGNAL \mov_left|counter_1|temp[5]~34_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[5]~35\ : std_logic;
SIGNAL \mov_left|counter_1|temp[6]~36_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[6]~37\ : std_logic;
SIGNAL \mov_left|counter_1|temp[7]~38_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[7]~39\ : std_logic;
SIGNAL \mov_left|counter_1|temp[8]~40_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[8]~41\ : std_logic;
SIGNAL \mov_left|counter_1|temp[9]~42_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[9]~43\ : std_logic;
SIGNAL \mov_left|counter_1|temp[10]~44_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[10]~45\ : std_logic;
SIGNAL \mov_left|counter_1|temp[11]~46_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[11]~47\ : std_logic;
SIGNAL \mov_left|counter_1|temp[12]~48_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[12]~49\ : std_logic;
SIGNAL \mov_left|counter_1|temp[13]~50_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[13]~51\ : std_logic;
SIGNAL \mov_left|counter_1|temp[14]~52_combout\ : std_logic;
SIGNAL \mov_left|counter_1|temp[14]~53\ : std_logic;
SIGNAL \mov_left|counter_1|temp[15]~54_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal1~3_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal1~1_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal1~0_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal1~2_combout\ : std_logic;
SIGNAL \mov_right|counter_1|Equal1~4_combout\ : std_logic;
SIGNAL \mov_right|counter_1|max_tick~0_combout\ : std_logic;
SIGNAL \mov_left|Selector9~0_combout\ : std_logic;
SIGNAL \mov_left|pr_state.wait_second~q\ : std_logic;
SIGNAL \mov_left|Selector8~0_combout\ : std_logic;
SIGNAL \mov_left|Selector8~1_combout\ : std_logic;
SIGNAL \mov_left|pr_state.unclicked~q\ : std_logic;
SIGNAL \mov_left|next_state.clcik_l~0_combout\ : std_logic;
SIGNAL \mov_left|pr_state.clcik_l~q\ : std_logic;
SIGNAL \mov_left|Selector7~0_combout\ : std_logic;
SIGNAL \mov_left|Selector0~0_combout\ : std_logic;
SIGNAL \mov_left|Selector1~0_combout\ : std_logic;
SIGNAL \mov_left|Selector5~0_combout\ : std_logic;
SIGNAL \mov_left|Selector7~1_combout\ : std_logic;
SIGNAL \mov_left|Selector6~0_combout\ : std_logic;
SIGNAL \mov_left|next_pos[2]~0_combout\ : std_logic;
SIGNAL \mov_left|next_pos[2]~1_combout\ : std_logic;
SIGNAL \mov_left|next_pos[2]~2_combout\ : std_logic;
SIGNAL \mov_left|next_pos[2]~3_combout\ : std_logic;
SIGNAL \mov_left|Selector2~0_combout\ : std_logic;
SIGNAL \mov_left|Selector3~0_combout\ : std_logic;
SIGNAL \mov_left|Selector4~0_combout\ : std_logic;
SIGNAL \ball|temporal_ball_y[4]~1_combout\ : std_logic;
SIGNAL \ball|Selector24~0_combout\ : std_logic;
SIGNAL \ball|Selector25~0_combout\ : std_logic;
SIGNAL \ball|temporal_ball_y[7]~2_combout\ : std_logic;
SIGNAL \ball|Selector0~0_combout\ : std_logic;
SIGNAL \ball|temporal_ball_y[0]~0_combout\ : std_logic;
SIGNAL \game|Equal8~0_combout\ : std_logic;
SIGNAL \game|Equal8~1_combout\ : std_logic;
SIGNAL \game|next_state.play~0_combout\ : std_logic;
SIGNAL \game|pr_state.play~q\ : std_logic;
SIGNAL \game|next_state.down_rebound~0_combout\ : std_logic;
SIGNAL \game|pr_state.down_rebound~q\ : std_logic;
SIGNAL \game|direction[0]~0_combout\ : std_logic;
SIGNAL \ball|Selector22~0_combout\ : std_logic;
SIGNAL \ball|Selector21~0_combout\ : std_logic;
SIGNAL \game|Equal1~1_combout\ : std_logic;
SIGNAL \game|Equal1~2_combout\ : std_logic;
SIGNAL \game|Equal1~0_combout\ : std_logic;
SIGNAL \game|Equal1~3_combout\ : std_logic;
SIGNAL \game|Equal1~4_combout\ : std_logic;
SIGNAL \game|comb~0_combout\ : std_logic;
SIGNAL \button_down_2~input_o\ : std_logic;
SIGNAL \button_up_2~input_o\ : std_logic;
SIGNAL \mov_right|next_state.click_r~0_combout\ : std_logic;
SIGNAL \mov_right|pr_state.click_r~q\ : std_logic;
SIGNAL \mov_right|Selector9~0_combout\ : std_logic;
SIGNAL \mov_right|pr_state.wait_second~q\ : std_logic;
SIGNAL \mov_right|Selector8~0_combout\ : std_logic;
SIGNAL \mov_right|Selector8~1_combout\ : std_logic;
SIGNAL \mov_right|pr_state.unclicked~q\ : std_logic;
SIGNAL \mov_right|next_state.clcik_l~0_combout\ : std_logic;
SIGNAL \mov_right|pr_state.clcik_l~q\ : std_logic;
SIGNAL \mov_right|Selector7~0_combout\ : std_logic;
SIGNAL \mov_right|Selector0~0_combout\ : std_logic;
SIGNAL \mov_right|Selector1~0_combout\ : std_logic;
SIGNAL \mov_right|Selector5~0_combout\ : std_logic;
SIGNAL \mov_right|Selector7~1_combout\ : std_logic;
SIGNAL \mov_right|Selector6~0_combout\ : std_logic;
SIGNAL \mov_right|next_pos[6]~0_combout\ : std_logic;
SIGNAL \mov_right|next_pos[6]~1_combout\ : std_logic;
SIGNAL \mov_right|next_pos[6]~2_combout\ : std_logic;
SIGNAL \mov_right|next_pos[6]~3_combout\ : std_logic;
SIGNAL \mov_right|Selector2~0_combout\ : std_logic;
SIGNAL \mov_right|Selector3~0_combout\ : std_logic;
SIGNAL \mov_right|Selector4~0_combout\ : std_logic;
SIGNAL \game|Equal3~1_combout\ : std_logic;
SIGNAL \game|Equal3~3_combout\ : std_logic;
SIGNAL \game|Equal3~0_combout\ : std_logic;
SIGNAL \game|Equal3~2_combout\ : std_logic;
SIGNAL \game|Equal3~4_combout\ : std_logic;
SIGNAL \game|temp_left_righ~0_combout\ : std_logic;
SIGNAL \game|temp_left_righ~combout\ : std_logic;
SIGNAL \game|left_righ~feeder_combout\ : std_logic;
SIGNAL \game|left_righ~q\ : std_logic;
SIGNAL \ball|next_state.move_left~0_combout\ : std_logic;
SIGNAL \ball|pr_state.move_left~q\ : std_logic;
SIGNAL \ball|Selector6~0_combout\ : std_logic;
SIGNAL \ball|Selector5~0_combout\ : std_logic;
SIGNAL \ball|Selector4~0_combout\ : std_logic;
SIGNAL \ball|Selector3~0_combout\ : std_logic;
SIGNAL \ball|Selector2~0_combout\ : std_logic;
SIGNAL \matrix_led|counter_1|temp[0]~3_combout\ : std_logic;
SIGNAL \matrix_led|counter_1|temp[1]~2_combout\ : std_logic;
SIGNAL \matrix_led|counter_1|temp[2]~1_combout\ : std_logic;
SIGNAL \matrix_led|counter_1|temp[3]~0_combout\ : std_logic;
SIGNAL \matrix_led|counter_1|Equal0~0_combout\ : std_logic;
SIGNAL \matrix_led|next_state.draw2~0_combout\ : std_logic;
SIGNAL \matrix_led|pr_state.draw2~q\ : std_logic;
SIGNAL \matrix_led|Selector17~0_combout\ : std_logic;
SIGNAL \matrix_led|pr_state.wait_second2~q\ : std_logic;
SIGNAL \matrix_led|next_state.draw1~0_combout\ : std_logic;
SIGNAL \matrix_led|pr_state.draw1~q\ : std_logic;
SIGNAL \matrix_led|Selector16~0_combout\ : std_logic;
SIGNAL \matrix_led|pr_state.wait_second1~q\ : std_logic;
SIGNAL \matrix_led|temp_x[0]~2_combout\ : std_logic;
SIGNAL \matrix_led|temp_x[1]~3_combout\ : std_logic;
SIGNAL \matrix_led|temp_x[2]~4_combout\ : std_logic;
SIGNAL \matrix_led|temp_x[3]~5_combout\ : std_logic;
SIGNAL \matrix_led|temp_x[4]~6_combout\ : std_logic;
SIGNAL \matrix_led|temp_x[5]~7_combout\ : std_logic;
SIGNAL \matrix_led|temp_x[6]~8_combout\ : std_logic;
SIGNAL \matrix_led|temp_x[7]~9_combout\ : std_logic;
SIGNAL \matrix_led|Selector7~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector6~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector5~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector4~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector3~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector2~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector1~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector0~0_combout\ : std_logic;
SIGNAL \matrix_led|temp_x2[0]~0_combout\ : std_logic;
SIGNAL \matrix_led|temp_x2[1]~1_combout\ : std_logic;
SIGNAL \matrix_led|temp_x2[2]~2_combout\ : std_logic;
SIGNAL \matrix_led|temp_x2[3]~3_combout\ : std_logic;
SIGNAL \matrix_led|temp_x2[4]~4_combout\ : std_logic;
SIGNAL \matrix_led|temp_x2[5]~5_combout\ : std_logic;
SIGNAL \matrix_led|temp_x2[6]~6_combout\ : std_logic;
SIGNAL \matrix_led|temp_x2[7]~7_combout\ : std_logic;
SIGNAL \matrix_led|Selector15~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector14~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector13~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector12~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector11~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector10~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector9~0_combout\ : std_logic;
SIGNAL \matrix_led|Selector8~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyleft|Mux6~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyleft|Mux5~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyleft|Mux4~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyleft|Mux3~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyleft|Mux2~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyleft|Mux1~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyleft|Mux0~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyright|Mux6~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyright|Mux5~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyright|Mux4~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyright|Mux3~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyright|Mux2~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyright|Mux1~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyright|Mux0~0_combout\ : std_logic;
SIGNAL \mov_right|next_pos\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \game|points_Right\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \game|points_pyLeft\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ball|counter1|temp\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \matrix_led|counter_1|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \matrix_led|leds_y2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \game|direction\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \game|points_Left\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \game|points_pyRight\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \matrix_led|leds_x\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \game|counter1|temp\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \mov_left|counter_1|temp\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \game|temp_direction\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \matrix_led|leds_x2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \matrix_led|leds_y1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mov_left|next_pos\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ball|ball_y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ball|ball_x\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ball|ALT_INV_temporal_ball_x~2_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyright|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \bin_to_sseg_pyleft|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_ena <= ena;
ww_rst <= rst;
ww_button_up <= button_up;
ww_button_down <= button_down;
ww_button_up_2 <= button_up_2;
ww_button_down_2 <= button_down_2;
leds_x <= ww_leds_x;
leds_y1 <= ww_leds_y1;
leds_x2 <= ww_leds_x2;
leds_y2 <= ww_leds_y2;
pointsPLeft <= ww_pointsPLeft;
pointsPRight <= ww_pointsPRight;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ball|ALT_INV_temporal_ball_x~2_combout\ <= NOT \ball|temporal_ball_x~2_combout\;
\bin_to_sseg_pyright|ALT_INV_Mux0~0_combout\ <= NOT \bin_to_sseg_pyright|Mux0~0_combout\;
\bin_to_sseg_pyleft|ALT_INV_Mux0~0_combout\ <= NOT \bin_to_sseg_pyleft|Mux0~0_combout\;

-- Location: IOOBUF_X1_Y0_N16
\leds_x[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x\(0),
	devoe => ww_devoe,
	o => \leds_x[0]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\leds_x[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x\(1),
	devoe => ww_devoe,
	o => \leds_x[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\leds_x[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x\(2),
	devoe => ww_devoe,
	o => \leds_x[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\leds_x[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x\(3),
	devoe => ww_devoe,
	o => \leds_x[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\leds_x[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x\(4),
	devoe => ww_devoe,
	o => \leds_x[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\leds_x[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x\(5),
	devoe => ww_devoe,
	o => \leds_x[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\leds_x[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x\(6),
	devoe => ww_devoe,
	o => \leds_x[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\leds_x[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x\(7),
	devoe => ww_devoe,
	o => \leds_x[7]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\leds_y1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y1\(0),
	devoe => ww_devoe,
	o => \leds_y1[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\leds_y1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y1\(1),
	devoe => ww_devoe,
	o => \leds_y1[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\leds_y1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y1\(2),
	devoe => ww_devoe,
	o => \leds_y1[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\leds_y1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y1\(3),
	devoe => ww_devoe,
	o => \leds_y1[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\leds_y1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y1\(4),
	devoe => ww_devoe,
	o => \leds_y1[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\leds_y1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y1\(5),
	devoe => ww_devoe,
	o => \leds_y1[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\leds_y1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y1\(6),
	devoe => ww_devoe,
	o => \leds_y1[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\leds_y1[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y1\(7),
	devoe => ww_devoe,
	o => \leds_y1[7]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\leds_x2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x2\(0),
	devoe => ww_devoe,
	o => \leds_x2[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N30
\leds_x2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x2\(1),
	devoe => ww_devoe,
	o => \leds_x2[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\leds_x2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x2\(2),
	devoe => ww_devoe,
	o => \leds_x2[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\leds_x2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x2\(3),
	devoe => ww_devoe,
	o => \leds_x2[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\leds_x2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x2\(4),
	devoe => ww_devoe,
	o => \leds_x2[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\leds_x2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x2\(5),
	devoe => ww_devoe,
	o => \leds_x2[5]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\leds_x2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x2\(6),
	devoe => ww_devoe,
	o => \leds_x2[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds_x2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_x2\(7),
	devoe => ww_devoe,
	o => \leds_x2[7]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\leds_y2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y2\(0),
	devoe => ww_devoe,
	o => \leds_y2[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\leds_y2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y2\(1),
	devoe => ww_devoe,
	o => \leds_y2[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\leds_y2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y2\(2),
	devoe => ww_devoe,
	o => \leds_y2[2]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\leds_y2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y2\(3),
	devoe => ww_devoe,
	o => \leds_y2[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\leds_y2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y2\(4),
	devoe => ww_devoe,
	o => \leds_y2[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\leds_y2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y2\(5),
	devoe => ww_devoe,
	o => \leds_y2[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\leds_y2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y2\(6),
	devoe => ww_devoe,
	o => \leds_y2[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\leds_y2[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \matrix_led|leds_y2\(7),
	devoe => ww_devoe,
	o => \leds_y2[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\pointsPLeft[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyleft|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \pointsPLeft[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\pointsPLeft[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyleft|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \pointsPLeft[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\pointsPLeft[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyleft|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \pointsPLeft[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\pointsPLeft[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyleft|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \pointsPLeft[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\pointsPLeft[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyleft|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \pointsPLeft[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\pointsPLeft[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyleft|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \pointsPLeft[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\pointsPLeft[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyleft|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \pointsPLeft[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\pointsPRight[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyright|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \pointsPRight[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\pointsPRight[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyright|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \pointsPRight[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\pointsPRight[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyright|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \pointsPRight[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\pointsPRight[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyright|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \pointsPRight[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\pointsPRight[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyright|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \pointsPRight[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\pointsPRight[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyright|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \pointsPRight[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\pointsPRight[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bin_to_sseg_pyright|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \pointsPRight[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X19_Y11_N8
\ball|counter1|temp[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[0]~24_combout\ = \ball|counter1|temp\(0) $ (VCC)
-- \ball|counter1|temp[0]~25\ = CARRY(\ball|counter1|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(0),
	datad => VCC,
	combout => \ball|counter1|temp[0]~24_combout\,
	cout => \ball|counter1|temp[0]~25\);

-- Location: LCCOMB_X20_Y9_N30
\game|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal4~0_combout\ = (!\ball|ball_x\(4) & (!\ball|ball_x\(5) & (!\ball|ball_x\(7) & !\ball|ball_x\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(4),
	datab => \ball|ball_x\(5),
	datac => \ball|ball_x\(7),
	datad => \ball|ball_x\(6),
	combout => \game|Equal4~0_combout\);

-- Location: LCCOMB_X20_Y9_N28
\game|Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal4~1_combout\ = (!\ball|ball_x\(2) & (\game|Equal4~0_combout\ & !\ball|ball_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(2),
	datac => \game|Equal4~0_combout\,
	datad => \ball|ball_x\(3),
	combout => \game|Equal4~1_combout\);

-- Location: LCCOMB_X19_Y12_N6
\game|Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal4~2_combout\ = (!\ball|ball_x\(1) & (\ball|ball_x\(0) & \game|Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(1),
	datac => \ball|ball_x\(0),
	datad => \game|Equal4~1_combout\,
	combout => \game|Equal4~2_combout\);

-- Location: LCCOMB_X19_Y12_N22
\game|autoResetBall~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|autoResetBall~0_combout\ = (\game|Equal4~2_combout\) # ((\game|Equal5~1_combout\ & (\ball|ball_x\(15) & !\ball|ball_x\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|Equal5~1_combout\,
	datab => \ball|ball_x\(15),
	datac => \ball|ball_x\(14),
	datad => \game|Equal4~2_combout\,
	combout => \game|autoResetBall~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X19_Y12_N25
\game|autoResetBall\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \game|autoResetBall~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|autoResetBall~q\);

-- Location: LCCOMB_X19_Y12_N24
\game|Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal5~2_combout\ = (\ball|ball_x\(15) & !\ball|ball_x\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(15),
	datad => \ball|ball_x\(14),
	combout => \game|Equal5~2_combout\);

-- Location: LCCOMB_X19_Y12_N26
\game|next_state2.add_right~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|next_state2.add_right~0_combout\ = (!\game|pr_state2.init~q\ & (\game|Equal5~1_combout\ & (\game|Equal5~2_combout\ & !\game|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|pr_state2.init~q\,
	datab => \game|Equal5~1_combout\,
	datac => \game|Equal5~2_combout\,
	datad => \game|Equal4~2_combout\,
	combout => \game|next_state2.add_right~0_combout\);

-- Location: FF_X19_Y12_N27
\game|pr_state2.add_right\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|next_state2.add_right~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|pr_state2.add_right~q\);

-- Location: LCCOMB_X22_Y20_N8
\game|counter1|temp[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[0]~24_combout\ = \game|counter1|temp\(0) $ (VCC)
-- \game|counter1|temp[0]~25\ = CARRY(\game|counter1|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(0),
	datad => VCC,
	combout => \game|counter1|temp[0]~24_combout\,
	cout => \game|counter1|temp[0]~25\);

-- Location: LCCOMB_X22_Y19_N2
\game|counter1|temp[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[13]~50_combout\ = (\game|counter1|temp\(13) & (!\game|counter1|temp[12]~49\)) # (!\game|counter1|temp\(13) & ((\game|counter1|temp[12]~49\) # (GND)))
-- \game|counter1|temp[13]~51\ = CARRY((!\game|counter1|temp[12]~49\) # (!\game|counter1|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(13),
	datad => VCC,
	cin => \game|counter1|temp[12]~49\,
	combout => \game|counter1|temp[13]~50_combout\,
	cout => \game|counter1|temp[13]~51\);

-- Location: LCCOMB_X22_Y19_N4
\game|counter1|temp[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[14]~52_combout\ = (\game|counter1|temp\(14) & (\game|counter1|temp[13]~51\ $ (GND))) # (!\game|counter1|temp\(14) & (!\game|counter1|temp[13]~51\ & VCC))
-- \game|counter1|temp[14]~53\ = CARRY((\game|counter1|temp\(14) & !\game|counter1|temp[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(14),
	datad => VCC,
	cin => \game|counter1|temp[13]~51\,
	combout => \game|counter1|temp[14]~52_combout\,
	cout => \game|counter1|temp[14]~53\);

-- Location: IOIBUF_X0_Y24_N1
\ena~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: FF_X22_Y19_N5
\game|counter1|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[14]~52_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(14));

-- Location: LCCOMB_X22_Y19_N6
\game|counter1|temp[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[15]~54_combout\ = (\game|counter1|temp\(15) & (!\game|counter1|temp[14]~53\)) # (!\game|counter1|temp\(15) & ((\game|counter1|temp[14]~53\) # (GND)))
-- \game|counter1|temp[15]~55\ = CARRY((!\game|counter1|temp[14]~53\) # (!\game|counter1|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(15),
	datad => VCC,
	cin => \game|counter1|temp[14]~53\,
	combout => \game|counter1|temp[15]~54_combout\,
	cout => \game|counter1|temp[15]~55\);

-- Location: FF_X22_Y19_N7
\game|counter1|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[15]~54_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(15));

-- Location: LCCOMB_X22_Y19_N8
\game|counter1|temp[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[16]~56_combout\ = (\game|counter1|temp\(16) & (\game|counter1|temp[15]~55\ $ (GND))) # (!\game|counter1|temp\(16) & (!\game|counter1|temp[15]~55\ & VCC))
-- \game|counter1|temp[16]~57\ = CARRY((\game|counter1|temp\(16) & !\game|counter1|temp[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(16),
	datad => VCC,
	cin => \game|counter1|temp[15]~55\,
	combout => \game|counter1|temp[16]~56_combout\,
	cout => \game|counter1|temp[16]~57\);

-- Location: FF_X22_Y19_N9
\game|counter1|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[16]~56_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(16));

-- Location: LCCOMB_X22_Y19_N10
\game|counter1|temp[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[17]~58_combout\ = (\game|counter1|temp\(17) & (!\game|counter1|temp[16]~57\)) # (!\game|counter1|temp\(17) & ((\game|counter1|temp[16]~57\) # (GND)))
-- \game|counter1|temp[17]~59\ = CARRY((!\game|counter1|temp[16]~57\) # (!\game|counter1|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(17),
	datad => VCC,
	cin => \game|counter1|temp[16]~57\,
	combout => \game|counter1|temp[17]~58_combout\,
	cout => \game|counter1|temp[17]~59\);

-- Location: FF_X22_Y19_N11
\game|counter1|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[17]~58_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(17));

-- Location: LCCOMB_X22_Y19_N24
\game|counter1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal0~2_combout\ = (!\game|counter1|temp\(15) & (!\game|counter1|temp\(12) & (!\game|counter1|temp\(0) & !\game|counter1|temp\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(15),
	datab => \game|counter1|temp\(12),
	datac => \game|counter1|temp\(0),
	datad => \game|counter1|temp\(17),
	combout => \game|counter1|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y19_N12
\game|counter1|temp[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[18]~60_combout\ = (\game|counter1|temp\(18) & (\game|counter1|temp[17]~59\ $ (GND))) # (!\game|counter1|temp\(18) & (!\game|counter1|temp[17]~59\ & VCC))
-- \game|counter1|temp[18]~61\ = CARRY((\game|counter1|temp\(18) & !\game|counter1|temp[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(18),
	datad => VCC,
	cin => \game|counter1|temp[17]~59\,
	combout => \game|counter1|temp[18]~60_combout\,
	cout => \game|counter1|temp[18]~61\);

-- Location: FF_X22_Y19_N13
\game|counter1|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[18]~60_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(18));

-- Location: LCCOMB_X22_Y19_N14
\game|counter1|temp[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[19]~62_combout\ = (\game|counter1|temp\(19) & (!\game|counter1|temp[18]~61\)) # (!\game|counter1|temp\(19) & ((\game|counter1|temp[18]~61\) # (GND)))
-- \game|counter1|temp[19]~63\ = CARRY((!\game|counter1|temp[18]~61\) # (!\game|counter1|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(19),
	datad => VCC,
	cin => \game|counter1|temp[18]~61\,
	combout => \game|counter1|temp[19]~62_combout\,
	cout => \game|counter1|temp[19]~63\);

-- Location: FF_X22_Y19_N15
\game|counter1|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[19]~62_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(19));

-- Location: LCCOMB_X22_Y19_N16
\game|counter1|temp[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[20]~64_combout\ = (\game|counter1|temp\(20) & (\game|counter1|temp[19]~63\ $ (GND))) # (!\game|counter1|temp\(20) & (!\game|counter1|temp[19]~63\ & VCC))
-- \game|counter1|temp[20]~65\ = CARRY((\game|counter1|temp\(20) & !\game|counter1|temp[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(20),
	datad => VCC,
	cin => \game|counter1|temp[19]~63\,
	combout => \game|counter1|temp[20]~64_combout\,
	cout => \game|counter1|temp[20]~65\);

-- Location: FF_X22_Y19_N17
\game|counter1|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[20]~64_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(20));

-- Location: LCCOMB_X22_Y19_N18
\game|counter1|temp[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[21]~66_combout\ = (\game|counter1|temp\(21) & (!\game|counter1|temp[20]~65\)) # (!\game|counter1|temp\(21) & ((\game|counter1|temp[20]~65\) # (GND)))
-- \game|counter1|temp[21]~67\ = CARRY((!\game|counter1|temp[20]~65\) # (!\game|counter1|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(21),
	datad => VCC,
	cin => \game|counter1|temp[20]~65\,
	combout => \game|counter1|temp[21]~66_combout\,
	cout => \game|counter1|temp[21]~67\);

-- Location: FF_X22_Y19_N19
\game|counter1|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[21]~66_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(21));

-- Location: LCCOMB_X22_Y19_N20
\game|counter1|temp[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[22]~68_combout\ = (\game|counter1|temp\(22) & (\game|counter1|temp[21]~67\ $ (GND))) # (!\game|counter1|temp\(22) & (!\game|counter1|temp[21]~67\ & VCC))
-- \game|counter1|temp[22]~69\ = CARRY((\game|counter1|temp\(22) & !\game|counter1|temp[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(22),
	datad => VCC,
	cin => \game|counter1|temp[21]~67\,
	combout => \game|counter1|temp[22]~68_combout\,
	cout => \game|counter1|temp[22]~69\);

-- Location: FF_X22_Y19_N21
\game|counter1|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[22]~68_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(22));

-- Location: LCCOMB_X22_Y19_N28
\game|counter1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal0~0_combout\ = (\game|counter1|temp\(18) & (\game|counter1|temp\(14) & (\game|counter1|temp\(19) & \game|counter1|temp\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(18),
	datab => \game|counter1|temp\(14),
	datac => \game|counter1|temp\(19),
	datad => \game|counter1|temp\(22),
	combout => \game|counter1|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\game|counter1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal0~1_combout\ = (!\game|counter1|temp\(16) & (!\game|counter1|temp\(13) & (!\game|counter1|temp\(3) & !\game|counter1|temp\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(16),
	datab => \game|counter1|temp\(13),
	datac => \game|counter1|temp\(3),
	datad => \game|counter1|temp\(20),
	combout => \game|counter1|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y20_N30
\game|counter1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal0~4_combout\ = (!\game|counter1|temp\(4) & (!\game|counter1|temp\(5) & (!\game|counter1|temp\(10) & !\game|counter1|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(4),
	datab => \game|counter1|temp\(5),
	datac => \game|counter1|temp\(10),
	datad => \game|counter1|temp\(7),
	combout => \game|counter1|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y19_N22
\game|counter1|temp[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[23]~70_combout\ = \game|counter1|temp\(23) $ (\game|counter1|temp[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(23),
	cin => \game|counter1|temp[22]~69\,
	combout => \game|counter1|temp[23]~70_combout\);

-- Location: FF_X22_Y19_N23
\game|counter1|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[23]~70_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(23));

-- Location: LCCOMB_X22_Y20_N4
\game|counter1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal0~5_combout\ = (!\game|counter1|temp\(1) & (!\game|counter1|temp\(2) & (!\game|counter1|temp\(21) & !\game|counter1|temp\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(1),
	datab => \game|counter1|temp\(2),
	datac => \game|counter1|temp\(21),
	datad => \game|counter1|temp\(23),
	combout => \game|counter1|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y20_N28
\game|counter1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal0~3_combout\ = (\game|counter1|temp\(9) & (\game|counter1|temp\(8) & (\game|counter1|temp\(6) & \game|counter1|temp\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(9),
	datab => \game|counter1|temp\(8),
	datac => \game|counter1|temp\(6),
	datad => \game|counter1|temp\(11),
	combout => \game|counter1|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y20_N2
\game|counter1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal0~6_combout\ = (\game|counter1|Equal0~4_combout\ & (\game|counter1|Equal0~5_combout\ & \game|counter1|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|Equal0~4_combout\,
	datac => \game|counter1|Equal0~5_combout\,
	datad => \game|counter1|Equal0~3_combout\,
	combout => \game|counter1|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y20_N0
\game|counter1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal0~7_combout\ = (\game|counter1|Equal0~2_combout\ & (\game|counter1|Equal0~0_combout\ & (\game|counter1|Equal0~1_combout\ & \game|counter1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|Equal0~2_combout\,
	datab => \game|counter1|Equal0~0_combout\,
	datac => \game|counter1|Equal0~1_combout\,
	datad => \game|counter1|Equal0~6_combout\,
	combout => \game|counter1|Equal0~7_combout\);

-- Location: FF_X22_Y20_N9
\game|counter1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[0]~24_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(0));

-- Location: LCCOMB_X22_Y20_N10
\game|counter1|temp[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[1]~26_combout\ = (\game|counter1|temp\(1) & (!\game|counter1|temp[0]~25\)) # (!\game|counter1|temp\(1) & ((\game|counter1|temp[0]~25\) # (GND)))
-- \game|counter1|temp[1]~27\ = CARRY((!\game|counter1|temp[0]~25\) # (!\game|counter1|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(1),
	datad => VCC,
	cin => \game|counter1|temp[0]~25\,
	combout => \game|counter1|temp[1]~26_combout\,
	cout => \game|counter1|temp[1]~27\);

-- Location: FF_X22_Y20_N11
\game|counter1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[1]~26_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(1));

-- Location: LCCOMB_X22_Y20_N12
\game|counter1|temp[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[2]~28_combout\ = (\game|counter1|temp\(2) & (\game|counter1|temp[1]~27\ $ (GND))) # (!\game|counter1|temp\(2) & (!\game|counter1|temp[1]~27\ & VCC))
-- \game|counter1|temp[2]~29\ = CARRY((\game|counter1|temp\(2) & !\game|counter1|temp[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(2),
	datad => VCC,
	cin => \game|counter1|temp[1]~27\,
	combout => \game|counter1|temp[2]~28_combout\,
	cout => \game|counter1|temp[2]~29\);

-- Location: FF_X22_Y20_N13
\game|counter1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[2]~28_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(2));

-- Location: LCCOMB_X22_Y20_N14
\game|counter1|temp[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[3]~30_combout\ = (\game|counter1|temp\(3) & (!\game|counter1|temp[2]~29\)) # (!\game|counter1|temp\(3) & ((\game|counter1|temp[2]~29\) # (GND)))
-- \game|counter1|temp[3]~31\ = CARRY((!\game|counter1|temp[2]~29\) # (!\game|counter1|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(3),
	datad => VCC,
	cin => \game|counter1|temp[2]~29\,
	combout => \game|counter1|temp[3]~30_combout\,
	cout => \game|counter1|temp[3]~31\);

-- Location: FF_X22_Y20_N15
\game|counter1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[3]~30_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(3));

-- Location: LCCOMB_X22_Y20_N16
\game|counter1|temp[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[4]~32_combout\ = (\game|counter1|temp\(4) & (\game|counter1|temp[3]~31\ $ (GND))) # (!\game|counter1|temp\(4) & (!\game|counter1|temp[3]~31\ & VCC))
-- \game|counter1|temp[4]~33\ = CARRY((\game|counter1|temp\(4) & !\game|counter1|temp[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(4),
	datad => VCC,
	cin => \game|counter1|temp[3]~31\,
	combout => \game|counter1|temp[4]~32_combout\,
	cout => \game|counter1|temp[4]~33\);

-- Location: FF_X22_Y20_N17
\game|counter1|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[4]~32_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(4));

-- Location: LCCOMB_X22_Y20_N18
\game|counter1|temp[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[5]~34_combout\ = (\game|counter1|temp\(5) & (!\game|counter1|temp[4]~33\)) # (!\game|counter1|temp\(5) & ((\game|counter1|temp[4]~33\) # (GND)))
-- \game|counter1|temp[5]~35\ = CARRY((!\game|counter1|temp[4]~33\) # (!\game|counter1|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(5),
	datad => VCC,
	cin => \game|counter1|temp[4]~33\,
	combout => \game|counter1|temp[5]~34_combout\,
	cout => \game|counter1|temp[5]~35\);

-- Location: FF_X22_Y20_N19
\game|counter1|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[5]~34_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(5));

-- Location: LCCOMB_X22_Y20_N20
\game|counter1|temp[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[6]~36_combout\ = (\game|counter1|temp\(6) & (\game|counter1|temp[5]~35\ $ (GND))) # (!\game|counter1|temp\(6) & (!\game|counter1|temp[5]~35\ & VCC))
-- \game|counter1|temp[6]~37\ = CARRY((\game|counter1|temp\(6) & !\game|counter1|temp[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(6),
	datad => VCC,
	cin => \game|counter1|temp[5]~35\,
	combout => \game|counter1|temp[6]~36_combout\,
	cout => \game|counter1|temp[6]~37\);

-- Location: FF_X22_Y20_N21
\game|counter1|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[6]~36_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(6));

-- Location: LCCOMB_X22_Y20_N22
\game|counter1|temp[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[7]~38_combout\ = (\game|counter1|temp\(7) & (!\game|counter1|temp[6]~37\)) # (!\game|counter1|temp\(7) & ((\game|counter1|temp[6]~37\) # (GND)))
-- \game|counter1|temp[7]~39\ = CARRY((!\game|counter1|temp[6]~37\) # (!\game|counter1|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(7),
	datad => VCC,
	cin => \game|counter1|temp[6]~37\,
	combout => \game|counter1|temp[7]~38_combout\,
	cout => \game|counter1|temp[7]~39\);

-- Location: FF_X22_Y20_N23
\game|counter1|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[7]~38_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(7));

-- Location: LCCOMB_X22_Y20_N24
\game|counter1|temp[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[8]~40_combout\ = (\game|counter1|temp\(8) & (\game|counter1|temp[7]~39\ $ (GND))) # (!\game|counter1|temp\(8) & (!\game|counter1|temp[7]~39\ & VCC))
-- \game|counter1|temp[8]~41\ = CARRY((\game|counter1|temp\(8) & !\game|counter1|temp[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(8),
	datad => VCC,
	cin => \game|counter1|temp[7]~39\,
	combout => \game|counter1|temp[8]~40_combout\,
	cout => \game|counter1|temp[8]~41\);

-- Location: FF_X22_Y20_N25
\game|counter1|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[8]~40_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(8));

-- Location: LCCOMB_X22_Y20_N26
\game|counter1|temp[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[9]~42_combout\ = (\game|counter1|temp\(9) & (!\game|counter1|temp[8]~41\)) # (!\game|counter1|temp\(9) & ((\game|counter1|temp[8]~41\) # (GND)))
-- \game|counter1|temp[9]~43\ = CARRY((!\game|counter1|temp[8]~41\) # (!\game|counter1|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(9),
	datad => VCC,
	cin => \game|counter1|temp[8]~41\,
	combout => \game|counter1|temp[9]~42_combout\,
	cout => \game|counter1|temp[9]~43\);

-- Location: FF_X22_Y20_N27
\game|counter1|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[9]~42_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(9));

-- Location: LCCOMB_X22_Y20_N28
\game|counter1|temp[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[10]~44_combout\ = (\game|counter1|temp\(10) & (\game|counter1|temp[9]~43\ $ (GND))) # (!\game|counter1|temp\(10) & (!\game|counter1|temp[9]~43\ & VCC))
-- \game|counter1|temp[10]~45\ = CARRY((\game|counter1|temp\(10) & !\game|counter1|temp[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(10),
	datad => VCC,
	cin => \game|counter1|temp[9]~43\,
	combout => \game|counter1|temp[10]~44_combout\,
	cout => \game|counter1|temp[10]~45\);

-- Location: FF_X22_Y20_N29
\game|counter1|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[10]~44_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(10));

-- Location: LCCOMB_X22_Y20_N30
\game|counter1|temp[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[11]~46_combout\ = (\game|counter1|temp\(11) & (!\game|counter1|temp[10]~45\)) # (!\game|counter1|temp\(11) & ((\game|counter1|temp[10]~45\) # (GND)))
-- \game|counter1|temp[11]~47\ = CARRY((!\game|counter1|temp[10]~45\) # (!\game|counter1|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(11),
	datad => VCC,
	cin => \game|counter1|temp[10]~45\,
	combout => \game|counter1|temp[11]~46_combout\,
	cout => \game|counter1|temp[11]~47\);

-- Location: FF_X22_Y20_N31
\game|counter1|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[11]~46_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(11));

-- Location: LCCOMB_X22_Y19_N0
\game|counter1|temp[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|temp[12]~48_combout\ = (\game|counter1|temp\(12) & (\game|counter1|temp[11]~47\ $ (GND))) # (!\game|counter1|temp\(12) & (!\game|counter1|temp[11]~47\ & VCC))
-- \game|counter1|temp[12]~49\ = CARRY((\game|counter1|temp\(12) & !\game|counter1|temp[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \game|counter1|temp\(12),
	datad => VCC,
	cin => \game|counter1|temp[11]~47\,
	combout => \game|counter1|temp[12]~48_combout\,
	cout => \game|counter1|temp[12]~49\);

-- Location: FF_X22_Y19_N1
\game|counter1|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[12]~48_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(12));

-- Location: FF_X22_Y19_N3
\game|counter1|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|counter1|temp[13]~50_combout\,
	clrn => \rst~input_o\,
	sclr => \game|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|counter1|temp\(13));

-- Location: LCCOMB_X23_Y19_N0
\game|counter1|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal1~3_combout\ = (\game|counter1|temp\(13) & (\game|counter1|temp\(15) & (\game|counter1|temp\(12) & \game|counter1|temp\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(13),
	datab => \game|counter1|temp\(15),
	datac => \game|counter1|temp\(12),
	datad => \game|counter1|temp\(16),
	combout => \game|counter1|Equal1~3_combout\);

-- Location: LCCOMB_X22_Y19_N26
\game|counter1|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal1~4_combout\ = (\game|counter1|temp\(17) & (\game|counter1|temp\(20) & (\game|counter1|temp\(23) & \game|counter1|temp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(17),
	datab => \game|counter1|temp\(20),
	datac => \game|counter1|temp\(23),
	datad => \game|counter1|temp\(21),
	combout => \game|counter1|Equal1~4_combout\);

-- Location: LCCOMB_X23_Y20_N6
\game|counter1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal1~1_combout\ = (\game|counter1|temp\(4) & (\game|counter1|temp\(5) & (\game|counter1|temp\(10) & \game|counter1|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(4),
	datab => \game|counter1|temp\(5),
	datac => \game|counter1|temp\(10),
	datad => \game|counter1|temp\(7),
	combout => \game|counter1|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y20_N8
\game|counter1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal1~0_combout\ = (\game|counter1|temp\(3) & (\game|counter1|temp\(0) & (\game|counter1|temp\(1) & \game|counter1|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|temp\(3),
	datab => \game|counter1|temp\(0),
	datac => \game|counter1|temp\(1),
	datad => \game|counter1|temp\(2),
	combout => \game|counter1|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y20_N20
\game|counter1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|Equal1~2_combout\ = (\game|counter1|Equal1~1_combout\ & (\game|counter1|Equal0~3_combout\ & (\game|counter1|Equal1~0_combout\ & \game|counter1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|Equal1~1_combout\,
	datab => \game|counter1|Equal0~3_combout\,
	datac => \game|counter1|Equal1~0_combout\,
	datad => \game|counter1|Equal0~0_combout\,
	combout => \game|counter1|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y20_N6
\game|counter1|max_tick~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|counter1|max_tick~0_combout\ = (\game|counter1|Equal0~7_combout\) # ((\game|counter1|Equal1~3_combout\ & (\game|counter1|Equal1~4_combout\ & \game|counter1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|counter1|Equal1~3_combout\,
	datab => \game|counter1|Equal1~4_combout\,
	datac => \game|counter1|Equal1~2_combout\,
	datad => \game|counter1|Equal0~7_combout\,
	combout => \game|counter1|max_tick~0_combout\);

-- Location: LCCOMB_X21_Y20_N8
\game|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Selector3~0_combout\ = (\game|pr_state2.add_left~q\) # ((\game|pr_state2.add_right~q\) # ((\game|pr_state2.wait_time~q\ & !\game|counter1|max_tick~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|pr_state2.add_left~q\,
	datab => \game|pr_state2.add_right~q\,
	datac => \game|pr_state2.wait_time~q\,
	datad => \game|counter1|max_tick~0_combout\,
	combout => \game|Selector3~0_combout\);

-- Location: FF_X21_Y20_N9
\game|pr_state2.wait_time\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|Selector3~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|pr_state2.wait_time~q\);

-- Location: LCCOMB_X19_Y12_N20
\game|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Selector2~0_combout\ = (\game|autoResetBall~0_combout\ & (((!\game|counter1|max_tick~0_combout\)) # (!\game|pr_state2.wait_time~q\))) # (!\game|autoResetBall~0_combout\ & (\game|pr_state2.init~q\ & ((!\game|counter1|max_tick~0_combout\) # 
-- (!\game|pr_state2.wait_time~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|autoResetBall~0_combout\,
	datab => \game|pr_state2.wait_time~q\,
	datac => \game|pr_state2.init~q\,
	datad => \game|counter1|max_tick~0_combout\,
	combout => \game|Selector2~0_combout\);

-- Location: FF_X19_Y12_N21
\game|pr_state2.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|Selector2~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|pr_state2.init~q\);

-- Location: LCCOMB_X19_Y12_N8
\game|next_state2.add_left~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|next_state2.add_left~0_combout\ = (!\game|pr_state2.init~q\ & (!\ball|ball_x\(1) & (\ball|ball_x\(0) & \game|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|pr_state2.init~q\,
	datab => \ball|ball_x\(1),
	datac => \ball|ball_x\(0),
	datad => \game|Equal4~1_combout\,
	combout => \game|next_state2.add_left~0_combout\);

-- Location: FF_X19_Y12_N9
\game|pr_state2.add_left\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|next_state2.add_left~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|pr_state2.add_left~q\);

-- Location: LCCOMB_X27_Y28_N14
\game|points_Left_next[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Left_next[0]~0_combout\ = \game|points_Left\(0) $ (\game|pr_state2.add_left~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_Left\(0),
	datad => \game|pr_state2.add_left~q\,
	combout => \game|points_Left_next[0]~0_combout\);

-- Location: FF_X27_Y28_N31
\game|points_Left[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \game|points_Left_next[0]~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_Left\(0));

-- Location: LCCOMB_X27_Y28_N2
\game|points_Left_next[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Left_next[1]~1_combout\ = \game|points_Left\(1) $ (((\game|points_Left\(0) & \game|pr_state2.add_left~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_Left\(0),
	datac => \game|points_Left\(1),
	datad => \game|pr_state2.add_left~q\,
	combout => \game|points_Left_next[1]~1_combout\);

-- Location: LCCOMB_X27_Y28_N4
\game|points_Left[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Left[1]~feeder_combout\ = \game|points_Left_next[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game|points_Left_next[1]~1_combout\,
	combout => \game|points_Left[1]~feeder_combout\);

-- Location: FF_X27_Y28_N5
\game|points_Left[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Left[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_Left\(1));

-- Location: LCCOMB_X27_Y28_N28
\game|points_Left_next[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Left_next[2]~2_combout\ = \game|points_Left\(2) $ (((\game|points_Left\(1) & (\game|points_Left\(0) & \game|pr_state2.add_left~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_Left\(2),
	datab => \game|points_Left\(1),
	datac => \game|points_Left\(0),
	datad => \game|pr_state2.add_left~q\,
	combout => \game|points_Left_next[2]~2_combout\);

-- Location: LCCOMB_X27_Y28_N26
\game|points_Left[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Left[2]~feeder_combout\ = \game|points_Left_next[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game|points_Left_next[2]~2_combout\,
	combout => \game|points_Left[2]~feeder_combout\);

-- Location: FF_X27_Y28_N27
\game|points_Left[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Left[2]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_Left\(2));

-- Location: LCCOMB_X27_Y28_N18
\game|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Add0~0_combout\ = \game|points_Left\(3) $ (((\game|points_Left\(2) & (\game|points_Left\(1) & \game|points_Left\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_Left\(2),
	datab => \game|points_Left\(1),
	datac => \game|points_Left\(0),
	datad => \game|points_Left\(3),
	combout => \game|Add0~0_combout\);

-- Location: LCCOMB_X27_Y28_N8
\game|points_Left_next[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Left_next[3]~3_combout\ = (\game|pr_state2.add_left~q\ & ((\game|Add0~0_combout\))) # (!\game|pr_state2.add_left~q\ & (\game|points_Left\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_Left\(3),
	datab => \game|Add0~0_combout\,
	datad => \game|pr_state2.add_left~q\,
	combout => \game|points_Left_next[3]~3_combout\);

-- Location: LCCOMB_X27_Y28_N12
\game|points_Left[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Left[3]~feeder_combout\ = \game|points_Left_next[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game|points_Left_next[3]~3_combout\,
	combout => \game|points_Left[3]~feeder_combout\);

-- Location: FF_X27_Y28_N13
\game|points_Left[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Left[3]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_Left\(3));

-- Location: LCCOMB_X27_Y28_N30
\game|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal6~0_combout\ = (\game|points_Left\(2) & (!\game|points_Left\(1) & (\game|points_Left\(0) & !\game|points_Left\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_Left\(2),
	datab => \game|points_Left\(1),
	datac => \game|points_Left\(0),
	datad => \game|points_Left\(3),
	combout => \game|Equal6~0_combout\);

-- Location: LCCOMB_X33_Y28_N16
\game|points_Right_next[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Right_next[0]~0_combout\ = \game|points_Right\(0) $ (\game|pr_state2.add_right~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game|points_Right\(0),
	datad => \game|pr_state2.add_right~q\,
	combout => \game|points_Right_next[0]~0_combout\);

-- Location: LCCOMB_X33_Y28_N20
\game|points_Right[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Right[0]~feeder_combout\ = \game|points_Right_next[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game|points_Right_next[0]~0_combout\,
	combout => \game|points_Right[0]~feeder_combout\);

-- Location: FF_X33_Y28_N21
\game|points_Right[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Right[0]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_Right\(0));

-- Location: LCCOMB_X33_Y28_N8
\game|points_Right_next[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Right_next[1]~1_combout\ = \game|points_Right\(1) $ (((\game|points_Right\(0) & \game|pr_state2.add_right~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game|points_Right\(0),
	datac => \game|points_Right\(1),
	datad => \game|pr_state2.add_right~q\,
	combout => \game|points_Right_next[1]~1_combout\);

-- Location: FF_X33_Y28_N19
\game|points_Right[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \game|points_Right_next[1]~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_Right\(1));

-- Location: LCCOMB_X33_Y28_N12
\game|points_Right_next[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Right_next[2]~2_combout\ = \game|points_Right\(2) $ (((\game|points_Right\(1) & (\game|points_Right\(0) & \game|pr_state2.add_right~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_Right\(1),
	datab => \game|points_Right\(0),
	datac => \game|points_Right\(2),
	datad => \game|pr_state2.add_right~q\,
	combout => \game|points_Right_next[2]~2_combout\);

-- Location: LCCOMB_X33_Y28_N22
\game|points_Right[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Right[2]~feeder_combout\ = \game|points_Right_next[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game|points_Right_next[2]~2_combout\,
	combout => \game|points_Right[2]~feeder_combout\);

-- Location: FF_X33_Y28_N23
\game|points_Right[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Right[2]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_Right\(2));

-- Location: LCCOMB_X33_Y28_N18
\game|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Add1~0_combout\ = \game|points_Right\(3) $ (((\game|points_Right\(2) & (\game|points_Right\(0) & \game|points_Right\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_Right\(2),
	datab => \game|points_Right\(0),
	datac => \game|points_Right\(1),
	datad => \game|points_Right\(3),
	combout => \game|Add1~0_combout\);

-- Location: LCCOMB_X33_Y28_N14
\game|points_Right_next[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Right_next[3]~3_combout\ = (\game|pr_state2.add_right~q\ & (\game|Add1~0_combout\)) # (!\game|pr_state2.add_right~q\ & ((\game|points_Right\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|Add1~0_combout\,
	datab => \game|points_Right\(3),
	datad => \game|pr_state2.add_right~q\,
	combout => \game|points_Right_next[3]~3_combout\);

-- Location: LCCOMB_X33_Y28_N28
\game|points_Right[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|points_Right[3]~feeder_combout\ = \game|points_Right_next[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game|points_Right_next[3]~3_combout\,
	combout => \game|points_Right[3]~feeder_combout\);

-- Location: FF_X33_Y28_N29
\game|points_Right[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Right[3]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_Right\(3));

-- Location: LCCOMB_X33_Y28_N2
\game|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal7~0_combout\ = (\game|points_Right\(2) & (\game|points_Right\(0) & (!\game|points_Right\(3) & !\game|points_Right\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_Right\(2),
	datab => \game|points_Right\(0),
	datac => \game|points_Right\(3),
	datad => \game|points_Right\(1),
	combout => \game|Equal7~0_combout\);

-- Location: LCCOMB_X19_Y12_N12
\game|tempwin\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|tempwin~combout\ = (\game|Equal6~0_combout\) # (\game|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game|Equal6~0_combout\,
	datad => \game|Equal7~0_combout\,
	combout => \game|tempwin~combout\);

-- Location: FF_X19_Y12_N13
\game|win\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|tempwin~combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|win~q\);

-- Location: LCCOMB_X19_Y12_N18
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\game|autoResetBall~q\) # ((\game|win~q\) # (!\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game|autoResetBall~q\,
	datac => \rst~input_o\,
	datad => \game|win~q\,
	combout => \comb~0_combout\);

-- Location: FF_X19_Y11_N9
\ball|counter1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[0]~24_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(0));

-- Location: LCCOMB_X19_Y11_N10
\ball|counter1|temp[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[1]~26_combout\ = (\ball|counter1|temp\(1) & (!\ball|counter1|temp[0]~25\)) # (!\ball|counter1|temp\(1) & ((\ball|counter1|temp[0]~25\) # (GND)))
-- \ball|counter1|temp[1]~27\ = CARRY((!\ball|counter1|temp[0]~25\) # (!\ball|counter1|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(1),
	datad => VCC,
	cin => \ball|counter1|temp[0]~25\,
	combout => \ball|counter1|temp[1]~26_combout\,
	cout => \ball|counter1|temp[1]~27\);

-- Location: FF_X19_Y11_N11
\ball|counter1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[1]~26_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(1));

-- Location: LCCOMB_X19_Y11_N12
\ball|counter1|temp[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[2]~28_combout\ = (\ball|counter1|temp\(2) & (\ball|counter1|temp[1]~27\ $ (GND))) # (!\ball|counter1|temp\(2) & (!\ball|counter1|temp[1]~27\ & VCC))
-- \ball|counter1|temp[2]~29\ = CARRY((\ball|counter1|temp\(2) & !\ball|counter1|temp[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(2),
	datad => VCC,
	cin => \ball|counter1|temp[1]~27\,
	combout => \ball|counter1|temp[2]~28_combout\,
	cout => \ball|counter1|temp[2]~29\);

-- Location: FF_X19_Y11_N13
\ball|counter1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[2]~28_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(2));

-- Location: LCCOMB_X19_Y11_N14
\ball|counter1|temp[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[3]~30_combout\ = (\ball|counter1|temp\(3) & (!\ball|counter1|temp[2]~29\)) # (!\ball|counter1|temp\(3) & ((\ball|counter1|temp[2]~29\) # (GND)))
-- \ball|counter1|temp[3]~31\ = CARRY((!\ball|counter1|temp[2]~29\) # (!\ball|counter1|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(3),
	datad => VCC,
	cin => \ball|counter1|temp[2]~29\,
	combout => \ball|counter1|temp[3]~30_combout\,
	cout => \ball|counter1|temp[3]~31\);

-- Location: FF_X19_Y11_N15
\ball|counter1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[3]~30_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(3));

-- Location: LCCOMB_X19_Y11_N16
\ball|counter1|temp[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[4]~32_combout\ = (\ball|counter1|temp\(4) & (\ball|counter1|temp[3]~31\ $ (GND))) # (!\ball|counter1|temp\(4) & (!\ball|counter1|temp[3]~31\ & VCC))
-- \ball|counter1|temp[4]~33\ = CARRY((\ball|counter1|temp\(4) & !\ball|counter1|temp[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(4),
	datad => VCC,
	cin => \ball|counter1|temp[3]~31\,
	combout => \ball|counter1|temp[4]~32_combout\,
	cout => \ball|counter1|temp[4]~33\);

-- Location: FF_X19_Y11_N17
\ball|counter1|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[4]~32_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(4));

-- Location: LCCOMB_X19_Y11_N18
\ball|counter1|temp[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[5]~34_combout\ = (\ball|counter1|temp\(5) & (!\ball|counter1|temp[4]~33\)) # (!\ball|counter1|temp\(5) & ((\ball|counter1|temp[4]~33\) # (GND)))
-- \ball|counter1|temp[5]~35\ = CARRY((!\ball|counter1|temp[4]~33\) # (!\ball|counter1|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(5),
	datad => VCC,
	cin => \ball|counter1|temp[4]~33\,
	combout => \ball|counter1|temp[5]~34_combout\,
	cout => \ball|counter1|temp[5]~35\);

-- Location: FF_X19_Y11_N19
\ball|counter1|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[5]~34_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(5));

-- Location: LCCOMB_X19_Y11_N20
\ball|counter1|temp[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[6]~36_combout\ = (\ball|counter1|temp\(6) & (\ball|counter1|temp[5]~35\ $ (GND))) # (!\ball|counter1|temp\(6) & (!\ball|counter1|temp[5]~35\ & VCC))
-- \ball|counter1|temp[6]~37\ = CARRY((\ball|counter1|temp\(6) & !\ball|counter1|temp[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(6),
	datad => VCC,
	cin => \ball|counter1|temp[5]~35\,
	combout => \ball|counter1|temp[6]~36_combout\,
	cout => \ball|counter1|temp[6]~37\);

-- Location: FF_X19_Y11_N21
\ball|counter1|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[6]~36_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(6));

-- Location: LCCOMB_X19_Y11_N22
\ball|counter1|temp[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[7]~38_combout\ = (\ball|counter1|temp\(7) & (!\ball|counter1|temp[6]~37\)) # (!\ball|counter1|temp\(7) & ((\ball|counter1|temp[6]~37\) # (GND)))
-- \ball|counter1|temp[7]~39\ = CARRY((!\ball|counter1|temp[6]~37\) # (!\ball|counter1|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(7),
	datad => VCC,
	cin => \ball|counter1|temp[6]~37\,
	combout => \ball|counter1|temp[7]~38_combout\,
	cout => \ball|counter1|temp[7]~39\);

-- Location: FF_X19_Y11_N23
\ball|counter1|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[7]~38_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(7));

-- Location: LCCOMB_X19_Y11_N24
\ball|counter1|temp[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[8]~40_combout\ = (\ball|counter1|temp\(8) & (\ball|counter1|temp[7]~39\ $ (GND))) # (!\ball|counter1|temp\(8) & (!\ball|counter1|temp[7]~39\ & VCC))
-- \ball|counter1|temp[8]~41\ = CARRY((\ball|counter1|temp\(8) & !\ball|counter1|temp[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(8),
	datad => VCC,
	cin => \ball|counter1|temp[7]~39\,
	combout => \ball|counter1|temp[8]~40_combout\,
	cout => \ball|counter1|temp[8]~41\);

-- Location: FF_X19_Y11_N25
\ball|counter1|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[8]~40_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(8));

-- Location: LCCOMB_X19_Y11_N26
\ball|counter1|temp[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[9]~42_combout\ = (\ball|counter1|temp\(9) & (!\ball|counter1|temp[8]~41\)) # (!\ball|counter1|temp\(9) & ((\ball|counter1|temp[8]~41\) # (GND)))
-- \ball|counter1|temp[9]~43\ = CARRY((!\ball|counter1|temp[8]~41\) # (!\ball|counter1|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(9),
	datad => VCC,
	cin => \ball|counter1|temp[8]~41\,
	combout => \ball|counter1|temp[9]~42_combout\,
	cout => \ball|counter1|temp[9]~43\);

-- Location: FF_X19_Y11_N27
\ball|counter1|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[9]~42_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(9));

-- Location: LCCOMB_X19_Y11_N28
\ball|counter1|temp[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[10]~44_combout\ = (\ball|counter1|temp\(10) & (\ball|counter1|temp[9]~43\ $ (GND))) # (!\ball|counter1|temp\(10) & (!\ball|counter1|temp[9]~43\ & VCC))
-- \ball|counter1|temp[10]~45\ = CARRY((\ball|counter1|temp\(10) & !\ball|counter1|temp[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(10),
	datad => VCC,
	cin => \ball|counter1|temp[9]~43\,
	combout => \ball|counter1|temp[10]~44_combout\,
	cout => \ball|counter1|temp[10]~45\);

-- Location: FF_X19_Y11_N29
\ball|counter1|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[10]~44_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(10));

-- Location: LCCOMB_X19_Y11_N30
\ball|counter1|temp[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[11]~46_combout\ = (\ball|counter1|temp\(11) & (!\ball|counter1|temp[10]~45\)) # (!\ball|counter1|temp\(11) & ((\ball|counter1|temp[10]~45\) # (GND)))
-- \ball|counter1|temp[11]~47\ = CARRY((!\ball|counter1|temp[10]~45\) # (!\ball|counter1|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(11),
	datad => VCC,
	cin => \ball|counter1|temp[10]~45\,
	combout => \ball|counter1|temp[11]~46_combout\,
	cout => \ball|counter1|temp[11]~47\);

-- Location: FF_X19_Y11_N31
\ball|counter1|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[11]~46_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(11));

-- Location: LCCOMB_X19_Y10_N0
\ball|counter1|temp[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[12]~48_combout\ = (\ball|counter1|temp\(12) & (\ball|counter1|temp[11]~47\ $ (GND))) # (!\ball|counter1|temp\(12) & (!\ball|counter1|temp[11]~47\ & VCC))
-- \ball|counter1|temp[12]~49\ = CARRY((\ball|counter1|temp\(12) & !\ball|counter1|temp[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(12),
	datad => VCC,
	cin => \ball|counter1|temp[11]~47\,
	combout => \ball|counter1|temp[12]~48_combout\,
	cout => \ball|counter1|temp[12]~49\);

-- Location: FF_X19_Y10_N1
\ball|counter1|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[12]~48_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(12));

-- Location: LCCOMB_X19_Y10_N2
\ball|counter1|temp[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[13]~50_combout\ = (\ball|counter1|temp\(13) & (!\ball|counter1|temp[12]~49\)) # (!\ball|counter1|temp\(13) & ((\ball|counter1|temp[12]~49\) # (GND)))
-- \ball|counter1|temp[13]~51\ = CARRY((!\ball|counter1|temp[12]~49\) # (!\ball|counter1|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(13),
	datad => VCC,
	cin => \ball|counter1|temp[12]~49\,
	combout => \ball|counter1|temp[13]~50_combout\,
	cout => \ball|counter1|temp[13]~51\);

-- Location: FF_X19_Y10_N3
\ball|counter1|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[13]~50_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(13));

-- Location: LCCOMB_X19_Y10_N4
\ball|counter1|temp[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[14]~52_combout\ = (\ball|counter1|temp\(14) & (\ball|counter1|temp[13]~51\ $ (GND))) # (!\ball|counter1|temp\(14) & (!\ball|counter1|temp[13]~51\ & VCC))
-- \ball|counter1|temp[14]~53\ = CARRY((\ball|counter1|temp\(14) & !\ball|counter1|temp[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(14),
	datad => VCC,
	cin => \ball|counter1|temp[13]~51\,
	combout => \ball|counter1|temp[14]~52_combout\,
	cout => \ball|counter1|temp[14]~53\);

-- Location: FF_X19_Y10_N5
\ball|counter1|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[14]~52_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(14));

-- Location: LCCOMB_X19_Y10_N6
\ball|counter1|temp[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[15]~54_combout\ = (\ball|counter1|temp\(15) & (!\ball|counter1|temp[14]~53\)) # (!\ball|counter1|temp\(15) & ((\ball|counter1|temp[14]~53\) # (GND)))
-- \ball|counter1|temp[15]~55\ = CARRY((!\ball|counter1|temp[14]~53\) # (!\ball|counter1|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(15),
	datad => VCC,
	cin => \ball|counter1|temp[14]~53\,
	combout => \ball|counter1|temp[15]~54_combout\,
	cout => \ball|counter1|temp[15]~55\);

-- Location: FF_X19_Y10_N7
\ball|counter1|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[15]~54_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(15));

-- Location: LCCOMB_X19_Y10_N8
\ball|counter1|temp[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[16]~56_combout\ = (\ball|counter1|temp\(16) & (\ball|counter1|temp[15]~55\ $ (GND))) # (!\ball|counter1|temp\(16) & (!\ball|counter1|temp[15]~55\ & VCC))
-- \ball|counter1|temp[16]~57\ = CARRY((\ball|counter1|temp\(16) & !\ball|counter1|temp[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(16),
	datad => VCC,
	cin => \ball|counter1|temp[15]~55\,
	combout => \ball|counter1|temp[16]~56_combout\,
	cout => \ball|counter1|temp[16]~57\);

-- Location: FF_X19_Y10_N9
\ball|counter1|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[16]~56_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(16));

-- Location: LCCOMB_X19_Y10_N30
\ball|counter1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal0~5_combout\ = (!\ball|counter1|temp\(15) & (!\ball|counter1|temp\(13) & (!\ball|counter1|temp\(16) & !\ball|counter1|temp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(15),
	datab => \ball|counter1|temp\(13),
	datac => \ball|counter1|temp\(16),
	datad => \ball|counter1|temp\(12),
	combout => \ball|counter1|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y10_N10
\ball|counter1|temp[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[17]~58_combout\ = (\ball|counter1|temp\(17) & (!\ball|counter1|temp[16]~57\)) # (!\ball|counter1|temp\(17) & ((\ball|counter1|temp[16]~57\) # (GND)))
-- \ball|counter1|temp[17]~59\ = CARRY((!\ball|counter1|temp[16]~57\) # (!\ball|counter1|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(17),
	datad => VCC,
	cin => \ball|counter1|temp[16]~57\,
	combout => \ball|counter1|temp[17]~58_combout\,
	cout => \ball|counter1|temp[17]~59\);

-- Location: FF_X19_Y10_N11
\ball|counter1|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[17]~58_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(17));

-- Location: LCCOMB_X19_Y10_N12
\ball|counter1|temp[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[18]~60_combout\ = (\ball|counter1|temp\(18) & (\ball|counter1|temp[17]~59\ $ (GND))) # (!\ball|counter1|temp\(18) & (!\ball|counter1|temp[17]~59\ & VCC))
-- \ball|counter1|temp[18]~61\ = CARRY((\ball|counter1|temp\(18) & !\ball|counter1|temp[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(18),
	datad => VCC,
	cin => \ball|counter1|temp[17]~59\,
	combout => \ball|counter1|temp[18]~60_combout\,
	cout => \ball|counter1|temp[18]~61\);

-- Location: FF_X19_Y10_N13
\ball|counter1|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[18]~60_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(18));

-- Location: LCCOMB_X19_Y10_N14
\ball|counter1|temp[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[19]~62_combout\ = (\ball|counter1|temp\(19) & (!\ball|counter1|temp[18]~61\)) # (!\ball|counter1|temp\(19) & ((\ball|counter1|temp[18]~61\) # (GND)))
-- \ball|counter1|temp[19]~63\ = CARRY((!\ball|counter1|temp[18]~61\) # (!\ball|counter1|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(19),
	datad => VCC,
	cin => \ball|counter1|temp[18]~61\,
	combout => \ball|counter1|temp[19]~62_combout\,
	cout => \ball|counter1|temp[19]~63\);

-- Location: FF_X19_Y10_N15
\ball|counter1|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[19]~62_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(19));

-- Location: LCCOMB_X19_Y10_N16
\ball|counter1|temp[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[20]~64_combout\ = (\ball|counter1|temp\(20) & (\ball|counter1|temp[19]~63\ $ (GND))) # (!\ball|counter1|temp\(20) & (!\ball|counter1|temp[19]~63\ & VCC))
-- \ball|counter1|temp[20]~65\ = CARRY((\ball|counter1|temp\(20) & !\ball|counter1|temp[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(20),
	datad => VCC,
	cin => \ball|counter1|temp[19]~63\,
	combout => \ball|counter1|temp[20]~64_combout\,
	cout => \ball|counter1|temp[20]~65\);

-- Location: FF_X19_Y10_N17
\ball|counter1|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[20]~64_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(20));

-- Location: LCCOMB_X19_Y10_N18
\ball|counter1|temp[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[21]~66_combout\ = (\ball|counter1|temp\(21) & (!\ball|counter1|temp[20]~65\)) # (!\ball|counter1|temp\(21) & ((\ball|counter1|temp[20]~65\) # (GND)))
-- \ball|counter1|temp[21]~67\ = CARRY((!\ball|counter1|temp[20]~65\) # (!\ball|counter1|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(21),
	datad => VCC,
	cin => \ball|counter1|temp[20]~65\,
	combout => \ball|counter1|temp[21]~66_combout\,
	cout => \ball|counter1|temp[21]~67\);

-- Location: FF_X19_Y10_N19
\ball|counter1|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[21]~66_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(21));

-- Location: LCCOMB_X19_Y10_N20
\ball|counter1|temp[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[22]~68_combout\ = (\ball|counter1|temp\(22) & (\ball|counter1|temp[21]~67\ $ (GND))) # (!\ball|counter1|temp\(22) & (!\ball|counter1|temp[21]~67\ & VCC))
-- \ball|counter1|temp[22]~69\ = CARRY((\ball|counter1|temp\(22) & !\ball|counter1|temp[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ball|counter1|temp\(22),
	datad => VCC,
	cin => \ball|counter1|temp[21]~67\,
	combout => \ball|counter1|temp[22]~68_combout\,
	cout => \ball|counter1|temp[22]~69\);

-- Location: FF_X19_Y10_N21
\ball|counter1|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[22]~68_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(22));

-- Location: LCCOMB_X19_Y10_N22
\ball|counter1|temp[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|temp[23]~70_combout\ = \ball|counter1|temp\(23) $ (\ball|counter1|temp[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(23),
	cin => \ball|counter1|temp[22]~69\,
	combout => \ball|counter1|temp[23]~70_combout\);

-- Location: FF_X19_Y10_N23
\ball|counter1|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|counter1|temp[23]~70_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	sclr => \ball|counter1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|counter1|temp\(23));

-- Location: LCCOMB_X19_Y10_N24
\ball|counter1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal0~6_combout\ = (!\ball|counter1|temp\(17) & (!\ball|counter1|temp\(20) & (!\ball|counter1|temp\(23) & !\ball|counter1|temp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(17),
	datab => \ball|counter1|temp\(20),
	datac => \ball|counter1|temp\(23),
	datad => \ball|counter1|temp\(21),
	combout => \ball|counter1|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y11_N6
\ball|counter1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal0~2_combout\ = (!\ball|counter1|temp\(2) & (!\ball|counter1|temp\(0) & (!\ball|counter1|temp\(3) & !\ball|counter1|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(2),
	datab => \ball|counter1|temp\(0),
	datac => \ball|counter1|temp\(3),
	datad => \ball|counter1|temp\(1),
	combout => \ball|counter1|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y11_N0
\ball|counter1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal0~0_combout\ = (\ball|counter1|temp\(11) & (\ball|counter1|temp\(8) & (\ball|counter1|temp\(9) & \ball|counter1|temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(11),
	datab => \ball|counter1|temp\(8),
	datac => \ball|counter1|temp\(9),
	datad => \ball|counter1|temp\(6),
	combout => \ball|counter1|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y11_N4
\ball|counter1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal0~3_combout\ = (!\ball|counter1|temp\(7) & (!\ball|counter1|temp\(10) & (!\ball|counter1|temp\(5) & !\ball|counter1|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(7),
	datab => \ball|counter1|temp\(10),
	datac => \ball|counter1|temp\(5),
	datad => \ball|counter1|temp\(4),
	combout => \ball|counter1|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y10_N28
\ball|counter1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal0~1_combout\ = (\ball|counter1|temp\(18) & (\ball|counter1|temp\(14) & (\ball|counter1|temp\(19) & \ball|counter1|temp\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(18),
	datab => \ball|counter1|temp\(14),
	datac => \ball|counter1|temp\(19),
	datad => \ball|counter1|temp\(22),
	combout => \ball|counter1|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y11_N2
\ball|counter1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal0~4_combout\ = (\ball|counter1|Equal0~2_combout\ & (\ball|counter1|Equal0~0_combout\ & (\ball|counter1|Equal0~3_combout\ & \ball|counter1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|Equal0~2_combout\,
	datab => \ball|counter1|Equal0~0_combout\,
	datac => \ball|counter1|Equal0~3_combout\,
	datad => \ball|counter1|Equal0~1_combout\,
	combout => \ball|counter1|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y10_N26
\ball|counter1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal0~7_combout\ = (\ball|counter1|Equal0~5_combout\ & (\ball|counter1|Equal0~6_combout\ & \ball|counter1|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|Equal0~5_combout\,
	datab => \ball|counter1|Equal0~6_combout\,
	datad => \ball|counter1|Equal0~4_combout\,
	combout => \ball|counter1|Equal0~7_combout\);

-- Location: LCCOMB_X20_Y10_N10
\ball|counter1|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal1~4_combout\ = (\ball|counter1|temp\(17) & (\ball|counter1|temp\(23) & (\ball|counter1|temp\(20) & \ball|counter1|temp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(17),
	datab => \ball|counter1|temp\(23),
	datac => \ball|counter1|temp\(20),
	datad => \ball|counter1|temp\(21),
	combout => \ball|counter1|Equal1~4_combout\);

-- Location: LCCOMB_X20_Y11_N30
\ball|counter1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal1~1_combout\ = (\ball|counter1|temp\(7) & (\ball|counter1|temp\(5) & (\ball|counter1|temp\(4) & \ball|counter1|temp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(7),
	datab => \ball|counter1|temp\(5),
	datac => \ball|counter1|temp\(4),
	datad => \ball|counter1|temp\(10),
	combout => \ball|counter1|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y11_N28
\ball|counter1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal1~0_combout\ = (\ball|counter1|temp\(2) & (\ball|counter1|temp\(0) & (\ball|counter1|temp\(3) & \ball|counter1|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(2),
	datab => \ball|counter1|temp\(0),
	datac => \ball|counter1|temp\(3),
	datad => \ball|counter1|temp\(1),
	combout => \ball|counter1|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y10_N22
\ball|counter1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal1~2_combout\ = (\ball|counter1|Equal0~1_combout\ & (\ball|counter1|Equal0~0_combout\ & (\ball|counter1|Equal1~1_combout\ & \ball|counter1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|Equal0~1_combout\,
	datab => \ball|counter1|Equal0~0_combout\,
	datac => \ball|counter1|Equal1~1_combout\,
	datad => \ball|counter1|Equal1~0_combout\,
	combout => \ball|counter1|Equal1~2_combout\);

-- Location: LCCOMB_X20_Y10_N24
\ball|counter1|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|counter1|Equal1~3_combout\ = (\ball|counter1|temp\(16) & (\ball|counter1|temp\(15) & (\ball|counter1|temp\(12) & \ball|counter1|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|temp\(16),
	datab => \ball|counter1|temp\(15),
	datac => \ball|counter1|temp\(12),
	datad => \ball|counter1|temp\(13),
	combout => \ball|counter1|Equal1~3_combout\);

-- Location: LCCOMB_X20_Y10_N26
\ball|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector18~0_combout\ = (\ball|pr_state.wait_seconds~q\ & (((!\ball|counter1|Equal1~3_combout\) # (!\ball|counter1|Equal1~2_combout\)) # (!\ball|counter1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|Equal1~4_combout\,
	datab => \ball|pr_state.wait_seconds~q\,
	datac => \ball|counter1|Equal1~2_combout\,
	datad => \ball|counter1|Equal1~3_combout\,
	combout => \ball|Selector18~0_combout\);

-- Location: LCCOMB_X20_Y10_N12
\ball|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector19~0_combout\ = (\ball|counter1|Equal0~7_combout\) # ((\ball|counter1|Equal1~2_combout\ & (\ball|counter1|Equal1~3_combout\ & \ball|counter1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|Equal1~2_combout\,
	datab => \ball|counter1|Equal1~3_combout\,
	datac => \ball|counter1|Equal0~7_combout\,
	datad => \ball|counter1|Equal1~4_combout\,
	combout => \ball|Selector19~0_combout\);

-- Location: LCCOMB_X20_Y10_N0
\ball|next_state.move_right~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|next_state.move_right~0_combout\ = (\game|left_righ~q\ & (!\ball|pr_state.move~q\ & \ball|Selector19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|left_righ~q\,
	datab => \ball|pr_state.move~q\,
	datad => \ball|Selector19~0_combout\,
	combout => \ball|next_state.move_right~0_combout\);

-- Location: FF_X20_Y10_N1
\ball|pr_state.move_right\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|next_state.move_right~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|pr_state.move_right~q\);

-- Location: LCCOMB_X20_Y10_N2
\ball|Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector18~1_combout\ = (\ball|pr_state.move_left~q\) # ((\ball|pr_state.move_right~q\) # ((!\ball|counter1|Equal0~7_combout\ & \ball|Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|counter1|Equal0~7_combout\,
	datab => \ball|pr_state.move_left~q\,
	datac => \ball|Selector18~0_combout\,
	datad => \ball|pr_state.move_right~q\,
	combout => \ball|Selector18~1_combout\);

-- Location: FF_X20_Y10_N3
\ball|pr_state.wait_seconds\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector18~1_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|pr_state.wait_seconds~q\);

-- Location: LCCOMB_X20_Y10_N4
\ball|pr_state.move~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|pr_state.move~0_combout\ = (\ball|Selector19~0_combout\ & (!\ball|pr_state.wait_seconds~q\)) # (!\ball|Selector19~0_combout\ & ((\ball|pr_state.move~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|pr_state.wait_seconds~q\,
	datac => \ball|pr_state.move~q\,
	datad => \ball|Selector19~0_combout\,
	combout => \ball|pr_state.move~0_combout\);

-- Location: FF_X20_Y10_N5
\ball|pr_state.move\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|pr_state.move~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|pr_state.move~q\);

-- Location: LCCOMB_X20_Y10_N30
\ball|temporal_ball_x~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|temporal_ball_x~2_combout\ = (\ball|pr_state.wait_seconds~q\) # (!\ball|pr_state.move~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ball|pr_state.move~q\,
	datad => \ball|pr_state.wait_seconds~q\,
	combout => \ball|temporal_ball_x~2_combout\);

-- Location: LCCOMB_X20_Y9_N14
\ball|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector17~0_combout\ = (\ball|temporal_ball_x~2_combout\ & ((\ball|ball_x\(0)) # ((\ball|ball_x\(1) & \ball|pr_state.move_right~q\)))) # (!\ball|temporal_ball_x~2_combout\ & (\ball|ball_x\(1) & ((\ball|pr_state.move_right~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|temporal_ball_x~2_combout\,
	datab => \ball|ball_x\(1),
	datac => \ball|ball_x\(0),
	datad => \ball|pr_state.move_right~q\,
	combout => \ball|Selector17~0_combout\);

-- Location: FF_X20_Y9_N15
\ball|ball_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector17~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(0));

-- Location: LCCOMB_X20_Y9_N16
\ball|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector16~0_combout\ = (\ball|pr_state.move_left~q\ & ((\ball|ball_x\(0)))) # (!\ball|pr_state.move_left~q\ & (\ball|ball_x\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(2),
	datab => \ball|pr_state.move_left~q\,
	datac => \ball|ball_x\(0),
	combout => \ball|Selector16~0_combout\);

-- Location: FF_X20_Y9_N17
\ball|ball_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector16~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(1));

-- Location: LCCOMB_X20_Y9_N26
\ball|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector15~0_combout\ = (\ball|pr_state.move_left~q\ & (\ball|ball_x\(1))) # (!\ball|pr_state.move_left~q\ & ((\ball|ball_x\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(1),
	datac => \ball|pr_state.move_left~q\,
	datad => \ball|ball_x\(3),
	combout => \ball|Selector15~0_combout\);

-- Location: FF_X20_Y9_N27
\ball|ball_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector15~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(2));

-- Location: LCCOMB_X20_Y9_N24
\ball|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector14~0_combout\ = (\ball|pr_state.move_left~q\ & ((\ball|ball_x\(2)))) # (!\ball|pr_state.move_left~q\ & (\ball|ball_x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(4),
	datab => \ball|pr_state.move_left~q\,
	datac => \ball|ball_x\(2),
	combout => \ball|Selector14~0_combout\);

-- Location: FF_X20_Y9_N25
\ball|ball_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector14~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(3));

-- Location: LCCOMB_X20_Y9_N22
\ball|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector13~0_combout\ = (\ball|pr_state.move_left~q\ & (\ball|ball_x\(3))) # (!\ball|pr_state.move_left~q\ & ((\ball|ball_x\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(3),
	datac => \ball|pr_state.move_left~q\,
	datad => \ball|ball_x\(5),
	combout => \ball|Selector13~0_combout\);

-- Location: FF_X20_Y9_N23
\ball|ball_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector13~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(4));

-- Location: LCCOMB_X20_Y9_N20
\ball|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector12~0_combout\ = (\ball|pr_state.move_left~q\ & ((\ball|ball_x\(4)))) # (!\ball|pr_state.move_left~q\ & (\ball|ball_x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(6),
	datab => \ball|pr_state.move_left~q\,
	datac => \ball|ball_x\(4),
	combout => \ball|Selector12~0_combout\);

-- Location: FF_X20_Y9_N21
\ball|ball_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector12~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(5));

-- Location: LCCOMB_X20_Y9_N6
\ball|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector11~0_combout\ = (\ball|pr_state.move_left~q\ & ((\ball|ball_x\(5)))) # (!\ball|pr_state.move_left~q\ & (\ball|ball_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(7),
	datac => \ball|pr_state.move_left~q\,
	datad => \ball|ball_x\(5),
	combout => \ball|Selector11~0_combout\);

-- Location: FF_X20_Y9_N7
\ball|ball_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector11~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(6));

-- Location: LCCOMB_X20_Y9_N4
\ball|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector10~0_combout\ = (\ball|pr_state.move_left~q\ & (\ball|ball_x\(6))) # (!\ball|pr_state.move_left~q\ & ((!\ball|ball_x\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(6),
	datab => \ball|ball_x\(8),
	datac => \ball|pr_state.move_left~q\,
	combout => \ball|Selector10~0_combout\);

-- Location: FF_X20_Y9_N5
\ball|ball_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector10~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(7));

-- Location: LCCOMB_X20_Y9_N0
\ball|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector9~0_combout\ = (!\ball|pr_state.move_left~q\ & ((\ball|pr_state.move_right~q\ & (\ball|ball_x\(9))) # (!\ball|pr_state.move_right~q\ & ((!\ball|ball_x\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(9),
	datab => \ball|ball_x\(8),
	datac => \ball|pr_state.move_left~q\,
	datad => \ball|pr_state.move_right~q\,
	combout => \ball|Selector9~0_combout\);

-- Location: LCCOMB_X20_Y9_N18
\ball|Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector9~1_combout\ = (!\ball|Selector9~0_combout\ & ((!\ball|ball_x\(7)) # (!\ball|pr_state.move_left~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|pr_state.move_left~q\,
	datac => \ball|ball_x\(7),
	datad => \ball|Selector9~0_combout\,
	combout => \ball|Selector9~1_combout\);

-- Location: FF_X20_Y9_N19
\ball|ball_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector9~1_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(8));

-- Location: LCCOMB_X19_Y8_N14
\ball|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector8~0_combout\ = (\ball|pr_state.move_left~q\ & ((!\ball|ball_x\(8)))) # (!\ball|pr_state.move_left~q\ & (\ball|ball_x\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|pr_state.move_left~q\,
	datab => \ball|ball_x\(10),
	datad => \ball|ball_x\(8),
	combout => \ball|Selector8~0_combout\);

-- Location: FF_X19_Y8_N15
\ball|ball_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector8~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(9));

-- Location: LCCOMB_X19_Y8_N20
\ball|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector7~0_combout\ = (\ball|pr_state.move_left~q\ & ((\ball|ball_x\(9)))) # (!\ball|pr_state.move_left~q\ & (\ball|ball_x\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(11),
	datac => \ball|ball_x\(9),
	datad => \ball|pr_state.move_left~q\,
	combout => \ball|Selector7~0_combout\);

-- Location: FF_X19_Y8_N21
\ball|ball_x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector7~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(10));

-- Location: LCCOMB_X19_Y8_N0
\game|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal5~0_combout\ = (!\ball|ball_x\(13) & (!\ball|ball_x\(10) & (!\ball|ball_x\(12) & !\ball|ball_x\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(13),
	datab => \ball|ball_x\(10),
	datac => \ball|ball_x\(12),
	datad => \ball|ball_x\(11),
	combout => \game|Equal5~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\game|Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal5~1_combout\ = (\game|Equal5~0_combout\ & (!\ball|ball_x\(9) & \ball|ball_x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game|Equal5~0_combout\,
	datac => \ball|ball_x\(9),
	datad => \ball|ball_x\(8),
	combout => \game|Equal5~1_combout\);

-- Location: IOIBUF_X3_Y0_N22
\button_down~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_down,
	o => \button_down~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\button_up~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_up,
	o => \button_up~input_o\);

-- Location: LCCOMB_X17_Y12_N22
\mov_left|next_state.click_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|next_state.click_r~0_combout\ = (!\mov_left|pr_state.unclicked~q\ & \button_up~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mov_left|pr_state.unclicked~q\,
	datad => \button_up~input_o\,
	combout => \mov_left|next_state.click_r~0_combout\);

-- Location: LCCOMB_X19_Y12_N14
\rst_t~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \rst_t~0_combout\ = (\rst~input_o\ & !\game|win~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \game|win~q\,
	combout => \rst_t~0_combout\);

-- Location: FF_X17_Y12_N23
\mov_left|pr_state.click_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|next_state.click_r~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|pr_state.click_r~q\);

-- Location: LCCOMB_X20_Y13_N8
\mov_left|counter_1|temp[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[0]~24_combout\ = \mov_left|counter_1|temp\(0) $ (VCC)
-- \mov_left|counter_1|temp[0]~25\ = CARRY(\mov_left|counter_1|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(0),
	datad => VCC,
	combout => \mov_left|counter_1|temp[0]~24_combout\,
	cout => \mov_left|counter_1|temp[0]~25\);

-- Location: LCCOMB_X20_Y12_N6
\mov_left|counter_1|temp[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[15]~54_combout\ = (\mov_left|counter_1|temp\(15) & (!\mov_left|counter_1|temp[14]~53\)) # (!\mov_left|counter_1|temp\(15) & ((\mov_left|counter_1|temp[14]~53\) # (GND)))
-- \mov_left|counter_1|temp[15]~55\ = CARRY((!\mov_left|counter_1|temp[14]~53\) # (!\mov_left|counter_1|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(15),
	datad => VCC,
	cin => \mov_left|counter_1|temp[14]~53\,
	combout => \mov_left|counter_1|temp[15]~54_combout\,
	cout => \mov_left|counter_1|temp[15]~55\);

-- Location: LCCOMB_X20_Y12_N8
\mov_left|counter_1|temp[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[16]~56_combout\ = (\mov_left|counter_1|temp\(16) & (\mov_left|counter_1|temp[15]~55\ $ (GND))) # (!\mov_left|counter_1|temp\(16) & (!\mov_left|counter_1|temp[15]~55\ & VCC))
-- \mov_left|counter_1|temp[16]~57\ = CARRY((\mov_left|counter_1|temp\(16) & !\mov_left|counter_1|temp[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(16),
	datad => VCC,
	cin => \mov_left|counter_1|temp[15]~55\,
	combout => \mov_left|counter_1|temp[16]~56_combout\,
	cout => \mov_left|counter_1|temp[16]~57\);

-- Location: FF_X20_Y12_N9
\mov_left|counter_1|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[16]~56_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(16));

-- Location: LCCOMB_X20_Y12_N30
\mov_right|counter_1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal0~5_combout\ = (!\mov_left|counter_1|temp\(15) & (!\mov_left|counter_1|temp\(13) & (!\mov_left|counter_1|temp\(16) & !\mov_left|counter_1|temp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(15),
	datab => \mov_left|counter_1|temp\(13),
	datac => \mov_left|counter_1|temp\(16),
	datad => \mov_left|counter_1|temp\(12),
	combout => \mov_right|counter_1|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y13_N4
\mov_right|counter_1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal0~3_combout\ = (!\mov_left|counter_1|temp\(7) & (!\mov_left|counter_1|temp\(5) & (!\mov_left|counter_1|temp\(10) & !\mov_left|counter_1|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(7),
	datab => \mov_left|counter_1|temp\(5),
	datac => \mov_left|counter_1|temp\(10),
	datad => \mov_left|counter_1|temp\(4),
	combout => \mov_right|counter_1|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y13_N0
\mov_right|counter_1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal0~0_combout\ = (\mov_left|counter_1|temp\(9) & (\mov_left|counter_1|temp\(8) & (\mov_left|counter_1|temp\(11) & \mov_left|counter_1|temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(9),
	datab => \mov_left|counter_1|temp\(8),
	datac => \mov_left|counter_1|temp\(11),
	datad => \mov_left|counter_1|temp\(6),
	combout => \mov_right|counter_1|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y12_N10
\mov_left|counter_1|temp[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[17]~58_combout\ = (\mov_left|counter_1|temp\(17) & (!\mov_left|counter_1|temp[16]~57\)) # (!\mov_left|counter_1|temp\(17) & ((\mov_left|counter_1|temp[16]~57\) # (GND)))
-- \mov_left|counter_1|temp[17]~59\ = CARRY((!\mov_left|counter_1|temp[16]~57\) # (!\mov_left|counter_1|temp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(17),
	datad => VCC,
	cin => \mov_left|counter_1|temp[16]~57\,
	combout => \mov_left|counter_1|temp[17]~58_combout\,
	cout => \mov_left|counter_1|temp[17]~59\);

-- Location: FF_X20_Y12_N11
\mov_left|counter_1|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[17]~58_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(17));

-- Location: LCCOMB_X20_Y12_N12
\mov_left|counter_1|temp[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[18]~60_combout\ = (\mov_left|counter_1|temp\(18) & (\mov_left|counter_1|temp[17]~59\ $ (GND))) # (!\mov_left|counter_1|temp\(18) & (!\mov_left|counter_1|temp[17]~59\ & VCC))
-- \mov_left|counter_1|temp[18]~61\ = CARRY((\mov_left|counter_1|temp\(18) & !\mov_left|counter_1|temp[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(18),
	datad => VCC,
	cin => \mov_left|counter_1|temp[17]~59\,
	combout => \mov_left|counter_1|temp[18]~60_combout\,
	cout => \mov_left|counter_1|temp[18]~61\);

-- Location: FF_X20_Y12_N13
\mov_left|counter_1|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[18]~60_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(18));

-- Location: LCCOMB_X20_Y12_N14
\mov_left|counter_1|temp[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[19]~62_combout\ = (\mov_left|counter_1|temp\(19) & (!\mov_left|counter_1|temp[18]~61\)) # (!\mov_left|counter_1|temp\(19) & ((\mov_left|counter_1|temp[18]~61\) # (GND)))
-- \mov_left|counter_1|temp[19]~63\ = CARRY((!\mov_left|counter_1|temp[18]~61\) # (!\mov_left|counter_1|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(19),
	datad => VCC,
	cin => \mov_left|counter_1|temp[18]~61\,
	combout => \mov_left|counter_1|temp[19]~62_combout\,
	cout => \mov_left|counter_1|temp[19]~63\);

-- Location: FF_X20_Y12_N15
\mov_left|counter_1|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[19]~62_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(19));

-- Location: LCCOMB_X20_Y12_N16
\mov_left|counter_1|temp[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[20]~64_combout\ = (\mov_left|counter_1|temp\(20) & (\mov_left|counter_1|temp[19]~63\ $ (GND))) # (!\mov_left|counter_1|temp\(20) & (!\mov_left|counter_1|temp[19]~63\ & VCC))
-- \mov_left|counter_1|temp[20]~65\ = CARRY((\mov_left|counter_1|temp\(20) & !\mov_left|counter_1|temp[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(20),
	datad => VCC,
	cin => \mov_left|counter_1|temp[19]~63\,
	combout => \mov_left|counter_1|temp[20]~64_combout\,
	cout => \mov_left|counter_1|temp[20]~65\);

-- Location: FF_X20_Y12_N17
\mov_left|counter_1|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[20]~64_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(20));

-- Location: LCCOMB_X20_Y12_N18
\mov_left|counter_1|temp[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[21]~66_combout\ = (\mov_left|counter_1|temp\(21) & (!\mov_left|counter_1|temp[20]~65\)) # (!\mov_left|counter_1|temp\(21) & ((\mov_left|counter_1|temp[20]~65\) # (GND)))
-- \mov_left|counter_1|temp[21]~67\ = CARRY((!\mov_left|counter_1|temp[20]~65\) # (!\mov_left|counter_1|temp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(21),
	datad => VCC,
	cin => \mov_left|counter_1|temp[20]~65\,
	combout => \mov_left|counter_1|temp[21]~66_combout\,
	cout => \mov_left|counter_1|temp[21]~67\);

-- Location: FF_X20_Y12_N19
\mov_left|counter_1|temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[21]~66_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(21));

-- Location: LCCOMB_X20_Y12_N20
\mov_left|counter_1|temp[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[22]~68_combout\ = (\mov_left|counter_1|temp\(22) & (\mov_left|counter_1|temp[21]~67\ $ (GND))) # (!\mov_left|counter_1|temp\(22) & (!\mov_left|counter_1|temp[21]~67\ & VCC))
-- \mov_left|counter_1|temp[22]~69\ = CARRY((\mov_left|counter_1|temp\(22) & !\mov_left|counter_1|temp[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(22),
	datad => VCC,
	cin => \mov_left|counter_1|temp[21]~67\,
	combout => \mov_left|counter_1|temp[22]~68_combout\,
	cout => \mov_left|counter_1|temp[22]~69\);

-- Location: FF_X20_Y12_N21
\mov_left|counter_1|temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[22]~68_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(22));

-- Location: LCCOMB_X20_Y12_N24
\mov_right|counter_1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal0~1_combout\ = (\mov_left|counter_1|temp\(18) & (\mov_left|counter_1|temp\(14) & (\mov_left|counter_1|temp\(19) & \mov_left|counter_1|temp\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(18),
	datab => \mov_left|counter_1|temp\(14),
	datac => \mov_left|counter_1|temp\(19),
	datad => \mov_left|counter_1|temp\(22),
	combout => \mov_right|counter_1|Equal0~1_combout\);

-- Location: LCCOMB_X20_Y13_N6
\mov_right|counter_1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal0~2_combout\ = (!\mov_left|counter_1|temp\(2) & (!\mov_left|counter_1|temp\(3) & (!\mov_left|counter_1|temp\(0) & !\mov_left|counter_1|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(2),
	datab => \mov_left|counter_1|temp\(3),
	datac => \mov_left|counter_1|temp\(0),
	datad => \mov_left|counter_1|temp\(1),
	combout => \mov_right|counter_1|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y13_N8
\mov_right|counter_1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal0~4_combout\ = (\mov_right|counter_1|Equal0~3_combout\ & (\mov_right|counter_1|Equal0~0_combout\ & (\mov_right|counter_1|Equal0~1_combout\ & \mov_right|counter_1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|counter_1|Equal0~3_combout\,
	datab => \mov_right|counter_1|Equal0~0_combout\,
	datac => \mov_right|counter_1|Equal0~1_combout\,
	datad => \mov_right|counter_1|Equal0~2_combout\,
	combout => \mov_right|counter_1|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y12_N22
\mov_left|counter_1|temp[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[23]~70_combout\ = \mov_left|counter_1|temp\(23) $ (\mov_left|counter_1|temp[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(23),
	cin => \mov_left|counter_1|temp[22]~69\,
	combout => \mov_left|counter_1|temp[23]~70_combout\);

-- Location: FF_X20_Y12_N23
\mov_left|counter_1|temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[23]~70_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(23));

-- Location: LCCOMB_X20_Y12_N28
\mov_right|counter_1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal0~6_combout\ = (!\mov_left|counter_1|temp\(17) & (!\mov_left|counter_1|temp\(20) & (!\mov_left|counter_1|temp\(23) & !\mov_left|counter_1|temp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(17),
	datab => \mov_left|counter_1|temp\(20),
	datac => \mov_left|counter_1|temp\(23),
	datad => \mov_left|counter_1|temp\(21),
	combout => \mov_right|counter_1|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y13_N30
\mov_right|counter_1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal0~7_combout\ = (\mov_right|counter_1|Equal0~5_combout\ & (\mov_right|counter_1|Equal0~4_combout\ & \mov_right|counter_1|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_right|counter_1|Equal0~5_combout\,
	datac => \mov_right|counter_1|Equal0~4_combout\,
	datad => \mov_right|counter_1|Equal0~6_combout\,
	combout => \mov_right|counter_1|Equal0~7_combout\);

-- Location: FF_X20_Y13_N9
\mov_left|counter_1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[0]~24_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(0));

-- Location: LCCOMB_X20_Y13_N10
\mov_left|counter_1|temp[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[1]~26_combout\ = (\mov_left|counter_1|temp\(1) & (!\mov_left|counter_1|temp[0]~25\)) # (!\mov_left|counter_1|temp\(1) & ((\mov_left|counter_1|temp[0]~25\) # (GND)))
-- \mov_left|counter_1|temp[1]~27\ = CARRY((!\mov_left|counter_1|temp[0]~25\) # (!\mov_left|counter_1|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(1),
	datad => VCC,
	cin => \mov_left|counter_1|temp[0]~25\,
	combout => \mov_left|counter_1|temp[1]~26_combout\,
	cout => \mov_left|counter_1|temp[1]~27\);

-- Location: FF_X20_Y13_N11
\mov_left|counter_1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[1]~26_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(1));

-- Location: LCCOMB_X20_Y13_N12
\mov_left|counter_1|temp[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[2]~28_combout\ = (\mov_left|counter_1|temp\(2) & (\mov_left|counter_1|temp[1]~27\ $ (GND))) # (!\mov_left|counter_1|temp\(2) & (!\mov_left|counter_1|temp[1]~27\ & VCC))
-- \mov_left|counter_1|temp[2]~29\ = CARRY((\mov_left|counter_1|temp\(2) & !\mov_left|counter_1|temp[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(2),
	datad => VCC,
	cin => \mov_left|counter_1|temp[1]~27\,
	combout => \mov_left|counter_1|temp[2]~28_combout\,
	cout => \mov_left|counter_1|temp[2]~29\);

-- Location: FF_X20_Y13_N13
\mov_left|counter_1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[2]~28_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(2));

-- Location: LCCOMB_X20_Y13_N14
\mov_left|counter_1|temp[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[3]~30_combout\ = (\mov_left|counter_1|temp\(3) & (!\mov_left|counter_1|temp[2]~29\)) # (!\mov_left|counter_1|temp\(3) & ((\mov_left|counter_1|temp[2]~29\) # (GND)))
-- \mov_left|counter_1|temp[3]~31\ = CARRY((!\mov_left|counter_1|temp[2]~29\) # (!\mov_left|counter_1|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(3),
	datad => VCC,
	cin => \mov_left|counter_1|temp[2]~29\,
	combout => \mov_left|counter_1|temp[3]~30_combout\,
	cout => \mov_left|counter_1|temp[3]~31\);

-- Location: FF_X20_Y13_N15
\mov_left|counter_1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[3]~30_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(3));

-- Location: LCCOMB_X20_Y13_N16
\mov_left|counter_1|temp[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[4]~32_combout\ = (\mov_left|counter_1|temp\(4) & (\mov_left|counter_1|temp[3]~31\ $ (GND))) # (!\mov_left|counter_1|temp\(4) & (!\mov_left|counter_1|temp[3]~31\ & VCC))
-- \mov_left|counter_1|temp[4]~33\ = CARRY((\mov_left|counter_1|temp\(4) & !\mov_left|counter_1|temp[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(4),
	datad => VCC,
	cin => \mov_left|counter_1|temp[3]~31\,
	combout => \mov_left|counter_1|temp[4]~32_combout\,
	cout => \mov_left|counter_1|temp[4]~33\);

-- Location: FF_X20_Y13_N17
\mov_left|counter_1|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[4]~32_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(4));

-- Location: LCCOMB_X20_Y13_N18
\mov_left|counter_1|temp[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[5]~34_combout\ = (\mov_left|counter_1|temp\(5) & (!\mov_left|counter_1|temp[4]~33\)) # (!\mov_left|counter_1|temp\(5) & ((\mov_left|counter_1|temp[4]~33\) # (GND)))
-- \mov_left|counter_1|temp[5]~35\ = CARRY((!\mov_left|counter_1|temp[4]~33\) # (!\mov_left|counter_1|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(5),
	datad => VCC,
	cin => \mov_left|counter_1|temp[4]~33\,
	combout => \mov_left|counter_1|temp[5]~34_combout\,
	cout => \mov_left|counter_1|temp[5]~35\);

-- Location: FF_X20_Y13_N19
\mov_left|counter_1|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[5]~34_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(5));

-- Location: LCCOMB_X20_Y13_N20
\mov_left|counter_1|temp[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[6]~36_combout\ = (\mov_left|counter_1|temp\(6) & (\mov_left|counter_1|temp[5]~35\ $ (GND))) # (!\mov_left|counter_1|temp\(6) & (!\mov_left|counter_1|temp[5]~35\ & VCC))
-- \mov_left|counter_1|temp[6]~37\ = CARRY((\mov_left|counter_1|temp\(6) & !\mov_left|counter_1|temp[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(6),
	datad => VCC,
	cin => \mov_left|counter_1|temp[5]~35\,
	combout => \mov_left|counter_1|temp[6]~36_combout\,
	cout => \mov_left|counter_1|temp[6]~37\);

-- Location: FF_X20_Y13_N21
\mov_left|counter_1|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[6]~36_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(6));

-- Location: LCCOMB_X20_Y13_N22
\mov_left|counter_1|temp[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[7]~38_combout\ = (\mov_left|counter_1|temp\(7) & (!\mov_left|counter_1|temp[6]~37\)) # (!\mov_left|counter_1|temp\(7) & ((\mov_left|counter_1|temp[6]~37\) # (GND)))
-- \mov_left|counter_1|temp[7]~39\ = CARRY((!\mov_left|counter_1|temp[6]~37\) # (!\mov_left|counter_1|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(7),
	datad => VCC,
	cin => \mov_left|counter_1|temp[6]~37\,
	combout => \mov_left|counter_1|temp[7]~38_combout\,
	cout => \mov_left|counter_1|temp[7]~39\);

-- Location: FF_X20_Y13_N23
\mov_left|counter_1|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[7]~38_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(7));

-- Location: LCCOMB_X20_Y13_N24
\mov_left|counter_1|temp[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[8]~40_combout\ = (\mov_left|counter_1|temp\(8) & (\mov_left|counter_1|temp[7]~39\ $ (GND))) # (!\mov_left|counter_1|temp\(8) & (!\mov_left|counter_1|temp[7]~39\ & VCC))
-- \mov_left|counter_1|temp[8]~41\ = CARRY((\mov_left|counter_1|temp\(8) & !\mov_left|counter_1|temp[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(8),
	datad => VCC,
	cin => \mov_left|counter_1|temp[7]~39\,
	combout => \mov_left|counter_1|temp[8]~40_combout\,
	cout => \mov_left|counter_1|temp[8]~41\);

-- Location: FF_X20_Y13_N25
\mov_left|counter_1|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[8]~40_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(8));

-- Location: LCCOMB_X20_Y13_N26
\mov_left|counter_1|temp[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[9]~42_combout\ = (\mov_left|counter_1|temp\(9) & (!\mov_left|counter_1|temp[8]~41\)) # (!\mov_left|counter_1|temp\(9) & ((\mov_left|counter_1|temp[8]~41\) # (GND)))
-- \mov_left|counter_1|temp[9]~43\ = CARRY((!\mov_left|counter_1|temp[8]~41\) # (!\mov_left|counter_1|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(9),
	datad => VCC,
	cin => \mov_left|counter_1|temp[8]~41\,
	combout => \mov_left|counter_1|temp[9]~42_combout\,
	cout => \mov_left|counter_1|temp[9]~43\);

-- Location: FF_X20_Y13_N27
\mov_left|counter_1|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[9]~42_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(9));

-- Location: LCCOMB_X20_Y13_N28
\mov_left|counter_1|temp[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[10]~44_combout\ = (\mov_left|counter_1|temp\(10) & (\mov_left|counter_1|temp[9]~43\ $ (GND))) # (!\mov_left|counter_1|temp\(10) & (!\mov_left|counter_1|temp[9]~43\ & VCC))
-- \mov_left|counter_1|temp[10]~45\ = CARRY((\mov_left|counter_1|temp\(10) & !\mov_left|counter_1|temp[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(10),
	datad => VCC,
	cin => \mov_left|counter_1|temp[9]~43\,
	combout => \mov_left|counter_1|temp[10]~44_combout\,
	cout => \mov_left|counter_1|temp[10]~45\);

-- Location: FF_X20_Y13_N29
\mov_left|counter_1|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[10]~44_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(10));

-- Location: LCCOMB_X20_Y13_N30
\mov_left|counter_1|temp[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[11]~46_combout\ = (\mov_left|counter_1|temp\(11) & (!\mov_left|counter_1|temp[10]~45\)) # (!\mov_left|counter_1|temp\(11) & ((\mov_left|counter_1|temp[10]~45\) # (GND)))
-- \mov_left|counter_1|temp[11]~47\ = CARRY((!\mov_left|counter_1|temp[10]~45\) # (!\mov_left|counter_1|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(11),
	datad => VCC,
	cin => \mov_left|counter_1|temp[10]~45\,
	combout => \mov_left|counter_1|temp[11]~46_combout\,
	cout => \mov_left|counter_1|temp[11]~47\);

-- Location: FF_X20_Y13_N31
\mov_left|counter_1|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[11]~46_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(11));

-- Location: LCCOMB_X20_Y12_N0
\mov_left|counter_1|temp[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[12]~48_combout\ = (\mov_left|counter_1|temp\(12) & (\mov_left|counter_1|temp[11]~47\ $ (GND))) # (!\mov_left|counter_1|temp\(12) & (!\mov_left|counter_1|temp[11]~47\ & VCC))
-- \mov_left|counter_1|temp[12]~49\ = CARRY((\mov_left|counter_1|temp\(12) & !\mov_left|counter_1|temp[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(12),
	datad => VCC,
	cin => \mov_left|counter_1|temp[11]~47\,
	combout => \mov_left|counter_1|temp[12]~48_combout\,
	cout => \mov_left|counter_1|temp[12]~49\);

-- Location: FF_X20_Y12_N1
\mov_left|counter_1|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[12]~48_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(12));

-- Location: LCCOMB_X20_Y12_N2
\mov_left|counter_1|temp[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[13]~50_combout\ = (\mov_left|counter_1|temp\(13) & (!\mov_left|counter_1|temp[12]~49\)) # (!\mov_left|counter_1|temp\(13) & ((\mov_left|counter_1|temp[12]~49\) # (GND)))
-- \mov_left|counter_1|temp[13]~51\ = CARRY((!\mov_left|counter_1|temp[12]~49\) # (!\mov_left|counter_1|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(13),
	datad => VCC,
	cin => \mov_left|counter_1|temp[12]~49\,
	combout => \mov_left|counter_1|temp[13]~50_combout\,
	cout => \mov_left|counter_1|temp[13]~51\);

-- Location: FF_X20_Y12_N3
\mov_left|counter_1|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[13]~50_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(13));

-- Location: LCCOMB_X20_Y12_N4
\mov_left|counter_1|temp[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|counter_1|temp[14]~52_combout\ = (\mov_left|counter_1|temp\(14) & (\mov_left|counter_1|temp[13]~51\ $ (GND))) # (!\mov_left|counter_1|temp\(14) & (!\mov_left|counter_1|temp[13]~51\ & VCC))
-- \mov_left|counter_1|temp[14]~53\ = CARRY((\mov_left|counter_1|temp\(14) & !\mov_left|counter_1|temp[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|counter_1|temp\(14),
	datad => VCC,
	cin => \mov_left|counter_1|temp[13]~51\,
	combout => \mov_left|counter_1|temp[14]~52_combout\,
	cout => \mov_left|counter_1|temp[14]~53\);

-- Location: FF_X20_Y12_N5
\mov_left|counter_1|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[14]~52_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(14));

-- Location: FF_X20_Y12_N7
\mov_left|counter_1|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|counter_1|temp[15]~54_combout\,
	clrn => \rst_t~0_combout\,
	sclr => \mov_right|counter_1|Equal0~7_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|counter_1|temp\(15));

-- Location: LCCOMB_X19_Y12_N16
\mov_right|counter_1|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal1~3_combout\ = (\mov_left|counter_1|temp\(15) & (\mov_left|counter_1|temp\(13) & (\mov_left|counter_1|temp\(12) & \mov_left|counter_1|temp\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(15),
	datab => \mov_left|counter_1|temp\(13),
	datac => \mov_left|counter_1|temp\(12),
	datad => \mov_left|counter_1|temp\(16),
	combout => \mov_right|counter_1|Equal1~3_combout\);

-- Location: LCCOMB_X20_Y13_N2
\mov_right|counter_1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal1~1_combout\ = (\mov_left|counter_1|temp\(10) & (\mov_left|counter_1|temp\(4) & (\mov_left|counter_1|temp\(7) & \mov_left|counter_1|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(10),
	datab => \mov_left|counter_1|temp\(4),
	datac => \mov_left|counter_1|temp\(7),
	datad => \mov_left|counter_1|temp\(5),
	combout => \mov_right|counter_1|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y13_N28
\mov_right|counter_1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal1~0_combout\ = (\mov_left|counter_1|temp\(3) & (\mov_left|counter_1|temp\(2) & (\mov_left|counter_1|temp\(1) & \mov_left|counter_1|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(3),
	datab => \mov_left|counter_1|temp\(2),
	datac => \mov_left|counter_1|temp\(1),
	datad => \mov_left|counter_1|temp\(0),
	combout => \mov_right|counter_1|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y13_N18
\mov_right|counter_1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal1~2_combout\ = (\mov_right|counter_1|Equal1~1_combout\ & (\mov_right|counter_1|Equal0~0_combout\ & (\mov_right|counter_1|Equal0~1_combout\ & \mov_right|counter_1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|counter_1|Equal1~1_combout\,
	datab => \mov_right|counter_1|Equal0~0_combout\,
	datac => \mov_right|counter_1|Equal0~1_combout\,
	datad => \mov_right|counter_1|Equal1~0_combout\,
	combout => \mov_right|counter_1|Equal1~2_combout\);

-- Location: LCCOMB_X20_Y12_N26
\mov_right|counter_1|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|Equal1~4_combout\ = (\mov_left|counter_1|temp\(17) & (\mov_left|counter_1|temp\(20) & (\mov_left|counter_1|temp\(23) & \mov_left|counter_1|temp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|counter_1|temp\(17),
	datab => \mov_left|counter_1|temp\(20),
	datac => \mov_left|counter_1|temp\(23),
	datad => \mov_left|counter_1|temp\(21),
	combout => \mov_right|counter_1|Equal1~4_combout\);

-- Location: LCCOMB_X19_Y13_N20
\mov_right|counter_1|max_tick~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|counter_1|max_tick~0_combout\ = (\mov_right|counter_1|Equal0~7_combout\) # ((\mov_right|counter_1|Equal1~3_combout\ & (\mov_right|counter_1|Equal1~2_combout\ & \mov_right|counter_1|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|counter_1|Equal1~3_combout\,
	datab => \mov_right|counter_1|Equal1~2_combout\,
	datac => \mov_right|counter_1|Equal0~7_combout\,
	datad => \mov_right|counter_1|Equal1~4_combout\,
	combout => \mov_right|counter_1|max_tick~0_combout\);

-- Location: LCCOMB_X19_Y13_N12
\mov_left|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector9~0_combout\ = (\mov_left|pr_state.clcik_l~q\) # ((\mov_left|pr_state.click_r~q\) # ((\mov_left|pr_state.wait_second~q\ & !\mov_right|counter_1|max_tick~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|pr_state.clcik_l~q\,
	datab => \mov_left|pr_state.click_r~q\,
	datac => \mov_left|pr_state.wait_second~q\,
	datad => \mov_right|counter_1|max_tick~0_combout\,
	combout => \mov_left|Selector9~0_combout\);

-- Location: FF_X19_Y13_N13
\mov_left|pr_state.wait_second\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector9~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|pr_state.wait_second~q\);

-- Location: LCCOMB_X17_Y12_N14
\mov_left|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector8~0_combout\ = (!\button_down~input_o\ & (!\mov_left|pr_state.unclicked~q\ & !\button_up~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_down~input_o\,
	datac => \mov_left|pr_state.unclicked~q\,
	datad => \button_up~input_o\,
	combout => \mov_left|Selector8~0_combout\);

-- Location: LCCOMB_X19_Y13_N26
\mov_left|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector8~1_combout\ = (!\mov_left|Selector8~0_combout\ & ((!\mov_right|counter_1|max_tick~0_combout\) # (!\mov_left|pr_state.wait_second~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|pr_state.wait_second~q\,
	datac => \mov_left|Selector8~0_combout\,
	datad => \mov_right|counter_1|max_tick~0_combout\,
	combout => \mov_left|Selector8~1_combout\);

-- Location: FF_X19_Y13_N27
\mov_left|pr_state.unclicked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector8~1_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|pr_state.unclicked~q\);

-- Location: LCCOMB_X17_Y12_N16
\mov_left|next_state.clcik_l~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|next_state.clcik_l~0_combout\ = (\button_down~input_o\ & (!\mov_left|pr_state.unclicked~q\ & !\button_up~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button_down~input_o\,
	datac => \mov_left|pr_state.unclicked~q\,
	datad => \button_up~input_o\,
	combout => \mov_left|next_state.clcik_l~0_combout\);

-- Location: FF_X17_Y12_N17
\mov_left|pr_state.clcik_l\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|next_state.clcik_l~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|pr_state.clcik_l~q\);

-- Location: LCCOMB_X19_Y13_N24
\mov_left|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector7~0_combout\ = (\mov_left|pr_state.wait_second~q\) # (!\mov_left|pr_state.unclicked~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mov_left|pr_state.unclicked~q\,
	datad => \mov_left|pr_state.wait_second~q\,
	combout => \mov_left|Selector7~0_combout\);

-- Location: LCCOMB_X20_Y14_N30
\mov_left|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector0~0_combout\ = (\mov_left|Selector7~0_combout\ & ((\mov_left|next_pos\(7)) # ((\mov_left|pr_state.clcik_l~q\ & \mov_left|next_pos\(6))))) # (!\mov_left|Selector7~0_combout\ & (\mov_left|pr_state.clcik_l~q\ & ((\mov_left|next_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|Selector7~0_combout\,
	datab => \mov_left|pr_state.clcik_l~q\,
	datac => \mov_left|next_pos\(7),
	datad => \mov_left|next_pos\(6),
	combout => \mov_left|Selector0~0_combout\);

-- Location: FF_X20_Y14_N31
\mov_left|next_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector0~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|next_pos\(7));

-- Location: LCCOMB_X20_Y14_N0
\mov_left|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector1~0_combout\ = (\mov_left|pr_state.clcik_l~q\ & (!\mov_left|next_pos\(5))) # (!\mov_left|pr_state.clcik_l~q\ & ((\mov_left|next_pos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|next_pos\(5),
	datab => \mov_left|pr_state.clcik_l~q\,
	datac => \mov_left|next_pos\(7),
	combout => \mov_left|Selector1~0_combout\);

-- Location: LCCOMB_X20_Y14_N16
\mov_left|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector5~0_combout\ = (\mov_left|pr_state.clcik_l~q\ & ((\mov_left|next_pos\(1)))) # (!\mov_left|pr_state.clcik_l~q\ & (!\mov_left|next_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|next_pos\(3),
	datac => \mov_left|pr_state.clcik_l~q\,
	datad => \mov_left|next_pos\(1),
	combout => \mov_left|Selector5~0_combout\);

-- Location: FF_X20_Y14_N17
\mov_left|next_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector5~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_left|next_pos[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|next_pos\(2));

-- Location: LCCOMB_X20_Y14_N28
\mov_left|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector7~1_combout\ = (\mov_left|Selector7~0_combout\ & ((\mov_left|next_pos\(0)) # ((\mov_left|pr_state.click_r~q\ & \mov_left|next_pos\(1))))) # (!\mov_left|Selector7~0_combout\ & (\mov_left|pr_state.click_r~q\ & ((\mov_left|next_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|Selector7~0_combout\,
	datab => \mov_left|pr_state.click_r~q\,
	datac => \mov_left|next_pos\(0),
	datad => \mov_left|next_pos\(1),
	combout => \mov_left|Selector7~1_combout\);

-- Location: FF_X20_Y14_N29
\mov_left|next_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector7~1_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|next_pos\(0));

-- Location: LCCOMB_X20_Y14_N18
\mov_left|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector6~0_combout\ = (\mov_left|pr_state.clcik_l~q\ & ((\mov_left|next_pos\(0)))) # (!\mov_left|pr_state.clcik_l~q\ & (\mov_left|next_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|next_pos\(2),
	datac => \mov_left|pr_state.clcik_l~q\,
	datad => \mov_left|next_pos\(0),
	combout => \mov_left|Selector6~0_combout\);

-- Location: FF_X20_Y14_N19
\mov_left|next_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector6~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_left|next_pos[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|next_pos\(1));

-- Location: LCCOMB_X20_Y14_N12
\mov_left|next_pos[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|next_pos[2]~0_combout\ = (\mov_left|next_pos\(7) & (!\mov_left|next_pos\(1) & (!\mov_left|next_pos\(0) & \mov_left|next_pos\(6)))) # (!\mov_left|next_pos\(7) & (\mov_left|next_pos\(1) & (\mov_left|next_pos\(0) & !\mov_left|next_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|next_pos\(7),
	datab => \mov_left|next_pos\(1),
	datac => \mov_left|next_pos\(0),
	datad => \mov_left|next_pos\(6),
	combout => \mov_left|next_pos[2]~0_combout\);

-- Location: LCCOMB_X20_Y14_N10
\mov_left|next_pos[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|next_pos[2]~1_combout\ = (\mov_left|next_pos\(3) & (\mov_left|next_pos\(4) & \mov_left|next_pos[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|next_pos\(3),
	datac => \mov_left|next_pos\(4),
	datad => \mov_left|next_pos[2]~0_combout\,
	combout => \mov_left|next_pos[2]~1_combout\);

-- Location: LCCOMB_X20_Y14_N24
\mov_left|next_pos[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|next_pos[2]~2_combout\ = (\mov_left|next_pos\(5) & (!\mov_left|next_pos\(6) & (!\mov_left|pr_state.clcik_l~q\ & \mov_left|next_pos\(2)))) # (!\mov_left|next_pos\(5) & (\mov_left|next_pos\(6) & (\mov_left|pr_state.clcik_l~q\ & 
-- !\mov_left|next_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|next_pos\(5),
	datab => \mov_left|next_pos\(6),
	datac => \mov_left|pr_state.clcik_l~q\,
	datad => \mov_left|next_pos\(2),
	combout => \mov_left|next_pos[2]~2_combout\);

-- Location: LCCOMB_X20_Y14_N14
\mov_left|next_pos[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|next_pos[2]~3_combout\ = (\mov_left|pr_state.click_r~q\ & (((\mov_left|pr_state.clcik_l~q\) # (!\mov_left|next_pos[2]~2_combout\)) # (!\mov_left|next_pos[2]~1_combout\))) # (!\mov_left|pr_state.click_r~q\ & (\mov_left|pr_state.clcik_l~q\ & 
-- ((!\mov_left|next_pos[2]~2_combout\) # (!\mov_left|next_pos[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|next_pos[2]~1_combout\,
	datab => \mov_left|pr_state.click_r~q\,
	datac => \mov_left|pr_state.clcik_l~q\,
	datad => \mov_left|next_pos[2]~2_combout\,
	combout => \mov_left|next_pos[2]~3_combout\);

-- Location: FF_X20_Y14_N1
\mov_left|next_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector1~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_left|next_pos[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|next_pos\(6));

-- Location: LCCOMB_X20_Y14_N26
\mov_left|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector2~0_combout\ = (\mov_left|pr_state.clcik_l~q\ & (\mov_left|next_pos\(4))) # (!\mov_left|pr_state.clcik_l~q\ & ((!\mov_left|next_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|next_pos\(4),
	datac => \mov_left|pr_state.clcik_l~q\,
	datad => \mov_left|next_pos\(6),
	combout => \mov_left|Selector2~0_combout\);

-- Location: FF_X20_Y14_N27
\mov_left|next_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector2~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_left|next_pos[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|next_pos\(5));

-- Location: LCCOMB_X20_Y14_N4
\mov_left|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector3~0_combout\ = (\mov_left|pr_state.clcik_l~q\ & ((\mov_left|next_pos\(3)))) # (!\mov_left|pr_state.clcik_l~q\ & (\mov_left|next_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|next_pos\(5),
	datac => \mov_left|pr_state.clcik_l~q\,
	datad => \mov_left|next_pos\(3),
	combout => \mov_left|Selector3~0_combout\);

-- Location: FF_X20_Y14_N5
\mov_left|next_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector3~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_left|next_pos[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|next_pos\(4));

-- Location: LCCOMB_X20_Y14_N2
\mov_left|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_left|Selector4~0_combout\ = (\mov_left|pr_state.clcik_l~q\ & ((!\mov_left|next_pos\(2)))) # (!\mov_left|pr_state.clcik_l~q\ & (\mov_left|next_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_left|next_pos\(4),
	datac => \mov_left|pr_state.clcik_l~q\,
	datad => \mov_left|next_pos\(2),
	combout => \mov_left|Selector4~0_combout\);

-- Location: FF_X20_Y14_N3
\mov_left|next_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_left|Selector4~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_left|next_pos[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_left|next_pos\(3));

-- Location: LCCOMB_X19_Y9_N12
\ball|temporal_ball_y[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|temporal_ball_y[4]~1_combout\ = (\game|direction\(0) & (!\ball|ball_y\(3))) # (!\game|direction\(0) & ((!\ball|ball_y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(3),
	datac => \game|direction\(0),
	datad => \ball|ball_y\(5),
	combout => \ball|temporal_ball_y[4]~1_combout\);

-- Location: FF_X19_Y9_N13
\ball|ball_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|temporal_ball_y[4]~1_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_y\(4));

-- Location: LCCOMB_X19_Y9_N10
\ball|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector24~0_combout\ = (\game|direction\(0) & ((!\ball|ball_y\(4)))) # (!\game|direction\(0) & (\ball|ball_y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_y\(6),
	datac => \game|direction\(0),
	datad => \ball|ball_y\(4),
	combout => \ball|Selector24~0_combout\);

-- Location: FF_X19_Y9_N11
\ball|ball_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector24~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_y\(5));

-- Location: LCCOMB_X19_Y9_N0
\ball|Selector25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector25~0_combout\ = (\game|direction\(0) & (\ball|ball_y\(5))) # (!\game|direction\(0) & ((\ball|ball_y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(5),
	datab => \ball|ball_y\(7),
	datac => \game|direction\(0),
	combout => \ball|Selector25~0_combout\);

-- Location: FF_X19_Y9_N1
\ball|ball_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector25~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_y\(6));

-- Location: LCCOMB_X19_Y9_N14
\ball|temporal_ball_y[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|temporal_ball_y[7]~2_combout\ = (\game|direction\(0) & \ball|ball_y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game|direction\(0),
	datad => \ball|ball_y\(6),
	combout => \ball|temporal_ball_y[7]~2_combout\);

-- Location: FF_X19_Y9_N15
\ball|ball_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|temporal_ball_y[7]~2_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_y\(7));

-- Location: LCCOMB_X19_Y9_N2
\ball|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector0~0_combout\ = (\game|direction\(0) & ((\ball|ball_y\(0)))) # (!\game|direction\(0) & (\ball|ball_y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_y\(2),
	datac => \game|direction\(0),
	datad => \ball|ball_y\(0),
	combout => \ball|Selector0~0_combout\);

-- Location: FF_X19_Y9_N3
\ball|ball_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector0~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_y\(1));

-- Location: LCCOMB_X19_Y9_N8
\ball|temporal_ball_y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|temporal_ball_y[0]~0_combout\ = (!\game|direction\(0) & \ball|ball_y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \game|direction\(0),
	datad => \ball|ball_y\(1),
	combout => \ball|temporal_ball_y[0]~0_combout\);

-- Location: FF_X19_Y9_N9
\ball|ball_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|temporal_ball_y[0]~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_y\(0));

-- Location: LCCOMB_X19_Y9_N22
\game|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal8~0_combout\ = (!\ball|ball_y\(5) & (!\ball|ball_y\(6) & (!\ball|ball_y\(3) & \ball|ball_y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(5),
	datab => \ball|ball_y\(6),
	datac => \ball|ball_y\(3),
	datad => \ball|ball_y\(4),
	combout => \game|Equal8~0_combout\);

-- Location: LCCOMB_X19_Y9_N24
\game|Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal8~1_combout\ = (!\ball|ball_y\(2) & (\game|Equal8~0_combout\ & !\ball|ball_y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_y\(2),
	datac => \game|Equal8~0_combout\,
	datad => \ball|ball_y\(1),
	combout => \game|Equal8~1_combout\);

-- Location: LCCOMB_X17_Y9_N22
\game|next_state.play~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|next_state.play~0_combout\ = (!\game|pr_state.play~q\ & (\game|Equal8~1_combout\ & (\ball|ball_y\(7) $ (\ball|ball_y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(7),
	datab => \ball|ball_y\(0),
	datac => \game|pr_state.play~q\,
	datad => \game|Equal8~1_combout\,
	combout => \game|next_state.play~0_combout\);

-- Location: FF_X17_Y9_N9
\game|pr_state.play\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \game|next_state.play~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|pr_state.play~q\);

-- Location: LCCOMB_X17_Y9_N12
\game|next_state.down_rebound~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|next_state.down_rebound~0_combout\ = (\game|Equal8~1_combout\ & (!\game|pr_state.play~q\ & (!\ball|ball_y\(0) & \ball|ball_y\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|Equal8~1_combout\,
	datab => \game|pr_state.play~q\,
	datac => \ball|ball_y\(0),
	datad => \ball|ball_y\(7),
	combout => \game|next_state.down_rebound~0_combout\);

-- Location: FF_X17_Y9_N13
\game|pr_state.down_rebound\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|next_state.down_rebound~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|pr_state.down_rebound~q\);

-- Location: LCCOMB_X17_Y9_N26
\game|temp_direction[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|temp_direction\(0) = (\game|pr_state.play~q\ & ((\game|pr_state.down_rebound~q\))) # (!\game|pr_state.play~q\ & (\game|temp_direction\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|temp_direction\(0),
	datac => \game|pr_state.play~q\,
	datad => \game|pr_state.down_rebound~q\,
	combout => \game|temp_direction\(0));

-- Location: LCCOMB_X17_Y9_N28
\game|direction[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|direction[0]~0_combout\ = !\game|temp_direction\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game|temp_direction\(0),
	combout => \game|direction[0]~0_combout\);

-- Location: FF_X17_Y9_N29
\game|direction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|direction[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|direction\(0));

-- Location: LCCOMB_X19_Y9_N26
\ball|Selector22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector22~0_combout\ = (\game|direction\(0) & (\ball|ball_y\(2))) # (!\game|direction\(0) & ((!\ball|ball_y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_y\(2),
	datac => \game|direction\(0),
	datad => \ball|ball_y\(4),
	combout => \ball|Selector22~0_combout\);

-- Location: FF_X19_Y9_N27
\ball|ball_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector22~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_y\(3));

-- Location: LCCOMB_X19_Y9_N20
\ball|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector21~0_combout\ = (\game|direction\(0) & ((\ball|ball_y\(1)))) # (!\game|direction\(0) & (\ball|ball_y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(3),
	datac => \game|direction\(0),
	datad => \ball|ball_y\(1),
	combout => \ball|Selector21~0_combout\);

-- Location: FF_X19_Y9_N21
\ball|ball_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector21~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_y\(2));

-- Location: LCCOMB_X19_Y9_N30
\game|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal1~1_combout\ = (\mov_left|next_pos\(3) & (\ball|ball_y\(2) & ((\mov_left|next_pos\(2))))) # (!\mov_left|next_pos\(3) & ((\ball|ball_y\(3)) # ((\ball|ball_y\(2) & \mov_left|next_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|next_pos\(3),
	datab => \ball|ball_y\(2),
	datac => \ball|ball_y\(3),
	datad => \mov_left|next_pos\(2),
	combout => \game|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y9_N10
\game|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal1~2_combout\ = (\ball|ball_y\(5) & (((!\mov_left|next_pos\(4) & !\ball|ball_y\(4))) # (!\mov_left|next_pos\(5)))) # (!\ball|ball_y\(5) & (!\mov_left|next_pos\(4) & ((!\ball|ball_y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(5),
	datab => \mov_left|next_pos\(4),
	datac => \mov_left|next_pos\(5),
	datad => \ball|ball_y\(4),
	combout => \game|Equal1~2_combout\);

-- Location: LCCOMB_X19_Y9_N28
\game|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal1~0_combout\ = (\ball|ball_y\(0) & ((\mov_left|next_pos\(0)) # ((\ball|ball_y\(1) & \mov_left|next_pos\(1))))) # (!\ball|ball_y\(0) & (\ball|ball_y\(1) & (\mov_left|next_pos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(0),
	datab => \ball|ball_y\(1),
	datac => \mov_left|next_pos\(1),
	datad => \mov_left|next_pos\(0),
	combout => \game|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y9_N4
\game|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal1~3_combout\ = (\mov_left|next_pos\(6) & ((\ball|ball_y\(6)) # ((\ball|ball_y\(7) & \mov_left|next_pos\(7))))) # (!\mov_left|next_pos\(6) & (((\ball|ball_y\(7) & \mov_left|next_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_left|next_pos\(6),
	datab => \ball|ball_y\(6),
	datac => \ball|ball_y\(7),
	datad => \mov_left|next_pos\(7),
	combout => \game|Equal1~3_combout\);

-- Location: LCCOMB_X19_Y13_N14
\game|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal1~4_combout\ = (\game|Equal1~1_combout\) # ((\game|Equal1~2_combout\) # ((\game|Equal1~0_combout\) # (\game|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|Equal1~1_combout\,
	datab => \game|Equal1~2_combout\,
	datac => \game|Equal1~0_combout\,
	datad => \game|Equal1~3_combout\,
	combout => \game|Equal1~4_combout\);

-- Location: LCCOMB_X19_Y12_N4
\game|comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|comb~0_combout\ = (\game|Equal5~1_combout\ & (\ball|ball_x\(14) & (!\ball|ball_x\(15) & \game|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|Equal5~1_combout\,
	datab => \ball|ball_x\(14),
	datac => \ball|ball_x\(15),
	datad => \game|Equal1~4_combout\,
	combout => \game|comb~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\button_down_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_down_2,
	o => \button_down_2~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\button_up_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_up_2,
	o => \button_up_2~input_o\);

-- Location: LCCOMB_X17_Y12_N30
\mov_right|next_state.click_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|next_state.click_r~0_combout\ = (\button_up_2~input_o\ & !\mov_right|pr_state.unclicked~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_up_2~input_o\,
	datad => \mov_right|pr_state.unclicked~q\,
	combout => \mov_right|next_state.click_r~0_combout\);

-- Location: FF_X17_Y12_N31
\mov_right|pr_state.click_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|next_state.click_r~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|pr_state.click_r~q\);

-- Location: LCCOMB_X19_Y13_N22
\mov_right|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector9~0_combout\ = (\mov_right|pr_state.click_r~q\) # ((\mov_right|pr_state.clcik_l~q\) # ((\mov_right|pr_state.wait_second~q\ & !\mov_right|counter_1|max_tick~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|pr_state.click_r~q\,
	datab => \mov_right|pr_state.clcik_l~q\,
	datac => \mov_right|pr_state.wait_second~q\,
	datad => \mov_right|counter_1|max_tick~0_combout\,
	combout => \mov_right|Selector9~0_combout\);

-- Location: FF_X19_Y13_N23
\mov_right|pr_state.wait_second\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector9~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|pr_state.wait_second~q\);

-- Location: LCCOMB_X17_Y12_N0
\mov_right|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector8~0_combout\ = (!\button_down_2~input_o\ & (!\button_up_2~input_o\ & !\mov_right|pr_state.unclicked~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_2~input_o\,
	datac => \button_up_2~input_o\,
	datad => \mov_right|pr_state.unclicked~q\,
	combout => \mov_right|Selector8~0_combout\);

-- Location: LCCOMB_X19_Y13_N16
\mov_right|Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector8~1_combout\ = (!\mov_right|Selector8~0_combout\ & ((!\mov_right|counter_1|max_tick~0_combout\) # (!\mov_right|pr_state.wait_second~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|pr_state.wait_second~q\,
	datac => \mov_right|Selector8~0_combout\,
	datad => \mov_right|counter_1|max_tick~0_combout\,
	combout => \mov_right|Selector8~1_combout\);

-- Location: FF_X19_Y13_N17
\mov_right|pr_state.unclicked\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector8~1_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|pr_state.unclicked~q\);

-- Location: LCCOMB_X17_Y12_N24
\mov_right|next_state.clcik_l~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|next_state.clcik_l~0_combout\ = (\button_down_2~input_o\ & (!\button_up_2~input_o\ & !\mov_right|pr_state.unclicked~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_down_2~input_o\,
	datac => \button_up_2~input_o\,
	datad => \mov_right|pr_state.unclicked~q\,
	combout => \mov_right|next_state.clcik_l~0_combout\);

-- Location: FF_X17_Y12_N25
\mov_right|pr_state.clcik_l\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|next_state.clcik_l~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|pr_state.clcik_l~q\);

-- Location: LCCOMB_X19_Y13_N10
\mov_right|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector7~0_combout\ = (\mov_right|pr_state.wait_second~q\) # (!\mov_right|pr_state.unclicked~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mov_right|pr_state.wait_second~q\,
	datad => \mov_right|pr_state.unclicked~q\,
	combout => \mov_right|Selector7~0_combout\);

-- Location: LCCOMB_X20_Y11_N14
\mov_right|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector0~0_combout\ = (\mov_right|Selector7~0_combout\ & ((\mov_right|next_pos\(7)) # ((\mov_right|pr_state.clcik_l~q\ & \mov_right|next_pos\(6))))) # (!\mov_right|Selector7~0_combout\ & (\mov_right|pr_state.clcik_l~q\ & 
-- ((\mov_right|next_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|Selector7~0_combout\,
	datab => \mov_right|pr_state.clcik_l~q\,
	datac => \mov_right|next_pos\(7),
	datad => \mov_right|next_pos\(6),
	combout => \mov_right|Selector0~0_combout\);

-- Location: FF_X20_Y11_N15
\mov_right|next_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector0~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|next_pos\(7));

-- Location: LCCOMB_X20_Y11_N12
\mov_right|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector1~0_combout\ = (\mov_right|pr_state.clcik_l~q\ & (!\mov_right|next_pos\(5))) # (!\mov_right|pr_state.clcik_l~q\ & ((\mov_right|next_pos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|next_pos\(5),
	datab => \mov_right|next_pos\(7),
	datac => \mov_right|pr_state.clcik_l~q\,
	combout => \mov_right|Selector1~0_combout\);

-- Location: LCCOMB_X20_Y11_N20
\mov_right|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector5~0_combout\ = (\mov_right|pr_state.clcik_l~q\ & ((\mov_right|next_pos\(1)))) # (!\mov_right|pr_state.clcik_l~q\ & (!\mov_right|next_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|next_pos\(3),
	datac => \mov_right|pr_state.clcik_l~q\,
	datad => \mov_right|next_pos\(1),
	combout => \mov_right|Selector5~0_combout\);

-- Location: FF_X20_Y11_N21
\mov_right|next_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector5~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_right|next_pos[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|next_pos\(2));

-- Location: LCCOMB_X20_Y11_N0
\mov_right|Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector7~1_combout\ = (\mov_right|Selector7~0_combout\ & ((\mov_right|next_pos\(0)) # ((\mov_right|pr_state.click_r~q\ & \mov_right|next_pos\(1))))) # (!\mov_right|Selector7~0_combout\ & (\mov_right|pr_state.click_r~q\ & 
-- ((\mov_right|next_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|Selector7~0_combout\,
	datab => \mov_right|pr_state.click_r~q\,
	datac => \mov_right|next_pos\(0),
	datad => \mov_right|next_pos\(1),
	combout => \mov_right|Selector7~1_combout\);

-- Location: FF_X20_Y11_N1
\mov_right|next_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector7~1_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|next_pos\(0));

-- Location: LCCOMB_X20_Y11_N18
\mov_right|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector6~0_combout\ = (\mov_right|pr_state.clcik_l~q\ & ((\mov_right|next_pos\(0)))) # (!\mov_right|pr_state.clcik_l~q\ & (\mov_right|next_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_right|next_pos\(2),
	datac => \mov_right|pr_state.clcik_l~q\,
	datad => \mov_right|next_pos\(0),
	combout => \mov_right|Selector6~0_combout\);

-- Location: FF_X20_Y11_N19
\mov_right|next_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector6~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_right|next_pos[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|next_pos\(1));

-- Location: LCCOMB_X20_Y11_N4
\mov_right|next_pos[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|next_pos[6]~0_combout\ = (\mov_right|next_pos\(6) & (!\mov_right|next_pos\(1) & (\mov_right|next_pos\(7) & !\mov_right|next_pos\(0)))) # (!\mov_right|next_pos\(6) & (\mov_right|next_pos\(1) & (!\mov_right|next_pos\(7) & 
-- \mov_right|next_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|next_pos\(6),
	datab => \mov_right|next_pos\(1),
	datac => \mov_right|next_pos\(7),
	datad => \mov_right|next_pos\(0),
	combout => \mov_right|next_pos[6]~0_combout\);

-- Location: LCCOMB_X20_Y11_N10
\mov_right|next_pos[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|next_pos[6]~1_combout\ = (\mov_right|next_pos\(3) & (\mov_right|next_pos[6]~0_combout\ & \mov_right|next_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|next_pos\(3),
	datac => \mov_right|next_pos[6]~0_combout\,
	datad => \mov_right|next_pos\(4),
	combout => \mov_right|next_pos[6]~1_combout\);

-- Location: LCCOMB_X20_Y11_N16
\mov_right|next_pos[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|next_pos[6]~2_combout\ = (\mov_right|next_pos\(5) & (\mov_right|next_pos\(2) & (!\mov_right|pr_state.clcik_l~q\ & !\mov_right|next_pos\(6)))) # (!\mov_right|next_pos\(5) & (!\mov_right|next_pos\(2) & (\mov_right|pr_state.clcik_l~q\ & 
-- \mov_right|next_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|next_pos\(5),
	datab => \mov_right|next_pos\(2),
	datac => \mov_right|pr_state.clcik_l~q\,
	datad => \mov_right|next_pos\(6),
	combout => \mov_right|next_pos[6]~2_combout\);

-- Location: LCCOMB_X20_Y11_N2
\mov_right|next_pos[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|next_pos[6]~3_combout\ = (\mov_right|pr_state.clcik_l~q\ & (((\mov_right|pr_state.click_r~q\) # (!\mov_right|next_pos[6]~2_combout\)) # (!\mov_right|next_pos[6]~1_combout\))) # (!\mov_right|pr_state.clcik_l~q\ & (\mov_right|pr_state.click_r~q\ 
-- & ((!\mov_right|next_pos[6]~2_combout\) # (!\mov_right|next_pos[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|next_pos[6]~1_combout\,
	datab => \mov_right|pr_state.clcik_l~q\,
	datac => \mov_right|pr_state.click_r~q\,
	datad => \mov_right|next_pos[6]~2_combout\,
	combout => \mov_right|next_pos[6]~3_combout\);

-- Location: FF_X20_Y11_N13
\mov_right|next_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector1~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_right|next_pos[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|next_pos\(6));

-- Location: LCCOMB_X20_Y11_N22
\mov_right|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector2~0_combout\ = (\mov_right|pr_state.clcik_l~q\ & (\mov_right|next_pos\(4))) # (!\mov_right|pr_state.clcik_l~q\ & ((!\mov_right|next_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_right|next_pos\(4),
	datac => \mov_right|pr_state.clcik_l~q\,
	datad => \mov_right|next_pos\(6),
	combout => \mov_right|Selector2~0_combout\);

-- Location: FF_X20_Y11_N23
\mov_right|next_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector2~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_right|next_pos[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|next_pos\(5));

-- Location: LCCOMB_X20_Y11_N24
\mov_right|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector3~0_combout\ = (\mov_right|pr_state.clcik_l~q\ & ((\mov_right|next_pos\(3)))) # (!\mov_right|pr_state.clcik_l~q\ & (\mov_right|next_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|next_pos\(5),
	datab => \mov_right|pr_state.clcik_l~q\,
	datac => \mov_right|next_pos\(3),
	combout => \mov_right|Selector3~0_combout\);

-- Location: FF_X20_Y11_N25
\mov_right|next_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector3~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_right|next_pos[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|next_pos\(4));

-- Location: LCCOMB_X20_Y11_N26
\mov_right|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mov_right|Selector4~0_combout\ = (\mov_right|pr_state.clcik_l~q\ & ((!\mov_right|next_pos\(2)))) # (!\mov_right|pr_state.clcik_l~q\ & (\mov_right|next_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mov_right|next_pos\(4),
	datac => \mov_right|pr_state.clcik_l~q\,
	datad => \mov_right|next_pos\(2),
	combout => \mov_right|Selector4~0_combout\);

-- Location: FF_X20_Y11_N27
\mov_right|next_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mov_right|Selector4~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \mov_right|next_pos[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mov_right|next_pos\(3));

-- Location: LCCOMB_X20_Y8_N12
\game|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal3~1_combout\ = (\ball|ball_y\(2) & ((\mov_right|next_pos\(2)) # ((!\mov_right|next_pos\(3) & \ball|ball_y\(3))))) # (!\ball|ball_y\(2) & (!\mov_right|next_pos\(3) & (\ball|ball_y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(2),
	datab => \mov_right|next_pos\(3),
	datac => \ball|ball_y\(3),
	datad => \mov_right|next_pos\(2),
	combout => \game|Equal3~1_combout\);

-- Location: LCCOMB_X20_Y8_N8
\game|Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal3~3_combout\ = (\mov_right|next_pos\(7) & ((\ball|ball_y\(7)) # ((\ball|ball_y\(6) & \mov_right|next_pos\(6))))) # (!\mov_right|next_pos\(7) & (((\ball|ball_y\(6) & \mov_right|next_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|next_pos\(7),
	datab => \ball|ball_y\(7),
	datac => \ball|ball_y\(6),
	datad => \mov_right|next_pos\(6),
	combout => \game|Equal3~3_combout\);

-- Location: LCCOMB_X17_Y8_N12
\game|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal3~0_combout\ = (\ball|ball_y\(0) & ((\mov_right|next_pos\(0)) # ((\ball|ball_y\(1) & \mov_right|next_pos\(1))))) # (!\ball|ball_y\(0) & (((\ball|ball_y\(1) & \mov_right|next_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(0),
	datab => \mov_right|next_pos\(0),
	datac => \ball|ball_y\(1),
	datad => \mov_right|next_pos\(1),
	combout => \game|Equal3~0_combout\);

-- Location: LCCOMB_X20_Y8_N2
\game|Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal3~2_combout\ = (\ball|ball_y\(4) & (!\mov_right|next_pos\(5) & ((\ball|ball_y\(5))))) # (!\ball|ball_y\(4) & (((!\mov_right|next_pos\(5) & \ball|ball_y\(5))) # (!\mov_right|next_pos\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(4),
	datab => \mov_right|next_pos\(5),
	datac => \mov_right|next_pos\(4),
	datad => \ball|ball_y\(5),
	combout => \game|Equal3~2_combout\);

-- Location: LCCOMB_X20_Y8_N22
\game|Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|Equal3~4_combout\ = (\game|Equal3~1_combout\) # ((\game|Equal3~3_combout\) # ((\game|Equal3~0_combout\) # (\game|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|Equal3~1_combout\,
	datab => \game|Equal3~3_combout\,
	datac => \game|Equal3~0_combout\,
	datad => \game|Equal3~2_combout\,
	combout => \game|Equal3~4_combout\);

-- Location: LCCOMB_X19_Y12_N30
\game|temp_left_righ~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|temp_left_righ~0_combout\ = (\game|Equal3~4_combout\ & (\ball|ball_x\(1) & (!\ball|ball_x\(0) & \game|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|Equal3~4_combout\,
	datab => \ball|ball_x\(1),
	datac => \ball|ball_x\(0),
	datad => \game|Equal4~1_combout\,
	combout => \game|temp_left_righ~0_combout\);

-- Location: LCCOMB_X19_Y12_N2
\game|temp_left_righ\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|temp_left_righ~combout\ = (!\game|temp_left_righ~0_combout\ & ((\game|comb~0_combout\) # (\game|temp_left_righ~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game|comb~0_combout\,
	datac => \game|temp_left_righ~0_combout\,
	datad => \game|temp_left_righ~combout\,
	combout => \game|temp_left_righ~combout\);

-- Location: LCCOMB_X19_Y12_N28
\game|left_righ~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \game|left_righ~feeder_combout\ = \game|temp_left_righ~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \game|temp_left_righ~combout\,
	combout => \game|left_righ~feeder_combout\);

-- Location: FF_X19_Y12_N29
\game|left_righ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|left_righ~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|left_righ~q\);

-- Location: LCCOMB_X20_Y10_N16
\ball|next_state.move_left~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|next_state.move_left~0_combout\ = (!\game|left_righ~q\ & (!\ball|pr_state.move~q\ & \ball|Selector19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|left_righ~q\,
	datab => \ball|pr_state.move~q\,
	datad => \ball|Selector19~0_combout\,
	combout => \ball|next_state.move_left~0_combout\);

-- Location: FF_X20_Y10_N17
\ball|pr_state.move_left\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|next_state.move_left~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|pr_state.move_left~q\);

-- Location: LCCOMB_X19_Y8_N10
\ball|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector6~0_combout\ = (\ball|pr_state.move_left~q\ & (\ball|ball_x\(10))) # (!\ball|pr_state.move_left~q\ & ((\ball|ball_x\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|pr_state.move_left~q\,
	datab => \ball|ball_x\(10),
	datac => \ball|ball_x\(12),
	combout => \ball|Selector6~0_combout\);

-- Location: FF_X19_Y8_N11
\ball|ball_x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector6~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(11));

-- Location: LCCOMB_X19_Y8_N8
\ball|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector5~0_combout\ = (\ball|pr_state.move_left~q\ & (\ball|ball_x\(11))) # (!\ball|pr_state.move_left~q\ & ((\ball|ball_x\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(11),
	datac => \ball|ball_x\(13),
	datad => \ball|pr_state.move_left~q\,
	combout => \ball|Selector5~0_combout\);

-- Location: FF_X19_Y8_N9
\ball|ball_x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector5~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(12));

-- Location: LCCOMB_X19_Y8_N26
\ball|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector4~0_combout\ = (\ball|pr_state.move_left~q\ & ((\ball|ball_x\(12)))) # (!\ball|pr_state.move_left~q\ & (\ball|ball_x\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(14),
	datac => \ball|ball_x\(12),
	datad => \ball|pr_state.move_left~q\,
	combout => \ball|Selector4~0_combout\);

-- Location: FF_X19_Y8_N27
\ball|ball_x[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector4~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(13));

-- Location: LCCOMB_X19_Y8_N12
\ball|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector3~0_combout\ = (\ball|pr_state.move_left~q\ & ((\ball|ball_x\(13)))) # (!\ball|pr_state.move_left~q\ & (\ball|ball_x\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(15),
	datac => \ball|ball_x\(13),
	datad => \ball|pr_state.move_left~q\,
	combout => \ball|Selector3~0_combout\);

-- Location: FF_X19_Y8_N13
\ball|ball_x[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector3~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	ena => \ball|ALT_INV_temporal_ball_x~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(14));

-- Location: LCCOMB_X20_Y9_N12
\ball|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball|Selector2~0_combout\ = (\ball|ball_x\(14) & ((\ball|pr_state.move_left~q\) # ((\ball|ball_x\(15) & \ball|temporal_ball_x~2_combout\)))) # (!\ball|ball_x\(14) & (((\ball|ball_x\(15) & \ball|temporal_ball_x~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(14),
	datab => \ball|pr_state.move_left~q\,
	datac => \ball|ball_x\(15),
	datad => \ball|temporal_ball_x~2_combout\,
	combout => \ball|Selector2~0_combout\);

-- Location: FF_X20_Y9_N13
\ball|ball_x[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ball|Selector2~0_combout\,
	clrn => \ALT_INV_comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ball|ball_x\(15));

-- Location: LCCOMB_X17_Y12_N6
\matrix_led|counter_1|temp[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|counter_1|temp[0]~3_combout\ = !\matrix_led|counter_1|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \matrix_led|counter_1|temp\(0),
	combout => \matrix_led|counter_1|temp[0]~3_combout\);

-- Location: FF_X17_Y12_N7
\matrix_led|counter_1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|counter_1|temp[0]~3_combout\,
	clrn => \rst_t~0_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|counter_1|temp\(0));

-- Location: LCCOMB_X17_Y12_N8
\matrix_led|counter_1|temp[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|counter_1|temp[1]~2_combout\ = \matrix_led|counter_1|temp\(1) $ (\matrix_led|counter_1|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \matrix_led|counter_1|temp\(1),
	datad => \matrix_led|counter_1|temp\(0),
	combout => \matrix_led|counter_1|temp[1]~2_combout\);

-- Location: FF_X17_Y12_N9
\matrix_led|counter_1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|counter_1|temp[1]~2_combout\,
	clrn => \rst_t~0_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|counter_1|temp\(1));

-- Location: LCCOMB_X17_Y12_N2
\matrix_led|counter_1|temp[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|counter_1|temp[2]~1_combout\ = \matrix_led|counter_1|temp\(2) $ (((\matrix_led|counter_1|temp\(1) & \matrix_led|counter_1|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \matrix_led|counter_1|temp\(1),
	datac => \matrix_led|counter_1|temp\(2),
	datad => \matrix_led|counter_1|temp\(0),
	combout => \matrix_led|counter_1|temp[2]~1_combout\);

-- Location: FF_X17_Y12_N3
\matrix_led|counter_1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|counter_1|temp[2]~1_combout\,
	clrn => \rst_t~0_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|counter_1|temp\(2));

-- Location: LCCOMB_X17_Y12_N12
\matrix_led|counter_1|temp[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|counter_1|temp[3]~0_combout\ = \matrix_led|counter_1|temp\(3) $ (((\matrix_led|counter_1|temp\(0) & (\matrix_led|counter_1|temp\(1) & \matrix_led|counter_1|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|counter_1|temp\(0),
	datab => \matrix_led|counter_1|temp\(1),
	datac => \matrix_led|counter_1|temp\(3),
	datad => \matrix_led|counter_1|temp\(2),
	combout => \matrix_led|counter_1|temp[3]~0_combout\);

-- Location: FF_X17_Y12_N13
\matrix_led|counter_1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|counter_1|temp[3]~0_combout\,
	clrn => \rst_t~0_combout\,
	ena => \ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|counter_1|temp\(3));

-- Location: LCCOMB_X17_Y12_N4
\matrix_led|counter_1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|counter_1|Equal0~0_combout\ = (\matrix_led|counter_1|temp\(0) & (\matrix_led|counter_1|temp\(2) & (\matrix_led|counter_1|temp\(1) & \matrix_led|counter_1|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|counter_1|temp\(0),
	datab => \matrix_led|counter_1|temp\(2),
	datac => \matrix_led|counter_1|temp\(1),
	datad => \matrix_led|counter_1|temp\(3),
	combout => \matrix_led|counter_1|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y12_N18
\matrix_led|next_state.draw2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|next_state.draw2~0_combout\ = (\matrix_led|counter_1|Equal0~0_combout\ & \matrix_led|pr_state.wait_second1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \matrix_led|counter_1|Equal0~0_combout\,
	datad => \matrix_led|pr_state.wait_second1~q\,
	combout => \matrix_led|next_state.draw2~0_combout\);

-- Location: FF_X17_Y12_N19
\matrix_led|pr_state.draw2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|next_state.draw2~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|pr_state.draw2~q\);

-- Location: LCCOMB_X17_Y12_N20
\matrix_led|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector17~0_combout\ = (\matrix_led|pr_state.draw2~q\) # ((!\matrix_led|counter_1|Equal0~0_combout\ & \matrix_led|pr_state.wait_second2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \matrix_led|counter_1|Equal0~0_combout\,
	datac => \matrix_led|pr_state.wait_second2~q\,
	datad => \matrix_led|pr_state.draw2~q\,
	combout => \matrix_led|Selector17~0_combout\);

-- Location: FF_X17_Y12_N21
\matrix_led|pr_state.wait_second2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector17~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|pr_state.wait_second2~q\);

-- Location: LCCOMB_X17_Y12_N26
\matrix_led|next_state.draw1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|next_state.draw1~0_combout\ = (!\matrix_led|pr_state.wait_second2~q\) # (!\matrix_led|counter_1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \matrix_led|counter_1|Equal0~0_combout\,
	datad => \matrix_led|pr_state.wait_second2~q\,
	combout => \matrix_led|next_state.draw1~0_combout\);

-- Location: FF_X17_Y12_N27
\matrix_led|pr_state.draw1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|next_state.draw1~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|pr_state.draw1~q\);

-- Location: LCCOMB_X17_Y12_N28
\matrix_led|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector16~0_combout\ = ((!\matrix_led|counter_1|Equal0~0_combout\ & \matrix_led|pr_state.wait_second1~q\)) # (!\matrix_led|pr_state.draw1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.draw1~q\,
	datab => \matrix_led|counter_1|Equal0~0_combout\,
	datac => \matrix_led|pr_state.wait_second1~q\,
	combout => \matrix_led|Selector16~0_combout\);

-- Location: FF_X17_Y12_N29
\matrix_led|pr_state.wait_second1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector16~0_combout\,
	clrn => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|pr_state.wait_second1~q\);

-- Location: LCCOMB_X19_Y8_N24
\matrix_led|temp_x[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x[0]~2_combout\ = (\ball|ball_x\(15)) # ((\matrix_led|pr_state.wait_second1~q\) # (!\matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(15),
	datac => \matrix_led|pr_state.wait_second1~q\,
	datad => \matrix_led|pr_state.draw1~q\,
	combout => \matrix_led|temp_x[0]~2_combout\);

-- Location: FF_X19_Y8_N25
\matrix_led|leds_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x[0]~2_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x\(0));

-- Location: LCCOMB_X19_Y8_N18
\matrix_led|temp_x[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x[1]~3_combout\ = (\ball|ball_x\(14) & (!\matrix_led|pr_state.wait_second1~q\ & \matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(14),
	datac => \matrix_led|pr_state.wait_second1~q\,
	datad => \matrix_led|pr_state.draw1~q\,
	combout => \matrix_led|temp_x[1]~3_combout\);

-- Location: FF_X19_Y8_N19
\matrix_led|leds_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x[1]~3_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x\(1));

-- Location: LCCOMB_X19_Y8_N16
\matrix_led|temp_x[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x[2]~4_combout\ = (\ball|ball_x\(13) & (!\matrix_led|pr_state.wait_second1~q\ & \matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(13),
	datac => \matrix_led|pr_state.wait_second1~q\,
	datad => \matrix_led|pr_state.draw1~q\,
	combout => \matrix_led|temp_x[2]~4_combout\);

-- Location: FF_X19_Y8_N17
\matrix_led|leds_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x[2]~4_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x\(2));

-- Location: LCCOMB_X19_Y8_N30
\matrix_led|temp_x[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x[3]~5_combout\ = (\ball|ball_x\(12) & (!\matrix_led|pr_state.wait_second1~q\ & \matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(12),
	datac => \matrix_led|pr_state.wait_second1~q\,
	datad => \matrix_led|pr_state.draw1~q\,
	combout => \matrix_led|temp_x[3]~5_combout\);

-- Location: FF_X19_Y8_N31
\matrix_led|leds_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x[3]~5_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x\(3));

-- Location: LCCOMB_X19_Y8_N28
\matrix_led|temp_x[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x[4]~6_combout\ = (\ball|ball_x\(11) & (!\matrix_led|pr_state.wait_second1~q\ & \matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_x\(11),
	datac => \matrix_led|pr_state.wait_second1~q\,
	datad => \matrix_led|pr_state.draw1~q\,
	combout => \matrix_led|temp_x[4]~6_combout\);

-- Location: FF_X19_Y8_N29
\matrix_led|leds_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x[4]~6_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x\(4));

-- Location: LCCOMB_X19_Y8_N2
\matrix_led|temp_x[5]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x[5]~7_combout\ = (\ball|ball_x\(10) & (!\matrix_led|pr_state.wait_second1~q\ & \matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(10),
	datac => \matrix_led|pr_state.wait_second1~q\,
	datad => \matrix_led|pr_state.draw1~q\,
	combout => \matrix_led|temp_x[5]~7_combout\);

-- Location: FF_X19_Y8_N3
\matrix_led|leds_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x[5]~7_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x\(5));

-- Location: LCCOMB_X19_Y8_N4
\matrix_led|temp_x[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x[6]~8_combout\ = (\ball|ball_x\(9) & (!\matrix_led|pr_state.wait_second1~q\ & \matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(9),
	datac => \matrix_led|pr_state.wait_second1~q\,
	datad => \matrix_led|pr_state.draw1~q\,
	combout => \matrix_led|temp_x[6]~8_combout\);

-- Location: FF_X19_Y8_N5
\matrix_led|leds_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x[6]~8_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x\(6));

-- Location: LCCOMB_X19_Y8_N22
\matrix_led|temp_x[7]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x[7]~9_combout\ = (!\ball|ball_x\(8) & (!\matrix_led|pr_state.wait_second1~q\ & \matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(8),
	datac => \matrix_led|pr_state.wait_second1~q\,
	datad => \matrix_led|pr_state.draw1~q\,
	combout => \matrix_led|temp_x[7]~9_combout\);

-- Location: FF_X19_Y8_N23
\matrix_led|leds_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x[7]~9_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x\(7));

-- Location: LCCOMB_X17_Y8_N24
\matrix_led|Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector7~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (!\ball|ball_y\(0))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & (!\ball|ball_y\(0))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- ((!\mov_left|next_pos\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(0),
	datab => \matrix_led|pr_state.draw2~q\,
	datac => \matrix_led|pr_state.wait_second2~q\,
	datad => \mov_left|next_pos\(0),
	combout => \matrix_led|Selector7~0_combout\);

-- Location: FF_X17_Y8_N25
\matrix_led|leds_y1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector7~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y1\(0));

-- Location: LCCOMB_X17_Y8_N22
\matrix_led|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector6~0_combout\ = (\matrix_led|pr_state.wait_second2~q\ & (((!\ball|ball_y\(1))))) # (!\matrix_led|pr_state.wait_second2~q\ & ((\matrix_led|pr_state.draw2~q\ & (!\ball|ball_y\(1))) # (!\matrix_led|pr_state.draw2~q\ & 
-- ((!\mov_left|next_pos\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second2~q\,
	datab => \matrix_led|pr_state.draw2~q\,
	datac => \ball|ball_y\(1),
	datad => \mov_left|next_pos\(1),
	combout => \matrix_led|Selector6~0_combout\);

-- Location: FF_X17_Y8_N23
\matrix_led|leds_y1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector6~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y1\(1));

-- Location: LCCOMB_X20_Y8_N24
\matrix_led|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector5~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (((!\ball|ball_y\(2))))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & ((!\ball|ball_y\(2)))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- (!\mov_left|next_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.draw2~q\,
	datab => \matrix_led|pr_state.wait_second2~q\,
	datac => \mov_left|next_pos\(2),
	datad => \ball|ball_y\(2),
	combout => \matrix_led|Selector5~0_combout\);

-- Location: FF_X20_Y8_N25
\matrix_led|leds_y1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector5~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y1\(2));

-- Location: LCCOMB_X20_Y8_N14
\matrix_led|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector4~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (((!\ball|ball_y\(3))))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & (!\ball|ball_y\(3))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- ((\mov_left|next_pos\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.draw2~q\,
	datab => \matrix_led|pr_state.wait_second2~q\,
	datac => \ball|ball_y\(3),
	datad => \mov_left|next_pos\(3),
	combout => \matrix_led|Selector4~0_combout\);

-- Location: FF_X20_Y8_N15
\matrix_led|leds_y1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector4~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y1\(3));

-- Location: LCCOMB_X20_Y8_N0
\matrix_led|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector3~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (((\ball|ball_y\(4))))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & (\ball|ball_y\(4))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- ((\mov_left|next_pos\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.draw2~q\,
	datab => \matrix_led|pr_state.wait_second2~q\,
	datac => \ball|ball_y\(4),
	datad => \mov_left|next_pos\(4),
	combout => \matrix_led|Selector3~0_combout\);

-- Location: FF_X20_Y8_N1
\matrix_led|leds_y1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector3~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y1\(4));

-- Location: LCCOMB_X20_Y8_N6
\matrix_led|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector2~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (((!\ball|ball_y\(5))))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & ((!\ball|ball_y\(5)))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- (\mov_left|next_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.draw2~q\,
	datab => \matrix_led|pr_state.wait_second2~q\,
	datac => \mov_left|next_pos\(5),
	datad => \ball|ball_y\(5),
	combout => \matrix_led|Selector2~0_combout\);

-- Location: FF_X20_Y8_N7
\matrix_led|leds_y1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector2~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y1\(5));

-- Location: LCCOMB_X20_Y8_N28
\matrix_led|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector1~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (((!\ball|ball_y\(6))))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & ((!\ball|ball_y\(6)))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- (!\mov_left|next_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.draw2~q\,
	datab => \mov_left|next_pos\(6),
	datac => \ball|ball_y\(6),
	datad => \matrix_led|pr_state.wait_second2~q\,
	combout => \matrix_led|Selector1~0_combout\);

-- Location: FF_X20_Y8_N29
\matrix_led|leds_y1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector1~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y1\(6));

-- Location: LCCOMB_X20_Y8_N26
\matrix_led|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector0~0_combout\ = (\matrix_led|pr_state.wait_second2~q\ & (!\ball|ball_y\(7))) # (!\matrix_led|pr_state.wait_second2~q\ & ((\matrix_led|pr_state.draw2~q\ & (!\ball|ball_y\(7))) # (!\matrix_led|pr_state.draw2~q\ & 
-- ((!\mov_left|next_pos\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second2~q\,
	datab => \ball|ball_y\(7),
	datac => \matrix_led|pr_state.draw2~q\,
	datad => \mov_left|next_pos\(7),
	combout => \matrix_led|Selector0~0_combout\);

-- Location: FF_X20_Y8_N27
\matrix_led|leds_y1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector0~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y1\(7));

-- Location: LCCOMB_X16_Y8_N24
\matrix_led|temp_x2[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x2[0]~0_combout\ = (!\matrix_led|pr_state.wait_second1~q\ & (\matrix_led|pr_state.draw1~q\ & \ball|ball_x\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second1~q\,
	datab => \matrix_led|pr_state.draw1~q\,
	datad => \ball|ball_x\(7),
	combout => \matrix_led|temp_x2[0]~0_combout\);

-- Location: FF_X16_Y8_N25
\matrix_led|leds_x2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x2[0]~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x2\(0));

-- Location: LCCOMB_X16_Y8_N14
\matrix_led|temp_x2[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x2[1]~1_combout\ = (!\matrix_led|pr_state.wait_second1~q\ & (\matrix_led|pr_state.draw1~q\ & \ball|ball_x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second1~q\,
	datab => \matrix_led|pr_state.draw1~q\,
	datad => \ball|ball_x\(6),
	combout => \matrix_led|temp_x2[1]~1_combout\);

-- Location: FF_X16_Y8_N15
\matrix_led|leds_x2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x2[1]~1_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x2\(1));

-- Location: LCCOMB_X16_Y8_N0
\matrix_led|temp_x2[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x2[2]~2_combout\ = (!\matrix_led|pr_state.wait_second1~q\ & (\matrix_led|pr_state.draw1~q\ & \ball|ball_x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second1~q\,
	datab => \matrix_led|pr_state.draw1~q\,
	datad => \ball|ball_x\(5),
	combout => \matrix_led|temp_x2[2]~2_combout\);

-- Location: FF_X16_Y8_N1
\matrix_led|leds_x2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x2[2]~2_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x2\(2));

-- Location: LCCOMB_X16_Y8_N30
\matrix_led|temp_x2[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x2[3]~3_combout\ = (!\matrix_led|pr_state.wait_second1~q\ & (\matrix_led|pr_state.draw1~q\ & \ball|ball_x\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second1~q\,
	datab => \matrix_led|pr_state.draw1~q\,
	datad => \ball|ball_x\(4),
	combout => \matrix_led|temp_x2[3]~3_combout\);

-- Location: FF_X16_Y8_N31
\matrix_led|leds_x2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x2[3]~3_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x2\(3));

-- Location: LCCOMB_X16_Y8_N16
\matrix_led|temp_x2[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x2[4]~4_combout\ = (!\matrix_led|pr_state.wait_second1~q\ & (\matrix_led|pr_state.draw1~q\ & \ball|ball_x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second1~q\,
	datab => \matrix_led|pr_state.draw1~q\,
	datad => \ball|ball_x\(3),
	combout => \matrix_led|temp_x2[4]~4_combout\);

-- Location: FF_X16_Y8_N17
\matrix_led|leds_x2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x2[4]~4_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x2\(4));

-- Location: LCCOMB_X16_Y8_N10
\matrix_led|temp_x2[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x2[5]~5_combout\ = (\ball|ball_x\(2) & (!\matrix_led|pr_state.wait_second1~q\ & \matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ball|ball_x\(2),
	datac => \matrix_led|pr_state.wait_second1~q\,
	datad => \matrix_led|pr_state.draw1~q\,
	combout => \matrix_led|temp_x2[5]~5_combout\);

-- Location: FF_X16_Y8_N11
\matrix_led|leds_x2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x2[5]~5_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x2\(5));

-- Location: LCCOMB_X16_Y8_N12
\matrix_led|temp_x2[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x2[6]~6_combout\ = (!\matrix_led|pr_state.wait_second1~q\ & (\matrix_led|pr_state.draw1~q\ & \ball|ball_x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second1~q\,
	datab => \matrix_led|pr_state.draw1~q\,
	datad => \ball|ball_x\(1),
	combout => \matrix_led|temp_x2[6]~6_combout\);

-- Location: FF_X16_Y8_N13
\matrix_led|leds_x2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x2[6]~6_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x2\(6));

-- Location: LCCOMB_X16_Y8_N22
\matrix_led|temp_x2[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|temp_x2[7]~7_combout\ = (\matrix_led|pr_state.wait_second1~q\) # ((\ball|ball_x\(0)) # (!\matrix_led|pr_state.draw1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second1~q\,
	datab => \matrix_led|pr_state.draw1~q\,
	datad => \ball|ball_x\(0),
	combout => \matrix_led|temp_x2[7]~7_combout\);

-- Location: FF_X16_Y8_N23
\matrix_led|leds_x2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|temp_x2[7]~7_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_x2\(7));

-- Location: LCCOMB_X17_Y8_N16
\matrix_led|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector15~0_combout\ = (\matrix_led|pr_state.wait_second2~q\ & (!\ball|ball_y\(0))) # (!\matrix_led|pr_state.wait_second2~q\ & ((\matrix_led|pr_state.draw2~q\ & (!\ball|ball_y\(0))) # (!\matrix_led|pr_state.draw2~q\ & 
-- ((!\mov_right|next_pos\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(0),
	datab => \mov_right|next_pos\(0),
	datac => \matrix_led|pr_state.wait_second2~q\,
	datad => \matrix_led|pr_state.draw2~q\,
	combout => \matrix_led|Selector15~0_combout\);

-- Location: FF_X17_Y8_N17
\matrix_led|leds_y2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector15~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y2\(0));

-- Location: LCCOMB_X17_Y8_N10
\matrix_led|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector14~0_combout\ = (\matrix_led|pr_state.wait_second2~q\ & (((!\ball|ball_y\(1))))) # (!\matrix_led|pr_state.wait_second2~q\ & ((\matrix_led|pr_state.draw2~q\ & (!\ball|ball_y\(1))) # (!\matrix_led|pr_state.draw2~q\ & 
-- ((!\mov_right|next_pos\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second2~q\,
	datab => \matrix_led|pr_state.draw2~q\,
	datac => \ball|ball_y\(1),
	datad => \mov_right|next_pos\(1),
	combout => \matrix_led|Selector14~0_combout\);

-- Location: FF_X17_Y8_N11
\matrix_led|leds_y2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector14~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y2\(1));

-- Location: LCCOMB_X20_Y8_N4
\matrix_led|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector13~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (!\ball|ball_y\(2))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & (!\ball|ball_y\(2))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- ((!\mov_right|next_pos\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball|ball_y\(2),
	datab => \mov_right|next_pos\(2),
	datac => \matrix_led|pr_state.draw2~q\,
	datad => \matrix_led|pr_state.wait_second2~q\,
	combout => \matrix_led|Selector13~0_combout\);

-- Location: FF_X20_Y8_N5
\matrix_led|leds_y2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector13~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y2\(2));

-- Location: LCCOMB_X20_Y8_N18
\matrix_led|Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector12~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (((!\ball|ball_y\(3))))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & (!\ball|ball_y\(3))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- ((\mov_right|next_pos\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.draw2~q\,
	datab => \matrix_led|pr_state.wait_second2~q\,
	datac => \ball|ball_y\(3),
	datad => \mov_right|next_pos\(3),
	combout => \matrix_led|Selector12~0_combout\);

-- Location: FF_X20_Y8_N19
\matrix_led|leds_y2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector12~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y2\(3));

-- Location: LCCOMB_X20_Y8_N16
\matrix_led|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector11~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (((\ball|ball_y\(4))))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & (\ball|ball_y\(4))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- ((\mov_right|next_pos\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.draw2~q\,
	datab => \matrix_led|pr_state.wait_second2~q\,
	datac => \ball|ball_y\(4),
	datad => \mov_right|next_pos\(4),
	combout => \matrix_led|Selector11~0_combout\);

-- Location: FF_X20_Y8_N17
\matrix_led|leds_y2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector11~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y2\(4));

-- Location: LCCOMB_X20_Y8_N10
\matrix_led|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector10~0_combout\ = (\matrix_led|pr_state.wait_second2~q\ & (!\ball|ball_y\(5))) # (!\matrix_led|pr_state.wait_second2~q\ & ((\matrix_led|pr_state.draw2~q\ & (!\ball|ball_y\(5))) # (!\matrix_led|pr_state.draw2~q\ & 
-- ((\mov_right|next_pos\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.wait_second2~q\,
	datab => \ball|ball_y\(5),
	datac => \matrix_led|pr_state.draw2~q\,
	datad => \mov_right|next_pos\(5),
	combout => \matrix_led|Selector10~0_combout\);

-- Location: FF_X20_Y8_N11
\matrix_led|leds_y2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector10~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y2\(5));

-- Location: LCCOMB_X20_Y8_N20
\matrix_led|Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector9~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (((!\ball|ball_y\(6))))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & (!\ball|ball_y\(6))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- ((!\mov_right|next_pos\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \matrix_led|pr_state.draw2~q\,
	datab => \matrix_led|pr_state.wait_second2~q\,
	datac => \ball|ball_y\(6),
	datad => \mov_right|next_pos\(6),
	combout => \matrix_led|Selector9~0_combout\);

-- Location: FF_X20_Y8_N21
\matrix_led|leds_y2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector9~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y2\(6));

-- Location: LCCOMB_X20_Y8_N30
\matrix_led|Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \matrix_led|Selector8~0_combout\ = (\matrix_led|pr_state.draw2~q\ & (((!\ball|ball_y\(7))))) # (!\matrix_led|pr_state.draw2~q\ & ((\matrix_led|pr_state.wait_second2~q\ & ((!\ball|ball_y\(7)))) # (!\matrix_led|pr_state.wait_second2~q\ & 
-- (!\mov_right|next_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mov_right|next_pos\(7),
	datab => \ball|ball_y\(7),
	datac => \matrix_led|pr_state.draw2~q\,
	datad => \matrix_led|pr_state.wait_second2~q\,
	combout => \matrix_led|Selector8~0_combout\);

-- Location: FF_X20_Y8_N31
\matrix_led|leds_y2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \matrix_led|Selector8~0_combout\,
	ena => \rst_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \matrix_led|leds_y2\(7));

-- Location: FF_X27_Y28_N9
\game|points_pyLeft[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \game|points_Left_next[0]~0_combout\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_pyLeft\(0));

-- Location: FF_X27_Y28_N3
\game|points_pyLeft[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Left_next[1]~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_pyLeft\(1));

-- Location: FF_X27_Y28_N29
\game|points_pyLeft[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Left_next[2]~2_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_pyLeft\(2));

-- Location: FF_X27_Y28_N15
\game|points_pyLeft[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \game|points_Left_next[3]~3_combout\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_pyLeft\(3));

-- Location: LCCOMB_X27_Y28_N16
\bin_to_sseg_pyleft|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyleft|Mux6~0_combout\ = (!\game|points_pyLeft\(1) & (!\game|points_pyLeft\(3) & (\game|points_pyLeft\(0) $ (\game|points_pyLeft\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyLeft\(0),
	datab => \game|points_pyLeft\(1),
	datac => \game|points_pyLeft\(2),
	datad => \game|points_pyLeft\(3),
	combout => \bin_to_sseg_pyleft|Mux6~0_combout\);

-- Location: LCCOMB_X27_Y28_N22
\bin_to_sseg_pyleft|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyleft|Mux5~0_combout\ = (\game|points_pyLeft\(2) & ((\game|points_pyLeft\(3)) # (\game|points_pyLeft\(0) $ (\game|points_pyLeft\(1))))) # (!\game|points_pyLeft\(2) & (((\game|points_pyLeft\(1) & \game|points_pyLeft\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyLeft\(0),
	datab => \game|points_pyLeft\(1),
	datac => \game|points_pyLeft\(2),
	datad => \game|points_pyLeft\(3),
	combout => \bin_to_sseg_pyleft|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\bin_to_sseg_pyleft|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyleft|Mux4~0_combout\ = (\game|points_pyLeft\(2) & (((\game|points_pyLeft\(3))))) # (!\game|points_pyLeft\(2) & (\game|points_pyLeft\(1) & ((\game|points_pyLeft\(3)) # (!\game|points_pyLeft\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyLeft\(0),
	datab => \game|points_pyLeft\(1),
	datac => \game|points_pyLeft\(2),
	datad => \game|points_pyLeft\(3),
	combout => \bin_to_sseg_pyleft|Mux4~0_combout\);

-- Location: LCCOMB_X27_Y28_N10
\bin_to_sseg_pyleft|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyleft|Mux3~0_combout\ = (!\game|points_pyLeft\(3) & ((\game|points_pyLeft\(0) & (\game|points_pyLeft\(1) $ (!\game|points_pyLeft\(2)))) # (!\game|points_pyLeft\(0) & (!\game|points_pyLeft\(1) & \game|points_pyLeft\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyLeft\(0),
	datab => \game|points_pyLeft\(1),
	datac => \game|points_pyLeft\(2),
	datad => \game|points_pyLeft\(3),
	combout => \bin_to_sseg_pyleft|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N20
\bin_to_sseg_pyleft|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyleft|Mux2~0_combout\ = (\game|points_pyLeft\(1) & (\game|points_pyLeft\(0) & ((!\game|points_pyLeft\(3))))) # (!\game|points_pyLeft\(1) & ((\game|points_pyLeft\(2) & ((!\game|points_pyLeft\(3)))) # (!\game|points_pyLeft\(2) & 
-- (\game|points_pyLeft\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyLeft\(0),
	datab => \game|points_pyLeft\(1),
	datac => \game|points_pyLeft\(2),
	datad => \game|points_pyLeft\(3),
	combout => \bin_to_sseg_pyleft|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y28_N6
\bin_to_sseg_pyleft|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyleft|Mux1~0_combout\ = (!\game|points_pyLeft\(3) & ((\game|points_pyLeft\(0) & ((\game|points_pyLeft\(1)) # (!\game|points_pyLeft\(2)))) # (!\game|points_pyLeft\(0) & (\game|points_pyLeft\(1) & !\game|points_pyLeft\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyLeft\(0),
	datab => \game|points_pyLeft\(1),
	datac => \game|points_pyLeft\(2),
	datad => \game|points_pyLeft\(3),
	combout => \bin_to_sseg_pyleft|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y28_N24
\bin_to_sseg_pyleft|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyleft|Mux0~0_combout\ = (\game|points_pyLeft\(3)) # ((\game|points_pyLeft\(1) & ((!\game|points_pyLeft\(2)) # (!\game|points_pyLeft\(0)))) # (!\game|points_pyLeft\(1) & ((\game|points_pyLeft\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyLeft\(0),
	datab => \game|points_pyLeft\(1),
	datac => \game|points_pyLeft\(2),
	datad => \game|points_pyLeft\(3),
	combout => \bin_to_sseg_pyleft|Mux0~0_combout\);

-- Location: FF_X33_Y28_N7
\game|points_pyRight[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \game|points_Right_next[3]~3_combout\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_pyRight\(3));

-- Location: FF_X33_Y28_N13
\game|points_pyRight[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Right_next[2]~2_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_pyRight\(2));

-- Location: FF_X33_Y28_N17
\game|points_pyRight[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game|points_Right_next[0]~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_pyRight\(0));

-- Location: FF_X33_Y28_N15
\game|points_pyRight[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \game|points_Right_next[1]~1_combout\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game|points_pyRight\(1));

-- Location: LCCOMB_X33_Y28_N0
\bin_to_sseg_pyright|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyright|Mux6~0_combout\ = (!\game|points_pyRight\(3) & (!\game|points_pyRight\(1) & (\game|points_pyRight\(2) $ (\game|points_pyRight\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyRight\(3),
	datab => \game|points_pyRight\(2),
	datac => \game|points_pyRight\(0),
	datad => \game|points_pyRight\(1),
	combout => \bin_to_sseg_pyright|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y28_N10
\bin_to_sseg_pyright|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyright|Mux5~0_combout\ = (\game|points_pyRight\(3) & ((\game|points_pyRight\(2)) # ((\game|points_pyRight\(1))))) # (!\game|points_pyRight\(3) & (\game|points_pyRight\(2) & (\game|points_pyRight\(0) $ (\game|points_pyRight\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyRight\(3),
	datab => \game|points_pyRight\(2),
	datac => \game|points_pyRight\(0),
	datad => \game|points_pyRight\(1),
	combout => \bin_to_sseg_pyright|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y28_N24
\bin_to_sseg_pyright|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyright|Mux4~0_combout\ = (\game|points_pyRight\(2) & (\game|points_pyRight\(3))) # (!\game|points_pyRight\(2) & (\game|points_pyRight\(1) & ((\game|points_pyRight\(3)) # (!\game|points_pyRight\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyRight\(3),
	datab => \game|points_pyRight\(2),
	datac => \game|points_pyRight\(0),
	datad => \game|points_pyRight\(1),
	combout => \bin_to_sseg_pyright|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y28_N30
\bin_to_sseg_pyright|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyright|Mux3~0_combout\ = (!\game|points_pyRight\(3) & ((\game|points_pyRight\(2) & (\game|points_pyRight\(0) $ (!\game|points_pyRight\(1)))) # (!\game|points_pyRight\(2) & (\game|points_pyRight\(0) & !\game|points_pyRight\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyRight\(3),
	datab => \game|points_pyRight\(2),
	datac => \game|points_pyRight\(0),
	datad => \game|points_pyRight\(1),
	combout => \bin_to_sseg_pyright|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y28_N4
\bin_to_sseg_pyright|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyright|Mux2~0_combout\ = (\game|points_pyRight\(1) & (!\game|points_pyRight\(3) & ((\game|points_pyRight\(0))))) # (!\game|points_pyRight\(1) & ((\game|points_pyRight\(2) & (!\game|points_pyRight\(3))) # (!\game|points_pyRight\(2) & 
-- ((\game|points_pyRight\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyRight\(3),
	datab => \game|points_pyRight\(2),
	datac => \game|points_pyRight\(0),
	datad => \game|points_pyRight\(1),
	combout => \bin_to_sseg_pyright|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y28_N26
\bin_to_sseg_pyright|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyright|Mux1~0_combout\ = (!\game|points_pyRight\(3) & ((\game|points_pyRight\(2) & (\game|points_pyRight\(0) & \game|points_pyRight\(1))) # (!\game|points_pyRight\(2) & ((\game|points_pyRight\(0)) # (\game|points_pyRight\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyRight\(3),
	datab => \game|points_pyRight\(2),
	datac => \game|points_pyRight\(0),
	datad => \game|points_pyRight\(1),
	combout => \bin_to_sseg_pyright|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y28_N6
\bin_to_sseg_pyright|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bin_to_sseg_pyright|Mux0~0_combout\ = (\game|points_pyRight\(3)) # ((\game|points_pyRight\(2) & ((!\game|points_pyRight\(1)) # (!\game|points_pyRight\(0)))) # (!\game|points_pyRight\(2) & ((\game|points_pyRight\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game|points_pyRight\(0),
	datab => \game|points_pyRight\(2),
	datac => \game|points_pyRight\(3),
	datad => \game|points_pyRight\(1),
	combout => \bin_to_sseg_pyright|Mux0~0_combout\);

ww_leds_x(0) <= \leds_x[0]~output_o\;

ww_leds_x(1) <= \leds_x[1]~output_o\;

ww_leds_x(2) <= \leds_x[2]~output_o\;

ww_leds_x(3) <= \leds_x[3]~output_o\;

ww_leds_x(4) <= \leds_x[4]~output_o\;

ww_leds_x(5) <= \leds_x[5]~output_o\;

ww_leds_x(6) <= \leds_x[6]~output_o\;

ww_leds_x(7) <= \leds_x[7]~output_o\;

ww_leds_y1(0) <= \leds_y1[0]~output_o\;

ww_leds_y1(1) <= \leds_y1[1]~output_o\;

ww_leds_y1(2) <= \leds_y1[2]~output_o\;

ww_leds_y1(3) <= \leds_y1[3]~output_o\;

ww_leds_y1(4) <= \leds_y1[4]~output_o\;

ww_leds_y1(5) <= \leds_y1[5]~output_o\;

ww_leds_y1(6) <= \leds_y1[6]~output_o\;

ww_leds_y1(7) <= \leds_y1[7]~output_o\;

ww_leds_x2(0) <= \leds_x2[0]~output_o\;

ww_leds_x2(1) <= \leds_x2[1]~output_o\;

ww_leds_x2(2) <= \leds_x2[2]~output_o\;

ww_leds_x2(3) <= \leds_x2[3]~output_o\;

ww_leds_x2(4) <= \leds_x2[4]~output_o\;

ww_leds_x2(5) <= \leds_x2[5]~output_o\;

ww_leds_x2(6) <= \leds_x2[6]~output_o\;

ww_leds_x2(7) <= \leds_x2[7]~output_o\;

ww_leds_y2(0) <= \leds_y2[0]~output_o\;

ww_leds_y2(1) <= \leds_y2[1]~output_o\;

ww_leds_y2(2) <= \leds_y2[2]~output_o\;

ww_leds_y2(3) <= \leds_y2[3]~output_o\;

ww_leds_y2(4) <= \leds_y2[4]~output_o\;

ww_leds_y2(5) <= \leds_y2[5]~output_o\;

ww_leds_y2(6) <= \leds_y2[6]~output_o\;

ww_leds_y2(7) <= \leds_y2[7]~output_o\;

ww_pointsPLeft(0) <= \pointsPLeft[0]~output_o\;

ww_pointsPLeft(1) <= \pointsPLeft[1]~output_o\;

ww_pointsPLeft(2) <= \pointsPLeft[2]~output_o\;

ww_pointsPLeft(3) <= \pointsPLeft[3]~output_o\;

ww_pointsPLeft(4) <= \pointsPLeft[4]~output_o\;

ww_pointsPLeft(5) <= \pointsPLeft[5]~output_o\;

ww_pointsPLeft(6) <= \pointsPLeft[6]~output_o\;

ww_pointsPRight(0) <= \pointsPRight[0]~output_o\;

ww_pointsPRight(1) <= \pointsPRight[1]~output_o\;

ww_pointsPRight(2) <= \pointsPRight[2]~output_o\;

ww_pointsPRight(3) <= \pointsPRight[3]~output_o\;

ww_pointsPRight(4) <= \pointsPRight[4]~output_o\;

ww_pointsPRight(5) <= \pointsPRight[5]~output_o\;

ww_pointsPRight(6) <= \pointsPRight[6]~output_o\;
END structure;


