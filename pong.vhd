LIBRARY IEEE;
use ieee.numeric_std.all;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY pong IS

	PORT(
				clk						:	in		std_logic;
				ena						:	in		std_logic;
				rst						:	in		std_logic;
				button_up				:	in		std_logic;
				button_down				:	in		std_logic;
				button_up_2				:	in		std_logic;
				button_down_2			:	in		std_logic;
				--matriz izquierda
				leds_x					: 	out	std_logic_vector(7 downto 0);
				leds_y1					: 	out	std_logic_vector(7 downto 0);
				--matriz derecha 
				leds_x2					: 	out	std_logic_vector(7 downto 0);
				leds_y2					: 	out	std_logic_vector(7 downto 0);
				pointsPLeft				: 	out	std_logic_vector(6 downto 0);
				pointsPRight				: 	out	std_logic_vector(6 downto 0)
			);

END ENTITY pong;
-------------------------------------------------------
architecture logic of pong is
signal		actual_pos_l					:			std_logic_vector(7 downto 0);
signal		next_pos_l					:			std_logic_vector(7 downto 0);
signal		actual_pos_r					:			std_logic_vector(7 downto 0);
signal		next_pos_r					:			std_logic_vector(7 downto 0);
signal		ball_m1_x,ball_m1_y,ball_m2_x,ball_m2_y : std_logic_vector(7 DOWNTO 0);
signal		next_ball_m1_x, next_ball_m2_x, next_ball_y : std_logic_vector(7 DOWNTO 0);
signal		left_righ,rst_t					:std_logic := '1';
signal 		direction : std_logic_vector(1 downto 0);
signal 		playerLeft, playerRight			:std_logic_vector(3 downto 0);
signal		goal,win	:std_logic;
begin
	rst_t <= not rst or win;
	matrix_led: entity work.to_matrix
	port map(
					clk => clk,
					ena => ena,
					rst => rst_t,
					racket_left =>actual_pos_l,
					racket_right => actual_pos_r,
					ball_m1_x => ball_m1_x,
					ball_m1_y => ball_m1_y,
					ball_m2_x => ball_m2_x,
					ball_m2_y => ball_m2_y,
					leds_x => leds_x,
					leds_y1 => leds_y1,
					leds_x2 => leds_x2,
					leds_y2 => leds_y2
	);
	bin_to_sseg_pyleft: entity work.bin_to_sseg
	port map(
		bin =>playerLeft,
		sseg =>pointsPLeft
	);
	bin_to_sseg_pyright: entity work.bin_to_sseg
	port map(
		bin =>playerRight,
		sseg =>pointsPRight
	);

	mov_left: entity work.racket_mov
	port map(
					clk => clk,
					rst => rst_t,
					ena => ena,
					button_r =>  button_up,
					button_l =>  button_down,
					actual_pos => actual_pos_l,
					next_pos => next_pos_l
				);
	actual_pos_l <= next_pos_l;
	mov_right: entity work.racket_mov
	port map(
					clk => clk,
					rst => rst_t,
					ena => ena,
					button_r =>  button_up_2,
					button_l =>  button_down_2,
					actual_pos => actual_pos_r,
					next_pos => next_pos_r
				);
	actual_pos_r <=next_pos_r;

	game: entity work.gameStates 
	port map (
		clk					=>  clk ,
		ena					=>   ena,
		rst					=>  not rst ,
		direction 			=>   direction,
		left_righ			=>   left_righ,
		ball_m1_x 			=>   ball_m1_x,
		ball_m1_y 			=>   ball_m1_y,
		ball_m2_x			=>	 ball_m2_x,
		ball_m2_y 			=>   ball_m2_y,
		racket_left			=>  actual_pos_l ,
		racket_right		=>	actual_pos_r ,
		points_pyLeft		=> playerLeft	,
		points_pyRight		=>	playerRight,
		autoResetBall 		=> goal,
		win					=> win

	);
	ball: entity work.ball_move
	port map(
				clk						=>   clk,
				ena						=>   ena,
				rst						=> rst_t or goal or win,
				direction				=> direction,
				left_righ				=> left_righ,
				next_ball_m1_x		=> next_ball_m1_x,
				next_ball_m2_x		=> next_ball_m2_x,
				next_ball_y		=> next_ball_y

	);
	ball_m1_x		<= next_ball_m1_x;
	ball_m1_y		<= next_ball_y;
	ball_m2_x		<= next_ball_m2_x;
	ball_m2_y		<= next_ball_y;
end architecture;
