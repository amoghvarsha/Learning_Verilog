
/*
    URL: https://hdlbits.01xz.net/wiki/7458
*/

module top_module
( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y
);
	
    p1 p11(p1a, p1b, p1c, p1d, p1e, p1f, p1y);
    
    p2 p22(p2a, p2b, p2c, p2d, p2y);
    
endmodule

module p1
(
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y
);
    
    wire and_wire[1:0];
    
    assign and_wire[0] = p1a & p1b & p1c;
    assign and_wire[1] = p1d & p1e & p1f;
    
    assign p1y = and_wire[0] | and_wire[1];
    
endmodule


module p2
(
    input p2a, p2b, p2c, p2d,
    output p2y
);
    
    wire and_wire[1:0];
    
    assign and_wire[0] = p2a & p2b;
    assign and_wire[1] = p2c & p2d;
    
    assign p2y = and_wire[0] | and_wire[1];
    
endmodule
