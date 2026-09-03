-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mlp_W4_V_rom is 
    generic(
             DWIDTH     : integer := 16; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 80
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of mlp_W4_V_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001100010110001", 1 => "0000000000000000", 2 => "1101001110100101", 
    3 => "0001001111001000", 4 => "0100000000100111", 5 => "0000000000000000", 
    6 => "1110011001011110", 7 => "1100000001110111", 8 => "0000000000000000", 
    9 => "1110001011011001", 10 => "0000000000000000", 11 => "1100001011001101", 
    12 => "1110100111011101", 13 => "1010011101110011", 14 => "0001001110010110", 
    15 => "0001000100111111", 16 => "0000000000000000", 17 => "0001001010000111", 
    18 => "0000000000000000", 19 => "1101100100001110", 20 => "0010110011001111", 
    21 => "0001001110100110", 22 => "0001011001011010", 23 => "1101000111110000", 
    24 => "0010001100101011", 25 => "1110001001100000", 26 to 28=> "0000000000000000", 
    29 => "1110110010000100", 30 => "0001011110001011", 31 => "1100110101010111", 
    32 => "1100000001101100", 33 => "0000000000000000", 34 => "1101011111011101", 
    35 => "1110011110010000", 36 to 37=> "0000000000000000", 38 => "1100111001000100", 
    39 => "0100000011110010", 40 => "0010001011010111", 41 => "0000000000000000", 
    42 => "1101110110001011", 43 => "0010001100110001", 44 => "1101000011111000", 
    45 => "0000000000000000", 46 => "1110011001001100", 47 => "1101100110111101", 
    48 => "0000000000000000", 49 => "0001000000011100", 50 => "1010101011101101", 
    51 => "1111000000010000", 52 => "0011010111101001", 53 => "1110000011100000", 
    54 => "1110011111101101", 55 => "0000000000000000", 56 => "1100111011010100", 
    57 => "0000000000000000", 58 => "0001111100001111", 59 => "1101100010010011", 
    60 => "0000000000000000", 61 => "0001000111100010", 62 => "0001001110010101", 
    63 => "1101001100110110", 64 => "1111000000110101", 65 => "1101111101110110", 
    66 => "1110100000110010", 67 => "0001101100001110", 68 to 69=> "0000000000000000", 
    70 => "0001101100100001", 71 => "0000000000000000", 72 => "1101111111100101", 
    73 => "1011000111011111", 74 to 77=> "0000000000000000", 78 => "1101110011001000", 
    79 => "0010101010110010" );


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

entity mlp_W4_V is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 80;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of mlp_W4_V is
    component mlp_W4_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    mlp_W4_V_rom_U :  component mlp_W4_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


