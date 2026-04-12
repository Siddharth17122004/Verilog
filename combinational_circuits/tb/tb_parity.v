`timescale 1ns/1ps
module tb_parity;
    reg  [3:0] data;
    wire       ep, op;
    parity_gen pg (.data(data), .even_parity(ep), .odd_parity(op));

    reg        pb;
    wire       ee, oe;
    parity_check pc (.data(data), .parity_bit(pb), .even_error(ee), .odd_error(oe));

    initial begin
        $dumpfile("parity.vcd");
        $dumpvars(0, tb_parity);
        $display("=== Parity Generator ===");
        $display("Data  | EvenP | OddP");
        data=4'b0000; #10; $display("%b | %b | %b", data, ep, op);
        data=4'b0001; #10; $display("%b | %b | %b", data, ep, op);
        data=4'b1010; #10; $display("%b | %b | %b", data, ep, op);
        data=4'b1111; #10; $display("%b | %b | %b", data, ep, op);
        data=4'b1100; #10; $display("%b | %b | %b", data, ep, op);

        $display("=== Parity Checker ===");
        data=4'b1010; pb=0; #10;
        $display("data=%b parity=%b => even_err=%b odd_err=%b", data,pb,ee,oe);
        data=4'b1010; pb=1; #10;
        $display("data=%b parity=%b => even_err=%b odd_err=%b (inject error)", data,pb,ee,oe);
        $finish;
    end
endmodule
