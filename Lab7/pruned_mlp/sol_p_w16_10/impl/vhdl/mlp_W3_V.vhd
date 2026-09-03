-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mlp_W3_V_rom is 
    generic(
             DWIDTH     : integer := 11; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of mlp_W3_V_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01000110011", 1 => "01010100010", 2 => "01101100001", 
    3 => "10110011110", 4 to 5=> "00000000000", 6 => "01001010011", 
    7 => "11011011000", 8 => "01001110110", 9 => "00100110011", 
    10 => "11010101110", 11 => "01011001001", 12 => "11000000010", 
    13 => "00101011110", 14 => "11010101111", 15 => "11001010110", 
    16 => "11001001100", 17 => "01001011001", 18 to 19=> "00000000000", 
    20 => "00110100111", 21 => "01010110011", 22 => "00000000000", 
    23 => "01111110001", 24 to 25=> "00000000000", 26 => "01001011000", 
    27 => "00110111001", 28 => "00000000000", 29 => "10011101000", 
    30 => "01111110110", 31 => "11011111110", 32 => "00000000000", 
    33 => "01100100111", 34 => "00111001110", 35 => "01011000001", 
    36 => "01010100101", 37 => "00000000000", 38 => "11001001101", 
    39 => "10101101100", 40 to 41=> "00000000000", 42 => "00101001100", 
    43 => "00101101011", 44 => "01110110001", 45 => "00101011011", 
    46 to 47=> "00000000000", 48 => "00111010110", 49 => "00110100010", 
    50 => "00000000000", 51 => "11100000100", 52 => "10101000001", 
    53 => "00111011001", 54 => "11000000001", 55 => "00111111011", 
    56 => "00100110000", 57 => "00000000000", 58 => "11011111110", 
    59 => "01000000011", 60 => "10011001000", 61 => "10010011001", 
    62 => "00000000000", 63 => "01100011011" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity mlp_W3_V is
    generic (
        DataWidth : INTEGER := 11;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of mlp_W3_V is
    component mlp_W3_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    mlp_W3_V_rom_U :  component mlp_W3_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


