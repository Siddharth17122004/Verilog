`timescale 1ns/1ps
module tb_mux_8to1;
    reg  [7:0] d;
    reg  [2:0] sel;
    wire       y;

    mux_8to1 uut (.d(d), .sel(sel), .y(y));

    integer i;
    initial begin
        $dumpfile("mux_8to1.vcd");
        $dumpvars(0, tb_mux_8to1);
        d = 8'b10110100;
        $display("Input data: %b", d);
        for (i = 0; i < 8; i = i + 1) begin
            sel = i;
            #10;
            $display("sel=%0d => y=%b (expected d[%0d]=%b)", sel, y, i, d[i]);
        end
        $display("TEST PASSED");
        $finish;
    end
endmodule
