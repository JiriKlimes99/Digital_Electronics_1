----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2021 20:01:26
-- Design Name: 
-- Module Name: d_ff_arst - Behavioral
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

entity d_ff_rst is

      Port (
            clk      : in std_logic;
            rst      : in std_logic;
            d        : in std_logic;
            q        : out std_logic;
            q_bar    : out std_logic 
            );

end d_ff_rst;

architecture Behavioral of d_ff_rst is

    signal s_q : std_logic;

begin

p_d_ff_rst: process (clk)
    begin
    
    if rising_edge (clk) then
            if(rst = '1') then
                s_q <= '0';
            else 
                if(d = '0') then
                    s_q <= '0';
                elsif (d = '1') then
                    s_q <= '1';
                end if;
            end if;
        end if;
        
    end process p_d_ff_rst;

    q       <= s_q;
    q_bar   <= not s_q;

end Behavioral;
