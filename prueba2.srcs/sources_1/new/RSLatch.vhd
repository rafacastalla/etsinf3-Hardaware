----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.02.2017 12:55:51
-- Design Name: 
-- Module Name: RSLatch - Behavioral
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

entity RSLatch is
    Port ( r_i : in STD_LOGIC;
           s_i : in STD_LOGIC;
           q_o : out STD_LOGIC;
           q_n_o : out STD_LOGIC);
end RSLatch;

architecture Behavioral of RSLatch is
    signal n_q_a, q_a : std_logic;
begin
    
    q_a <= r_i nand n_q_a;
    n_q_a <= s_i nand q_a;
    q_o <= q_a;
    q_n_o <= n_q_a;

end Behavioral;
