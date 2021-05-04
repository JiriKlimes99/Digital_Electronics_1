library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity velocity is
  generic(
          g_CNT_WIDTH     : natural := 22;--;            -- Number of bits for counter
          g_circumference : natural := 2;--m            --standart 26' wheel circrumference
          g_clk_frequency : natural := 50000000--Hz     --Frequency of signal from main clock
          );
  port   (
            clk           : in  std_logic;                                  -- Main clock
            reset         : in  std_logic;                                  -- Synchronous reset signal from hall sensor
            en_i          : in  std_logic;                                  -- enable signal from on_off module
            period_count  : in  std_logic_vector(g_CNT_WIDTH - 1 downto 0);  -- input from counter measuring period of rotation
            velocity_o    : out std_logic_vector(g_CNT_WIDTH - 1 downto 0)  -- output for hex_deg       
          );
end velocity;

architecture Behavioral of velocity is

signal s_count    : integer;
signal s_velocity : integer;

begin
--converting period_count to integer in order to count velocity
s_count <= to_integer(unsigned(period_count));
------------------------------------------------------
--  Process for counting velocity with 8-bit output --
------------------------------------------------------
    p_velocity_counter : process (clk, reset)
    begin
       if (rising_edge(clk)) then --synchronous process
       --signal from hall sensor resets the input value of period_count from cnt_up module
            if en_i = '1' then 
       --physical definition of velocity using known number of periods between
       --two hall sensor impulses and circumference - distance between those impulses
                s_velocity <=  ( g_circumference * g_clk_frequency) / (s_count);
--            else
--       --no change
--                s_velocity <= s_velocity;
            end if;
        end if;
        velocity_o <= std_logic_vector(to_unsigned(s_velocity, velocity_o'length));
    end process p_velocity_counter;
end Behavioral;
