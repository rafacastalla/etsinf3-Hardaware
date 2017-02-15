----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2017 13:21:17
-- Design Name: 
-- Module Name: TristateBuffer8bits - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TristateBuffer8bits is
    Port ( a_i : in STD_LOGIC_VECTOR (7 downto 0);
           ctrl_i : in STD_LOGIC;
           s_o : out STD_LOGIC_VECTOR (7 downto 0));
end TristateBuffer8bits;

architecture Behavioral of TristateBuffer8bits is

begin

    s_o <= a_i when ctrl_i = '1' else (others => 'Z');
    
end Behavioral;
