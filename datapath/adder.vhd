
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity adder is
 generic (W : positive := 8);
	PORT(
		A, B 	: in 	STD_LOGIC_VECTOR(W-1 downto 0); 
		S		: out	STD_LOGIC_VECTOR(W-1 downto 0)
	);
end;


architecture arch of adder is

begin

	S <= std_logic_vector(unsigned(A) + unsigned(B));

end;