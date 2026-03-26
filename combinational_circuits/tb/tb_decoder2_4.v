`timescale 1ns/1ps

module tb_decoder2_4;

reg a,b;
wire [3:0] y_df, y_gl;


decoder2_4df uut1(a,b,y_df);
decoder2_4gl uut2(a,b,y_gl);

initial begin
  $display("a b | y_df    y_gl");
  $monitor("%b %b | %b   %b", a,b,y_df,y_gl);

  a=0; b=0;
  #10 a=0; b=1;
  #10 a=1; b=0;
  #10 a=1; b=1;

  #10 $finish;
end

endmodule
