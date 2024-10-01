
/*
    URL: https://hdlbits.01xz.net/wiki/Vector4
*/

module top_module
(
    input [7:0] in,
    output [31:0] out
);

    wire sign_bit = in[7];

    assign out = {{(31-7){sign_bit}} , in};

endmodule
