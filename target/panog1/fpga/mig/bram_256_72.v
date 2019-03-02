`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:04:35 02/25/2019 
// Design Name: 
// Module Name:    bram_256_72 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bram_256_72(
    input wire clk,
    input wire rst,
    input wire [7:0] addr,
    input wire en,
    input wire we,
    output wire [71:0] rd,
    input wire [71:0] wr
    );
    
    wire [31:0] DOA;
    wire [31:0] DOB;
    wire [3:0] DOPA;
    wire [3:0] DOPB;
    wire [8:0] ADDRA;
    wire [8:0] ADDRB;
    wire CLKA;
    wire CLKB;
    wire [31:0] DIA;
    wire [31:0] DIB;
    wire [3:0] DIPA;
    wire [3:0] DIPB;
    wire ENA;
    wire ENB;
    wire SSRA;
    wire SSRB;
    wire WEA;
    wire WEB;
    
    assign rd = {DOPA, DOPB, DOA, DOB};
    assign ADDRA = {addr, 1'b0};
    assign ADDRB = {addr, 1'b1};
    assign CLKA = clk;
    assign CLKB = clk;
    assign DIA = wr[63:32];
    assign DIB = wr[31:0];
    assign DIPA = wr[71:68];
    assign DIPB = wr[67:64];
    assign ENA = en;
    assign ENB = en;
    assign SSRA = rst;
    assign SSRB = rst;
    assign WEA = we;
    assign WEB = we;

    RAMB16_S36_S36 #(
      .INIT_A(36'h000000000),  // Value of output RAM registers on Port A at startup
      .INIT_B(36'h000000000),  // Value of output RAM registers on Port B at startup
      .SRVAL_A(36'h000000000), // Port A output value upon SSR assertion
      .SRVAL_B(36'h000000000), // Port B output value upon SSR assertion
      .WRITE_MODE_A("WRITE_FIRST"), // WRITE_FIRST, READ_FIRST or NO_CHANGE
      .WRITE_MODE_B("WRITE_FIRST"), // WRITE_FIRST, READ_FIRST or NO_CHANGE
      .SIM_COLLISION_CHECK("ALL"),  // "NONE", "WARNING_ONLY", "GENERATE_X_ONLY", "ALL" 

      // The forllowing INIT_xx declarations specify the initial contents of the RAM
      // Address 0 to 127
      .INIT_00(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_01(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_02(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_03(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_04(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_05(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_06(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_07(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_08(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_09(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_0A(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_0B(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_0C(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_0D(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_0E(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_0F(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      // Address 128 to 255
      .INIT_10(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_11(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_12(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_13(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_14(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_15(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_16(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_17(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_18(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_19(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_1A(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_1B(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_1C(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_1D(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_1E(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_1F(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      // Address 256 to 383
      .INIT_20(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_21(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_22(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_23(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_24(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_25(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_26(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_27(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_28(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_29(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_2A(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_2B(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_2C(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_2D(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_2E(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_2F(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      // Address 384 to 511
      .INIT_30(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_31(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_32(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_33(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_34(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_35(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_36(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_37(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_38(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_39(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_3A(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_3B(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_3C(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_3D(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_3E(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),
      .INIT_3F(256'h00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000),

      // The next set of INITP_xx are for the parity bits
      // Address 0 to 127
      .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
      // Address 128 to 255
      .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
      // Address 256 to 383
      .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
      // Address 384 to 511
      .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000)
   ) RAMB16_S36_S36_inst (
      .DOA(DOA),      // Port A 32-bit Data Output
      .DOB(DOB),      // Port B 32-bit Data Output
      .DOPA(DOPA),    // Port A 4-bit Parity Output
      .DOPB(DOPB),    // Port B 4-bit Parity Output
      .ADDRA(ADDRA),  // Port A 9-bit Address Input
      .ADDRB(ADDRB),  // Port B 9-bit Address Input
      .CLKA(CLKA),    // Port A Clock
      .CLKB(CLKB),    // Port B Clock
      .DIA(DIA),      // Port A 32-bit Data Input
      .DIB(DIB),      // Port B 32-bit Data Input
      .DIPA(DIPA),    // Port A 4-bit parity Input
      .DIPB(DIPB),    // Port-B 4-bit parity Input
      .ENA(ENA),      // Port A RAM Enable Input
      .ENB(ENB),      // Port B RAM Enable Input
      .SSRA(SSRA),    // Port A Synchronous Set/Reset Input
      .SSRB(SSRB),    // Port B Synchronous Set/Reset Input
      .WEA(WEA),      // Port A Write Enable Input
      .WEB(WEB)       // Port B Write Enable Input
   );

endmodule