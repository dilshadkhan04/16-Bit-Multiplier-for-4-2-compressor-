//This is design of 8 bit approximate multiplier using design 3 (Paper cited below)
module multiplier(a,b,s);
supply0 gnd;
input [7:0]a;
input [7:0]b;
wire [7:0]c;
wire [7:0]d;
wire [7:0]e;
wire [7:0]f;
wire [7:0]g;
wire [7:0]h;
wire [7:0]i;
wire [7:0]j;



wire [90:0]t;
wire [21:0]u;
wire [13:0]v;
wire [9:0]z;
wire [4:0]z1;
wire c00,c01,d00,d01,d02,d03,e00,e01,e02,e03,e04,e05,e06,e07;

output [15:0]s;
assign c[0]=a[0]& b[0];
assign c[1]=a[1]&b[0];
assign c[2]=a[2]&b[0];
assign c[3]=a[3]&b[0];
assign c[4]=a[4]&b[0];
assign c[5]=a[5]&b[0];
assign c[6]=a[6]&b[0];
assign c[7]=a[7]&b[0];

assign d[0]=a[0]&b[1];
assign d[1]=a[1]&b[1];
assign d[2]=a[2]&b[1];
assign d[3]=a[3]&b[1];
assign d[4]=a[4]&b[1];
assign d[5]=a[5]&b[1];
assign d[6]=a[6]&b[1];
assign d[7]=a[7]&b[1];

assign e[0]=a[0]&b[2];
assign e[1]=a[1]&b[2];
assign e[2]=a[2]&b[2];
assign e[3]=a[3]&b[2];
assign e[4]=a[4]&b[2];
assign e[5]=a[5]&b[2];
assign e[6]=a[6]&b[2];
assign e[7]=a[7]&b[2];

assign f[0]=a[0]&b[3];
assign f[1]=a[1]&b[3];
assign f[2]=a[2]&b[3];
assign f[3]=a[3]&b[3];
assign f[4]=a[4]&b[3];
assign f[5]=a[5]&b[3];
assign f[6]=a[6]&b[3];
assign f[7]=a[7]&b[3];

assign g[0]=a[0]&b[4];
assign g[1]=a[1]&b[4];
assign g[2]=a[2]&b[4];
assign g[3]=a[3]&b[4];
assign g[4]=a[4]&b[4];
assign g[5]=a[5]&b[4];
assign g[6]=a[6]&b[4];
assign g[7]=a[7]&b[4];

assign h[0]=a[0]&b[5];
assign h[1]=a[1]&b[5];
assign h[2]=a[2]&b[5];
assign h[3]=a[3]&b[5];
assign h[4]=a[4]&b[5];
assign h[5]=a[5]&b[5];
assign h[6]=a[6]&b[5];
assign h[7]=a[7]&b[5];

assign i[0]=a[0]&b[6];
assign i[1]=a[1]&b[6];
assign i[2]=a[2]&b[6];
assign i[3]=a[3]&b[6];
assign i[4]=a[4]&b[6];
assign i[5]=a[5]&b[6];
assign i[6]=a[6]&b[6];
assign i[7]=a[7]&b[6];

assign j[0]=a[0]&b[7];
assign j[1]=a[1]&b[7];
assign j[2]=a[2]&b[7];
assign j[3]=a[3]&b[7];
assign j[4]=a[4]&b[7];
assign j[5]=a[5]&b[7];
assign j[6]=a[6]&b[7];
assign j[7]=a[7]&b[7];

//Stage1
assign s[0] = c[0];
ha h1 (c[4],d[3],t[1],t[2]);
cp1 c1 (c[5],d[4],e[3],f[2],t[3],t[4]);
cp1 c2 (c[6],d[5],e[4],f[3],t[5],t[6]);
ha h2 (g[2],h[1],t[7],t[8]);
cp1 c3 (c[7],d[6],e[5],f[4],t[9],t[10]);
cp1 c4 (g[3],h[2],i[1],j[0],t[11],t[12]);
cp2 c5 (d[7],e[6],f[5],g[4],gnd,t[13],t[14],t[25]);
fa f1 (h[3],i[2],j[1],t[15],t[16]);
cp2 c7 (e[7],f[6],g[5],h[4],t[24],t[17],t[18],t[26]);
ha h3 (i[3],j[2],t[19],t[20]);
cp2 c8 (f[7],g[6],h[5],i[4],t[25],t[21],t[22],t[27]);
fa f2 (g[7],h[6],t[26],t[23],t[24]);

//Stage 2
ha h4  (c[2],d[1],t[28],t[29]);
cp1 c9  (c[3],d[2],e[1],f[0],t[30],t[31]);
cp1 c10 (t[1],e[2],f[1],g[0],t[32],t[33]);
cp1 c11 (t[2],t[3],g[1],h[0],t[34],t[35]);
cp1 c12 (t[4],t[5],i[0],t[7],t[36],t[37]);
cp1 c13 (t[6],t[8],t[9],t[11],t[38],t[39]);
cp2 c14 (t[10],t[12],t[13],t[15],gnd,t[40],t[41],t[42]);
cp2 c15 (t[14],t[16],t[17],t[19],t[42],t[43],t[44],t[45]);
cp2 c16 (t[18],j[3],t[20],t[21],t[45],t[46],t[47],t[48]);
cp2 c17 (t[22],i[5],j[4],t[23],t[48],t[49],t[50],t[51]);
cp2 c18 (t[24],h[7],i[6],j[5],t[51],t[52],t[53],t[54]);
fa f3 (i[7],j[6],t[54],t[55],t[56]);

//Stage 3  
ha h5 (c[1],d[0],s[1],t[57]);
fa f4 (t[28],e[0],t[57],s[2],t[58]);
fa f5 (t[29],t[30],t[58],s[3],t[59]);
fa f6 (t[31],t[32],t[59],s[4],t[60]);
fa f7 (t[33],t[34],t[60],s[5],t[61]);
fa f8 (t[35],t[36],t[61],s[6],t[62]);
fa f9 (t[37],t[38],t[62],s[7],t[63]);
fa f10 (t[39],t[40],t[63],s[8],t[64]);
fa f11 (t[41],t[43],t[64],s[9],t[65]);
fa f12 (t[44],t[46],t[65],s[10],t[66]);
fa f13 (t[47],t[49],t[66],s[11],t[67]);
fa f14 (t[50],t[52],t[67],s[12],t[68]);
fa f15 (t[53],t[55],t[68],s[13],t[69]);
fa f16 (t[56],j[7],t[69],s[14],s[15]);
endmodule
















module cp1(x1,x2,x3,x4,s,c);
input x1,x2,x3,x4;
output s,c;
wire w1,w2,w3,w4,w5,w6,w7;
nand n1(w1,x1,x2);
nand n2(w2,x3,x4);
nand n3(c,w1,w2);
nand n4(w3,~w1,~w2);
xnor n5(w5,x1,x2);
xnor n6(w6,x3,x4);
nand n7(s,w3,w5,w6);

endmodule



//Full adder
module fa(a,b,c,s,cout);
input a,b,c;
output s,cout;

assign s = a^b^c;
assign cout=((a&b)|(a&c)|(b&c));
endmodule

//Half adder
module ha(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule


//Testbench
module test_bench();
	
	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [15:0] s;
	reg [15:0] check;
	integer i, j, dis, dis_max, dis1;
	real NED, NED1;
	integer num_correct;
	integer num_wrong;
	
	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.a(a), 
		.b(b), 
		.s(s)
	);

	initial begin
		// Initialize Inputs
		num_correct = 0;
		num_wrong = 0;
		dis1 = 0;
		dis_max = 0;

		// Loop through all possible values of a and b (0 to 255)
		for (i = 0; i < 256; i = i + 1) begin
			a = i;
			for (j = 0; j < 256; j = j + 1) begin
				b = j;
				check = a * b;
				#1;  // Wait for the result
				dis = s - check;

				if (dis < 0)
					dis = -dis;

				if (dis > dis_max)
					dis_max = dis;
				
				dis1 = dis1 + dis;
				
				if (s == check)
					num_correct = num_correct + 1;
				else
					num_wrong = num_wrong + 1;

				$display($time, " %d * %d = %d(%d) %d", a, b, s, check, dis);
			end
		end
		
		// Calculate NED and NED1
		NED1 = dis1 / 65536.0;
		NED = NED1 / dis_max;
		$display("Answer :  %f", NED);
	end
	 
endmodule



//X. Yi, H. Pei, Z. Zhang, H. Zhou and Y. He, "Design of an Energy-Efficient Approximate Compressor for Error-Resilient Multiplications," 2019 IEEE International Symposium on Circuits and Systems (ISCAS), Sapporo, Japan, 2019, pp. 1-5, doi: 10.1109/ISCAS.2019.8702199.
