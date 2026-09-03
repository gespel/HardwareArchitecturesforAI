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
    0 => "1111101000000000", 1 => "1110110000000000", 2 => "1110101000000000", 
    3 => "0010111000000000", 4 => "1110110000000000", 5 => "1110111000000000", 
    6 => "1101101000000000", 7 => "1101110000000000", 8 => "1111100000000000", 
    9 => "1110000000000000", 10 => "0011000000000000", 11 => "1011100000000000", 
    12 => "0011101000000000", 13 => "1101000000000000", 14 => "1101101000000000", 
    15 => "0001110000000000", 16 => "0000101000000000", 17 => "0000001000000000", 
    18 => "0000010000000000", 19 => "0000100000000000", 20 => "1111110000000000", 
    21 => "1110011000000000", 22 => "1100110000000000", 23 => "0001110000000000", 
    24 => "1111010000000000", 25 => "1110011000000000", 26 => "1111100000000000", 
    27 => "1110010000000000", 28 => "0010100000000000", 29 => "0001110000000000", 
    30 => "1101111000000000", 31 => "1111001000000000", 32 => "1110111000000000", 
    33 => "0010000000000000", 34 => "0010100000000000", 35 => "1110011000000000", 
    36 => "1100000000000000", 37 => "1110100000000000", 38 => "0000000000000000", 
    39 => "1110111000000000", 40 => "1100100000000000", 41 => "0000110000000000", 
    42 => "1110000000000000", 43 => "0001101000000000", 44 => "0000000000000000", 
    45 => "0001001000000000", 46 => "0000100000000000", 47 => "1110110000000000", 
    48 => "1100010000000000", 49 => "0000110000000000", 50 => "0001010000000000", 
    51 => "0001111000000000", 52 => "0001100000000000", 53 => "1100001000000000", 
    54 => "1100110000000000", 55 => "1111101000000000", 56 => "0011100000000000", 
    57 => "0001010000000000", 58 => "1110111000000000", 59 => "1101011000000000", 
    60 => "1011111000000000", 61 => "1111000000000000", 62 => "0000100000000000", 
    63 => "0001011000000000", 64 => "1110100000000000", 65 => "1101110000000000", 
    66 => "0010110000000000", 67 => "0000001000000000", 68 => "1111001000000000", 
    69 => "0001010000000000", 70 to 71=> "1101110000000000", 72 => "0001000000000000", 
    73 => "1010010000000000", 74 => "0010101000000000", 75 => "1110011000000000", 
    76 => "1110100000000000", 77 => "1111000000000000", 78 => "0000111000000000", 
    79 => "1011100000000000" );


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


