`timescale 1ns/1ps
module tb_cla;
    reg  [3:0] A, B;
    reg        Cin;
    wire [3:0] Sum;
    wire       Cout;

    cla_adder_4bit uut (.A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));

    integer i, j;
    integer errors = 0;
    initial begin
        $dumpfile("cla.vcd");
        $dumpvars(0, tb_cla);
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i; B = j; Cin = 0; #10;
                if ({Cout, Sum} !== (A + B)) begin
                    $display("ERROR: %0d + %0d = %0d (expected %0d)", A, B, {Cout,Sum}, A+B);
                    errors = errors + 1;
                end
            end
        end
        if (errors == 0)
            $display("ALL TESTS PASSED for CLA 4-bit Adder");
        else
            $display("%0d ERRORS", errors);
        $finish;
    end
endmodule
