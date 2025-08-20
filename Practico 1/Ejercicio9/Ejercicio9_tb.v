`timescale 1ns / 1ps
`include "Ejercicio9.v"

module Ejercicio9_tb;
  reg [3:0] addr;
  wire [7:0] data_out;

  rom_custom rom_inst(addr, data_out);

  initial begin
    $dumpfile("Ejercicio9_tb.vcd");
    $dumpvars(0, Ejercicio9_tb);

    addr = 0; #10;
    addr = 1; #10;
    addr = 2; #10;
    addr = 3; #10;
    addr = 4; #10;
    addr = 5; #10;
    addr = 6; #10;
    addr = 7; #10;

    $finish;
  end

endmodule
