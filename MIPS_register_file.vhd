library IEEE;
use IEEE.std_logic_1164.all;

entity MIPS_register_file is
  port(i_r1  : in std_logic_vector(4 downto 0);
       i_r2  : in std_logic_vector(4 downto 0);
       i_r3  : in std_logic_vector(4 downto 0);
       i_data : in std_logic_vector(31 downto 0);
       i_rst : in std_logic; 
       i_Clk : in std_logic;
       o_datar1 : out std_logic_vector(31 downto 0);
       o_datar2 : out std_logic_vector(31 downto 0));
end MIPS_register_file;

architecture structure of MIPS_register_file is 

component decoder_5_32
    port(i_x  : in std_logic_vector(4 downto 0);
       o_Y   : out std_logic_vector(31 downto 0));
     end component;

component thirtytwo_one_mux_dataflow 
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
end component;

component reg_nbit 
  generic(N : integer := 32);
  port(i_CLK        : in std_logic;     -- Clock input
       i_RST        : in std_logic;     -- Reset input
       i_WE         : in std_logic;     -- Write enable input
       i_D          : in std_logic_vector(N-1 downto 0);     -- Data value input
       o_Q          : out std_logic_vector(N-1 downto 0));   -- Data value output
end component;

type vector32 is array (natural range<>) of std_logic_vector(31 downto 0);
signal register_out: vector32(31 downto 0);

signal decoder_out: std_logic_vector(31 downto 0);

begin

x1: decoder_5_32 port map(i_x => i_r3,
                          o_y => decoder_out);

G2: for i in 0 to 30 generate
    reg_nbit_i: reg_nbit
    port MAP (i_CLK => i_Clk,
              i_RST => i_rst,
              i_D =>  i_data,
              i_WE => decoder_out(i+1),
              o_Q => register_out(i+1));
              
    end generate G2;  
    
reg_nbit_zero : reg_nbit
port MAP (i_CLK => i_Clk,
          i_RST => '1',
          i_D => i_Data,
          i_WE => decoder_out(0),
          o_Q => register_out(0));
  


x2: thirtytwo_one_mux_dataflow port map(i_0 => register_out(0),
i_1 => register_out(1),
i_2 => register_out(2),
i_3 => register_out(3),
i_4 => register_out(4),
i_5 => register_out(5),
i_6 => register_out(6),
i_7 => register_out(7),
i_8 => register_out(8),
i_9 => register_out(9),
i_10 => register_out(10),
i_11 => register_out(11),
i_12 => register_out(12),
i_13 => register_out(13),
i_14 => register_out(14),
i_15 => register_out(15),
i_16 => register_out(16),
i_17 => register_out(17),
i_18 => register_out(18),
i_19 => register_out(19),
i_20 => register_out(20),
i_21 => register_out(21),
i_22 => register_out(22),
i_23 => register_out(23),
i_24 => register_out(24),
i_25 => register_out(25),
i_26 => register_out(26),
i_27 => register_out(27),
i_28 => register_out(28),
i_29 => register_out(29),
i_30 => register_out(30),
i_31 => register_out(31),
                                        i_S => i_r1,
                                        o_F => o_datar1                                      
                                        );

x3: thirtytwo_one_mux_dataflow port map(i_0 => register_out(0),
i_1 => register_out(1),
i_2 => register_out(2),
i_3 => register_out(3),
i_4 => register_out(4),
i_5 => register_out(5),
i_6 => register_out(6),
i_7 => register_out(7),
i_8 => register_out(8),
i_9 => register_out(9),
i_10 => register_out(10),
i_11 => register_out(11),
i_12 => register_out(12),
i_13 => register_out(13),
i_14 => register_out(14),
i_15 => register_out(15),
i_16 => register_out(16),
i_17 => register_out(17),
i_18 => register_out(18),
i_19 => register_out(19),
i_20 => register_out(20),
i_21 => register_out(21),
i_22 => register_out(22),
i_23 => register_out(23),
i_24 => register_out(24),
i_25 => register_out(25),
i_26 => register_out(26),
i_27 => register_out(27),
i_28 => register_out(28),
i_29 => register_out(29),
i_30 => register_out(30),
i_31 => register_out(31),
                                        i_S => i_r2,
                                        o_F => o_datar2
                                        );
          
end structure;








