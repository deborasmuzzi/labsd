library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity total_Gtimer is
	PORT (
	clk : in std_logic;
	PGT : in std_logic_vector(7 downto 0);
	NGT : out std_logic_vector(7 downto 0)
	);
end;

architecture arch of total_Gtimer is 
begin
	reg_Gtim : entity work.total
		generic map (W => 8)
		port map(
			clock => clk,
			ld => '1',
			clr => '0',
			i => PGT,
			q => NGT
			);
end;