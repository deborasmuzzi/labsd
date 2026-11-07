library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity total_level is
	PORT (
	clk, ld_lev, clr_lev : in std_logic;
	PL : in std_logic_vector(2 downto 0);
	NL : out std_logic_vector(2 downto 0)
	);
end;

architecture arch of total_level is
begin
	reg_lev : entity work.total
		generic map (W => 3)
		port map(
			clock => clk,
			ld => ld_lev,
			clr => clr_lev,
			i => PL,
			q => NL
			);
end;