
module barrel_shifter_4bit (
    input  [3:0] data,
    input  [1:0] shamt,
    input        dir,     
    output [3:0] result
);
    assign result = dir ? (data >> shamt) : (data << shamt);
endmodule
