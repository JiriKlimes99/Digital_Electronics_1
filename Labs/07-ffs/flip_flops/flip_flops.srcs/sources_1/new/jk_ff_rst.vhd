----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2021 20:54:24
-- Design Name: 
-- Module Name: jk_ff_rst - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jk_ff_rst is
--  Port ( );

      Port (
            clk     : in  std_logic;
            rst     : in  std_logic;
            j       : in  std_logic;
            k       : in  std_logic;
            q       : out std_logic;
            q_bar   : out std_logic 
            );

end jk_ff_rst;

architecture Behavioral of jk_ff_rst is
    signal s_q : std_logic;
begin

    p_jk_ff_rst : process (clk)
    begin
        if rising_edge (clk) then
            if(rst = '1') then
                s_q <= '0';
            else 
                if(j = '0' and k = '0') then
                    s_q <= s_q;
                elsif (j = '0' and k = '1') then
                    s_q <= '0';
                elsif (j = '1' and k = '0') then
                    s_q <= '1';
                elsif (j = '1' and k = '1') then
                    s_q <= not s_q;
                end if;
            end if;
        end if;

    end process p_jk_ff_rst;

    q       <= s_q;
    q_bar   <= not s_q;

end Behavioral;
