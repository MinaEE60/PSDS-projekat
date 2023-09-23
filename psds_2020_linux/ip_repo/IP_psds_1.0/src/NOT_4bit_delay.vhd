----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/15/2023 02:17:00 AM
-- Design Name: 
-- Module Name: NOT_4bit_delay - Behavioral
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
use IEEE.NUMERIC_STD.ALL;


entity NOT_4bit_delay is
    Port (input: in std_logic;
          output: out std_logic
          );
end NOT_4bit_delay;

architecture Behavioral of NOT_4bit_delay is
begin
    output <= not input;
end Behavioral;
