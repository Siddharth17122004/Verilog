`timescale 1ns/1ps

module sipo(
    input clk,
    input rst,
    input serial_in,
    output reg [3:0] parallel_out
);

always @(posedge clk or posedge rst) begin
    if (rst)
        parallel_out <= 0;
    else
        parallel_out <= {parallel_out[2:0], serial_in}; 
end

endmodule
