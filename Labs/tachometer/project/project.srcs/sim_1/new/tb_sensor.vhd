

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity tb_sensor is

end tb_sensor;

architecture Behavioral of tb_sensor is

        signal s_input      : std_logic;
        signal s_en_i       : std_logic;
        signal s_reset      : std_logic;
        signal s_revs       : std_logic_vector(13 downto 0);

begin
    uut_on_off : entity work.sensor

     port map(
            input  => s_input,
            en_i   => s_en_i,
            reset  => s_reset,
            revs_o   => s_revs
             );

    --------------------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------------------
    p_reset_gen : process
    begin
        s_reset <= '0';
        wait for 20 ns;
        
        -- Reset activated
        s_reset <= '1';
        wait for 30 ns;

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
        
        s_input    <= '0';
        wait for 10 ns;        
        s_input     <= '1';
        wait for 10 ns;    
        s_input     <= '0';
        wait for 10 ns;        
        s_input     <= '1';    
        wait for 10 ns;       
        s_input     <= '0';
        wait for 10 ns;        
        s_input     <= '1';
        wait for 10 ns;
        
        s_en_i      <='0';
        
        s_input    <= '0';
        wait for 10 ns;        
        s_input     <= '1';
        wait for 10 ns;        
        s_input     <= '0';
        wait for 10 ns;        
        s_input     <= '1';    
        wait for 10 ns;       
        s_input     <= '0';
        wait for 10 ns;        
        s_input     <= '1';
        wait for 10 ns;
        
        
        s_en_i     <= '1';
        
        s_input    <= '0';
        wait for 10 ns;        
        s_input     <= '1';
        wait for 10 ns;        
        s_input     <= '0';
        wait for 10 ns;    
        s_en_i     <= '0';    
        s_input     <= '1';    
        wait for 10 ns;       
        s_input     <= '0';
        wait for 10 ns;    
        s_en_i     <= '1';    
        s_input     <= '1';
        wait for 10 ns;
        
        s_input    <= '0';
        wait for 10 ns;        
        s_input     <= '1';
        wait for 10 ns;        
        s_input     <= '0';
        wait for 10 ns;        
        s_input     <= '1';    
        wait for 10 ns;       
        s_input     <= '0';
        wait for 10 ns;        
        s_input     <= '1';
        wait for 10 ns;
        
        
        s_input    <= '0';
        wait for 50 ns;        
        s_input     <= '1';
        wait for 40 ns;        
        s_input     <= '0';
        wait for 20 ns;        
        s_input     <= '1';    
        wait for 30 ns;       
        s_input     <= '0';
        wait for 70 ns;        
        s_input     <= '1';
        wait for 60 ns;
        
        s_input    <= '0';
        wait for 50 ns;        
        s_input     <= '1';
        wait for 40 ns;        
        s_input     <= '0';
        wait for 20 ns;        
        s_input     <= '1';    
        wait for 30 ns;       
        s_input     <= '0';
        wait for 70 ns;        
        s_input     <= '1';
        wait for 60 ns;
        
        s_input    <= '0';
        wait for 50 ns;        
        s_input     <= '1';
        wait for 40 ns;        
        s_input     <= '0';
        wait for 20 ns;        
        s_input     <= '1';    
        wait for 30 ns;       
        s_input     <= '0';
        wait for 70 ns;        
        s_input     <= '1';
        wait for 60 ns;
        
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end Behavioral;
