-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mlp_W4_V_rom is 
    generic(
             DWIDTH     : integer := 12; 
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
    0 => "111110100000", 1 => "111011000000", 2 => "111010100000", 
    3 => "001011100000", 4 => "111011000000", 5 => "111011100000", 
    6 => "110110100000", 7 => "110111000000", 8 => "111110000000", 
    9 => "111000000000", 10 => "001100000000", 11 => "101110000000", 
    12 => "001110100000", 13 => "110100000000", 14 => "110110100000", 
    15 => "000111000000", 16 => "000010100000", 17 => "000000100000", 
    18 => "000001000000", 19 => "000010000000", 20 => "111111000000", 
    21 => "111001100000", 22 => "110011000000", 23 => "000111000000", 
    24 => "111101000000", 25 => "111001100000", 26 => "111110000000", 
    27 => "111001000000", 28 => "001010000000", 29 => "000111000000", 
    30 => "110111100000", 31 => "111100100000", 32 => "111011100000", 
    33 => "001000000000", 34 => "001010000000", 35 => "111001100000", 
    36 => "110000000000", 37 => "111010000000", 38 => "000000000000", 
    39 => "111011100000", 40 => "110010000000", 41 => "000011000000", 
    42 => "111000000000", 43 => "000110100000", 44 => "000000000000", 
    45 => "000100100000", 46 => "000010000000", 47 => "111011000000", 
    48 => "110001000000", 49 => "000011000000", 50 => "000101000000", 
    51 => "000111100000", 52 => "000110000000", 53 => "110000100000", 
    54 => "110011000000", 55 => "111110100000", 56 => "001110000000", 
    57 => "000101000000", 58 => "111011100000", 59 => "110101100000", 
    60 => "101111100000", 61 => "111100000000", 62 => "000010000000", 
    63 => "000101100000", 64 => "111010000000", 65 => "110111000000", 
    66 => "001011000000", 67 => "000000100000", 68 => "111100100000", 
    69 => "000101000000", 70 to 71=> "110111000000", 72 => "000100000000", 
    73 => "101001000000", 74 => "001010100000", 75 => "111001100000", 
    76 => "111010000000", 77 => "111100000000", 78 => "000011100000", 
    79 => "101110000000" );

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

entity mlp_W4_V is
    generic (
        DataWidth : INTEGER := 12;
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


