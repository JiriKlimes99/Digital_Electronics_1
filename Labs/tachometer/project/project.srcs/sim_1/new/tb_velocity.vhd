
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_velocity is
--  Port ( );
end tb_velocity;

architecture testbench of tb_velocity is

        -- Frequency of internal clock
        -- Number of bits for testbench counter
        constant c_CNT_WIDTH         : natural := 12;
        constant c_CLK_50MHZ_PERIOD  : time    := 2000 ns;

        signal s_reset           : std_logic;
        signal s_clk_50MHz       : std_logic;  
        signal s_en              : std_logic;  
        signal s_period_count    : std_logic_vector(c_CNT_WIDTH - 1 downto 0);  
        signal s_velocity        : std_logic_vector(c_CNT_WIDTH - 1 downto 0);  
begin
    -- Connecting testbench signals with velocity entity
    -- (Unit Under Test)

uut_velocity : entity work.velocity
    generic map(
            g_CNT_WIDTH      => c_CNT_WIDTH   -- Number of bits for counter
     );
    port map(
             clk             => s_clk_1kHz
             reset           => s_reset,
             en_i            => s_en,
             period_count    => s_period_count,
             velocity_o      => s_velocity
     );
     
    --------------------------------------------------------------------
    -- Clock generation process
    --------------------------------------------------------------------
    p_clk_gen : process
    begin
        while now < 750 ns loop         -- 75 periods of 100MHz clock
            s_clk_50MHz <= '0';
            wait for c_CLK_50MHZ_PERIOD / 2;
            s_clk_50MHz <= '1';
            wait for c_CLK_50MHZ_PERIOD / 2;
        end loop;
        wait;
    end process p_clk_gen;

    --------------------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------------------
    p_reset_gen : process
    begin
        s_reset <= '0';
        wait for 12 ns;
        
        -- Reset activated
        s_reset <= '1';
        wait for 73 ns;

        s_reset <= '0';
        wait;
    end process p_reset_gen;
    
        --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;

        -- Enable counting
        s_en     <= '1';
        
        -- Change counter direction
        s_period_count   <= b"1111_1111_1111";--4095 -> v=
        wait for 380 ns;
        s_cnt_up <= '0';
        wait for 220 ns;

        -- Disable counting
        s_en     <= '0';

        report "Stimulus process finished" severity note;
        wait;
    
    end process p_stimulus;


end Behavioral;