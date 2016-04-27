--Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
--Date        : Tue Jun 30 10:38:40 2015
--Host        : localhost.localdomain running 64-bit CentOS release 6.6 (Final)
--Command     : generate_target Angle_Block_Design_2_wrapper.bd
--Design      : Angle_Block_Design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Angle_Block_Design_2_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    bottom_4_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    encoder_pins_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    leds_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Angle_Block_Design_2_wrapper;

architecture STRUCTURE of Angle_Block_Design_2_wrapper is
  component Angle_Block_Design_2 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    Encoder_Pins_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Bottom_4_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Bottom_4_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Bottom_4_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    leds_8bits_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Angle_Block_Design_2;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal bottom_4_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bottom_4_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal bottom_4_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal bottom_4_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal bottom_4_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bottom_4_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal bottom_4_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal bottom_4_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal bottom_4_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bottom_4_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal bottom_4_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal bottom_4_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal bottom_4_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bottom_4_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal bottom_4_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal bottom_4_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
Angle_Block_Design_2_i: component Angle_Block_Design_2
    port map (
      Bottom_4_tri_i(3) => bottom_4_tri_i_3(3),
      Bottom_4_tri_i(2) => bottom_4_tri_i_2(2),
      Bottom_4_tri_i(1) => bottom_4_tri_i_1(1),
      Bottom_4_tri_i(0) => bottom_4_tri_i_0(0),
      Bottom_4_tri_o(3) => bottom_4_tri_o_3(3),
      Bottom_4_tri_o(2) => bottom_4_tri_o_2(2),
      Bottom_4_tri_o(1) => bottom_4_tri_o_1(1),
      Bottom_4_tri_o(0) => bottom_4_tri_o_0(0),
      Bottom_4_tri_t(3) => bottom_4_tri_t_3(3),
      Bottom_4_tri_t(2) => bottom_4_tri_t_2(2),
      Bottom_4_tri_t(1) => bottom_4_tri_t_1(1),
      Bottom_4_tri_t(0) => bottom_4_tri_t_0(0),
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      Encoder_Pins_tri_i(1 downto 0) => encoder_pins_tri_i(1 downto 0),
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      leds_8bits_tri_o(7 downto 0) => leds_8bits_tri_o(7 downto 0)
    );
bottom_4_tri_iobuf_0: component IOBUF
    port map (
      I => bottom_4_tri_o_0(0),
      IO => bottom_4_tri_io(0),
      O => bottom_4_tri_i_0(0),
      T => bottom_4_tri_t_0(0)
    );
bottom_4_tri_iobuf_1: component IOBUF
    port map (
      I => bottom_4_tri_o_1(1),
      IO => bottom_4_tri_io(1),
      O => bottom_4_tri_i_1(1),
      T => bottom_4_tri_t_1(1)
    );
bottom_4_tri_iobuf_2: component IOBUF
    port map (
      I => bottom_4_tri_o_2(2),
      IO => bottom_4_tri_io(2),
      O => bottom_4_tri_i_2(2),
      T => bottom_4_tri_t_2(2)
    );
bottom_4_tri_iobuf_3: component IOBUF
    port map (
      I => bottom_4_tri_o_3(3),
      IO => bottom_4_tri_io(3),
      O => bottom_4_tri_i_3(3),
      T => bottom_4_tri_t_3(3)
    );
end STRUCTURE;
