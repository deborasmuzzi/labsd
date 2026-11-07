library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comparator is
		generic(
			data_width : natural := 8
		);
		port(
			a, b : in std_logic_vector((data_width-1) downto 0);
			gt   : out std_logic;
			eq   : out std_logic;
			lt   : out std_logic
		);
end comparator;


architecture arch of comparator is
begin 

gt <= '1' when (signed(a) > signed(b)) else '0';
eq <= '1' when (signed(a) = signed(b)) else '0';
lt <= '1' when (signed(a) < signed(b)) else '0';


end arch;