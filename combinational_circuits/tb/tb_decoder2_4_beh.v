`timescale 1ns/1ps

module tb_decoder2_4_beh;

reg [1:0]a;
wire [3:0] y;


decoder2_4_beh uut1(a,y);

initial begin
  $dumpfile("sim/decoder2_4_beh.vcd");
  $dumpvars(0,tb_decoder2_4_beh );
  
  $monitor("%b  | %b ", a,y);

  a=2'b00;
  #10 a=2'b01; 
  #10 a=2'b10;
  #10 a=2'b11;

  #10 $finish;
end

endmodule
