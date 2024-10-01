
module top_module
(
    input clk,
    input resetn,    // active-low synchronous reset
    input x,
    input y,
    output f,
    output g
); 

    localparam R = 0;
    localparam A = 1;
    localparam B = 2;
    localparam C = 3;
    localparam D = 4;
    localparam E = 5;
    localparam F = 6;
    localparam G = 7;
    localparam H = 8;

    reg [4:0] state, next_state;
    
    always @ (*) begin
        case (state)
            R: next_state <= A;
            A: next_state <= B; 
            
            B: next_state <= (x == 1) ? C : B;
            C: next_state <= (x == 0) ? D : C;
            D: next_state <= (x == 1) ? E : B;
            
            E: next_state <= (y == 1) ? G : F;
            F: next_state <= (y == 1) ? G : H;
            
            G: next_state <= G;
            H: next_state <= H;
        endcase
    end

    always @ (posedge clk) begin
        if (~resetn)
            state <= R;
        else
            state <= next_state;
    end

    assign f = (state == A) ? 1 : 0;
    assign g = (state == E || state == F || state == G) ? 1 : 0;

endmodule