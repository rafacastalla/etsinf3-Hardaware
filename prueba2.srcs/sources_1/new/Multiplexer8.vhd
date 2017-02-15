----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2017 13:31:51
-- Design Name: 
-- Module Name: Multiplexer8 - Behavioral
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

entity Multiplexer8 is

Port ( a_i : in STD_LOGIC_VECTOR (7 downto 0);      -- data input
       ctrl_i : in STD_LOGIC_VECTOR (2 downto 0);   -- control
       s_o : out STD_LOGIC);                        -- data output

end Multiplexer8;

architecture Behavioral of Multiplexer8 is

begin

    s_o <= a_i(to_integer(unsigned(ctrl_i)));

end Behavioral;
