
/*
    URL: https://hdlbits.01xz.net/wiki/Edgecapture
*/

module top_module
(
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

    genvar i;
    generate
        for (i = 0; i < 32; i++) begin: edge_capture_x
            edge_capture edge_capture_x(clk, reset, in[i], out[i]);
        end
    endgenerate

endmodule

module edge_capture
(
    input clk,
    input reset,
    input in,
    output reg out
);

    wire capture;
    reg prev_state;

    always @ (posedge clk) begin
        prev_state <= in;
    end

    always @ (posedge clk) begin
        if (reset)
            out <= 0;
        else begin
            if (capture == 1)
                out <= 1;
            else
                out <= out;
        end
    end

    assign capture = ~in & prev_state;

endmodule