
/*
    URL: https://hdlbits.01xz.net/wiki/Edgedetect
    This is question is asking for a positive egde
*/

`define METHOD_A

`ifdef METHOD_A

module top_module
(
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

    reg [7:0] curr_state, prev_state;

    always @ (posedge clk) begin
        
        curr_state <= in;
        prev_state <= curr_state;    

    end

    assign pedge = curr_state & ~prev_state;

endmodule

`elsif METHOD_B

module top_module
(
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

    genvar i;
    generate
        for (i = 0; i <= 7; i++)
            begin : edge_detect_block
                edge_detect edge_detect_x (clk, in[i], pedge[i]);
            end
    endgenerate
    
endmodule

module edge_detect 
(
    input clk,
    input in,
    output pedge
);    
    wire x, y;
    
    d_ff d_ff_0 (clk, in, x);
    d_ff d_ff_1 (clk,  x, y);
            
    assign pedge = ~y & x;
    
endmodule
    
module d_ff
(
    input clk,    // Clocks are used in sequential circuits
    input d,
    output reg q
);
    
    always @ (posedge clk)
        begin
    		q <= d;
        end
    
endmodule

`endif