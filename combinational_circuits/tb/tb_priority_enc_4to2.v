`timescale 1ns/1ps
module tb_priority_enc_4to2;
    reg  [3:0] I;
    wire [1:0] Y;
    wire       V;

    priority_enc_4to2 uut (.I(I), .Y(Y), .V(V));

    integer i;
    initial begin
        $dumpfile("priority_enc_4to2.vcd");
        $dumpvars(0, tb_priority_enc_4to2);
        $display("I       | Y  | V");
        $display("--------|----|-");
        for (i = 0; i < 16; i = i + 1) begin
            I = i; #10;
            $display("%b | %b | %b", I, Y, V);
        end
        $finish;
    end
endmodule
