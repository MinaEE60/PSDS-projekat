----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/14/2023 03:01:59 PM
-- Design Name: 
-- Module Name: Sigma_L1 - Behavioral
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

entity Sigma_L3 is
    Port (clk: in std_logic;
          input_N1: in std_logic_vector(33 downto 0);
          input_N2: in std_logic_vector(33 downto 0);
          input_N3: in std_logic_vector(33 downto 0);
          input_N4: in std_logic_vector(33 downto 0);
          input_N5: in std_logic_vector(33 downto 0);
          input_N6: in std_logic_vector(33 downto 0);
          input_N7: in std_logic_vector(33 downto 0);
          input_N8: in std_logic_vector(33 downto 0);
          input_N9: in std_logic_vector(33 downto 0);
          input_N10: in std_logic_vector(33 downto 0);
          output1: out std_logic_vector(15 downto 0);
          output2: out std_logic_vector(15 downto 0);
          output3: out std_logic_vector(15 downto 0);
          output4: out std_logic_vector(15 downto 0);
          output5: out std_logic_vector(15 downto 0);
          output6: out std_logic_vector(15 downto 0);
          output7: out std_logic_vector(15 downto 0);
          output8: out std_logic_vector(15 downto 0);
          output9: out std_logic_vector(15 downto 0);
          output10: out std_logic_vector(15 downto 0)
          );
end Sigma_L3;

architecture Behavioral of Sigma_L3 is
signal temp1: std_logic_vector(15 downto 0);
signal temp1a: std_logic_vector(33 downto 0);
signal temp2: std_logic_vector(15 downto 0);
signal temp2a: std_logic_vector(33 downto 0);
signal temp3: std_logic_vector(15 downto 0);
signal temp3a: std_logic_vector(33 downto 0);
signal temp4: std_logic_vector(15 downto 0);
signal temp4a: std_logic_vector(33 downto 0);
signal temp5: std_logic_vector(15 downto 0);
signal temp5a: std_logic_vector(33 downto 0);
signal temp6: std_logic_vector(15 downto 0);
signal temp6a: std_logic_vector(33 downto 0);
signal temp7: std_logic_vector(15 downto 0);
signal temp7a: std_logic_vector(33 downto 0);
signal temp8: std_logic_vector(15 downto 0);
signal temp8a: std_logic_vector(33 downto 0);
signal temp9: std_logic_vector(15 downto 0);
signal temp9a: std_logic_vector(33 downto 0);
signal temp10: std_logic_vector(15 downto 0);
signal temp10a: std_logic_vector(33 downto 0);
signal sig1: signed(33 downto 0);
signal B1: signed(31 downto 0) := "11111111111010000110100011100011";
signal sig2: signed(33 downto 0);
signal B2: signed(31 downto 0) := "11111111111001100101100011101100";
signal sig3: signed(33 downto 0);
signal B3: signed(31 downto 0) := "11111111111100001001011111110000";
signal sig4: signed(33 downto 0);
signal B4: signed(31 downto 0) := "11111111111011001010100000011010";
signal sig5: signed(33 downto 0);
signal B5: signed(31 downto 0) := "11111111110110001011100100011110";
signal sig6: signed(33 downto 0);
signal B6: signed(31 downto 0) := "11111111111001011111010001110100";
signal sig7: signed(33 downto 0);
signal B7: signed(31 downto 0) := "11111111111000110100000000000000";
signal sig8: signed(33 downto 0);
signal B8: signed(31 downto 0) := "11111111111011101101100011111000";
signal sig9: signed(33 downto 0);
signal B9: signed(31 downto 0) := "11111111111111000101011000101011";
signal sig10: signed(33 downto 0);
signal B10: signed(31 downto 0) := "11111111111100100011000000100011";

begin
    S1:process(clk, input_N1, B1, sig1, temp1, temp1a)
        begin
        if rising_edge(clk) then
            sig1 <= signed(input_N1) + B1;
            if sig1 > 2500000 or sig1 = 2500000 then
                temp1 <= std_logic_vector(to_signed(1000, 16));
                temp1a <= (others => '0');
            else 
                if sig1 < -2500000 or sig1=-2500000 then
                    temp1 <= std_logic_vector(to_signed(0, 16));
                    temp1a <= (others => '0');
                else
                    temp1a <= std_logic_vector(sig1);
                    temp1 <= std_logic_vector(signed("000000000000"&temp1a(15 downto 12))+512);                    
                end if;
           end if;
           end if;
    end process;

    S2:process(clk, input_N2, B2, sig2, temp2, temp2a)
        begin
        if rising_edge(clk) then
            sig2 <= signed(input_N2) + B2;
            if sig2 > 2500000 or sig2 = 2500000 then
                temp2 <= std_logic_vector(to_signed(1000, 16));
                temp2a <= (others => '0');
            else 
                if sig2 < -2500000 or sig2=-2500000 then
                    temp2 <= std_logic_vector(to_signed(0, 16));
                    temp2a <= (others => '0');
                    
                else
                    temp2a <= std_logic_vector(sig2);
                    temp2 <= std_logic_vector(signed("000000000000"&temp2a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S3:process(clk, input_N3, B3, sig3, temp3, temp3a)
        begin
        if rising_edge(clk) then
            sig3 <= signed(input_N3) + B3;
            if sig3 > 2500000 or sig3 = 2500000 then
                temp3 <= std_logic_vector(to_signed(1000, 16));
                temp3a <= (others => '0');
                
            else 
                if sig3 < -2500000 or sig3=-2500000 then
                    temp3 <= std_logic_vector(to_signed(0, 16));
                    temp3a <= (others => '0');
                else
                    temp3a <= std_logic_vector(sig3);
                    temp3 <= std_logic_vector(signed("000000000000"&temp3a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S4:process(clk, input_N4, B4, sig4, temp4, temp4a)
        begin
        if rising_edge(clk) then
            sig4 <= signed(input_N4) + B4;
            if sig4 > 2500000 or sig4 = 2500000 then
                temp4 <= std_logic_vector(to_signed(1000, 16));
                temp4a <= (others => '0');
            else 
                if sig4 < -2500000 or sig4=-2500000 then
                    temp4 <= std_logic_vector(to_signed(0, 16));
                    temp4a <= (others => '0');
                else
                    temp4a <= std_logic_vector(sig4);
                    temp4 <= std_logic_vector(signed("000000000000"&temp4a(15 downto 12))+512);
                end if;
           end if;
           end if;
    end process;
    
    S5:process(clk, input_N5, B5, sig5, temp5, temp5a)
        begin
        if rising_edge(clk) then
            sig5 <= signed(input_N5) + B5;
            if sig5 > 2500000 or sig5 = 2500000 then
                temp5 <= std_logic_vector(to_signed(1000, 16));
                temp5a <= (others => '0');
            else 
                if sig5 < -2500000 or sig5=-2500000 then
                    temp5 <= std_logic_vector(to_signed(0, 16));
                    temp5a <= (others => '0');
                else
                    temp5a <= std_logic_vector(sig5);
                    temp5 <= std_logic_vector(signed("000000000000"&temp5a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S6:process(clk, input_N6, B6, sig6, temp6, temp6a)
        begin
        if rising_edge(clk) then
            sig6 <= signed(input_N6) + B6;
            if sig6 > 2500000 or sig6 = 2500000 then
                temp6 <= std_logic_vector(to_signed(1000, 16));
                temp6a <= (others => '0');
            else 
                if sig6 < -2500000 or sig6=-2500000 then
                    temp6 <= std_logic_vector(to_signed(0, 16));
                    temp6a <= (others => '0');
                else
                    temp6a <= std_logic_vector(sig6);
                    temp6 <= std_logic_vector(signed("000000000000"&temp6a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S7:process(clk, input_N7, B7, sig7, temp7, temp7a)
        begin
        if rising_edge(clk) then
            sig7 <= signed(input_N7) + B7;
            if sig7 > 2500000 or sig7 = 2500000 then
                temp7 <= std_logic_vector(to_signed(1000, 16));
                temp7a <= (others => '0');
            else 
                if sig7 < -2500000 or sig7=-2500000 then
                    temp7 <= std_logic_vector(to_signed(0, 16));
                    temp7a <= (others => '0');
                else
                    temp7a <= std_logic_vector(sig7);
                    temp7 <= std_logic_vector(signed("000000000000"&temp7a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S8:process(clk, input_N8, B8, sig8, temp8a)
        begin
        if rising_edge(clk) then
            sig8 <= signed(input_N8) + B8;
            if sig8 > 2500000 or sig8 = 2500000 then
                temp8 <= std_logic_vector(to_signed(1000, 16));
                temp8a <= (others => '0');
            else 
                if sig8 < -2500000 or sig8=-2500000 then
                    temp8 <= std_logic_vector(to_signed(0, 16));
                    temp8a <= (others => '0');
                else
                    temp8a <= std_logic_vector(sig8);
                    temp8 <= std_logic_vector(signed("000000000000"&temp8a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S9:process(clk, input_N9, B9, sig9, temp9, temp9a)
        begin
        if rising_edge(clk) then
            sig9 <= signed(input_N9) + B9;
            if sig9 > 2500000 or sig9 = 2500000 then
                temp9 <= std_logic_vector(to_signed(1000, 16));
                temp9a <= (others => '0');
            else 
                if sig9 < -2500000 or sig9=-2500000 then
                    temp9 <= std_logic_vector(to_signed(0, 16));
                    temp9a <= (others => '0');
                else
                    temp9a <= std_logic_vector(sig9);
                    temp9 <= std_logic_vector(signed("000000000000"&temp9a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S10:process(clk, input_N10, B10, sig10, temp10, temp10a)
        begin
        if rising_edge(clk) then
            sig10 <= signed(input_N10) + B10;
            if sig10 > 2500000 or sig10 = 2500000 then
                temp10 <= std_logic_vector(to_signed(1000, 16));
                temp10a <= (others => '0');
            else 
                if sig10 < -2500000 or sig10=-2500000 then
                    temp10 <= std_logic_vector(to_signed(0, 16));
                    temp10a <= (others => '0');
                else
                    temp10a <= std_logic_vector(sig10);
                    temp10 <= std_logic_vector(signed("000000000000"&temp10a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    output1 <= temp1;
    output2 <= temp2;
    output3 <= temp3;
    output4 <= temp4;
    output5 <= temp5;
    output6 <= temp6;
    output7 <= temp7;
    output8 <= temp8;
    output9 <= temp9;
    output10 <= temp10;
    
end Behavioral;