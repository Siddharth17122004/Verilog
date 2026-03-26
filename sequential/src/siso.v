`timescale 1ns/1ps

module siso(
    input clk,
    input rst,
    input serial_in,
    output reg serial_out
);

reg [3:0] q;  

always @(posedge clk or posedge rst) begin
    if (rst) begin
        q <= 0;
        serial_out <= 0;
    end else begin
        q <= {q[2:0], serial_in};  
        serial_out <= q[3];        
    end
end

endmodule
