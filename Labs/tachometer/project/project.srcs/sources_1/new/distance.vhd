
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity distance is
    generic(
    perimeter : natural := 2    
            );
            
    Port (
           reset    :  in   std_logic;
           en_i     :  in   std_logic;
           revs_i   :  in   natural;
           dist     :  out  natural
          );
end distance;

architecture Behavioral of distance is


begin

    p_cnt_distance : process(revs_i)
    begin
        if (reset = '1') then               -- Reset
                dist <= 0;
            elsif (en_i = '1') then       -- Test if counter is enabled
                if revs_i = 5000 then
                    dist<=0;
                else
                dist <= revs_i * perimeter;
                end if;
            end if;
            
    end process p_cnt_distance;


end Behavioral;
