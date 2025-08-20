  /*  Diseñe un módulo en Verilog que implemente un sumador completo de un bit con entradas a,b y
cin(carry in), y salidas sum y cout (carry out). Describir y simular con Icarus Verilog + GTKWave */

module Ejercicio1 (input a, input b, input cin, output sum, output cout);
assign sum = a ^ b ^ cin;
assign cout = (a & b) | (cin & (a ^ b));
endmodule