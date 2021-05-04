
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity on_off is
      Port (
            start_i : in  std_logic;     -- Input from Switch (0) to turn on/off the tachometer
            start_o : out std_logic     -- Output that starts other modules
            );
end on_off;

architecture Behavioral of on_off is

begin

      p_on_off : process(start_i)       -- When start_i changes ( we change the position of SW(0), the process is triggered)
         begin
            if (start_i = '1') then         -- Switch in position ON (or position 1)
                start_o <= '1';                 -- Output is 1
            else     -- Switch in position OFF (or 0)
                start_o <= '0';                 -- Output is 0
            end if;
         end process p_on_off;

end Behavioral;
