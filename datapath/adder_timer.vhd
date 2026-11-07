library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity adder_timer is
	PORT (
	PT : in std_logic_vector(7 downto 0);
	NT : out std_logic_vector(7 downto 0)
	);
end;

architecture arch of adder_timer is
constant ONE : std_logic_vector (7 downto 0) := "00000001";
begin
	add_tim : entity work.adder
		generic map (W => 8)
		port map(
			A => PT,
			B => ONE,
			S => NT
			);
end;