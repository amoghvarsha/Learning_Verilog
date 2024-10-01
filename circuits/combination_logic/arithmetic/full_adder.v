
/*
    URL: https://hdlbits.01xz.net/wiki/Fadd
*/

module top_module
( 
    input a, b, cin,
    output cout, sum
);
	
    wire x, y, z;
    
    assign x = a ^ b;
    assign y = a & b;
    assign z = x & cin;
    
    assign sum  = x ^ cin;
    assign cout = y | z;

endmodule

