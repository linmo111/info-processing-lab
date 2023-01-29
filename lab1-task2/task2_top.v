module task2_top (
	SW, //input switches
	HEX0,  //hex output
	HEX1,
	HEX2
);

input [9:0] SW;
output [6:0] HEX0;
output [6:0] HEX1;
output [6:0] HEX2;

reg [20:0] temp;

hex_to_7reg SEG0 (temp, SW[9:0]);

assign HEX0=temp[6:0];

assign HEX1=temp[13:7];

assign HEX2=temp[20:14];



endmodule

