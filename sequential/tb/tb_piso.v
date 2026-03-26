`timescale 1ns/1ps

module tb_piso;

reg clk, rst, load;
reg [3:0] parallel_in;
wire serial_out;

piso uut (
    .clk(clk),
    .rst(rst),
    .load(load),
    .parallel_in(parallel_in),
    .serial_out(serial_out)
);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    $dumpfile("piso.vcd");
    $dumpvars(0, tb_piso);

    rst = 1;
    load = 0;
    parallel_in = 4'b1011;
    #10 rst = 0;

    load = 1;
    #10 load = 0;
    #40;

    parallel_in = 4'b1101;
    load = 1;
    #10 load = 0;
    #40;

    $finish;
end

endmodule
