`timescale 1ns/1ps
module tb_comparators;
   
    reg  [3:0] A4, B4;
    wire       GT4, EQ4, LT4;
    comparator_4bit c4 (.A(A4), .B(B4), .GT_in(0), .EQ_in(1), .LT_in(0),
                        .GT(GT4), .EQ(EQ4), .LT(LT4));

   
    reg  [7:0] A8, B8;
    wire       GT8, EQ8, LT8;
    comparator_8bit c8 (.A(A8), .B(B8), .GT(GT8), .EQ(EQ8), .LT(LT8));

    initial begin
        $dumpfile("comparators.vcd");
        $dumpvars(0, tb_comparators);
        $display("=== 4-bit Comparator ===");
        A4=5; B4=3; #10; $display("5>3: GT=%b EQ=%b LT=%b", GT4,EQ4,LT4);
        A4=3; B4=3; #10; $display("3=3: GT=%b EQ=%b LT=%b", GT4,EQ4,LT4);
        A4=2; B4=7; #10; $display("2<7: GT=%b EQ=%b LT=%b", GT4,EQ4,LT4);

        $display("=== 8-bit Comparator ===");
        A8=200; B8=100; #10; $display("200>100: GT=%b EQ=%b LT=%b", GT8,EQ8,LT8);
        A8=128; B8=128; #10; $display("128=128: GT=%b EQ=%b LT=%b", GT8,EQ8,LT8);
        A8=50;  B8=200; #10; $display(" 50<200: GT=%b EQ=%b LT=%b", GT8,EQ8,LT8);
        $finish;
    end
endmodule
