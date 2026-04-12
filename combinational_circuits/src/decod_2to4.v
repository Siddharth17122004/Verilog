
module decoder_2to4( 
    input [1:0] A,
    input            EN,
    output reg [3:0] Y
);
    always @(*) begin
        if (!EN)
            Y = 4'b0000;
        else
            Y = 4'b0001 << A;
    end
endmodule

module decoder_3to8 (
    input      [2:0] A,
    input            EN,
    output reg [7:0] Y
);
    always @(*) begin
        if (!EN)
            Y = 8'b00000000;
        else
            Y = 8'b00000001 << A;
    end
endmodule
