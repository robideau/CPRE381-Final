library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity and_3bit is
port (A,B,C: in STD_LOGIC;
      F: out STD_LOGIC);
end and_3bit; 

architecture BEHAVIORAL of AND3 is
begin
  F <= (A AND B AND C);
end BEHAVIORAL;