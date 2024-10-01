
/*
    URL: https://hdlbits.01xz.net/wiki/Count10
*/

module top_module
(
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q
);

    reg [3:0] counter = 0;
    
    always @ (posedge clk) begin
    	
        if (reset) begin
    		counter <= 0;    	
        end
        else begin
            counter <= (counter == 9) ? 0 : counter + 1;
        end
    end
    
    assign q = counter;
    
endmodule
