-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity mlp_W3_V_rom is 
    generic(
             DWIDTH     : integer := 16; 
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
    0 => "0010101000000000", 1 => "0011100000000000", 2 => "0000010000000000", 
    3 => "1111100000000000", 4 => "0100100000000000", 5 => "0000010000000000", 
    6 => "1110000000000000", 7 => "0000010000000000", 8 => "1110011000000000", 
    9 => "1111011000000000", 10 => "0000101000000000", 11 => "1111001000000000", 
    12 => "1110111000000000", 13 => "1111010000000000", 14 => "0011000000000000", 
    15 => "1110111000000000", 16 => "0000011000000000", 17 => "0010001000000000", 
    18 => "0001010000000000", 19 => "1111000000000000", 20 => "1111111000000000", 
    21 => "0001101000000000", 22 => "0011110000000000", 23 => "1111011000000000", 
    24 => "1110100000000000", 25 => "0000001000000000", 26 => "0010110000000000", 
    27 => "0011011000000000", 28 => "0000110000000000", 29 => "1100110000000000", 
    30 => "0000000000000000", 31 => "0010000000000000", 32 => "1110011000000000", 
    33 => "1110110000000000", 34 => "1111101000000000", 35 => "1111111000000000", 
    36 => "1110111000000000", 37 => "0010011000000000", 38 => "0000010000000000", 
    39 => "0001011000000000", 40 => "0001010000000000", 41 => "1111110000000000", 
    42 => "0001110000000000", 43 => "1110000000000000", 44 => "1101001000000000", 
    45 => "0011001000000000", 46 => "1110010000000000", 47 => "0010011000000000", 
    48 => "0010101000000000", 49 => "1110101000000000", 50 => "1110100000000000", 
    51 => "1110001000000000", 52 => "1101110000000000", 53 => "0000001000000000", 
    54 => "0001111000000000", 55 => "0001011000000000", 56 => "1110011000000000", 
    57 => "0011000000000000", 58 => "1111010000000000", 59 => "0010010000000000", 
    60 => "1110000000000000", 61 => "0010011000000000", 62 => "1111011000000000", 
    63 => "1111100000000000" );


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
        DataWidth : INTEGER := 16;
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


