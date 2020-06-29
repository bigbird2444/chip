module add32_tb;
	reg [7:0]a;
	reg [7:0]b;
	
	wire c;
	wire [7:0]o;
	add32 add32_test(
		.c(c),
		.o32(o),
		.a32(a),
		.b32(b)
	);
	initial begin
		a=23;
		b=41;#100;
		a=12;
		b=35;#100;
		$stop;
		#1000;
		$finish;
	end
	initial
	$monitor("%t:%d %d %d",$time,a,b,o);
endmodule

