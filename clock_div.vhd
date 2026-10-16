library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity clock_div is
port (
	clock : in std_logic;
	clock_mod : out std_logic
	);
end entity clock_div;

architecture bhv of clock_div is
	signal clk: std_logic;
	begin
	clock_div_process: process(clock)
		variable count_var : integer range 0 to 5000000 := 0;
		begin
			if rising_edge(clock) then
				if count_var = 4999999 then
					clk <= not clk;
					count_var := 0;
				else
					count_var := count_var + 1;
				end if;
			end if;
	end process clock_div_process;
	clock_mod <= clk;
end architecture bhv;