/*Ejercicio 2.
Diseña un registro de desplazamiento de 4 bits con entrada serial serial_in, señal de reloj clk, y
salida en paralelo q[3:0]. En cada flanco positivo de clk debe desplazarse el dato serial hacia la
derecha. */

module Ejercicio2 (input clk, input serial_in, output reg [3:0] q);

always @(posedge clk) begin q <= {serial_in, q[3:1]};  //Desplaza a la derecha, entra serial_in en MSB

end 
endmodule
    