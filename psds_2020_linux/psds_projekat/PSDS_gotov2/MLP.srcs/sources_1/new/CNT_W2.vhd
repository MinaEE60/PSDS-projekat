----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/08/2023 03:36:44 AM
-- Design Name: 
-- Module Name: Counter_S - Behavioral
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CNT_W2 is
    port (
        clk : in std_logic;
        reset : in std_logic;
        res2: out std_logic;
        start : in std_logic;
        count_out : out std_logic_vector(4 downto 0);
        done: out std_logic
    );
end CNT_W2;

architecture Behavioral of CNT_W2 is
    signal count_reg : unsigned(4 downto 0) := (others => '0');
    signal done_s: std_logic := '0';
    signal res2_s: std_logic := '0';
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                count_reg <= (others => '0');
            end if;
            if start = '1' and unsigned(count_reg)/=16 then
                count_reg <= count_reg + 1;
            end if;
            if unsigned(count_reg)>=16 then
                done_s <= '1';
            else 
                done_s <= '0';
            end if;
            if unsigned(count_reg)=0 then
                res2 <= '1';
            else 
                res2 <= '0';
            end if;               
        end if;
    end process;         

    count_out <= std_logic_vector(count_reg);
    done <= done_s;
end architecture;

