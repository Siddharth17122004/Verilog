`timescale 1ns/1ps

module piso(
    input clk,
    input rst,
    input load,          
    input [3:0] parallel_in, 
    output reg serial_out
);

reg [3:0] q;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        q <= 0;
        serial_out <= 0;
    end else if (load) begin
        q <= parallel_in;     
        serial_out <= parallel_in[3]; 
    end else begin
        q <= {q[2:0], 1'b0}; 
        serial_out <= q[3];   
    end
end

endmodule		
