----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/15/2023 07:21:21 AM
-- Design Name: 
-- Module Name: delayer_16bit - Behavioral
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


entity delayer_16bit is
    Port (clk: in std_logic;
          input: in std_logic;
          output: out std_logic);
end delayer_16bit;

architecture Behavioral of delayer_16bit is
signal temp: std_logic;
begin
process(clk)
    begin
        if rising_edge(clk) then
            temp <= input;
        end if;
    end process;
    output <= temp;
end Behavioral;
