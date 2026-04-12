
module parity_gen (
    input  [3:0] data,
    output       even_parity,  
    output       odd_parity    
);
    assign even_parity = ^data;     
    assign odd_parity  = ~(^data);   
endmodule


module parity_check (
    input  [3:0] data,
    input        parity_bit,
    output       even_error,   // 1 = error in even-parity scheme
    output       odd_error     // 1 = error in odd-parity scheme
);
    wire xor_all = ^{data, parity_bit};
    assign even_error = xor_all;       
    assign odd_error  = ~xor_all;
endmodule
