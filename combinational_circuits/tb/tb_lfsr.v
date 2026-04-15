`timescale 1ns/1ps

module tb_lfsr;

reg clk;
reg rst;
wire [7:0] lfsr;


lfsr  uut (
    .clk(clk),
    .rst(rst),
    .lfsr(lfsr)
);


always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;

    
    #10;
    rst = 0;

   
    #300;

    $finish;
end


initial begin
    $monitor("Time = %0t | LFSR = %b", $time, lfsr);
end


initial begin
    $dumpfile("lfsr.vcd");
    $dumpvars(0, tb_lfsr);
end

endmodule
