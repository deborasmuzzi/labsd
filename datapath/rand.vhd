library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity rand is
    generic (
        W     : positive := 8;
        STG_W : positive := 3
    );
    port (
        ld, clk, clr : in  STD_LOGIC;
        Time_In      : in  STD_LOGIC_VECTOR(W-1 downto 0);
        STG_In       : in  STD_LOGIC_VECTOR(STG_W-1 downto 0);
        S            : out STD_LOGIC_VECTOR(9 downto 0)
    );
end entity;

architecture arch of rand is 
    signal Time_Now : std_logic_vector(W-1 downto 0);
    signal S_1, S_2, S_3 : std_logic_vector(9 downto 0);
    signal H1H2_comp, H1H3_comp, H2H3_comp : std_logic;
begin 

    reg_rand : entity work.total
        generic map (W => W)
        port map(
            clock => clk,    
            ld    => ld,
            clr   => clr,
            i     => Time_In,  
            q     => Time_Now    
        );
        
    -- Compara o Hash 1 e Hash 2 para avaliar colisoes  
    H1H2_comp <= '1' when (unsigned(Time_Now) mod 9) = (unsigned(Time_Now) mod 7) else '0';
        
    -- Compara o Hash 1 e Hash 3 para avaliar colisoes  
    H1H3_comp <= '1' when (unsigned(Time_Now) mod 9) = (unsigned(Time_Now) mod 4) else '0';
        
    -- Compara o Hash 2 e Hash 3 para avaliar colisoes  
    H2H3_comp <= '1' when (unsigned(Time_Now) mod 7) = (unsigned(Time_Now) mod 4) else '0';
   
   -- Saida no estago 1 sempre esta certo 
    S_1 <= std_logic_vector(shift_left(unsigned'( "0000000001" ), to_integer(unsigned(Time_Now)) mod 10));
    
    -- Saida no estago 2 checa por colisoes e resolve se for o caso
    with H1H2_comp select
        S_2 <= std_logic_vector(shift_left(unsigned'( "0000000001" ), to_integer(unsigned(Time_Now)) mod 9)) xor std_logic_vector(shift_left(unsigned'( "0000000001" ), to_integer(unsigned(Time_Now)) mod 7)) when '0',
               std_logic_vector(shift_left(unsigned'( "0000000001" ), to_integer(unsigned(Time_Now)) mod 8)) xor std_logic_vector(shift_left(unsigned'( "0000000001" ), to_integer(unsigned(Time_Now)) mod 10)) xor std_logic_vector'( "0000000001" ) when others;
    
    -- Saida no estago 3 checa por colisoes e resolve se for o caso
    with (H1H2_comp or H2H3_comp or H1H3_comp) select
        S_3 <= std_logic_vector(shift_left(unsigned'( "0000000001" ), to_integer(unsigned(Time_Now)) mod 9)) xor std_logic_vector(shift_left(unsigned'( "0000000001" ), to_integer(unsigned(Time_Now)) mod 7)) xor std_logic_vector(shift_left(unsigned'( "0000000001" ), to_integer(unsigned(Time_Now)) mod 4)) when '0',
               (std_logic_vector'( "1000000000" ) xor std_logic_vector'( "0000000001" ) xor std_logic_vector(shift_left(unsigned'( "0000000001" ), to_integer(unsigned(Time_Now)) mod 8))) when others;
    
	 with STG_In select
        S <= S_1 when "001",
             S_2 when "010",
             S_3 when "100",
             "1010101010" when others;

end architecture;