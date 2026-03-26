`timescale 1ns/1ps

module tb_sipo;

reg clk, rst, serial_in;
wire [3:0] parallel_out;

sipo uut (.clk(clk), .rst(rst), .serial_in(serial_in), .parallel_out(parallel_out));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    $dumpfile("sipo.vcd");
    $dumpvars(0, tb_sipo);

    rst = 1; serial_in = 0;
    #10 rst = 0;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    #20 $finish;
end

endmodule
