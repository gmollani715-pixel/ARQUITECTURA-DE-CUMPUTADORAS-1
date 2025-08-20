/*Ejercicio 4.
Diseña un flip-flop tipo D con reloj síncrono y señal de reset asíncrono activo alto. El flip-flop debe
almacenar el valor de la entrada D en el flanco positivo del reloj. */

module Ejercicio4 (input clk, input d, input reset, output reg q);

always @(posedge clk or posedge reset) begin
  if (reset)
  begin
    q <= 0;
  end
  else begin
    q <= d;
  end

end
endmodule