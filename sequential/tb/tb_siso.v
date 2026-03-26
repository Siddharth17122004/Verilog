`timescale 1ns/1ps

module tb_siso;

reg clk, rst, serial_in;
wire serial_out;

siso uut (.clk(clk), .rst(rst), .serial_in(serial_in), .serial_out(serial_out));

initial clk = 0;
always #5 clk = ~clk;

initial begin
    $dumpfile("siso.vcd");
    $dumpvars(0, tb_siso);

    rst = 1; serial_in = 0;
    #10 rst = 0;
    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    #20 $finish;
end

endmodule
