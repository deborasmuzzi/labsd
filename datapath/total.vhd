library IEEE;
use ieee.std_logic_1164.all;
 
 
 entity total is
	 generic (
	 W : positive := 8);
	 port (
	 i : in std_logic_vector(W-1 downto 0);
	 clr, ld, clock : in std_logic;
	 q : out std_logic_vector(W-1 downto 0)
	 );
end total;

architecture arch of total is 
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
 