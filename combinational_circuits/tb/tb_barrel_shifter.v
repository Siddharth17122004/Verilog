`timescale 1ns/1ps
module tb_barrel_shifter;
    reg  [3:0] data;
    reg  [1:0] shamt;
    reg        dir;
    wire [3:0] result;

    barrel_shifter_4bit uut (.data(data),.shamt(shamt),.dir(dir),.result(result));

    initial begin
        $dumpfile("barrel_shifter.vcd");
        $dumpvars(0, tb_barrel_shifter);
        data = 4'b1011;
        $display("=== Left Shifts ===");
        dir = 0;
        shamt=0; #10; $display("data=%b << %0d = %b", data, shamt, result);
        shamt=1; #10; $display("data=%b << %0d = %b", data, shamt, result);
        shamt=2; #10; $display("data=%b << %0d = %b", data, shamt, result);
        shamt=3; #10; $display("data=%b << %0d = %b", data, shamt, result);
        $display("=== Right Shifts ===");
        dir = 1;
        shamt=0; #10; $display("data=%b >> %0d = %b", data, shamt, result);
        shamt=1; #10; $display("data=%b >> %0d = %b", data, shamt, result);
        shamt=2; #10; $display("data=%b >> %0d = %b", data, shamt, result);
        shamt=3; #10; $display("data=%b >> %0d = %b", data, shamt, result);
        $finish;
    end
endmodule
