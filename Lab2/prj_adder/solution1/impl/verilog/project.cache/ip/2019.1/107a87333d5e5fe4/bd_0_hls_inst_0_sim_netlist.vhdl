-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Fri May  8 13:17:37 2026
-- Host        : home running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  port (
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder is
  signal \<const1>\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_n_0\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_n_1\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_n_2\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_n_3\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_n_4\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_n_5\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_n_6\ : STD_LOGIC;
  signal \ap_return[0]_INST_0_n_7\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_n_0\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_n_1\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_n_2\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_n_3\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_n_4\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_n_5\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_n_6\ : STD_LOGIC;
  signal \ap_return[16]_INST_0_n_7\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_n_1\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_n_2\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_n_3\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_n_4\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_n_5\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_n_6\ : STD_LOGIC;
  signal \ap_return[24]_INST_0_n_7\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_n_0\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_n_1\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_n_2\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_n_3\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_n_4\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_n_5\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_n_6\ : STD_LOGIC;
  signal \ap_return[8]_INST_0_n_7\ : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal \NLW_ap_return[24]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute HLUTNM : string;
  attribute HLUTNM of \ap_return[0]_INST_0_i_1\ : label is "lutpair6";
  attribute HLUTNM of \ap_return[0]_INST_0_i_10\ : label is "lutpair5";
  attribute HLUTNM of \ap_return[0]_INST_0_i_11\ : label is "lutpair4";
  attribute HLUTNM of \ap_return[0]_INST_0_i_12\ : label is "lutpair3";
  attribute HLUTNM of \ap_return[0]_INST_0_i_13\ : label is "lutpair2";
  attribute HLUTNM of \ap_return[0]_INST_0_i_14\ : label is "lutpair1";
  attribute HLUTNM of \ap_return[0]_INST_0_i_15\ : label is "lutpair0";
  attribute HLUTNM of \ap_return[0]_INST_0_i_2\ : label is "lutpair5";
  attribute HLUTNM of \ap_return[0]_INST_0_i_3\ : label is "lutpair4";
  attribute HLUTNM of \ap_return[0]_INST_0_i_4\ : label is "lutpair3";
  attribute HLUTNM of \ap_return[0]_INST_0_i_5\ : label is "lutpair2";
  attribute HLUTNM of \ap_return[0]_INST_0_i_6\ : label is "lutpair1";
  attribute HLUTNM of \ap_return[0]_INST_0_i_7\ : label is "lutpair0";
  attribute HLUTNM of \ap_return[0]_INST_0_i_8\ : label is "lutpair7";
  attribute HLUTNM of \ap_return[0]_INST_0_i_9\ : label is "lutpair6";
  attribute HLUTNM of \ap_return[16]_INST_0_i_1\ : label is "lutpair22";
  attribute HLUTNM of \ap_return[16]_INST_0_i_10\ : label is "lutpair22";
  attribute HLUTNM of \ap_return[16]_INST_0_i_11\ : label is "lutpair21";
  attribute HLUTNM of \ap_return[16]_INST_0_i_12\ : label is "lutpair20";
  attribute HLUTNM of \ap_return[16]_INST_0_i_13\ : label is "lutpair19";
  attribute HLUTNM of \ap_return[16]_INST_0_i_14\ : label is "lutpair18";
  attribute HLUTNM of \ap_return[16]_INST_0_i_15\ : label is "lutpair17";
  attribute HLUTNM of \ap_return[16]_INST_0_i_16\ : label is "lutpair16";
  attribute HLUTNM of \ap_return[16]_INST_0_i_2\ : label is "lutpair21";
  attribute HLUTNM of \ap_return[16]_INST_0_i_3\ : label is "lutpair20";
  attribute HLUTNM of \ap_return[16]_INST_0_i_4\ : label is "lutpair19";
  attribute HLUTNM of \ap_return[16]_INST_0_i_5\ : label is "lutpair18";
  attribute HLUTNM of \ap_return[16]_INST_0_i_6\ : label is "lutpair17";
  attribute HLUTNM of \ap_return[16]_INST_0_i_7\ : label is "lutpair16";
  attribute HLUTNM of \ap_return[16]_INST_0_i_8\ : label is "lutpair15";
  attribute HLUTNM of \ap_return[16]_INST_0_i_9\ : label is "lutpair23";
  attribute HLUTNM of \ap_return[24]_INST_0_i_1\ : label is "lutpair29";
  attribute HLUTNM of \ap_return[24]_INST_0_i_10\ : label is "lutpair29";
  attribute HLUTNM of \ap_return[24]_INST_0_i_11\ : label is "lutpair28";
  attribute HLUTNM of \ap_return[24]_INST_0_i_12\ : label is "lutpair27";
  attribute HLUTNM of \ap_return[24]_INST_0_i_13\ : label is "lutpair26";
  attribute HLUTNM of \ap_return[24]_INST_0_i_14\ : label is "lutpair25";
  attribute HLUTNM of \ap_return[24]_INST_0_i_15\ : label is "lutpair24";
  attribute HLUTNM of \ap_return[24]_INST_0_i_2\ : label is "lutpair28";
  attribute HLUTNM of \ap_return[24]_INST_0_i_3\ : label is "lutpair27";
  attribute HLUTNM of \ap_return[24]_INST_0_i_4\ : label is "lutpair26";
  attribute HLUTNM of \ap_return[24]_INST_0_i_5\ : label is "lutpair25";
  attribute HLUTNM of \ap_return[24]_INST_0_i_6\ : label is "lutpair24";
  attribute HLUTNM of \ap_return[24]_INST_0_i_7\ : label is "lutpair23";
  attribute HLUTNM of \ap_return[8]_INST_0_i_1\ : label is "lutpair14";
  attribute HLUTNM of \ap_return[8]_INST_0_i_10\ : label is "lutpair14";
  attribute HLUTNM of \ap_return[8]_INST_0_i_11\ : label is "lutpair13";
  attribute HLUTNM of \ap_return[8]_INST_0_i_12\ : label is "lutpair12";
  attribute HLUTNM of \ap_return[8]_INST_0_i_13\ : label is "lutpair11";
  attribute HLUTNM of \ap_return[8]_INST_0_i_14\ : label is "lutpair10";
  attribute HLUTNM of \ap_return[8]_INST_0_i_15\ : label is "lutpair9";
  attribute HLUTNM of \ap_return[8]_INST_0_i_16\ : label is "lutpair8";
  attribute HLUTNM of \ap_return[8]_INST_0_i_2\ : label is "lutpair13";
  attribute HLUTNM of \ap_return[8]_INST_0_i_3\ : label is "lutpair12";
  attribute HLUTNM of \ap_return[8]_INST_0_i_4\ : label is "lutpair11";
  attribute HLUTNM of \ap_return[8]_INST_0_i_5\ : label is "lutpair10";
  attribute HLUTNM of \ap_return[8]_INST_0_i_6\ : label is "lutpair9";
  attribute HLUTNM of \ap_return[8]_INST_0_i_7\ : label is "lutpair8";
  attribute HLUTNM of \ap_return[8]_INST_0_i_8\ : label is "lutpair7";
  attribute HLUTNM of \ap_return[8]_INST_0_i_9\ : label is "lutpair15";
begin
  \^ap_start\ <= ap_start;
  ap_done <= \^ap_start\;
  ap_idle <= \<const1>\;
  ap_ready <= \^ap_start\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\ap_return[0]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \ap_return[0]_INST_0_n_0\,
      CO(6) => \ap_return[0]_INST_0_n_1\,
      CO(5) => \ap_return[0]_INST_0_n_2\,
      CO(4) => \ap_return[0]_INST_0_n_3\,
      CO(3) => \ap_return[0]_INST_0_n_4\,
      CO(2) => \ap_return[0]_INST_0_n_5\,
      CO(1) => \ap_return[0]_INST_0_n_6\,
      CO(0) => \ap_return[0]_INST_0_n_7\,
      DI(7) => \ap_return[0]_INST_0_i_1_n_0\,
      DI(6) => \ap_return[0]_INST_0_i_2_n_0\,
      DI(5) => \ap_return[0]_INST_0_i_3_n_0\,
      DI(4) => \ap_return[0]_INST_0_i_4_n_0\,
      DI(3) => \ap_return[0]_INST_0_i_5_n_0\,
      DI(2) => \ap_return[0]_INST_0_i_6_n_0\,
      DI(1) => \ap_return[0]_INST_0_i_7_n_0\,
      DI(0) => '0',
      O(7 downto 0) => ap_return(7 downto 0),
      S(7) => \ap_return[0]_INST_0_i_8_n_0\,
      S(6) => \ap_return[0]_INST_0_i_9_n_0\,
      S(5) => \ap_return[0]_INST_0_i_10_n_0\,
      S(4) => \ap_return[0]_INST_0_i_11_n_0\,
      S(3) => \ap_return[0]_INST_0_i_12_n_0\,
      S(2) => \ap_return[0]_INST_0_i_13_n_0\,
      S(1) => \ap_return[0]_INST_0_i_14_n_0\,
      S(0) => \ap_return[0]_INST_0_i_15_n_0\
    );
\ap_return[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(6),
      I1 => b(6),
      I2 => a(6),
      O => \ap_return[0]_INST_0_i_1_n_0\
    );
\ap_return[0]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(5),
      I1 => b(5),
      I2 => a(5),
      I3 => \ap_return[0]_INST_0_i_3_n_0\,
      O => \ap_return[0]_INST_0_i_10_n_0\
    );
\ap_return[0]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(4),
      I1 => b(4),
      I2 => a(4),
      I3 => \ap_return[0]_INST_0_i_4_n_0\,
      O => \ap_return[0]_INST_0_i_11_n_0\
    );
\ap_return[0]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(3),
      I1 => b(3),
      I2 => a(3),
      I3 => \ap_return[0]_INST_0_i_5_n_0\,
      O => \ap_return[0]_INST_0_i_12_n_0\
    );
\ap_return[0]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(2),
      I1 => b(2),
      I2 => a(2),
      I3 => \ap_return[0]_INST_0_i_6_n_0\,
      O => \ap_return[0]_INST_0_i_13_n_0\
    );
\ap_return[0]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(1),
      I1 => b(1),
      I2 => a(1),
      I3 => \ap_return[0]_INST_0_i_7_n_0\,
      O => \ap_return[0]_INST_0_i_14_n_0\
    );
\ap_return[0]_INST_0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => c(0),
      I1 => b(0),
      I2 => a(0),
      O => \ap_return[0]_INST_0_i_15_n_0\
    );
\ap_return[0]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(5),
      I1 => b(5),
      I2 => a(5),
      O => \ap_return[0]_INST_0_i_2_n_0\
    );
\ap_return[0]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(4),
      I1 => b(4),
      I2 => a(4),
      O => \ap_return[0]_INST_0_i_3_n_0\
    );
\ap_return[0]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(3),
      I1 => b(3),
      I2 => a(3),
      O => \ap_return[0]_INST_0_i_4_n_0\
    );
\ap_return[0]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(2),
      I1 => b(2),
      I2 => a(2),
      O => \ap_return[0]_INST_0_i_5_n_0\
    );
\ap_return[0]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(1),
      I1 => b(1),
      I2 => a(1),
      O => \ap_return[0]_INST_0_i_6_n_0\
    );
\ap_return[0]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(0),
      I1 => b(0),
      I2 => a(0),
      O => \ap_return[0]_INST_0_i_7_n_0\
    );
\ap_return[0]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(7),
      I1 => b(7),
      I2 => a(7),
      I3 => \ap_return[0]_INST_0_i_1_n_0\,
      O => \ap_return[0]_INST_0_i_8_n_0\
    );
\ap_return[0]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(6),
      I1 => b(6),
      I2 => a(6),
      I3 => \ap_return[0]_INST_0_i_2_n_0\,
      O => \ap_return[0]_INST_0_i_9_n_0\
    );
\ap_return[16]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \ap_return[8]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \ap_return[16]_INST_0_n_0\,
      CO(6) => \ap_return[16]_INST_0_n_1\,
      CO(5) => \ap_return[16]_INST_0_n_2\,
      CO(4) => \ap_return[16]_INST_0_n_3\,
      CO(3) => \ap_return[16]_INST_0_n_4\,
      CO(2) => \ap_return[16]_INST_0_n_5\,
      CO(1) => \ap_return[16]_INST_0_n_6\,
      CO(0) => \ap_return[16]_INST_0_n_7\,
      DI(7) => \ap_return[16]_INST_0_i_1_n_0\,
      DI(6) => \ap_return[16]_INST_0_i_2_n_0\,
      DI(5) => \ap_return[16]_INST_0_i_3_n_0\,
      DI(4) => \ap_return[16]_INST_0_i_4_n_0\,
      DI(3) => \ap_return[16]_INST_0_i_5_n_0\,
      DI(2) => \ap_return[16]_INST_0_i_6_n_0\,
      DI(1) => \ap_return[16]_INST_0_i_7_n_0\,
      DI(0) => \ap_return[16]_INST_0_i_8_n_0\,
      O(7 downto 0) => ap_return(23 downto 16),
      S(7) => \ap_return[16]_INST_0_i_9_n_0\,
      S(6) => \ap_return[16]_INST_0_i_10_n_0\,
      S(5) => \ap_return[16]_INST_0_i_11_n_0\,
      S(4) => \ap_return[16]_INST_0_i_12_n_0\,
      S(3) => \ap_return[16]_INST_0_i_13_n_0\,
      S(2) => \ap_return[16]_INST_0_i_14_n_0\,
      S(1) => \ap_return[16]_INST_0_i_15_n_0\,
      S(0) => \ap_return[16]_INST_0_i_16_n_0\
    );
\ap_return[16]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(22),
      I1 => b(22),
      I2 => a(22),
      O => \ap_return[16]_INST_0_i_1_n_0\
    );
\ap_return[16]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(22),
      I1 => b(22),
      I2 => a(22),
      I3 => \ap_return[16]_INST_0_i_2_n_0\,
      O => \ap_return[16]_INST_0_i_10_n_0\
    );
\ap_return[16]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(21),
      I1 => b(21),
      I2 => a(21),
      I3 => \ap_return[16]_INST_0_i_3_n_0\,
      O => \ap_return[16]_INST_0_i_11_n_0\
    );
\ap_return[16]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(20),
      I1 => b(20),
      I2 => a(20),
      I3 => \ap_return[16]_INST_0_i_4_n_0\,
      O => \ap_return[16]_INST_0_i_12_n_0\
    );
\ap_return[16]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(19),
      I1 => b(19),
      I2 => a(19),
      I3 => \ap_return[16]_INST_0_i_5_n_0\,
      O => \ap_return[16]_INST_0_i_13_n_0\
    );
\ap_return[16]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(18),
      I1 => b(18),
      I2 => a(18),
      I3 => \ap_return[16]_INST_0_i_6_n_0\,
      O => \ap_return[16]_INST_0_i_14_n_0\
    );
\ap_return[16]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(17),
      I1 => b(17),
      I2 => a(17),
      I3 => \ap_return[16]_INST_0_i_7_n_0\,
      O => \ap_return[16]_INST_0_i_15_n_0\
    );
\ap_return[16]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(16),
      I1 => b(16),
      I2 => a(16),
      I3 => \ap_return[16]_INST_0_i_8_n_0\,
      O => \ap_return[16]_INST_0_i_16_n_0\
    );
\ap_return[16]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(21),
      I1 => b(21),
      I2 => a(21),
      O => \ap_return[16]_INST_0_i_2_n_0\
    );
\ap_return[16]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(20),
      I1 => b(20),
      I2 => a(20),
      O => \ap_return[16]_INST_0_i_3_n_0\
    );
\ap_return[16]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(19),
      I1 => b(19),
      I2 => a(19),
      O => \ap_return[16]_INST_0_i_4_n_0\
    );
\ap_return[16]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(18),
      I1 => b(18),
      I2 => a(18),
      O => \ap_return[16]_INST_0_i_5_n_0\
    );
\ap_return[16]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(17),
      I1 => b(17),
      I2 => a(17),
      O => \ap_return[16]_INST_0_i_6_n_0\
    );
\ap_return[16]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(16),
      I1 => b(16),
      I2 => a(16),
      O => \ap_return[16]_INST_0_i_7_n_0\
    );
\ap_return[16]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(15),
      I1 => b(15),
      I2 => a(15),
      O => \ap_return[16]_INST_0_i_8_n_0\
    );
\ap_return[16]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(23),
      I1 => b(23),
      I2 => a(23),
      I3 => \ap_return[16]_INST_0_i_1_n_0\,
      O => \ap_return[16]_INST_0_i_9_n_0\
    );
\ap_return[24]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \ap_return[16]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_ap_return[24]_INST_0_CO_UNCONNECTED\(7),
      CO(6) => \ap_return[24]_INST_0_n_1\,
      CO(5) => \ap_return[24]_INST_0_n_2\,
      CO(4) => \ap_return[24]_INST_0_n_3\,
      CO(3) => \ap_return[24]_INST_0_n_4\,
      CO(2) => \ap_return[24]_INST_0_n_5\,
      CO(1) => \ap_return[24]_INST_0_n_6\,
      CO(0) => \ap_return[24]_INST_0_n_7\,
      DI(7) => '0',
      DI(6) => \ap_return[24]_INST_0_i_1_n_0\,
      DI(5) => \ap_return[24]_INST_0_i_2_n_0\,
      DI(4) => \ap_return[24]_INST_0_i_3_n_0\,
      DI(3) => \ap_return[24]_INST_0_i_4_n_0\,
      DI(2) => \ap_return[24]_INST_0_i_5_n_0\,
      DI(1) => \ap_return[24]_INST_0_i_6_n_0\,
      DI(0) => \ap_return[24]_INST_0_i_7_n_0\,
      O(7 downto 0) => ap_return(31 downto 24),
      S(7) => \ap_return[24]_INST_0_i_8_n_0\,
      S(6) => \ap_return[24]_INST_0_i_9_n_0\,
      S(5) => \ap_return[24]_INST_0_i_10_n_0\,
      S(4) => \ap_return[24]_INST_0_i_11_n_0\,
      S(3) => \ap_return[24]_INST_0_i_12_n_0\,
      S(2) => \ap_return[24]_INST_0_i_13_n_0\,
      S(1) => \ap_return[24]_INST_0_i_14_n_0\,
      S(0) => \ap_return[24]_INST_0_i_15_n_0\
    );
\ap_return[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(29),
      I1 => b(29),
      I2 => a(29),
      O => \ap_return[24]_INST_0_i_1_n_0\
    );
\ap_return[24]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(29),
      I1 => b(29),
      I2 => a(29),
      I3 => \ap_return[24]_INST_0_i_2_n_0\,
      O => \ap_return[24]_INST_0_i_10_n_0\
    );
\ap_return[24]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(28),
      I1 => b(28),
      I2 => a(28),
      I3 => \ap_return[24]_INST_0_i_3_n_0\,
      O => \ap_return[24]_INST_0_i_11_n_0\
    );
\ap_return[24]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(27),
      I1 => b(27),
      I2 => a(27),
      I3 => \ap_return[24]_INST_0_i_4_n_0\,
      O => \ap_return[24]_INST_0_i_12_n_0\
    );
\ap_return[24]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(26),
      I1 => b(26),
      I2 => a(26),
      I3 => \ap_return[24]_INST_0_i_5_n_0\,
      O => \ap_return[24]_INST_0_i_13_n_0\
    );
\ap_return[24]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(25),
      I1 => b(25),
      I2 => a(25),
      I3 => \ap_return[24]_INST_0_i_6_n_0\,
      O => \ap_return[24]_INST_0_i_14_n_0\
    );
\ap_return[24]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(24),
      I1 => b(24),
      I2 => a(24),
      I3 => \ap_return[24]_INST_0_i_7_n_0\,
      O => \ap_return[24]_INST_0_i_15_n_0\
    );
\ap_return[24]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(28),
      I1 => b(28),
      I2 => a(28),
      O => \ap_return[24]_INST_0_i_2_n_0\
    );
\ap_return[24]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(27),
      I1 => b(27),
      I2 => a(27),
      O => \ap_return[24]_INST_0_i_3_n_0\
    );
\ap_return[24]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(26),
      I1 => b(26),
      I2 => a(26),
      O => \ap_return[24]_INST_0_i_4_n_0\
    );
\ap_return[24]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(25),
      I1 => b(25),
      I2 => a(25),
      O => \ap_return[24]_INST_0_i_5_n_0\
    );
\ap_return[24]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(24),
      I1 => b(24),
      I2 => a(24),
      O => \ap_return[24]_INST_0_i_6_n_0\
    );
\ap_return[24]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(23),
      I1 => b(23),
      I2 => a(23),
      O => \ap_return[24]_INST_0_i_7_n_0\
    );
\ap_return[24]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E817E81717E8"
    )
        port map (
      I0 => a(30),
      I1 => b(30),
      I2 => c(30),
      I3 => b(31),
      I4 => c(31),
      I5 => a(31),
      O => \ap_return[24]_INST_0_i_8_n_0\
    );
\ap_return[24]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \ap_return[24]_INST_0_i_1_n_0\,
      I1 => b(30),
      I2 => c(30),
      I3 => a(30),
      O => \ap_return[24]_INST_0_i_9_n_0\
    );
\ap_return[8]_INST_0\: unisim.vcomponents.CARRY8
     port map (
      CI => \ap_return[0]_INST_0_n_0\,
      CI_TOP => '0',
      CO(7) => \ap_return[8]_INST_0_n_0\,
      CO(6) => \ap_return[8]_INST_0_n_1\,
      CO(5) => \ap_return[8]_INST_0_n_2\,
      CO(4) => \ap_return[8]_INST_0_n_3\,
      CO(3) => \ap_return[8]_INST_0_n_4\,
      CO(2) => \ap_return[8]_INST_0_n_5\,
      CO(1) => \ap_return[8]_INST_0_n_6\,
      CO(0) => \ap_return[8]_INST_0_n_7\,
      DI(7) => \ap_return[8]_INST_0_i_1_n_0\,
      DI(6) => \ap_return[8]_INST_0_i_2_n_0\,
      DI(5) => \ap_return[8]_INST_0_i_3_n_0\,
      DI(4) => \ap_return[8]_INST_0_i_4_n_0\,
      DI(3) => \ap_return[8]_INST_0_i_5_n_0\,
      DI(2) => \ap_return[8]_INST_0_i_6_n_0\,
      DI(1) => \ap_return[8]_INST_0_i_7_n_0\,
      DI(0) => \ap_return[8]_INST_0_i_8_n_0\,
      O(7 downto 0) => ap_return(15 downto 8),
      S(7) => \ap_return[8]_INST_0_i_9_n_0\,
      S(6) => \ap_return[8]_INST_0_i_10_n_0\,
      S(5) => \ap_return[8]_INST_0_i_11_n_0\,
      S(4) => \ap_return[8]_INST_0_i_12_n_0\,
      S(3) => \ap_return[8]_INST_0_i_13_n_0\,
      S(2) => \ap_return[8]_INST_0_i_14_n_0\,
      S(1) => \ap_return[8]_INST_0_i_15_n_0\,
      S(0) => \ap_return[8]_INST_0_i_16_n_0\
    );
\ap_return[8]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(14),
      I1 => b(14),
      I2 => a(14),
      O => \ap_return[8]_INST_0_i_1_n_0\
    );
\ap_return[8]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(14),
      I1 => b(14),
      I2 => a(14),
      I3 => \ap_return[8]_INST_0_i_2_n_0\,
      O => \ap_return[8]_INST_0_i_10_n_0\
    );
\ap_return[8]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(13),
      I1 => b(13),
      I2 => a(13),
      I3 => \ap_return[8]_INST_0_i_3_n_0\,
      O => \ap_return[8]_INST_0_i_11_n_0\
    );
\ap_return[8]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(12),
      I1 => b(12),
      I2 => a(12),
      I3 => \ap_return[8]_INST_0_i_4_n_0\,
      O => \ap_return[8]_INST_0_i_12_n_0\
    );
\ap_return[8]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(11),
      I1 => b(11),
      I2 => a(11),
      I3 => \ap_return[8]_INST_0_i_5_n_0\,
      O => \ap_return[8]_INST_0_i_13_n_0\
    );
\ap_return[8]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(10),
      I1 => b(10),
      I2 => a(10),
      I3 => \ap_return[8]_INST_0_i_6_n_0\,
      O => \ap_return[8]_INST_0_i_14_n_0\
    );
\ap_return[8]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(9),
      I1 => b(9),
      I2 => a(9),
      I3 => \ap_return[8]_INST_0_i_7_n_0\,
      O => \ap_return[8]_INST_0_i_15_n_0\
    );
\ap_return[8]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(8),
      I1 => b(8),
      I2 => a(8),
      I3 => \ap_return[8]_INST_0_i_8_n_0\,
      O => \ap_return[8]_INST_0_i_16_n_0\
    );
\ap_return[8]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(13),
      I1 => b(13),
      I2 => a(13),
      O => \ap_return[8]_INST_0_i_2_n_0\
    );
\ap_return[8]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(12),
      I1 => b(12),
      I2 => a(12),
      O => \ap_return[8]_INST_0_i_3_n_0\
    );
\ap_return[8]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(11),
      I1 => b(11),
      I2 => a(11),
      O => \ap_return[8]_INST_0_i_4_n_0\
    );
\ap_return[8]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(10),
      I1 => b(10),
      I2 => a(10),
      O => \ap_return[8]_INST_0_i_5_n_0\
    );
\ap_return[8]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(9),
      I1 => b(9),
      I2 => a(9),
      O => \ap_return[8]_INST_0_i_6_n_0\
    );
\ap_return[8]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(8),
      I1 => b(8),
      I2 => a(8),
      O => \ap_return[8]_INST_0_i_7_n_0\
    );
\ap_return[8]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => c(7),
      I1 => b(7),
      I2 => a(7),
      O => \ap_return[8]_INST_0_i_8_n_0\
    );
\ap_return[8]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => c(15),
      I1 => b(15),
      I2 => a(15),
      I3 => \ap_return[8]_INST_0_i_1_n_0\,
      O => \ap_return[8]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_0_hls_inst_0,adder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "adder,Vivado 2019.1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of a : signal is "xilinx.com:signal:data:1.0 a DATA";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of a : signal is "XIL_INTERFACENAME a, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ap_return : signal is "xilinx.com:signal:data:1.0 ap_return DATA";
  attribute X_INTERFACE_PARAMETER of ap_return : signal is "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of b : signal is "xilinx.com:signal:data:1.0 b DATA";
  attribute X_INTERFACE_PARAMETER of b : signal is "XIL_INTERFACENAME b, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of c : signal is "xilinx.com:signal:data:1.0 c DATA";
  attribute X_INTERFACE_PARAMETER of c : signal is "XIL_INTERFACENAME c, LAYERED_METADATA undef";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adder
     port map (
      a(31 downto 0) => a(31 downto 0),
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_return(31 downto 0) => ap_return(31 downto 0),
      ap_start => ap_start,
      b(31 downto 0) => b(31 downto 0),
      c(31 downto 0) => c(31 downto 0)
    );
end STRUCTURE;
