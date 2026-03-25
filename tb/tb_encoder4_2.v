`timescale 1ns/1ps

module tb_encoder4_2;

reg [3:0] d;
wire [1:0] y_df, y_gl;

encoder4_2df uut1(d,y_df);
encoder4_2gl uut2(d,y_gl);

initial begin
  $display("d    | y_df y_gl");
  $monitor("%b |  %b   %b", d,y_df,y_gl);

  d=4'b0001; #10;
  d=4'b0010; #10;
  d=4'b0100; #10;
  d=4'b1000; #10;

  #10 $finish;
end

endmodule
