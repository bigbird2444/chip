module d38_tb;
	reg [2:0]in;
	wire [7:0]out;

	initial begin
		in=0;#100;
		in=1;#300;
		in=2;#100;
		in=4;#300;
		in=5;#100;
		in=6;#300;
		in=7;#100;
		$stop;
		#1000;
		$finish;
	end

	d38 d38_test(
		.in(in),
		.out(out)

	);
	initial
	$monitor("%t:%d %d%d%d%d%d%d%d%d",$time,in,out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]);
endmodule
