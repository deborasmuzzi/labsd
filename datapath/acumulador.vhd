library IEEE;
use ieee.std_logic_1164.all;
 
entity acumulador is
	 generic (
	 W : positive := 8);
	 port (
	 clr, ld, clk : in std_logic;
	 q : out std_logic_vector(W-1 downto 0)
	 );
end total;

architecture arch of total is 
	signal i : std_logic_vector(W-1 downto 0);
	signal q_s  : std_logic_vector(W-1 downto 0)
begin 
	process(clr, clock)
	begin 
	if clr = '1' then 
		q <= (others => '0');
	elsif rising_edge(clock) and ld = '1' then 
		q <= i;
	end if;
end process;
end arch;
 