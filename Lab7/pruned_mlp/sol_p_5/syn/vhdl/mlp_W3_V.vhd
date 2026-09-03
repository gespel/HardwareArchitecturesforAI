-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mlp_W3_V_rom is 
    generic(
             DWIDTH     : integer := 15; 
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
    0 => "010001100110011", 1 => "010101000100011", 2 => "011011000011001", 
    3 => "101100111100001", 4 to 5=> "000000000000000", 6 => "010010100110000", 
    7 => "110110110001001", 8 => "010011101101001", 9 => "001001100111110", 
    10 => "110101011100101", 11 => "010110010011001", 12 => "110000000101010", 
    13 => "001010111101110", 14 => "110101011110110", 15 => "110010101101100", 
    16 => "110010011001100", 17 => "010010110010010", 18 to 19=> "000000000000000", 
    20 => "001101001111011", 21 => "010101100110101", 22 => "000000000000000", 
    23 => "011111100010101", 24 to 25=> "000000000000000", 26 => "010010110001110", 
    27 => "001101110011000", 28 => "000000000000000", 29 => "100111010000110", 
    30 => "011111101100001", 31 => "110111111100011", 32 => "000000000000000", 
    33 => "011001001110101", 34 => "001110011101111", 35 => "010110000010101", 
    36 => "010101001011001", 37 => "000000000000000", 38 => "110010011011000", 
    39 => "101011011000101", 40 to 41=> "000000000000000", 42 => "001010011001110", 
    43 => "001011010111110", 44 => "011101100011100", 45 => "001010110111101", 
    46 to 47=> "000000000000000", 48 => "001110101100001", 49 => "001101000100001", 
    50 => "000000000000000", 51 => "111000001001111", 52 => "101010000010001", 
    53 => "001110110010000", 54 => "110000000011000", 55 => "001111110111100", 
    56 => "001001100001010", 57 => "000000000000000", 58 => "110111111100111", 
    59 => "010000000111000", 60 => "100110010000001", 61 => "100100110010100", 
    62 => "000000000000000", 63 => "011000110110100" );

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
        DataWidth : INTEGER := 15;
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


