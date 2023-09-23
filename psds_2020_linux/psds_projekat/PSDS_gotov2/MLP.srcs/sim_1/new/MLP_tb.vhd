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

entity MLP_tb is
--  Port ( );
end MLP_tb;

architecture Behavioral of MLP_tb is
signal clk_s: std_logic;
signal res_s: std_logic;
signal start: std_logic;
signal done_s: std_logic;
signal b0: std_logic_vector(15 downto 0);
signal b1: std_logic_vector(15 downto 0);
signal b2: std_logic_vector(15 downto 0);
signal b3: std_logic_vector(15 downto 0);
signal b4: std_logic_vector(15 downto 0);
signal b5: std_logic_vector(15 downto 0);
signal b6: std_logic_vector(15 downto 0);
signal b7: std_logic_vector(15 downto 0);
signal b8: std_logic_vector(15 downto 0);
signal b9: std_logic_vector(15 downto 0);

begin

    MLP: entity work.MLP(Behavioral)
        port map(clk => clk_s,
                 reset_mlp => res_s,
                 start_mlp => start,
                 done_mlp => done_s,
                 out0_mlp => b0,
                 out1_mlp => b1,
                 out2_mlp => b2,
                 out3_mlp => b3,
                 out4_mlp => b4,
                 out5_mlp => b5,
                 out6_mlp => b6,
                 out7_mlp => b7,
                 out8_mlp => b8,
                 out9_mlp => b9);
                                                     
    clkgen: process
    begin
        clk_s <= '0', '1' after 10ns;
        wait for 20ns;
    end process;
    
    reset_process: process
    begin
        res_s <= '1';
        wait for 100 ns;
        res_s <= '0';
        wait;
    end process;
    start <= not res_s;
    
end Behavioral;
