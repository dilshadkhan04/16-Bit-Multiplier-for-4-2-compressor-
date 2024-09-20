//design_1 compressor with approximate compressor 1 from my research paper

//MAIN CODE
module accurate_mul2(a,b,s);
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
cp c1 (c[5],d[4],e[3],f[2],t[2],t[3],t[4],t[5]);
cp c2 (c[6],d[5],e[4],f[3],t[5],t[6],t[7],t[8]);
ha h2 (g[2],h[1],t[9],t[10]);
cp c3 (c[7],d[6],e[5],f[4],t[8],t[11],t[12],t[13]);
cp c4 (g[3],h[2],i[1],j[0],t[10],t[14],t[15],t[16]);
cp c5 (d[7],e[6],f[5],g[4],t[13],t[17],t[18],t[19]);
cp c6 (h[3],i[2],j[1],gnd,t[16],t[20],t[21],t[22]);
cp c7 (e[7],f[6],g[5],h[4],t[19],t[23],t[24],t[25]);
fa f1 (i[3],j[2],t[22],t[26],t[27]);
cp c8 (f[7],g[6],h[5],i[4],t[25],t[28],t[29],t[30]);
fa f2 (g[7],h[6],t[30],t[31],t[32]);

//Stage 2
ha h3  (c[2],d[1],t[34],t[35]);
cp c9  (c[3],d[2],e[1],f[0],t[35],t[36],t[37],t[38]);
cp c10 (t[1],e[2],f[1],g[0],t[38],t[39],t[40],t[41]);
cp c11 (t[3],g[1],h[0],gnd,t[41],t[42],t[43],t[44]);
cp c12 (t[4],t[6],i[0],t[9],t[44],t[45],t[46],t[47]);
cp c13 (t[11],t[7],t[14],gnd,t[47],t[48],t[49],t[50]);
cp c14 (t[12],t[15],t[17],t[20],t[50],t[51],t[52],t[53]);
cp c15 (t[18],t[21],t[23],t[26],t[53],t[54],t[55],t[56]);
cp c16 (t[24],j[3],t[27],t[28],t[56],t[57],t[58],t[59]);
cp c17 (t[29],i[5],j[4],t[31],t[59],t[60],t[61],t[62]);
cp c18 (t[32],h[7],i[6],j[5],t[62],t[63],t[64],t[65]);
fa f3 (i[7],j[6],t[65],t[66],t[67]);

//Stage 3  
ha h4 (c[1],d[0],s[1],t[68]);
fa f4 (t[34],e[0],t[68],s[2],t[69]);
ha h5 (t[36],t[69],s[3],t[70]);
fa f5 (t[37],t[39],t[70],s[4],t[71]);
fa f6 (t[40],t[42],t[71],s[5],t[72]);
fa f7 (t[43],t[45],t[72],s[6],t[73]);
fa f8 (t[46],t[48],t[73],s[7],t[74]);
fa f9 (t[49],t[51],t[74],s[8],t[75]);
fa f10 (t[52],t[54],t[75],s[9],t[76]);
fa f11 (t[55],t[57],t[76],s[10],t[77]);
fa f12 (t[58],t[60],t[77],s[11],t[78]);
fa f13 (t[61],t[63],t[78],s[12],t[79]);
fa f14 (t[64],t[66],t[79],s[13],t[80]);
fa f15 (t[67],j[7],t[80],s[14],s[15]);
endmodule













//code for compressor

module cp(
    input x1,
    input x2,
    input x3,
    input x4,
    input cin,
    output sum,
    output carry,
    output cout
    );
    
    assign carry = cin;
    assign sum = ~cin&(~(x1^x2)|~(x3^x4));
    assign cout = ~(~(x1|x2)|~(x3|x4));

endmodule






//HALF_ADDER
module ha(a,b,s,c);
input a,b;
output s,c;
assign s=a^b;
assign c=a&b;
endmodule




//FULL_ADDER
module fa(a,b,c,s,cout);
input a,b,c;
output s,cout;

assign s = a^b^c;
assign cout=((a&b)|(a&c)|(b&c));
endmodule






//TESTBENCH
module tb();
	
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
	accurate_mul2 uut (
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
		for (i = 1; i < 256; i = i + 1) begin
			a = i;
			for (j = 1; j < 256; j = j + 1) begin
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
