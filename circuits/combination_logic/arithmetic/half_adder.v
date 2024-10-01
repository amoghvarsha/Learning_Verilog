
/*
    URL: https://hdlbits.01xz.net/wiki/Hadd
*/

`ifdef METHOD_A

module top_module
( 
    input a, b,
    output cout, sum
);

    and (cout, a, b);
    xor ( sum, a, b);
    
endmodule

`elsif METHOD_B

module top_module
( 
    input a, b,
    output cout, sum
);

    assign sum = a & b;
    assign cout = a ^ b;
    
endmodule

`endif
