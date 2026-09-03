-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mlp_W3_V_rom is 
    generic(
             DWIDTH     : integer := 12; 
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
    0 => "001010100000", 1 => "001110000000", 2 => "000001000000", 
    3 => "111110000000", 4 => "010010000000", 5 => "000001000000", 
    6 => "111000000000", 7 => "000001000000", 8 => "111001100000", 
    9 => "111101100000", 10 => "000010100000", 11 => "111100100000", 
    12 => "111011100000", 13 => "111101000000", 14 => "001100000000", 
    15 => "111011100000", 16 => "000001100000", 17 => "001000100000", 
    18 => "000101000000", 19 => "111100000000", 20 => "111111100000", 
    21 => "000110100000", 22 => "001111000000", 23 => "111101100000", 
    24 => "111010000000", 25 => "000000100000", 26 => "001011000000", 
    27 => "001101100000", 28 => "000011000000", 29 => "110011000000", 
    30 => "000000000000", 31 => "001000000000", 32 => "111001100000", 
    33 => "111011000000", 34 => "111110100000", 35 => "111111100000", 
    36 => "111011100000", 37 => "001001100000", 38 => "000001000000", 
    39 => "000101100000", 40 => "000101000000", 41 => "111111000000", 
    42 => "000111000000", 43 => "111000000000", 44 => "110100100000", 
    45 => "001100100000", 46 => "111001000000", 47 => "001001100000", 
    48 => "001010100000", 49 => "111010100000", 50 => "111010000000", 
    51 => "111000100000", 52 => "110111000000", 53 => "000000100000", 
    54 => "000111100000", 55 => "000101100000", 56 => "111001100000", 
    57 => "001100000000", 58 => "111101000000", 59 => "001001000000", 
    60 => "111000000000", 61 => "001001100000", 62 => "111101100000", 
    63 => "111110000000" );

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
        DataWidth : INTEGER := 12;
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


