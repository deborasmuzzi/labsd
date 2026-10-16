library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity soda_machine is
	port(
	m, e : in std_logic;
	a : in std_logic_vector(2 downto 0);
	r : in std_logic_vector(1 downto 0); 
	sys_on, d : out std_logic;
	tot_coins : out std_logic_vector(7 downto 0);
	clk : in std_logic
	);
end soda_machine;

architecture arch of soda_machine is
	signal tot_ld_S, tot_clr_S : std_logic;
	signal tot_lt_s_S, c_S : std_logic;
	signal clk_sys_S : std_logic;
	

begin 
	datapath : entity work.datapath
	port map(
	tot_ld => tot_ld_S,
	tot_clr => tot_clr_S,
	clk_sys => clk_sys_S,
	--para testbench
	--clk_sys => clk,
	A => a,
	R => r,
	tot_coins => tot_coins,
	c => c_S,
	tot_lt_s => tot_lt_s_S
	);
	
	controller : entity work.controller
	port map (
	m => m,
	e => e,
	d => d,
	sys_on => sys_on,
	clk => clk_sys_S,
	-- para testbench 
	--clk => clk,
	tot_ld => tot_ld_S,
	tot_clr => tot_clr_S,
	c => c_S,
	tot_lt_s => tot_lt_s_S
	);
	
	clock_div : entity work.clock_div
	port map(
	clock => clk,
	clock_mod => clk_sys_S
	);
end arch;
