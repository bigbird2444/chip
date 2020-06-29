module add32(c,o32,a32,b32);
	input c;
	input [7:0]a32;
	input [7:0]b32;
	output [7:0]o32;

	wire [7:0]c1;

	aa aa0(
		.c(c1[0]),
		.o(o32[0]),
		.a(a32[0]),
		.b(b32[0])
	);
	aac aac1(
		.c(c1[1]),
		.o(o32[1]),
		.ic(c1[0]),
		.a(a32[1]),
		.b(b32[1])
	);
	aac aac2(
		.c(c1[2]),
		.o(o32[2]),
		.ic(c1[1]),
		.a(a32[2]),
		.b(b32[2])
	);
	aac aac3(
		.c(c1[3]),
		.o(o32[3]),
		.ic(c1[2]),
		.a(a32[3]),
		.b(b32[3])
	);
	aac aac4(
		.c(c1[4]),
		.o(o32[4]),
		.ic(c1[3]),
		.a(a32[4]),
		.b(b32[4])
	);
	aac aac5(
		.c(c1[5]),
		.o(o32[5]),
		.ic(c1[4]),
		.a(a32[5]),
		.b(b32[5])
	);
	aac aac6(
                .c(c1[6]),
                .o(o32[6]),
                .ic(c1[5]),
                .a(a32[6]),
                .b(b32[6])
        );
	aac aac7(
                .c(c1[7]),
                .o(o32[7]),
                .ic(c1[6]),
                .a(a32[7]),
                .b(b32[7])
        );

endmodule
		
