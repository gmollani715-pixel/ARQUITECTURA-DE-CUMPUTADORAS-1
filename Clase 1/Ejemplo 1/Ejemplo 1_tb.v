'timescale' 1ns / 1ps
'include' "Ejemplo_1.v"

//Testbech

module Ejemplo_1_tb;

//Declaracion de las señales de entrada y de salida
reg A; // Entrada A
reg B; // Entrada B
wire Y; // Salida Y

// Instnciacion del modulo a probar
or_gate uut (
    .A(A), //Conecta A al modulo
    .B(B), //Conecta B al modulo
    .Y(Y)  //Conecta Y al modulo
);

//Generacion de combinaciones para las entradas
initial begin 

$dumpfile("Ejemplo_1.vcd"); //Archivo de volcado
$dumpvars(0, Ejemplo_1_tb);

//Mostrar cabecera
$display("Time | A | B | Y");
$display("----------------");

//Aplicacion de las combinaciones
A=0 ; B=0 ; #10; //Espera 10 unidades de tiempo
$display("%0t    | %b | %b | %b", $time, A, B, Y);

A=0 ; B=1 ; #10; //Espera 10 unidades de tiempo
$display("%0t    | %b | %b | %b", $time, A, B, Y);

A=1 ; B=0 ; #10; //Espera 10 unidades de tiempo
$display("%0t    | %b | %b | %b", $time, A, B, Y);

A=1 ; B=1 ; #10; //Espera 10 unidades de tiempo
$display("%0t    | %b | %b | %b", $time, A, B, Y);

//Fin de la simulacion
$stop
end

endmodule
