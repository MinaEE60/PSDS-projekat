----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/14/2023 11:22:07 PM
-- Design Name: 
-- Module Name: MUX_L1 - Behavioral
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

entity MUX_L1 is
    Port (
          data_in1: in std_logic_vector(15 downto 0);
          data_in2: in std_logic_vector(15 downto 0);
          data_in3: in std_logic_vector(15 downto 0);
          data_in4: in std_logic_vector(15 downto 0);
          data_in5: in std_logic_vector(15 downto 0);
          data_in6: in std_logic_vector(15 downto 0);
          data_in7: in std_logic_vector(15 downto 0);
          data_in8: in std_logic_vector(15 downto 0);
          data_in9: in std_logic_vector(15 downto 0);
          data_in10: in std_logic_vector(15 downto 0);
          data_in11: in std_logic_vector(15 downto 0);
          data_in12: in std_logic_vector(15 downto 0);
          data_in13: in std_logic_vector(15 downto 0);
          data_in14: in std_logic_vector(15 downto 0);
          data_in15: in std_logic_vector(15 downto 0);
          data_in16: in std_logic_vector(15 downto 0);
          data_out: out std_logic_vector(15 downto 0);
          sel_in: in std_logic_vector(3 downto 0)
          --stim: in std_logic
          );
end MUX_L1;

architecture Behavioral of MUX_L1 is
signal mux_output: std_logic_vector(15 downto 0);
begin
process (sel_in, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8, data_in9, data_in10, data_in11, data_in12, data_in13, data_in14, data_in15, data_in16)
    begin
        case sel_in is
            when "0000" => mux_output <= data_in1;
            when "0001" => mux_output <= data_in2;
            when "0010" => mux_output <= data_in3;
            when "0011" => mux_output <= data_in4;
            when "0100" => mux_output <= data_in5;
            when "0101" => mux_output <= data_in6;
            when "0110" => mux_output <= data_in7;
            when "0111" => mux_output <= data_in8;
            when "1000" => mux_output <= data_in9;
            when "1001" => mux_output <= data_in10;
            when "1010" => mux_output <= data_in11;
            when "1011" => mux_output <= data_in12;
            when "1100" => mux_output <= data_in13;
            when "1101" => mux_output <= data_in14;
            when "1110" => mux_output <= data_in15;
            when "1111" => mux_output <= data_in16;
            when others => mux_output <= (others => '0');
        end case;
    end process;
    
    data_out <= mux_output;
end architecture Behavioral;
