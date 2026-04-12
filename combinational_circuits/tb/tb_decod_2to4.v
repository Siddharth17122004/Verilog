`timescale 1ns/1ps
module tb_decoders;

    
    reg  [1:0] A2;
    reg        EN2;
    wire [3:0] Y2;
    decoder_2to4 d2 (.A(A2), .EN(EN2), .Y(Y2));

    
    reg  [2:0] A3;
    reg        EN3;
    wire [7:0] Y3;
    decoder_3to8 d3 (.A(A3), .EN(EN3), .Y(Y3));

    integer i;
    initial begin
        $dumpfile("decoders.vcd");
        $dumpvars(0, tb_decoders);

        // 2-to-4
        $display("=== 2-to-4 Decoder ===");
        EN2 = 1;
        for (i = 0; i < 4; i = i + 1) begin
            A2 = i; #10;
            $display("A=%b EN=%b => Y=%b", A2, EN2, Y2);
        end
        EN2 = 0; A2 = 2; #10;
        $display("A=%b EN=%b => Y=%b (disabled)", A2, EN2, Y2);

        // 3-to-8
        $display("=== 3-to-8 Decoder ===");
        EN3 = 1;
        for (i = 0; i < 8; i = i + 1) begin
            A3 = i; #10;
            $display("A=%b EN=%b => Y=%b", A3, EN3, Y3);
        end
        $finish;
    end
endmodule
