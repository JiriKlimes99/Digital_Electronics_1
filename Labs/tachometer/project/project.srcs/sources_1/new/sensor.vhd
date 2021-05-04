
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity sensor is
  Port (
        input    : in  std_logic;
        en_i     : in  std_logic;
        reset    : in std_logic;
        
        revs_o   : out std_logic_vector(13 downto 0)
         );
end sensor;

architecture Behavioral of sensor is
    
    signal s_cnt_local : natural;
    
begin

    
    p_cnt_up_down : process(input, reset)
    begin
        
            if (reset = '1') then               -- Synchronous reset
                s_cnt_local <= 0;
            elsif (en_i = '1') then       -- Test if counter is enabled
                    -- TEST COUNTER DIRECTION HERE
                if rising_edge(input) then
                    if (s_cnt_local = 5000) then
                        s_cnt_local <=0;
                    else
                    s_cnt_local <= s_cnt_local + 1;
                    end if;
            end if;

        end if;
    end process p_cnt_up_down;

    revs_o <= std_logic_vector(to_unsigned(s_cnt_local, revs_o'length));

end Behavioral;
