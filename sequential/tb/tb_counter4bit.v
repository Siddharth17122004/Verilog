`timescale 1ns/1ps

module tb_counter4;

reg clk, rst;
wire [3:0] q;

counter4 uut (.clk(clk), .rst(rst), .q(q));

initial clk = 0;
always #5 clk = ~clk;


initial begin
    $dumpfile("counter4.vcd");
    $dumpvars(0, tb_counter4);

    rst = 1;
    #10 rst = 0;
    #100 $finish;
end

endmodule
