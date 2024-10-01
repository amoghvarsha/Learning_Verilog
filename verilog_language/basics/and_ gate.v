
/*
    URL: https://hdlbits.01xz.net/wiki/Andgate
*/ 

`define METHOD_B

`ifdef METHOD_A

module top_module
( 
    input a, 
    input b, 
    output out
);

    assign out = a & b;

endmodule

`elsif METHOD_B

module top_module
( 
    input a, 
    input b, 
    output out
);

    always @ (*) begin
        case ({a,b})
            2'b00, 2'b01, 2'b10: 
                out = 0;
            2'b11: 
                out = 1;
        endcase
    end

endmodule

`endif 