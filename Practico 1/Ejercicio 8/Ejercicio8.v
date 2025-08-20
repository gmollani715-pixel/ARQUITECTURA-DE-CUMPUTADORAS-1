/* Diseña un módulo Verilog para una memoria RAM simple y síncrona con capacidad parametrizable.
La memoria debe tener:
Entradas: reloj (clk), habilitación escritura (we), dirección (addr ), dato de entrada (data_in).
Salida: dato almacenado en la dirección indicada (data_out).
Debe funcionar escritura en flanco positivo del reloj solo si we está activo.*/

module Ejercicio8 (input wire clk, input wire we, input wire [6:0] addr, input wire [7:0] data_in, output reg [7:0] data_out);)

    // definicion de la memoria RAM
    //Memoria declarada como arreglo de registros
    reg [7:0] mem [0:127]; // 128 direcciones de 8 bits

    always @(posedge clk) begin 
        if (we) begin
            mem[addr] <= data_in; // Escritura en la dirección especificada
        end
        data_out <= mem[addr]; // Lectura asincrónica (simulada en salida)
    end 
endmodule