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

entity Sigma_L1 is
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
          input_N11: in std_logic_vector(33 downto 0);
          input_N12: in std_logic_vector(33 downto 0);
          input_N13: in std_logic_vector(33 downto 0);
          input_N14: in std_logic_vector(33 downto 0);
          input_N15: in std_logic_vector(33 downto 0);
          input_N16: in std_logic_vector(33 downto 0);
          output1: out std_logic_vector(15 downto 0);
          output2: out std_logic_vector(15 downto 0);
          output3: out std_logic_vector(15 downto 0);
          output4: out std_logic_vector(15 downto 0);
          output5: out std_logic_vector(15 downto 0);
          output6: out std_logic_vector(15 downto 0);
          output7: out std_logic_vector(15 downto 0);
          output8: out std_logic_vector(15 downto 0);
          output9: out std_logic_vector(15 downto 0);
          output10: out std_logic_vector(15 downto 0);
          output11: out std_logic_vector(15 downto 0);
          output12: out std_logic_vector(15 downto 0);
          output13: out std_logic_vector(15 downto 0);
          output14: out std_logic_vector(15 downto 0);
          output15: out std_logic_vector(15 downto 0);
          output16: out std_logic_vector(15 downto 0)
          );
end Sigma_L1;

architecture Behavioral of Sigma_L1 is
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
signal temp11: std_logic_vector(15 downto 0);
signal temp11a: std_logic_vector(33 downto 0);
signal temp12: std_logic_vector(15 downto 0);
signal temp12a: std_logic_vector(33 downto 0);
signal temp13: std_logic_vector(15 downto 0);
signal temp13a: std_logic_vector(33 downto 0);
signal temp14: std_logic_vector(15 downto 0);
signal temp14a: std_logic_vector(33 downto 0);
signal temp15: std_logic_vector(15 downto 0);
signal temp15a: std_logic_vector(33 downto 0);
signal temp16: std_logic_vector(15 downto 0);
signal temp16a: std_logic_vector(33 downto 0);
signal sig1: signed(33 downto 0);
signal B1: signed(31 downto 0) := "00000000000110100111111101001000";
signal sig2: signed(33 downto 0);
signal B2: signed(31 downto 0) := "11111111111000001011000001000010";
signal sig3: signed(33 downto 0);
signal B3: signed(31 downto 0) := "11111111110001111000011000011101";
signal sig4: signed(33 downto 0);
signal B4: signed(31 downto 0) := "11111111111100110100001001001001";
signal sig5: signed(33 downto 0);
signal B5: signed(31 downto 0) := "00000000000100010100000011100000";
signal sig6: signed(33 downto 0);
signal B6: signed(31 downto 0) := "00000000000000011001001001101100";
signal sig7: signed(33 downto 0);
signal B7: signed(31 downto 0) := "00000000000111010000100010001101";
signal sig8: signed(33 downto 0);
signal B8: signed(31 downto 0) := "00000000000100110100110010101010";
signal sig9: signed(33 downto 0);
signal B9: signed(31 downto 0) := "11111111110110111000000110001101";
signal sig10: signed(33 downto 0);
signal B10: signed(31 downto 0) := "00000000000110100111110001000000";
signal sig11: signed(33 downto 0);
signal B11: signed(31 downto 0) := "11111111111101000100101011010111";
signal sig12: signed(33 downto 0);
signal B12: signed(31 downto 0) := "11111111110011010110001110001101";
signal sig13: signed(33 downto 0);
signal B13: signed(31 downto 0) := "00000000000110001111000011100100";
signal sig14: signed(33 downto 0);
signal B14: signed(31 downto 0) := "00000000000010001001111100101010";
signal sig15: signed(33 downto 0);
signal B15: signed(31 downto 0) := "00000000000101011110110100100101";
signal sig16: signed(33 downto 0);
signal B16: signed(31 downto 0) := "11111111110101101000001101011110";
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
    
    S11:process(clk, input_N11, B11, sig11, temp11, temp11a)
        begin
        if rising_edge(clk) then
            sig11 <= signed(input_N11) + B11;
            if sig11 > 2500000 or sig11 = 2500000 then
                temp11 <= std_logic_vector(to_signed(1000, 16));
                temp11a <= (others => '0');
            else 
                if sig11 < -2500000 or sig11=-2500000 then
                    temp11 <= std_logic_vector(to_signed(0, 16));
                    temp11a <= (others => '0');
                else
                    temp11a <= std_logic_vector(sig11);
                    temp11 <= std_logic_vector(signed("000000000000"&temp11a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S12:process(clk, input_N12, B12, sig12, temp12, temp12a)
        begin
        if rising_edge(clk) then
            sig12 <= signed(input_N12) + B12;
            if sig12 > 2500000 or sig12 = 2500000 then
                temp12 <= std_logic_vector(to_signed(1000, 16));
                temp12a <= (others => '0');
            else 
                if sig12 < -2500000 or sig12=-2500000 then
                    temp12 <= std_logic_vector(to_signed(0, 16));
                    temp12a <= (others => '0');
                else
                    temp12a <= std_logic_vector(sig12);
                    temp12 <= std_logic_vector(signed("000000000000"&temp12a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S13:process(clk, input_N13, B13, sig13, temp13, temp13a)
        begin
        if rising_edge(clk) then
            sig13 <= signed(input_N13) + B13;
            if sig13 > 2500000 or sig13 = 2500000 then
                temp13 <= std_logic_vector(to_signed(1000, 16));
                temp13a <= (others => '0');
            else 
                if sig13 < -2500000 or sig13=-2500000 then
                    temp13 <= std_logic_vector(to_signed(0, 16));
                    temp13a <= (others => '0');
                else
                    temp13a <= std_logic_vector(sig13);
                    temp13 <= std_logic_vector(signed("000000000000"&temp13a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S14:process(clk, input_N14, B14, sig14, temp14, temp14a)
        begin
        if rising_edge(clk) then
            sig14 <= signed(input_N14) + B14;
            if sig14 > 2500000 or sig14 = 2500000 then
                temp14 <= std_logic_vector(to_signed(1000, 16));
                temp14a <= (others => '0');
            else 
                if sig14 < -2500000 or sig14=-2500000 then
                    temp14 <= std_logic_vector(to_signed(0, 16));
                    temp14a <= (others => '0');
                else
                    temp14a <= std_logic_vector(sig14);
                    temp14 <= std_logic_vector(signed("000000000000"&temp14a(15 downto 12))+512);
                end if;
           end if;
           end if;
    end process;
    
    S15:process(clk, input_N15, B15, sig15, temp15, temp15a)
        begin
        if rising_edge(clk) then
            sig15 <= signed(input_N15) + B15;
            if sig15 > 2500000 or sig15 = 2500000 then
                temp15 <= std_logic_vector(to_signed(1000, 16));
                temp15a <= (others => '0');
            else 
                if sig15 < -2500000 or sig15=-2500000 then
                    temp15 <= std_logic_vector(to_signed(0, 16));
                    temp15a <= (others => '0');
                else
                    temp15a <= std_logic_vector(sig15);
                    temp15 <= std_logic_vector(signed("000000000000"&temp15a(15 downto 12))+512);  
                end if;
           end if;
           end if;
    end process;
    
    S16:process(clk, input_N16, B16, sig16, temp16, temp16a)
        begin
        if rising_edge(clk) then
            sig16 <= signed(input_N16) + B16;
            if sig16 > 2500000 or sig16 = 2500000 then
                temp16 <= std_logic_vector(to_signed(1000, 16));
                temp16a <= (others => '0');
            else 
                if sig16 < -2500000 or sig16=-2500000 then
                    temp16 <= std_logic_vector(to_signed(0, 16));
                    temp16a <= (others => '0');
                else
                    temp16a <= std_logic_vector(sig16);
                    temp16 <= std_logic_vector(signed("000000000000"&temp16a(15 downto 12))+512);  
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
    output11 <= temp11;
    output12 <= temp12;
    output13 <= temp13;
    output14 <= temp14;
    output15 <= temp15;
    output16 <= temp16;
    
end Behavioral;