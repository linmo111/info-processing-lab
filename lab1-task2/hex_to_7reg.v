module hex_to_7reg (out,in);

	output [20:0] out;
	input [9:0] in;
	
	reg [6:0] out0;
	reg [6:0] out1;
	reg [6:0] out2;
	//reg [20:0] out;
	always @ (*)
		case (in[3:0])
			4'h0: out0 = 7'b1000000;
			4'h1: out0 = 7'b1111001;
			4'h2: out0 =	7'b0100100;
			4'h3: out0 =	7'b0110000;
			4'h4: out0 = 7'b0011001;
			4'h5: out0 = 7'b0010010;
			4'h6: out0 = 7'b0000010;
			4'h7: out0 = 7'b1111000;
			4'h8: out0 = 7'b0000000;
			4'h9: out0 = 7'b0011000;
			4'ha: out0 = 7'b0001000;
			4'hb: out0 = 7'b0000011;
			4'hc: out0 = 7'b1000110;
			4'hd: out0 = 7'b0100001;
			4'he: out0 = 7'b0000110;
			4'hf: out0 = 7'b0001110;
		endcase
	always @ (*)
		case (in[7:4])
			4'h0: out1 = 7'b1000000;
			4'h1: out1 = 7'b1111001;
			4'h2: out1 =	7'b0100100;
			4'h3: out1 =	7'b0110000;
			4'h4: out1 = 7'b0011001;
			4'h5: out1 = 7'b0010010;
			4'h6: out1 = 7'b0000010;
			4'h7: out1 = 7'b1111000;
			4'h8: out1 = 7'b0000000;
			4'h9: out1 = 7'b0011000;
			4'ha: out1 = 7'b0001000;
			4'hb: out1 = 7'b0000011;
			4'hc: out1 = 7'b1000110;
			4'hd: out1 = 7'b0100001;
			4'he: out1 = 7'b0000110;
			4'hf: out1 = 7'b0001110;
		endcase
	always @ (*)
		case (in[9:8])
			2'h0: out2 = 7'b1000000;
			2'h1: out2 = 7'b1111001;
			2'h2: out2 =	7'b0100100;
			2'h3: out2 =	7'b0110000;
			
		endcase
	assign out={out2,out1,out0};
endmodule
			
			