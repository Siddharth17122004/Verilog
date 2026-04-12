
module bin_to_gray #(parameter N = 4) (
    input  [N-1:0] B,
    output [N-1:0] G
);
    assign G = B ^ (B >> 1);
endmodule


module gray_to_bin #(parameter N = 4) (
    input  [N-1:0] G,
    output [N-1:0] B
);
    genvar i;
    assign B[N-1] = G[N-1];
    generate
        for (i = N-2; i >= 0; i = i - 1) begin : g2b
            assign B[i] = B[i+1] ^ G[i];
        end
    endgenerate
endmodule
