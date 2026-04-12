module mux_4to1 (
    input  [3:0] d,
    input  [1:0] sel,
    output       y
);
    assign y = d[sel];
endmodule


module mux_8to1 (
    input  [7:0] d,
    input  [2:0] sel,
    output       y
);
    wire y0, y1;

   
    mux_4to1 m0 (.d(d[3:0]), .sel(sel[1:0]), .y(y0));

    
    mux_4to1 m1 (.d(d[7:4]), .sel(sel[1:0]), .y(y1));

   
    assign y = sel[2] ? y1 : y0;
endmodule
