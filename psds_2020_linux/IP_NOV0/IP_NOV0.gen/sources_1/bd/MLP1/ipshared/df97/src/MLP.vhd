----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/13/2023 11:40:40 PM
-- Design Name: 
-- Module Name: MLP_tb - Behavioral
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

entity MLP is
    Port (clk: in std_logic;
          reset_mlp: in std_logic;
          start_mlp: in std_logic;
          done_mlp: out std_logic;
          out0_mlp: out std_logic_vector(15 downto 0);
          out1_mlp: out std_logic_vector(15 downto 0); 
          out2_mlp: out std_logic_vector(15 downto 0); 
          out3_mlp: out std_logic_vector(15 downto 0); 
          out4_mlp: out std_logic_vector(15 downto 0); 
          out5_mlp: out std_logic_vector(15 downto 0); 
          out6_mlp: out std_logic_vector(15 downto 0); 
          out7_mlp: out std_logic_vector(15 downto 0);
          out8_mlp: out std_logic_vector(15 downto 0); 
          out9_mlp: out std_logic_vector(15 downto 0)  
           );
end MLP;

architecture Behavioral of MLP is
--signal clk_s: std_logic;
--signal res_s: std_logic;
--signal start: std_logic;
signal res2_s: std_logic;
signal wea_s: std_logic := '0';
signal addr_s: std_logic_vector(9 downto 0);
signal dia_s: std_logic_vector(15 downto 0) := (others => '0');
-----------------------------------------------------------
signal doaw1_s: std_logic_vector(15 downto 0);
signal doaw2_s: std_logic_vector(15 downto 0);
signal doaw3_s: std_logic_vector(15 downto 0);
signal doaw4_s: std_logic_vector(15 downto 0);
signal doaw5_s: std_logic_vector(15 downto 0);
signal doaw6_s: std_logic_vector(15 downto 0);
signal doaw7_s: std_logic_vector(15 downto 0);
signal doaw8_s: std_logic_vector(15 downto 0);
signal doaw9_s: std_logic_vector(15 downto 0);
signal doaw10_s: std_logic_vector(15 downto 0);
signal doaw11_s: std_logic_vector(15 downto 0);
signal doaw12_s: std_logic_vector(15 downto 0);
signal doaw13_s: std_logic_vector(15 downto 0);
signal doaw14_s: std_logic_vector(15 downto 0);
signal doaw15_s: std_logic_vector(15 downto 0);
signal doaw16_s: std_logic_vector(15 downto 0);
signal doas_s: std_logic_vector(15 downto 0);
------------------------------------------------------------
signal outn1_1: std_logic_vector(33 downto 0);
signal outn1_2: std_logic_vector(33 downto 0);
signal outn1_3: std_logic_vector(33 downto 0);
signal outn1_4: std_logic_vector(33 downto 0);
signal outn1_5: std_logic_vector(33 downto 0);
signal outn1_6: std_logic_vector(33 downto 0);
signal outn1_7: std_logic_vector(33 downto 0);
signal outn1_8: std_logic_vector(33 downto 0);
signal outn1_9: std_logic_vector(33 downto 0);
signal outn1_10: std_logic_vector(33 downto 0);
signal outn1_11: std_logic_vector(33 downto 0);
signal outn1_12: std_logic_vector(33 downto 0);
signal outn1_13: std_logic_vector(33 downto 0);
signal outn1_14: std_logic_vector(33 downto 0);
signal outn1_15: std_logic_vector(33 downto 0);
signal outn1_16: std_logic_vector(33 downto 0);
------------------------------------------------------
signal sigmaL1_1: std_logic_vector(15 downto 0);
signal sigmaL1_2: std_logic_vector(15 downto 0);
signal sigmaL1_3: std_logic_vector(15 downto 0);
signal sigmaL1_4: std_logic_vector(15 downto 0);
signal sigmaL1_5: std_logic_vector(15 downto 0);
signal sigmaL1_6: std_logic_vector(15 downto 0);
signal sigmaL1_7: std_logic_vector(15 downto 0);
signal sigmaL1_8: std_logic_vector(15 downto 0);
signal sigmaL1_9: std_logic_vector(15 downto 0);
signal sigmaL1_10: std_logic_vector(15 downto 0);
signal sigmaL1_11: std_logic_vector(15 downto 0);
signal sigmaL1_12: std_logic_vector(15 downto 0);
signal sigmaL1_13: std_logic_vector(15 downto 0);
signal sigmaL1_14: std_logic_vector(15 downto 0);
signal sigmaL1_15: std_logic_vector(15 downto 0);
signal sigmaL1_16: std_logic_vector(15 downto 0);
----------------------------------------------------------
signal res2_L1_s: std_logic;
signal count_out_L1_s : std_logic_vector(3 downto 0);
signal done_cntL1_s: std_logic;
signal done_s: std_logic;
----------------------------------------------------
signal MUX_L1_s: std_logic_vector(15 downto 0);
----------------------------------------------
signal notout: std_logic;
-------------------------------------------------
signal doaw1_s2: std_logic_vector(15 downto 0);
signal doaw2_s2: std_logic_vector(15 downto 0);
signal doaw3_s2: std_logic_vector(15 downto 0);
signal doaw4_s2: std_logic_vector(15 downto 0);
signal doaw5_s2: std_logic_vector(15 downto 0);
signal doaw6_s2: std_logic_vector(15 downto 0);
signal doaw7_s2: std_logic_vector(15 downto 0);
signal doaw8_s2: std_logic_vector(15 downto 0);
signal doaw9_s2: std_logic_vector(15 downto 0);
signal doaw10_s2: std_logic_vector(15 downto 0);
signal doaw11_s2: std_logic_vector(15 downto 0);
signal doaw12_s2: std_logic_vector(15 downto 0);
signal doaw13_s2: std_logic_vector(15 downto 0);
signal doaw14_s2: std_logic_vector(15 downto 0);
signal doaw15_s2: std_logic_vector(15 downto 0);
signal doaw16_s2: std_logic_vector(15 downto 0);
signal doas_s2: std_logic_vector(15 downto 0);
----------------------------------------------------
signal outn2_1: std_logic_vector(33 downto 0);
signal outn2_2: std_logic_vector(33 downto 0);
signal outn2_3: std_logic_vector(33 downto 0);
signal outn2_4: std_logic_vector(33 downto 0);
signal outn2_5: std_logic_vector(33 downto 0);
signal outn2_6: std_logic_vector(33 downto 0);
signal outn2_7: std_logic_vector(33 downto 0);
signal outn2_8: std_logic_vector(33 downto 0);
signal outn2_9: std_logic_vector(33 downto 0);
signal outn2_10: std_logic_vector(33 downto 0);
signal outn2_11: std_logic_vector(33 downto 0);
signal outn2_12: std_logic_vector(33 downto 0);
signal outn2_13: std_logic_vector(33 downto 0);
signal outn2_14: std_logic_vector(33 downto 0);
signal outn2_15: std_logic_vector(33 downto 0);
signal outn2_16: std_logic_vector(33 downto 0);
-----------------------------------------------------
signal res2_W2_s: std_logic;
signal count_out_W2_s: std_logic_vector(4 downto 0);
signal done_cntW2_s: std_logic;
------------------------------------------------------
signal sigmaL2_1: std_logic_vector(15 downto 0);
signal sigmaL2_2: std_logic_vector(15 downto 0);
signal sigmaL2_3: std_logic_vector(15 downto 0);
signal sigmaL2_4: std_logic_vector(15 downto 0);
signal sigmaL2_5: std_logic_vector(15 downto 0);
signal sigmaL2_6: std_logic_vector(15 downto 0);
signal sigmaL2_7: std_logic_vector(15 downto 0);
signal sigmaL2_8: std_logic_vector(15 downto 0);
signal sigmaL2_9: std_logic_vector(15 downto 0);
signal sigmaL2_10: std_logic_vector(15 downto 0);
signal sigmaL2_11: std_logic_vector(15 downto 0);
signal sigmaL2_12: std_logic_vector(15 downto 0);
signal sigmaL2_13: std_logic_vector(15 downto 0);
signal sigmaL2_14: std_logic_vector(15 downto 0);
signal sigmaL2_15: std_logic_vector(15 downto 0);
signal sigmaL2_16: std_logic_vector(15 downto 0);
-----------------------------------------------------------------
signal MUX_L2_s: std_logic_vector(15 downto 0);
signal count_out_L2_s: std_logic_vector(3 downto 0);
signal done_cntL2_s: std_logic;
signal res2_L2_s: std_logic;
signal delay_done_cntW2_s: std_logic;
------------------------------------------------
signal notout2: std_logic;
----------------
signal res2_W3_s: std_logic;
signal done_cntW3_s: std_logic;
signal count_out_W3_s: std_logic_vector(4 downto 0);
------------------------------------------------------------
signal doas_s3: std_logic_vector(15 downto 0);
signal doaw1_s3: std_logic_vector(15 downto 0);
signal doaw2_s3: std_logic_vector(15 downto 0);
signal doaw3_s3: std_logic_vector(15 downto 0);
signal doaw4_s3: std_logic_vector(15 downto 0);
signal doaw5_s3: std_logic_vector(15 downto 0);
signal doaw6_s3: std_logic_vector(15 downto 0);
signal doaw7_s3: std_logic_vector(15 downto 0);
signal doaw8_s3: std_logic_vector(15 downto 0);
signal doaw9_s3: std_logic_vector(15 downto 0);
signal doaw10_s3: std_logic_vector(15 downto 0);
-------------------------------------------------------------
signal outn3_1: std_logic_vector(33 downto 0);
signal outn3_2: std_logic_vector(33 downto 0);
signal outn3_3: std_logic_vector(33 downto 0);
signal outn3_4: std_logic_vector(33 downto 0);
signal outn3_5: std_logic_vector(33 downto 0);
signal outn3_6: std_logic_vector(33 downto 0);
signal outn3_7: std_logic_vector(33 downto 0);
signal outn3_8: std_logic_vector(33 downto 0);
signal outn3_9: std_logic_vector(33 downto 0);
signal outn3_10: std_logic_vector(33 downto 0);
------------------------------------------------------------

begin
                  
    BW1_1: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_1.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw1_s);
                  
    BW1_2: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_2.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw2_s);      
                         
    BW1_3: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_3.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw3_s);

    BW1_4: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_4.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw4_s);       
                 
    BW1_5: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_5.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw5_s);
                 
    BW1_6: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_6.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw6_s);
                 
    BW1_7: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_7.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw7_s);
                 
    BW1_8: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_8.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw8_s);
                 
    BW1_9: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_9.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw9_s);
                 
    BW1_10: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_10.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw10_s);
                 
    BW1_11: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_11.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw11_s);
                 
    BW1_12: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_12.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw12_s);
                 
    BW1_13: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_13.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw13_s);
                 
    BW1_14: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_14.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw14_s);
                 
    BW1_15: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_15.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw15_s);
                 
    BW1_16: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W1_BIN/W1_16.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doaw16_s);
                 
    BS: entity work.BRAM_W1(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/slike/test_BIN/test1.txt")
        port map(clka => clk,
                 ena => start_mlp,
                 --wea => wea_s,
                 addra => addr_s,
                 --dia => dia_s,
                 doa => doas_s);
                           
    Counter_W1S: entity work.Addr_Count_W1S(Behavioral)
                port map (clk => clk,
                          reset => reset_mlp,
                          res2 => res2_s,
                          start => start_mlp,
                          count_out => addr_s,
                          done => done_s);
                          
    N1_1: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw1_s,
                     S => doas_s,
                     y_out => outn1_1);
                     
    N1_2: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw2_s,
                     S => doas_s,
                     y_out => outn1_2);
                     
    N1_3: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw3_s,
                     S => doas_s,
                     y_out => outn1_3);
                     
    N1_4: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw4_s,
                     S => doas_s,
                     y_out => outn1_4);
                     
    N1_5: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw5_s,
                     S => doas_s,
                     y_out => outn1_5);
                     
    N1_6: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw6_s,
                     S => doas_s,
                     y_out => outn1_6);
                     
    N1_7: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw7_s,
                     S => doas_s,
                     y_out => outn1_7);
                     
    N1_8: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw8_s,
                     S => doas_s,
                     y_out => outn1_8);
                     
    N1_9: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw9_s,
                     S => doas_s,
                     y_out => outn1_9);
                     
    N1_10: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw10_s,
                     S => doas_s,
                     y_out => outn1_10);
                     
    N1_11: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw11_s,
                     S => doas_s,
                     y_out => outn1_11);
                     
    N1_12: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw12_s,
                     S => doas_s,
                     y_out => outn1_12);
                     
    N1_13: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw13_s,
                     S => doas_s,
                     y_out => outn1_13);
                     
    N1_14: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw14_s,
                     S => doas_s,
                     y_out => outn1_14);
                     
    N1_15: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw15_s,
                     S => doas_s,
                     y_out => outn1_15);
                     
    N1_16: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => start_mlp,
                     res => res2_s,
                     W => doaw16_s,
                     S => doas_s,
                     y_out => outn1_16);
               
    SIGMA_L1: entity work.Sigma_L1(Behavioral)
                port map(clk => clk,
                         input_N1 => outn1_1,
                         input_N2 => outn1_2,
                         input_N3 => outn1_3,
                         input_N4 => outn1_4,
                         input_N5 => outn1_5,
                         input_N6 => outn1_6,
                         input_N7 => outn1_7,
                         input_N8 => outn1_8,
                         input_N9 => outn1_9,
                         input_N10 => outn1_10,
                         input_N11 => outn1_11,
                         input_N12 => outn1_12,
                         input_N13 => outn1_13,
                         input_N14 => outn1_14,
                         input_N15 => outn1_15,
                         input_N16 => outn1_16,
                         output1 => sigmaL1_1,
                         output2 => sigmaL1_2,
                         output3 => sigmaL1_3,
                         output4 => sigmaL1_4,
                         output5 => sigmaL1_5,
                         output6 => sigmaL1_6,
                         output7 => sigmaL1_7,
                         output8 => sigmaL1_8,
                         output9 => sigmaL1_9,
                         output10 => sigmaL1_10,
                         output11 => sigmaL1_11,
                         output12 => sigmaL1_12,
                         output13 => sigmaL1_13,
                         output14 => sigmaL1_14,
                         output15 => sigmaL1_15,
                         output16 => sigmaL1_16);
                         
    CNT_L1: entity work.CNT_L1_W(Behavioral)
            port map(clk => clk,
                     reset => reset_mlp,
                     res2 => res2_L1_s,
                     start => done_s,
                     count_out => count_out_L1_s,
                     done => done_cntL1_s);
               
    CNT_W2: entity work.CNT_W2(Behavioral)
            port map(clk => clk,
                     reset => reset_mlp,
                     res2 => res2_W2_s,
                     start => done_cntL1_s,
                     count_out => count_out_W2_s,
                     done => done_cntW2_s);
                     
    MUX_L1: entity work.MUX_L1(Behavioral)
            port map(data_in1 => sigmaL1_1,
                     data_in2 => sigmaL1_2,
                     data_in3 => sigmaL1_3,
                     data_in4 => sigmaL1_4,
                     data_in5 => sigmaL1_5,
                     data_in6 => sigmaL1_6,
                     data_in7 => sigmaL1_7,
                     data_in8 => sigmaL1_8,
                     data_in9 => sigmaL1_9,
                     data_in10 => sigmaL1_10,
                     data_in11 => sigmaL1_11,
                     data_in12 => sigmaL1_12,
                     data_in13 => sigmaL1_13,
                     data_in14 => sigmaL1_14,
                     data_in15 => sigmaL1_15,
                     data_in16 => sigmaL1_16,
                     data_out => MUX_L1_s,
                     sel_in => count_out_L1_s
                     --stim => done_s
                     );
                     
    NOT_WEN_L1: entity work.NOT_4bit_delay(Behavioral)
                port map(input => done_cntL1_s,
                         output => notout);     
                         
    BRAM_L1: entity work.BRAM_L1(Behavioral)
                port map(clka => clk,
                         ena => done_s,
                         wea => notout,
                         addra => count_out_L1_s,
                         dia => MUX_L1_s,
                         doa => doas_s2);
                         
    BW2_1: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_1.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw1_s2);  
                 
    BW2_2: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_2.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw2_s2);
                 
    BW2_3: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_3.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw3_s2);
                     
    BW2_4: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_4.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw4_s2);                     
   
    BW2_5: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_5.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw5_s2);
                 
    BW2_6: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_6.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw6_s2);                 
                 
    BW2_7: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_7.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw7_s2);
                 
    BW2_8: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_8.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw8_s2);
                 
    BW2_9: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_9.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw9_s2);
                 
    BW2_10: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_10.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw10_s2);
                 
    BW2_11: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_11.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw11_s2);
                 
    BW2_12: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_12.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw12_s2);
                 
    BW2_13: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_13.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw13_s2);
                 
    BW2_14: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_14.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw14_s2);
                 
    BW2_15: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_15.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw15_s2);
                 
    BW2_16: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W2_BIN/W2_16.txt")
        port map(clka => clk,
                 ena => done_cntL1_s,
                 --wea => '0',
                 addra => count_out_W2_s,
                 --dia => dia_s,
                 doa => doaw16_s2);
                 
    N2_1: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw1_s2,
                     S => doas_s2,
                     y_out => outn2_1);
                     
    N2_2: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw2_s2,
                     S => doas_s2,
                     y_out => outn2_2);
                     
    N2_3: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw3_s2,
                     S => doas_s2,
                     y_out => outn2_3);
                     
    N2_4: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw4_s2,
                     S => doas_s2,
                     y_out => outn2_4);
                     
    N2_5: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw5_s2,
                     S => doas_s2,
                     y_out => outn2_5);
                     
    N2_6: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw6_s2,
                     S => doas_s2,
                     y_out => outn2_6);
                     
    N2_7: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw7_s2,
                     S => doas_s2,
                     y_out => outn2_7);
                     
    N2_8: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw8_s2,
                     S => doas_s2,
                     y_out => outn2_8);
                     
    N2_9: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw9_s2,
                     S => doas_s2,
                     y_out => outn2_9);
                     
    N2_10: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw10_s2,
                     S => doas_s2,
                     y_out => outn2_10);
                     
    N2_11: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw11_s2,
                     S => doas_s2,
                     y_out => outn2_11);
                     
    N2_12: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw12_s2,
                     S => doas_s2,
                     y_out => outn2_12);
                     
    N2_13: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw13_s2,
                     S => doas_s2,
                     y_out => outn2_13);
                     
    N2_14: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw14_s2,
                     S => doas_s2,
                     y_out => outn2_14);
                     
    N2_15: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw15_s2,
                     S => doas_s2,
                     y_out => outn2_15);
                     
    N2_16: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL1_s,
                     res => res2_L1_s,
                     W => doaw16_s2,
                     S => doas_s2,
                     y_out => outn2_16);
                     
    SIGMA_L2: entity work.Sigma_L2(Behavioral)
                port map(clk => clk,
                         input_N1 => outn2_1,
                         input_N2 => outn2_2,
                         input_N3 => outn2_3,
                         input_N4 => outn2_4,
                         input_N5 => outn2_5,
                         input_N6 => outn2_6,
                         input_N7 => outn2_7,
                         input_N8 => outn2_8,
                         input_N9 => outn2_9,
                         input_N10 => outn2_10,
                         input_N11 => outn2_11,
                         input_N12 => outn2_12,
                         input_N13 => outn2_13,
                         input_N14 => outn2_14,
                         input_N15 => outn2_15,
                         input_N16 => outn2_16,
                         output1 => sigmaL2_1,
                         output2 => sigmaL2_2,
                         output3 => sigmaL2_3,
                         output4 => sigmaL2_4,
                         output5 => sigmaL2_5,
                         output6 => sigmaL2_6,
                         output7 => sigmaL2_7,
                         output8 => sigmaL2_8,
                         output9 => sigmaL2_9,
                         output10 => sigmaL2_10,
                         output11 => sigmaL2_11,
                         output12 => sigmaL2_12,
                         output13 => sigmaL2_13,
                         output14 => sigmaL2_14,
                         output15 => sigmaL2_15,
                         output16 => sigmaL2_16);
        
    Delayer1: entity work.delayer_16bit(Behavioral)
                port map(clk => clk,
                         input => done_cntW2_s,
                         output => delay_done_cntW2_s);
    
    CNT_L2: entity work.CNT_L1_W(Behavioral)
            port map(clk => clk,
                     reset => reset_mlp,
                     res2 => res2_L2_s,
                     start => delay_done_cntW2_s,
                     count_out => count_out_L2_s,
                     done => done_cntL2_s);
                     
    CNT_W3: entity work.CNT_W2(Behavioral)
            port map(clk => clk,
                     reset => reset_mlp,
                     res2 => res2_W3_s,
                     start => done_cntL2_s,
                     count_out => count_out_W3_s,
                     done => done_cntW3_s);
                         
     MUX_L2: entity work.MUX_L1(Behavioral)
            port map(data_in1 => sigmaL2_1,
                     data_in2 => sigmaL2_2,
                     data_in3 => sigmaL2_3,
                     data_in4 => sigmaL2_4,
                     data_in5 => sigmaL2_5,
                     data_in6 => sigmaL2_6,
                     data_in7 => sigmaL2_7,
                     data_in8 => sigmaL2_8,
                     data_in9 => sigmaL2_9,
                     data_in10 => sigmaL2_10,
                     data_in11 => sigmaL2_11,
                     data_in12 => sigmaL2_12,
                     data_in13 => sigmaL2_13,
                     data_in14 => sigmaL2_14,
                     data_in15 => sigmaL2_15,
                     data_in16 => sigmaL2_16,
                     data_out => MUX_L2_s,
                     sel_in => count_out_L2_s
                     --stim => delay_done_cntW2_s
                     );
                     
    NOT_WEN_L2: entity work.NOT_4bit_delay(Behavioral)
                port map(input => done_cntL2_s,
                         output => notout2);
       
    BRAM_L2: entity work.BRAM_L2(Behavioral)
                port map(clka => clk,
                         ena => done_s,
                         wea => notout2,
                         addra => count_out_L2_s,
                         dia => MUX_L2_s,
                         doa => doas_s3);
    
    BW3_1: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_1.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw1_s3);
                 
    BW3_2: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_2.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw2_s3);
                 
    BW3_3: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_3.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw3_s3);
                 
    BW3_4: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_4.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw4_s3);
                 
    BW3_5: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_5.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw5_s3);
                 
    BW3_6: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_6.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw6_s3);
                 
    BW3_7: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_7.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw7_s3);
                 
    BW3_8: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_8.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw8_s3);
                 
    BW3_9: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_9.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw9_s3);
                                   
    BW3_10: entity work.BRAM_W2(Behavioral)
        generic map(INIT_FILE => "/home/mina/Downloads/files/VHDL fajlovi/koeficijenti/W3_BIN/W3_10.txt")
        port map(clka => clk,
                 ena => done_cntL2_s,
                 --wea => '0',
                 addra => count_out_W3_s,
                 --dia => dia_s,
                 doa => doaw10_s3);
                 
    N3_1: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw1_s3,
                     S => doas_s3,
                     y_out => outn3_1);
                     
    N3_2: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw2_s3,
                     S => doas_s3,
                     y_out => outn3_2);
                     
    N3_3: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw3_s3,
                     S => doas_s3,
                     y_out => outn3_3);
                     
    N3_4: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw4_s3,
                     S => doas_s3,
                     y_out => outn3_4);
                     
    N3_5: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw5_s3,
                     S => doas_s3,
                     y_out => outn3_5);
                     
    N3_6: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw6_s3,
                     S => doas_s3,
                     y_out => outn3_6);
                     
    N3_7: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw7_s3,
                     S => doas_s3,
                     y_out => outn3_7);
                     
    N3_8: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw8_s3,
                     S => doas_s3,
                     y_out => outn3_8);
                     
    N3_9: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw9_s3,
                     S => doas_s3,
                     y_out => outn3_9);
                     
    N3_10: entity work.Neuron_1(Behavioral)
            port map(clk => clk,
                     en_n => done_cntL2_s,
                     res => res2_L2_s,
                     W => doaw10_s3,
                     S => doas_s3,
                     y_out => outn3_10);
                     
     SIGMA_L3: entity work.Sigma_L3(Behavioral)
                port map(clk => clk,
                         input_N1 => outn3_1,
                         input_N2 => outn3_2,
                         input_N3 => outn3_3,
                         input_N4 => outn3_4,
                         input_N5 => outn3_5,
                         input_N6 => outn3_6,
                         input_N7 => outn3_7,
                         input_N8 => outn3_8,
                         input_N9 => outn3_9,
                         input_N10 => outn3_10,
                         output1 => out0_mlp,
                         output2 => out1_mlp,
                         output3 => out2_mlp,
                         output4 => out3_mlp,
                         output5 => out4_mlp,
                         output6 => out5_mlp,
                         output7 => out6_mlp,
                         output8 => out7_mlp,
                         output9 => out8_mlp,
                         output10 => out9_mlp);
    
    done_mlp <= done_cntW3_s;
    
end Behavioral;
