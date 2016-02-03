library IEEE;
use IEEE.std_logic_1164.all;

entity reg_nbit is

  generic(N : integer := 32);
  port(i_CLK        : in std_logic;     -- Clock input
       i_RST        : in std_logic;     -- Reset input
       i_WE         : in std_logic;     -- Write enable input
       i_D          : in std_logic_vector(N-1 downto 0);     -- Data value input
       o_Q          : out std_logic_vector(N-1 downto 0));   -- Data value output

end reg_nbit;

architecture mixed of reg_nbit is
  signal s_D    : std_logic_vector(32-1 downto 0);    -- Multiplexed input to the FF
  signal s_Q    : std_logic_vector(32-1 downto 0) := "00000000000000000000000000000000";    -- Output of the FF
  signal has_Reset : std_logic;
  
begin

  -- The output of the FF is fixed to s_Q
  o_Q <= s_Q;
  has_Reset <= '0';
  -- Create a multiplexed input to the FF based on i_WE
  with i_WE select
    s_D <= i_D when '1',
           s_Q when others;
  
  -- This process handles the asyncrhonous reset and
  -- synchronous write. We want to be able to reset 
  -- our processor's registers so that we minimize
  -- glitchy behavior on startup.
  
  process (i_CLK, i_RST)
  begin
    if (i_RST = '1' AND has_Reset = '0') then
      s_Q <= (others => '0'); -- Use "(others => '0')" for N-bit values
      has_Reset <= '1';
    elsif (rising_edge(i_CLK)) then
      s_Q <= s_D; 
    end if;

  end process;
  
end mixed;
