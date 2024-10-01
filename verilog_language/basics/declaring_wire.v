
/*
    URL: https://hdlbits.01xz.net/wiki/Wire_decl
*/

`default_nettype none

module top_module
(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n
); 

    wire and_1;
    wire and_2;

    wire or_1;

    assign and_1 = a & b;
    assign and_2 = c & d;

    assign or_1 = and_1 | and_2;

    assign out   =  or_1;
    assign out_n = ~or_1;

endmodule