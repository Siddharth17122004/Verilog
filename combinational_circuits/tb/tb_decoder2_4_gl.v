`timescale 1ns/1ps

module tb_decoder2_4_gl;

reg a,b;
wire [3:0] y;


decoder2_4_gl uut1(a,b,y);

initial begin
$dumpfile("sim/decoder2_4_gl.vcd");
  $dumpvars(0,tb_decoder2_4_gl );
  
  $monitor("%b %b | %b ", a,b,y);

  a=0; b=0;
  #10 a=0; b=1;
  #10 a=1; b=0;
  #10 a=1; b=1;

  #10 $finish;
end

endmodule
