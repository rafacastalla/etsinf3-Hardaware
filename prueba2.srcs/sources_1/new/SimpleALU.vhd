----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2017 13:51:43
-- Design Name: 
-- Module Name: SimpleALU - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SimpleALU is
Port ( a_i : in STD_LOGIC_VECTOR (3 downto 0);      -- first operand
       b_i : in STD_LOGIC_VECTOR (3 downto 0);      -- second operand
       op_i : in STD_LOGIC_VECTOR (2 downto 0);     -- operation code
       s_o : out STD_LOGIC_VECTOR (3 downto 0));    -- result
end SimpleALU;

architecture Behavioral of SimpleALU is

begin


with op_i select
s_o <= std_logic_vector(to_unsigned(to_integer(unsigned(a_i)) +  to_integer(unsigned(b_i)), 4)) when "100",
       std_logic_vector(to_unsigned(to_integer(unsigned(a_i)) -  to_integer(unsigned(b_i)), 4)) when "101",
       a_i and b_i when "110",
       a_i or b_i when "111",
       std_logic_vector(to_unsigned(to_integer(unsigned(a_i)) +  1, 4)) when others; 

end Behavioral;
