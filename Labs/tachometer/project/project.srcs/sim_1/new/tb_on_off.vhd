

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_on_off is
--  Port ( );
end tb_on_off;

architecture Behavioral of tb_on_off is

        signal s_start_i      : std_logic;
        signal s_start_o      : std_logic;

begin
    uut_on_off : entity work.on_off
       
     port map(
            start_i  => s_start_i,
            start_o  => s_start_o
             );

    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        s_start_i     <= '0';
        wait for 100 ns;        
        s_start_i     <= '1';
        wait for 200 ns;        
        s_start_i     <= '0';
        wait for 20 ns;       
        s_start_i     <= '1';
        wait for 300 ns;        
        s_start_i     <= '0';
        wait for 200 ns;        
        s_start_i     <= '1';
        wait for 150 ns;

        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;

end Behavioral;
