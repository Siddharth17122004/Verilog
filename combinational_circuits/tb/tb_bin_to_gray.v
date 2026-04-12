`timescale 1ns/1ps
module tb_code_converters;
    reg  [3:0] B, G_in;
    wire [3:0] G_out, B_out;

    bin_to_gray b2g (.B(B), .G(G_out));
    gray_to_bin g2b (.G(G_in), .B(B_out));

    integer i;
    initial begin
        $dumpfile("code_converters.vcd");
        $dumpvars(0, tb_code_converters);
        $display("Binary | Gray  | Gray->Binary RoundTrip");
        $display("-------|-------|----------------------");
        for (i = 0; i < 16; i = i + 1) begin
            B = i; G_in = i ^ (i >> 1); #10;
            $display("%b    | %b  | %b", B, G_out, B_out);
        end
        $finish;
    end
endmodule
