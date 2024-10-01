
/*
    URL: https://hdlbits.01xz.net/wiki/Count1to10
*/

module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);

    reg [3:0] counter = 0;
    
    always @ (posedge clk) begin
    	
        if (reset) begin
    		counter <= 1;    	
        end
        else begin
            counter <= (counter == 10) ? 1 : counter + 1;
        end
    end
    
    assign q = counter;
    
endmodule
