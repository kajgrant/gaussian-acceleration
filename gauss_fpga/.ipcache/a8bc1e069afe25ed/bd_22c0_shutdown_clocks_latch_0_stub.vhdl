-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
-- Date        : Wed Nov 22 16:40:36 2023
-- Host        : ensc-mmc-14 running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_shutdown_clocks_latch_0_stub.vhdl
-- Design      : bd_22c0_shutdown_clocks_latch_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu50-fsvh2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "D[0:0],CLK,CE,Q[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_shift_ram_v12_0_14,Vivado 2020.2.2";
begin
end;
