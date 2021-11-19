LIBRARY IEEE;
use ieee.numeric_std.all;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY pong_tb IS


END ENTITY pong_tb;
-------------------------------------------------------
architecture tb of pong_tb is
signal		clk_tb					:			std_logic := '0';
signal		rst_tb					:			std_logic := '0';
signal		ena_tb					:			std_logic := '0';
signal		button_down_tb			:			std_logic := '0';
signal		button_up_tb			:			std_logic := '0';
signal		racket_left_tb			:			std_logic_vector(7 downto 0);
signal		racket_right_tb		:			std_logic_vector(7 downto 0);
signal 		nexpos_left_tb		:			std_logic_vector( 7  downto 0);
signal		leds_x,leds_y1,leds_x2,leds_y2			:			std_logic_vector(7 downto 0);
begin

	clk_tb	<=	not clk_tb after 1ns;

	ena_tb	<=	'1' after 1ns;

	rst_tb	<=		'0' after 2ns,
						'1' after 5ns;

	button_down_tb	<=	'1' after 20ns,
							'0' after 30ns,
							'1' after 50ns,
							'0' after 60ns;

	button_up_tb	<=	'1' after 70ns,
							'0' after 80ns,
							'1' after 100ns,
							'0' after 110ns;

	prueba: entity work.pong
	port map(
					clk => clk_tb,
					ena => ena_tb,
					rst => rst_tb,
					button_up => button_up_tb,
					button_down => button_down_tb,
					button_up_2				=> button_up_tb,
					button_down_2			=> button_down_tb,
					leds_x					=>leds_x,
					leds_y1					=>leds_y1,
					leds_x2					=>leds_x2,
					leds_y2					=>leds_y2
				);


end architecture;