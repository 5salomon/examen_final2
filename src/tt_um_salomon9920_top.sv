`timescale 1ns / 1ps

module tt_um_salomon9920_top(
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
    );
    
    wire tx;
    wire sda;
    
    top_module top(
    .clk(clk),
    .reset(rst_n),
    .tx(tx),
    .scl(uio_out),
    .sda(sda) 
    );
   
endmodule
