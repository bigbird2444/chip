module aac(c,o,ic,a,b);
	output c;
	output o;
	input ic;
	input a;
	input b;
	wire c1;
	wire o1;
	wire c2;

	aa aa1(
		.c(c1),
		.o(o1),
		.a(a),
		.b(b)
	);
	aa aa2(
		.c(c2),
		.o(o),
		.a(ic),
		.b(o1)
	);

	or(c,c1,c2);
endmodule
