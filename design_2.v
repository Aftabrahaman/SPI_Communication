//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Fri Jul  5 18:50:59 2024
//Host        : Aftab running 64-bit major release  (build 9200)
//Command     : generate_target design_2.bd
//Design      : design_2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_2.hwdef" *) 
module design_2
   (clk_0,
    cs_0,
    mosi_0,
    sclk_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN design_2_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  output cs_0;
  output mosi_0;
  output sclk_0;

  wire clk_0_1;
  wire spi_master_0_cs;
  wire spi_master_0_mosi;
  wire spi_master_0_sclk;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]vio_0_probe_out1;
  wire [7:0]vio_0_probe_out2;

  assign clk_0_1 = clk_0;
  assign cs_0 = spi_master_0_cs;
  assign mosi_0 = spi_master_0_mosi;
  assign sclk_0 = spi_master_0_sclk;
  design_2_ila_0_0 ila_0
       (.clk(clk_0_1),
        .probe0(vio_0_probe_out0),
        .probe1(vio_0_probe_out1),
        .probe2(vio_0_probe_out2),
        .probe3(spi_master_0_sclk),
        .probe4(spi_master_0_cs),
        .probe5(spi_master_0_mosi));
  design_2_spi_master_0_0 spi_master_0
       (.clk(clk_0_1),
        .cs(spi_master_0_cs),
        .din(vio_0_probe_out2),
        .mosi(spi_master_0_mosi),
        .newd(vio_0_probe_out0),
        .rst(vio_0_probe_out1),
        .sclk(spi_master_0_sclk));
  design_2_vio_0_0 vio_0
       (.clk(clk_0_1),
        .probe_in0(spi_master_0_sclk),
        .probe_in1(spi_master_0_cs),
        .probe_in2(spi_master_0_mosi),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out2(vio_0_probe_out2));
endmodule
