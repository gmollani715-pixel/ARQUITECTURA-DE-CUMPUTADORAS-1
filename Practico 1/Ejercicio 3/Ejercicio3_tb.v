`timescale 1ns / 1ps // 1 Nanosegundo / 1 Picosegundo
`include "Ejercicio3.v"

// Testbench
module Ejercicio3_tb;

// Declaración de las señales de entrada y de salida
reg [7:0] data0; // Entrada 0
reg [7:0] data1; // Entrada 1
reg [7:0] data2; // Entrada 2
reg [7:0] data3; // Entrada 3
reg [1:0] sel; //Entrada de control
wire [7:0] y; // Salida

// Instanciación del Multiplexor
Ejercicio3 uut (
    .data0(data0), // Entrada 0 del modulo
    .data1(data1), // Entrada 1 del modulo
    .data2(data2), // Entrada 2 del modulo
    .data3(data3), // Entrada 3 del modulo
    .sel(sel), //Entrada de control
    .y(y) // Salida
);


// Generaciòn de combinaciones para las entradas
initial begin
    $dumpfile("Ejercicio3_tb.vcd");
    $dumpvars(0, Ejercicio3_tb);

    // Mostrar Cabecera 
    $display ("Time |data0 | data1 | data2 | data3 | sel | y");
    $display ("------------------------------------------------");

    // Aplicación de las combinaciones
    //Caso 1
    data0 = 8'b0; data1 = 8'b1; data2 = 8'b10; data3 = 8'b11; sel = 2'b00; #10;  // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b | %b | %b | %b | %b", $time, data0, data1, data2, data3, sel, y);

    //Caso 2
    data0 = 8'b0; data1 = 8'b1; data2 = 8'b10; data3 = 8'b11; sel = 2'b01; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b | %b | %b | %b | %b", $time, data0, data1, data2, data3, sel, y);

    //Caso 3
    data0 = 8'b0; data1 = 8'b1; data2 = 8'b10; data3 = 8'b11; sel = 2'b10; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b | %b | %b | %b | %b", $time, data0, data1, data2, data3, sel, y);

    //Caso 4
    data0 = 8'b0; data1 = 8'b1; data2 = 8'b10; data3 = 8'b11; sel = 2'b11; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b | %b | %b | %b | %b", $time, data0, data1, data2, data3, sel, y);


    $stop; // Detener la simulación
end
endmodule