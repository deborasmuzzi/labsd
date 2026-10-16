library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity soda_machine_tb is
end entity;

architecture arch of soda_machine_tb is
	signal clk_tb : std_logic := '0';
	signal m_tb, e_tb : std_logic := '0'; 
	signal a_tb : std_logic_vector(2 downto 0) := "000";
	signal r_tb : std_logic_vector(1 downto 0) := "00"; 
	signal sys_on_tb, d_tb : std_logic;
	signal tot_coins_tb : std_logic_vector(7 downto 0);
	
begin 
	
	dut: entity work.soda_machine
	port map(
	e => e_tb,
	m => m_tb,
	clk => clk_tb,
	d => d_tb,
	sys_on => sys_on_tb,
	a => a_tb,
	r => r_tb,
	tot_coins => tot_coins_tb
	);

	clk_tb <= not clk_tb after 10 ns;
	
	stimulus: process 
	begin
	

	 e_tb <= '0';
    m_tb <= '0';
    a_tb <= "000";
    r_tb <= "00";
	
	wait for 25 ns;
	
	e_tb <= '1'; 
	r_tb <= "01";
	wait for 40 ns;

	a_tb <= "100";
	wait for 40 ns;
	
	a_tb <= "000";
	wait for 40 ns;
	
	m_tb <= '1';
	wait for 40 ns;
	
	m_tb <= '0';
	wait for 40 ns;
	
	e_tb <= '0';
	wait for 40 ns;
	
	a_tb <= "100";
	e_tb <= '1';
	wait for 40 ns;
	
	a_tb <= "000";
	wait for 40 ns;
	
	a_tb <= "010";
	wait for 40 ns;
	
	a_tb <= "000";
	wait for 40 ns;
	
	a_tb <= "001";
	wait for 40 ns;

	e_tb <= '0';
	a_tb <= "000";
	wait for 60 ns;
	
	wait;
	end process;
end;
	

