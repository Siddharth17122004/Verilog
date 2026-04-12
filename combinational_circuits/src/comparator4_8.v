
module comparator_4bit (
    input  [3:0] A, B,
    input        GT_in, EQ_in, LT_in,  // cascade inputs
    output       GT, EQ, LT
);
    wire gt_local = (A > B);
    wire eq_local = (A == B);
    wire lt_local = (A < B);

    assign GT = gt_local | (eq_local & GT_in);
    assign EQ = eq_local & EQ_in;
    assign LT = lt_local | (eq_local & LT_in);
endmodule


module comparator_8bit (
    input  [7:0] A, B,
    output       GT, EQ, LT
);
    wire gt0, eq0, lt0;  // results from lower 4 bits
    wire gt1, eq1, lt1;  // results from upper 4 bits (final)

    // Lower 4 bits (no cascade input — start with EQ_in=1)
    comparator_4bit c0 (
        .A(A[3:0]), .B(B[3:0]),
        .GT_in(1'b0), .EQ_in(1'b1), .LT_in(1'b0),
        .GT(gt0), .EQ(eq0), .LT(lt0)
    );

    // Upper 4 bits feed from lower result
    comparator_4bit c1 (
        .A(A[7:4]), .B(B[7:4]),
        .GT_in(gt0), .EQ_in(eq0), .LT_in(lt0),
        .GT(gt1), .EQ(eq1), .LT(lt1)
    );

    assign GT = gt1;
    assign EQ = eq1;
    assign LT = lt1;
endmodule
