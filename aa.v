module aa(c,o,a,b);
	output c;
	output o;
	input a;
	input b;
	and(c,a,b);
	xor(o,a,b);
endmodule

