library IEEE;
use IEEE.std_logic_1164.all;

entity thirtytwo_one_mux_dataflow is 
  generic(N : integer := 32);                      
  port(i_0  : in  std_logic_vector(N-1 downto 0);   
       i_1  : in  std_logic_vector(N-1 downto 0);
       i_2  : in  std_logic_vector(N-1 downto 0);
       i_3  : in  std_logic_vector(N-1 downto 0);
       i_4  : in  std_logic_vector(N-1 downto 0);
       i_5  : in  std_logic_vector(N-1 downto 0);
       i_6  : in  std_logic_vector(N-1 downto 0);
       i_7  : in  std_logic_vector(N-1 downto 0);
       i_8  : in  std_logic_vector(N-1 downto 0);
       i_9  : in  std_logic_vector(N-1 downto 0);
       i_10  : in  std_logic_vector(N-1 downto 0);
       i_11  : in  std_logic_vector(N-1 downto 0);
       i_12  : in  std_logic_vector(N-1 downto 0);
       i_13  : in  std_logic_vector(N-1 downto 0);
       i_14  : in  std_logic_vector(N-1 downto 0);
       i_15  : in  std_logic_vector(N-1 downto 0);
       i_16  : in  std_logic_vector(N-1 downto 0);
       i_17  : in  std_logic_vector(N-1 downto 0);
       i_18  : in  std_logic_vector(N-1 downto 0);
       i_19  : in  std_logic_vector(N-1 downto 0);
       i_20  : in  std_logic_vector(N-1 downto 0);
       i_21  : in  std_logic_vector(N-1 downto 0);
       i_22  : in  std_logic_vector(N-1 downto 0);
       i_23  : in  std_logic_vector(N-1 downto 0);
       i_24  : in  std_logic_vector(N-1 downto 0);
       i_25  : in  std_logic_vector(N-1 downto 0);
       i_26  : in  std_logic_vector(N-1 downto 0);
       i_27  : in  std_logic_vector(N-1 downto 0);
       i_28  : in  std_logic_vector(N-1 downto 0);
       i_29  : in  std_logic_vector(N-1 downto 0);
       i_30  : in  std_logic_vector(N-1 downto 0);
       i_31  : in  std_logic_vector(N-1 downto 0);
       i_S  : in  std_logic_vector(5-1 downto 0);                    
       o_F  : out std_logic_vector(N-1 downto 0));  
  
end thirtytwo_one_mux_dataflow;

architecture structure of thirtytwo_one_mux_dataflow is

signal s_F  : std_logic_vector(32-1 downto 0);
signal s_S  : std_logic_vector(5-1 downto 0);

begin

  G1: for i in 0 to 5-1 generate
    s_S(i) <= i_S(i);
    
  end generate;

  with i_S select
  
  s_F <= i_0 when "00000",
         i_1 when "00001",
         i_2 when "00010",
         i_3 when "00011",
         i_4 when "00100",
         i_5 when "00101",
         i_6 when "00110",
         i_7 when "00111",
         i_8 when "01000",
         i_9 when "01001",
         i_10 when "01010",
         i_11 when "01011",
         i_12 when "01100",
         i_13 when "01101",
         i_14 when "01110",
         i_15 when "01111",
         i_16 when "10000",
         i_17 when "10001",
         i_18 when "10010",
         i_19 when "10011",
         i_20 when "10100",
         i_21 when "10101",
         i_22 when "10110",
         i_23 when "10111",
         i_24 when "11000",
         i_25 when "11001",
         i_26 when "11010",
         i_27 when "11011",
         i_28 when "11100",
         i_29 when "11101",
         i_30 when "11110",
         i_31 when "11111",
         "00000000000000000000000000000000" when others;
	o_F <= s_F;
	
end structure; 
