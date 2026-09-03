-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mlp_W2_V_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of mlp_W2_V_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0100011100101010", 1 => "0001101101011010", 2 => "0001000101000111", 
    3 => "0010101111001010", 4 => "1110010111011010", 5 => "0001101000011111", 
    6 => "0000000000000000", 7 => "0010011010011010", 8 => "1110010001110111", 
    9 to 10=> "0000000000000000", 11 => "0001101101100011", 12 => "0000000000000000", 
    13 => "0011010000100110", 14 => "0000000000000000", 15 => "0011001101110000", 
    16 => "0010111011000110", 17 => "1100111000000110", 18 => "1110110110011001", 
    19 => "0001100000100101", 20 => "1110001000110101", 21 => "0010010111110111", 
    22 => "1110111000111001", 23 => "0000000000000000", 24 => "0011100101111110", 
    25 => "1111000001011000", 26 => "0001011111110001", 27 => "0010001110010000", 
    28 to 31=> "0000000000000000", 32 => "1110110111100100", 33 => "0010111110000011", 
    34 => "0000000000000000", 35 => "0001111100111101", 36 => "0000000000000000", 
    37 => "0010100000011001", 38 => "0001001110111000", 39 => "0100000111001111" );

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

entity mlp_W2_V is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 40;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of mlp_W2_V is
    component mlp_W2_V_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    mlp_W2_V_rom_U :  component mlp_W2_V_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


