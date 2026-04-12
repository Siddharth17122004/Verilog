// ============================================================
// 4-to-2 Priority Encoder with Valid (V) output
// Priority: I[3] > I[2] > I[1] > I[0]
// V=0 when no input is active
// ============================================================
module priority_enc_4to2 (
    input  [3:0] I,
    output reg [1:0] Y,
    output reg       V   // valid bit
);
    always @(*) begin
        casez (I)
            4'b1???:  begin Y = 2'b11; V = 1'b1; end
            4'b01??:  begin Y = 2'b10; V = 1'b1; end
            4'b001?:  begin Y = 2'b01; V = 1'b1; end
            4'b0001:  begin Y = 2'b00; V = 1'b1; end
            default:  begin Y = 2'b00; V = 1'b0; end
        endcase
    end
endmodule
