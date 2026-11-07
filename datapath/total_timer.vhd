library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity total_timer is
	PORT (
	clk, ld_tim, clr_tim : in std_logic;
	PT : in std_logic_vector(7 downto 0);
	NT : out std_logic_vector(7 downto 0)
	);
end;

architecture arch of total_timer is
begin
	reg_tim : entity work.total
		generic map (W => 8)
		port map(
			clock => clk,
			ld => ld_tim,
			clr => clr_tim,
			i => PT,
			q => NT
			);
end;