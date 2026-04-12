
module priority_enc_8to3 (
    input  [7:0] I,
    output reg [2:0] Y,
    output reg       V
);
    always @(*) begin
        casez (I)
            8'b1???????: begin Y = 3'd7; V = 1; end
            8'b01??????: begin Y = 3'd6; V = 1; end
            8'b001?????: begin Y = 3'd5; V = 1; end
            8'b0001????: begin Y = 3'd4; V = 1; end
            8'b00001???: begin Y = 3'd3; V = 1; end
            8'b000001??: begin Y = 3'd2; V = 1; end
            8'b0000001?: begin Y = 3'd1; V = 1; end
            8'b00000001: begin Y = 3'd0; V = 1; end
            default:     begin Y = 3'd0; V = 0; end
        endcase
    end
endmodule
