`timescale 1ns/1ps
module tb_priority_enc_8to3;
    reg  [7:0] I;
    wire [2:0] Y;
    wire       V;

    priority_enc_8to3 uut (.I(I), .Y(Y), .V(V));

    integer i;
    initial begin
        $dumpfile("priority_enc_8to3.vcd");
        $dumpvars(0, tb_priority_enc_8to3);
        $display("I         | Y   | V");
        for (i = 0; i < 256; i = i + 1) begin
            I = i; #10;
            $display("%b | %b | %b", I, Y, V);
        end
        $finish;
    end
endmodule
