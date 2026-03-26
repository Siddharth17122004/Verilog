`timescale 1ns/1ps

module tb_encoder4_2_df;

reg [3:0] d;
wire [1:0] y;

encoder4_2_df uut1(d,y);


initial begin
  $dumpfile("sim/encoder4_2_df.vcd");
  $dumpvars(0,encoder4_2_df );
  $monitor("%b |  %b  ", d,y);

  d=4'b0001; #10;
  d=4'b0010; #10;
  d=4'b0100; #10;
  d=4'b1000; #10;

  #10 $finish;
end

endmodule
