
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
    port(
        reset      : in     std_logic;
        btn_1      : inout  std_logic;
        en_i       : in     std_logic;
        
        vel_i      : in     std_logic_vector;
        dis_i      : in     std_logic_vector;
        
        to_display : out    std_logic_vector;
        VEL_o      : out    std_logic;
        DIST_o     : out    std_logic
    );
end entity fsm;

------------------------------------------------------------------------

architecture Behavioral of fsm is

    -- Define the states
    type t_state is (                     
                     DISTANCE,
                     VELOCITY
                     );
    -- Define the signal that uses different states
    signal s_state  : t_state;

begin

    --------------------------------------------------------------------
    p_fsm : process(btn_1)
    begin
            if (reset = '1') then          
                s_state <= VELOCITY ;      -- Set initial state

            elsif (en_i = '1') then

                case s_state is

                    when VELOCITY =>
                        if (rising_edge(btn_1)) then
                            s_state <= DISTANCE;
                            btn_1 <= '0';
                        else
                            s_state <= VELOCITY;
                        end if;
                        
                    when DISTANCE =>
                        if (rising_edge(btn_1)) then
                            s_state <= VELOCITY;
                            btn_1 <= '0';
                        else
                            s_state <= DISTANCE;
                        end if;
                        
                    when others =>
                        s_state <= VELOCITY;

                end case;
            end if;
    end process p_fsm;

    --------------------------------------------------------------------

    --------------------------------------------------------------------
    p_output : process(s_state)
    begin
        case s_state is
            when VELOCITY =>
                VEL_o    <= '1';
                DIST_o   <= '0';
                to_display <= vel_i;
            
            when DISTANCE =>
                VEL_o    <= '0';
                DIST_o   <= '1';
                to_display <= dis_i;
                
            when others =>
                VEL_o    <= '1';
                DIST_o   <= '0';
                to_display <= vel_i;
                
        end case;
    end process p_output;

end architecture Behavioral;
