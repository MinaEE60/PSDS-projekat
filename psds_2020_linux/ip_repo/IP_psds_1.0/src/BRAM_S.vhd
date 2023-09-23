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

entity BRAM_S is
    Port (
    clka: in std_logic;
    ena: in std_logic;
    wea: in std_logic;
    addra: in std_logic_vector(9 downto 0);
    dia: in std_logic_vector(15 downto 0);
    doa: out std_logic_vector(15 downto 0) 
     );
end BRAM_S;

architecture Behavioral of BRAM_S is
    type ram_type is array (783 downto 0) of std_logic_vector(15 downto 0);
    shared variable RAM: ram_type;
    signal bram_full: std_logic;
    
    impure function initramfromfile (ramfilename : in string) return ram_type is
    file ramfile	: text is in ramfilename;
    variable ramfileline : line;
    variable ram_name	: ram_type;
    variable bitvec : integer;
    begin
        for i in 0 to 783 loop
            readline (ramfile, ramfileline);
            read (ramfileline, bitvec);
            ram_name(i) := std_logic_vector(to_signed(bitvec, 16));
        end loop;
        return ram_name;
    end function;       
    
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
    
    initialization: process
    begin
        RAM := initramfromfile("/home/student/Desktop/PSDS_FINALNA/mina_opacic/test_BIN/test1.txt");
        wait;
    end process initialization;
       
end Behavioral;
