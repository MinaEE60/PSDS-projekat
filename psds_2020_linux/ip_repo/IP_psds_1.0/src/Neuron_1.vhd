----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2023 04:46:36 PM
-- Design Name: 
-- Module Name: Neuron_W1 - Behavioral
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

entity Neuron_1 is
    Port ( clk : in STD_LOGIC;
           en_n: in std_logic;
           res: in std_logic;
           W : in STD_LOGIC_VECTOR (15 downto 0);
           S : in STD_LOGIC_VECTOR (15 downto 0);
           y_out : inout STD_LOGIC_VECTOR (33 downto 0));
end Neuron_1;

architecture Behavioral of Neuron_1 is
    signal y_temp : STD_LOGIC_VECTOR(33 downto 0) := (others=>'0');
    --signal y_temp : STD_LOGIC_VECTOR(33 downto 0);
    signal y_temp1 : STD_LOGIC_VECTOR(31 downto 0);
begin
    process (clk)
    begin
        if clk'event and clk = '1' then
            if res='1' then
                y_temp <= (others => '0');
                y_temp1 <= (others => '0');
            elsif en_n = '1' then
                y_temp1 <= std_logic_vector(signed(W) * signed(S));
                y_temp <= std_logic_vector(signed(y_temp1)+signed(y_out));
               end if;
        end if;
    end process;
    
    y_out <= y_temp;

end Behavioral;

