----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/27/2023 08:11:17 PM
-- Design Name: 
-- Module Name: BRAM_W2 - Behavioral
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
use std.textio.all;

entity BRAM_L1 is
    Port (
    clka: in std_logic;
    ena: in std_logic;
    wea: in std_logic;
    addra: in std_logic_vector(3 downto 0);
    dia: in std_logic_vector(15 downto 0);
    doa: out std_logic_vector(15 downto 0) 
     );
end BRAM_L1;

architecture Behavioral of BRAM_L1 is
    type ram_type is array (15 downto 0) of std_logic_vector(15 downto 0);
    shared variable RAM: ram_type;
    signal bram_full: std_logic;
    
    begin
    process(clka)
        begin
            if clka'event and clka='1' then
                if ena = '1' then
                    doa <= RAM(to_integer(unsigned(addra)));
                    if wea = '1' then
                        RAM(to_integer(unsigned(addra))) := dia;
                    end if;
                end if;
            end if;
    end process;
       
end Behavioral;
