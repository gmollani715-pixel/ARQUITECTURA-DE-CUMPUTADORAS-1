`timescale 1ns / 1ps // 1 Nanosegundo / 1 Picosegundo
`include "Ejercicio1.v"

// Testbench
module Ejercicio1_tb;

// Declaración de las señales de entrada y de salida
reg a; // Entrada A
reg b; // Entrada B
reg cin;
wire sum; // Salida sum
wire cout; // Salida cout

// Instanciación del módulo sumador
Ejercicio1 uut (
    .a(a), // Conecta A al módulo
    .b(b), // Conecta B al módulo
    .cin(cin), // Conecta cin al módulo
    .sum(sum),
    .cout(cout)
);


// Generaciòn de combinaciones para las entradas
initial begin
    $dumpfile("Ejercicio1_tb.vcd");
    $dumpvars(0, Ejercicio1_tb);

    // Mostrar Cabecera 
    $display ("Time | A | B | Cin | Sum | Cout");
    $display ("------------------------------");

    // Aplicación de las combinaciones
    a = 0; b = 0; cin = 0; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b |  %b  |  %b  |  %b ", $time, a, b, cin, sum, cout);

    a = 0; b = 1; cin = 0; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b |  %b  |  %b  |  %b ", $time, a, b, cin, sum, cout);

    a = 1; b = 0; cin = 0; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b |  %b  |  %b  |  %b ", $time, a, b, cin, sum, cout);

    a = 1; b = 1; cin = 0; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b |  %b  |  %b  |  %b ", $time, a, b, cin, sum, cout);

    a = 0; b = 0; cin = 1; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b |  %b  |  %b  |  %b ", $time, a, b, cin, sum, cout);

    a = 0; b = 1; cin = 1; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b |  %b  |  %b  |  %b ", $time, a, b, cin, sum, cout);

    a = 1; b = 0; cin = 1; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b |  %b  |  %b  |  %b ", $time, a, b, cin, sum, cout);

    a = 1; b = 1; cin = 1; #10; // Espera 10 unidades de tiempo
    $display ("%0t  | %b | %b |  %b  |  %b  |  %b ", $time, a, b, cin, sum, cout);

    $stop; // Detener la simulación
end
endmodule