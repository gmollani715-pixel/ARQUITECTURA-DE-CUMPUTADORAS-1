/* Ejercicio 3.
Realiza un módulo que implemente un multiplexor 4 a 1 con entradas de datos de 8 bits (data0 a
data3 ), señal de selección sel de 2 bits y salida y de 8 bits, usando descripción en nivel comporta-
miento.*/

module Ejercicio3 (input [7:0] data0, //Entrada 0 (8 bits)
                    input [7:0] data1, //Entrada 1 (8 bits)
                    input [7:0] data2, //Entrada 2 (8 bits)
                    input [7:0] data3, //Entrada 3 (8 bits)
                    input [1:0] sel, //Señal de seleccion (2 bits)
                    output [7:0] y); //Salida (8 bits)

always @(*) begin
  case (sel)
  2'b00: y = data0;
  2'b01: y = data1;
  2'b10: y = data2;
  2'b11: y = data3;  
  endcase

end
endmodule 