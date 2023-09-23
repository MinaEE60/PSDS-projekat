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

entity BRAM_W2 is

generic (
    INIT_FILE : string := "DAT.dat" -- Specify name/location of RAM initialization file if using one (leave blank if not)
    );

    Port (
    clka: in std_logic;
    ena: in std_logic;
    --wea: in std_logic;
    addra: in std_logic_vector(4 downto 0);
    --dia: in std_logic_vector(15 downto 0);
    doa: out std_logic_vector(15 downto 0) 
     );
end BRAM_W2;

architecture Behavioral of BRAM_W2 is
    type ram_type is array (16 downto 0) of std_logic_vector(15 downto 0);
    signal RAM: ram_type;
    signal bram_full: std_logic;
    --signal dia_s: std_logic_vector(15 downto 0);
    
    impure function initramfromfile (ramfilename : in string) return ram_type is
    file ramfile	: text is in ramfilename;
    variable ramfileline : line;
    variable ram_name	: ram_type;
    variable bitvec : bit_vector(15 downto 0);
    begin
        for i in 0 to 16 loop
            readline (ramfile, ramfileline);
            read (ramfileline, bitvec);
            ram_name(i) := to_stdlogicvector(bitvec);
        end loop;
        return ram_name;
    end function;       
    
    begin
    process(clka)
        begin
            if clka'event and clka='1' then
                if ena = '1' then
                    doa <= RAM(to_integer(unsigned(addra)));
                    --if wea = '1' then
                        --dia_s <= dia;
                    --end if;
                end if;
            end if;
    end process;
    
    initialization: process
    begin
        RAM <= initramfromfile(INIT_FILE);
        wait;
    end process initialization;
       
end Behavioral;
