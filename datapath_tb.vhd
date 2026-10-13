library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath_tb is
end entity;

architecture arch of datapath_tb is

	signal tot_ld_tb, tot_clr_tb : std_logic := '0';
	signal clk_sys_tb : std_logic := '0';
	signal A_tb : std_logic_vector(2 downto 0) := "000";
	signal R_tb : std_logic_vector(1 downto 0) := "00";
	signal tot_lt_s_tb, c_tb : std_logic;
	signal tot_coins_tb : std_logic_vector(7 downto 0);

begin

	dut: entity work.datapath
	port map(
		tot_ld => tot_ld_tb,
		tot_clr => tot_clr_tb,
		clk_sys => clk_sys_tb,
		A => A_tb,
		R => R_tb,
		tot_lt_s => tot_lt_s_tb,
		c => c_tb,
		tot_coins => tot_coins_tb
		);
		
	clk_sys_tb <= not clk_sys_tb after 10 ns;
	
	
	stimulus : process
    begin
        wait for 5 ns;
        tot_clr_tb <= '1';
        tot_ld_tb  <= '0';
        A_tb       <= "000";
        R_tb       <= "00";
        wait for 20 ns;
        tot_clr_tb <= '0';
        wait for 20 ns;

        A_tb <= "010";
        wait for 20 ns;

        tot_ld_tb <= '1';
        wait for 20 ns;
        tot_ld_tb <= '0';
        wait for 20 ns;

        A_tb      <= "011";
        tot_ld_tb <= '1';
        wait for 20 ns;
        tot_ld_tb <= '0';
        wait for 20 ns;

        A_tb      <= "101";
        tot_ld_tb <= '1';
        wait for 20 ns;
        tot_ld_tb <= '0';
        wait for 40 ns;

        tot_clr_tb <= '1';
        wait for 20 ns;
        tot_clr_tb <= '0';
        wait for 20 ns;

        R_tb      <= "01";
        A_tb      <= "111";
        tot_ld_tb <= '1';
        wait for 20 ns;
        tot_ld_tb <= '0';
        wait for 40 ns;

        R_tb <= "10";
        wait for 40 ns;

        A_tb      <= "001";
        tot_ld_tb <= '1';
        wait for 60 ns;
        tot_ld_tb <= '0';
        wait for 40 ns;

        A_tb       <= "100";
        tot_ld_tb  <= '1';
        tot_clr_tb <= '1';
        wait for 20 ns;
        tot_clr_tb <= '0';
        tot_ld_tb  <= '0';
        wait for 40 ns;

        wait;
    end process;
end;
	
