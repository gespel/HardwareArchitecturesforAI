-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mlp_W2_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 40
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of mlp_W2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110010101001111101001010001", 
    1 => "10111111001101101111011101100111", 
    2 => "00111110000100011101010110011111", 
    3 => "00111101110011001011101111110011", 
    4 => "00111111011001101101111001111111", 
    5 => "00111110100100000010010111011011", 
    6 => "00111110111000010001111010111111", 
    7 => "10111110000100001100101111101100", 
    8 => "10111111000101100101000010101110", 
    9 => "00111111001010010010000101110111", 
    10 => "00111111001100111110101011010100", 
    11 => "00111101100110111000001111110010", 
    12 => "00111110101111001011010111101000", 
    13 => "10111101010000111000100110001000", 
    14 => "00111011001010001111111111110110", 
    15 => "00111111001010000101111101100011", 
    16 => "00111110110100001101111111111011", 
    17 => "00111110001110111111100110010100", 
    18 => "10111111001000111111000110001110", 
    19 => "10111100101000011010011101000110", 
    20 => "00111101101010111100100001100001", 
    21 => "10111110101100011010000110100100", 
    22 => "00111111001001000100011011111001", 
    23 => "10111110100111011100111111110101", 
    24 => "10111110101110100010000010101001", 
    25 => "10111110110000110111000111100101", 
    26 => "00111111011100110001101101010001", 
    27 => "10111110110100111001000011110101", 
    28 => "00111110000101001010010011000010", 
    29 => "00111110101101000110011100000011", 
    30 => "00111111011101000001001101100000", 
    31 => "10111110100100101000101001101011", 
    32 => "10111111000100110010010010100011", 
    33 => "00111111000010110011111001010101", 
    34 => "00111101000010001011011100010100", 
    35 => "00111110111111110001110110000110", 
    36 => "00111111001111101001110011101000", 
    37 => "00111111100010011111110000111001", 
    38 => "00111110100111011011010000111001", 
    39 => "10111110010010000100001010110111" );


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

entity mlp_W2 is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 40;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of mlp_W2 is
    component mlp_W2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    mlp_W2_rom_U :  component mlp_W2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


