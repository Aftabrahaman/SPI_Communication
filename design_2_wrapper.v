//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri Jul  5 18:50:59 2024
//Host        : Aftab running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (clk_0,
    cs_0,
    mosi_0,
    sclk_0);
  input clk_0;
  output cs_0;
  output mosi_0;
  output sclk_0;

  wire clk_0;
  wire cs_0;
  wire mosi_0;
  wire sclk_0;

  design_2 design_2_i
       (.clk_0(clk_0),
        .cs_0(cs_0),
        .mosi_0(mosi_0),
        .sclk_0(sclk_0));
endmodule
