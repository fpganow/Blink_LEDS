library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_top_level is
  Port (
    GPIO_0_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GPIO_1_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
);
end my_top_level;

architecture Behavioral of my_top_level is
  component NiFpgaIPWrapper_LabVIEW_Echo is
    port (
      reset : in std_logic;
      enable_in : in std_logic;
      enable_out : out std_logic;
      enable_clr : in std_logic;
      ctrlind_00_Data_in_U8 : in std_logic_vector(7 downto 0);
      ctrlind_01_Data_out_U8 : out std_logic_vector(7 downto 0);
      Clk40 : in std_logic
    );
  end component NiFpgaIPWrapper_LabVIEW_Echo;

  signal signal_clock: STD_LOGIC;
  signal echo_signal_enable_out: STD_LOGIC;

begin

ni_echo_i: component NiFpgaIPWrapper_LabVIEW_Echo
  port map(
    reset => '0',
    enable_in => '1',
    enable_out => echo_signal_enable_out,
    enable_clr => '0',
--    ctrlind_00_Data_in_U8 => "00011100",
    ctrlind_00_Data_in_U8 => GPIO_0_tri_i(7 downto 0),
    ctrlind_01_Data_out_U8 => GPIO_1_tri_o(7 downto 0),
    Clk40 => signal_clock
  );

end Behavioral;