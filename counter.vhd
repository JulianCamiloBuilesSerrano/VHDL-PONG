LIBRARY IEEE;
USE ieee.std_logic_1164.all;
-------------------------------------------------------
ENTITY counter IS
	PORT(		clk        : IN STD_LOGIC;
				salida1	  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
				salida2	  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
				salida3	  : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
				puls       : IN STD_LOGIC;
				ena        : IN STD_LOGIC;
				syn_clr    : IN STD_LOGIC);
				
END ENTITY counter;
-------------------------------------------
ARCHITECTURE behaviour OF counter IS

SIGNAL max0, max1, max2, max3 : STD_LOGIC;
SIGNAL min0, min1, min2, min3 : STD_LOGIC;
SIGNAL n1,n2,n3	            :  STD_LOGIC_VECTOR(3 dowNTO 0);
SIGNAL      load       :  STD_LOGIC;
SIGNAL	  limit       :  STD_LOGIC;
SIGNAL      up         :  STD_LOGIC;
SIGNAL      d          :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL		p          :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL      n0         :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL      x          :  STD_LOGIC;
SIGNAL     rst         :  STD_LOGIC;

BEGIN

   rst <= NOT puls;
	load <= '0';
	limit <= '1';
	up <= '1';
	d <= "0000";
	p <= "1001";
	counter_1: ENTITY work.univ_bin_counter
	GENERIC MAP (N => 24)
	PORT MAP(
				clk        => clk,
            rst        => rst,
            ena        => ena,
            syn_clr    => syn_clr,
            load       => load,
				limit      => limit,
            up         => up,
            d          => "000000000000000000000000",
			p          => "010011000100101101000000",
            max_tick   => max0,
            min_tick   => min0,
            counter    => n0);
				
	counter_2: ENTITY work.univ_bin_counter
	GENERIC MAP (N => 4)
	PORT MAP(
				clk        => max0,
            rst        => rst,
            ena        => ena,
            syn_clr    => syn_clr,
            load       => load,
				limit      => limit,
            up         => up,
            d          => d,
				p          => p,
            max_tick   => max1,
            min_tick   => min1,
            counter    => n1);		
				
	counter_3: ENTITY work.univ_bin_counter
	GENERIC MAP (N => 4)
	PORT MAP(
				clk        => max1,
            rst        => rst,
            ena        => ena,
            syn_clr    => syn_clr,
            load       => load,
				limit      => limit,
            up         => up,
            d          => d,
				p          => p,
            max_tick   => max2,
            min_tick   => min2,
            counter    => n2);
				
	x <= NOT max2;
	
	
	counter_4: ENTITY work.univ_bin_counter
	GENERIC MAP (N => 4)
	PORT MAP(
				clk        => x,
            rst        => rst,
            ena        => ena,
            syn_clr    => syn_clr,
            load       => load,
				limit      => limit,
            up         => up,
            d          => d,
				p          => p,
            max_tick   => max3,
            min_tick   => min3,
            counter    => n3);

	number_1: ENTITY work.bin_to_sseg PORT MAP(bin => n1, sseg => salida1);
	number_2: ENTITY work.bin_to_sseg PORT MAP(bin => n2, sseg => salida2);
	number_3: ENTITY work.bin_to_sseg PORT MAP(bin => n3, sseg => salida3);
END behaviour;