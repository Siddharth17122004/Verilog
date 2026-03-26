`timescale 1ns/1ps

module tb_comparator2;

reg [1:0] a,b;
wire eq_df,gt_df,lt_df;
wire eq_gl,gt_gl,lt_gl;

comparator2_df uut1(a,b,eq_df,gt_df,lt_df);
comparator2_gl uut2(a,b,eq_gl,gt_gl,lt_gl);

initial begin
  $display("a b | eq gt lt (df) | eq gt lt (gl)");
  $monitor("%b %b |  %b  %b  %b   |  %b  %b  %b",
            a,b,eq_df,gt_df,lt_df,eq_gl,gt_gl,lt_gl);

  a=0; b=0; #10;
  a=0; b=1; #10;
  a=1; b=0; #10;
  a=1; b=1; #10;
  a=2; b=1; #10;
  a=1; b=2; #10;
  a=3; b=2; #10;
  a=2; b=3; #10;

  #10 $finish;
end

endmodule
