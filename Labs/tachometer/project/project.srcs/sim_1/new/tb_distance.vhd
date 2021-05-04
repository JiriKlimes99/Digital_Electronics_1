

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity tb_distance is

end tb_distance;

architecture Behavioral of tb_distance is

        constant c_perimeter    : natural := 2;

        signal s_reset          : std_logic;
        signal s_en_i           : std_logic;
        signal s_revs           : natural;
        signal s_dist           : natural;

begin
    uut_distance : entity work.distance

     port map(
           reset   => s_reset,
           en_i    => s_en_i,
           revs_i  => s_revs,
           dist    => s_dist
             );

    --------------------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------------------
    p_reset_gen : process
    begin
        s_reset <= '0';
        wait for 40 ns;
        
        -- Reset activated
        s_reset <= '1';
        wait for 60 ns;

        s_reset <= '0';
        wait for 700 ns;
        
        s_reset <= '1';
        wait for 70 ns;
        
        s_reset <= '0';
        
        wait;
    end process p_reset_gen;
    


    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        s_en_i     <= '1';
        
        s_revs    <= 4997;
        wait for 20 ns;        
        s_revs     <= 4998;
        wait for 20 ns;    
        s_revs     <= 4999;
        wait for 20 ns;        
        s_revs     <= 5000;    
        wait for 20 ns;       
        s_revs     <= 0;
        wait for 20 ns;        
        s_revs     <= 1;
        wait for 20 ns;
        s_revs     <= 2;
        wait for 20 ns;
        s_revs     <= 3;
        wait for 20 ns;
        s_revs     <= 4;
        wait for 20 ns;
        s_revs     <= 5;
        wait for 20 ns;
        s_revs     <= 6;
        wait for 20 ns;
        

        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end Behavioral;
