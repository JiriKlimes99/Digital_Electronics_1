
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_fsm is
end entity tb_fsm;

architecture testbench of tb_fsm is


    --Local signals
    signal s_btn        : std_logic;
    signal s_reset      : std_logic;
    signal s_en         : std_logic;
    signal s_veli       : std_logic_vector;
    signal s_disi       : std_logic_vector;
    signal s_display    : std_logic_vector;
    signal s_velo       : std_logic;
    signal s_diso       : std_logic;

begin
    -- Connecting testbench signals with tlc entity (Unit Under Test)
    uut_tlc : entity work.fsm
        port map(
            reset       => s_reset,
            btn_1       => s_btn,
            en_i        => s_en,
                      
            vel_i       => s_veli,
            dis_i       => s_disi,
                      
            to_display  => s_display,
            VEL_o       => s_velo,
            DIST_o      => s_diso
        );


    --------------------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------------------
    p_reset_gen : process
    begin
        s_reset <= '0'; wait for 200 ns;
        -- Reset activated
        s_reset <= '1'; wait for 500 ns;
        -- Reset deactivated
        s_reset <= '0';
        wait;
    end process p_reset_gen;

    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        s_en <= '1';
        wait;
    end process p_stimulus;

end architecture testbench;