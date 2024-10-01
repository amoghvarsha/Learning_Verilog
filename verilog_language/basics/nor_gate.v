
/*
    URL: https://hdlbits.01xz.net/wiki/Norgate
*/

`define METHOD_A


module top_module
( 
    input a, 
    input b, 
    output out
);

    `ifdef METHOD_A

    assign out = ~ ( a | b);

    `elsif METHOD_B
    
    assign out = a ~| b;

    `endif

endmodule
