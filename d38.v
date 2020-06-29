module d38(in,out);
	input [2:0]in;
	output [7:0]out;
	wire [2:0] nin;
	
	not(nin[0],in[0]);
	not(nin[1],in[1]);
	not(nin[2],in[2]);

	and3 a30(out[0],nin[0],nin[1],nin[2]);
	and3 a31(out[1],in[0],nin[1],nin[2]);
	and3 a32(out[2],nin[0],in[1],nin[2]);
	and3 a33(out[3],in[0],in[1],nin[2]);
	and3 a34(out[4],nin[0],nin[1],in[2]);
	and3 a35(out[5],in[0],nin[1],in[2]);
	and3 a36(out[6],nin[0],in[1],in[2]);
	and3 a37(out[7],in[0],in[1],in[2]);
	
endmodule

