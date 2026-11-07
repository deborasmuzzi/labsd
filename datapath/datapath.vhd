library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity datapath is
	port(
	SW : in std_logic_vector(5 downto 0);
	STG : in std_logic_vector(2 downto 0);
	ld_lev, ld_tim, ld_rand: in std_logic;
	clr_lev, clr_tim : in std_logic;
	clk : in std_logic;
	FT : out std_logic_vector(7 downto 0);
	eq, l : out std_logic
	);
end;


architecture arch of datapath is
	signal CL : std_logic_vector(2 downto 0);
	signal NL : std_logic_vector (2 downto 0);
	
	signal CGT, NGT : std_logic_vector(7 downto 0);
	
	signal CT, NT : std_logic_vector(7 downto 0);
	signal ROUT : std_logic_vector(9 downto 0);

begin 

total_level : entity work.total_level
	port map(
	clk => clk,
	ld_lev => ld_lev,
	clr_lev => clr_lev,
	PL => NL,
	NL => CL
);

adder_level : entity work.adder_level
	port map(
	PL => CL,
	NL => NL
	);
	
comparator_level : entity work.comparator_level
	port map(
	CL => CL,
	eq => l
	);

	
total_timer : entity work.total_timer
	port map (
	clk => clk,
	ld_tim => ld_tim,
	clr_tim => clr_tim,
	PT => CT,
	NT => NT
	);

adder_timer : entity work.adder_timer
	port map(
	PT => NT,
	NT => CT
	);

total_Gtimer : entity work.total_Gtimer
	port map(
	clk => clk,
	PGT => CGT,
	NGT => NGT
	);
	
adder_Gtimer : entity work.adder_Gtimer
	port map(
	PGT => NGT,
	NGT => CGT
	);

rand : entity work.rand
	generic map (
			W => 8,
			STG_W => 3
	)
	port map(
	ld => ld_rand,
	clk => clk,
	clr => '0',
	STG_In => STG,
	Time_In => NGT,
	S => ROUT
	);


end;