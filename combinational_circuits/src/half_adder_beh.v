module half_adder_beh(input a, b, output reg sum, cout);

always @(*) begin
    sum  = a ^ b;
    cout = a & b;
end

endmodule
