`timescale 1ns/1ps

module tb_priority_encoder;

reg [3:0] in;
wire [1:0] out;
wire valid;

priority_encoder uut(.in(in), .out(out), .valid(valid));

initial begin
    $dumpfile("priority_encoder.vcd");
    $dumpvars(0, tb_priority_encoder);

    in = 4'b0000;
    #10 in = 4'b0001;
    #10 in = 4'b0010;
    #10 in = 4'b0011;
    #10 in = 4'b0100;
    #10 in = 4'b0110;
    #10 in = 4'b1000;
    #10 in = 4'b1011;
    #10 $finish;
end

endmodule
