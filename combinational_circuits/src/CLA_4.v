
module cla_generator (
    input  [3:0] G, P,   // per-bit generate/propagate
    input        Cin,
    output [3:0] C        // carry out per bit
);
    assign C[0] = G[0] | (P[0] & Cin);
    assign C[1] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    assign C[2] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
    assign C[3] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) |
                  (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
endmodule

module cla_adder_4bit (
    input  [3:0] A, B,
    input        Cin,
    output [3:0] Sum,
    output       Cout
);
    wire [3:0] G, P, C;

    assign G = A & B;      
    assign P = A ^ B;       

    cla_generator cla (.G(G), .P(P), .Cin(Cin), .C(C));

    assign Sum[0] = P[0] ^ Cin;
    assign Sum[1] = P[1] ^ C[0];
    assign Sum[2] = P[2] ^ C[1];
    assign Sum[3] = P[3] ^ C[2];
    assign Cout   = C[3];
endmodule
