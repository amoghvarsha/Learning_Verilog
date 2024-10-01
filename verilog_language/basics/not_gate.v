
/*
    URL: https://hdlbits.01xz.net/wiki/Notgate
*/


`define METHOD_B

`ifdef METHOD_A

module top_module
(
    input in, 
    output out 
);

    assign out = ~in;

endmodule

`elsif METHOD_B

module top_module
(
    input in, 
    output out 
);

    not (out, in);

endmodule

`endif