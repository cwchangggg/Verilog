
module CLA_4bit(A, B, Cin, S, Cout);
	parameter n = 4;
	input [n - 1: 0] A, B;
	input Cin;

	output [n - 1: 0] S;
	output Cout;

	wire [n - 1: 0] P;
    wire [n - 1: 0] G;
    wire [n - 2: 0] C;

    assign P = A ^ B;
    assign G = A & B;
    assign C[0] = G[0] | (P[0] & Cin);
    assign C[1] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    assign C[2] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);
    assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & Cin);
    assign S = {C, Cin} ^ P;

endmodule

module Adder_16bit(A, B, Cin, S, Cout);

	parameter n = 16;
	parameter m = 4;

	input [n - 1: 0] A, B;
	input Cin;

	output [n - 1: 0] S;
	output Cout;

	wire [m - 2: 0] C;

	CLA_4bit u_CLA0
	(
	.A(A[3:0]),
	.B(B[3:0]),
	.Cin(Cin),
	.S(S[3:0]),
	.Cout(C[0])
	);

	CLA_4bit u_CLA1
	(
	.A(A[7:4]),
	.B(B[7:4]),
	.Cin(C[0]),
	.S(S[7:4]),
	.Cout(C[1])
	);

    CLA_4bit u_CLA2
	(
	.A(A[11:8]),
	.B(B[11:8]),
	.Cin(C[1]),
	.S(S[11:8]),
	.Cout(C[2])
	);

	CLA_4bit u_CLA3
	(
	.A(A[15:12]),
	.B(B[15:12]),
	.Cin(C[2]),
	.S(S[15:12]),
	.Cout(Cout)
	);

endmodule

module ALU(A, B, Cin, Mode, Y, Cout, Overflow);

	parameter n = 16;
	parameter m = 4;

	input [n - 1: 0] A, B;
	input Cin;
	input [m - 1: 0] Mode;

	output reg [n - 1: 0] Y;
	output reg Cout;
	output reg Overflow;

	wire [n - 1: 0] Adder_B;
	wire Adder_Cin;
	wire [n - 1: 0] Adder_S;
	wire Adder_Cout;
	wire Adder_S_Sign;

    assign Adder_B = ( (Mode==4'd5) || (Mode==4'd13) )? ~B: B;
    assign Adder_Cin = ( (Mode==4'd5) || (Mode==4'd13) )? 1'b1: Cin;
    integer i;
    assign Adder_S_Sign = Adder_S[n-1] ^ Overflow;

	always@(*)begin
	    Cout = Adder_Cout;
	    Overflow = ( A[n-1] & Adder_B[n-1] & ~Adder_S[n-1] ) | ( ~A[n-1] & ~Adder_B[n-1] & Adder_S[n-1] );
		case(Mode)
			//Logical shift A left by 1-bit.
			4'd0: begin
			    Y = A << 1'b1;
			end
			//Arithmetic shift A left by 1-bit.
			4'd1: begin
			    Y = A <<< 1'b1;
			end
			//Logical shift A right by 1-bit.
			4'd2: begin
			    Y = A >> 1'b1;
			end
			//Arithmetic shift A right by 1-bit.
			4'd3: begin
			    Y = {A[n-1], A[n-1: 1]};
			end
			//Add two numbers with cla.
			4'd4: begin
			    Y = Adder_S;
			end
			//Subtract B from A.
			4'd5: begin
			    Y = Adder_S;
			end
			//and
			4'd6: begin
			    Y = A & B;
			end
			//or
			4'd7: begin
			    Y = A | B;
			end
			//not A
			4'd8: begin
			    Y = ~A;
			end
			//xor
			4'd9: begin
			    Y = A ^ B;
			end
			//xnor
			4'd10: begin
			    Y = ~(A ^ B);
			end
			//nor
			4'd11: begin
			    Y = ~(A | B);
			end
			//binary to one-hot
			4'd12: begin
			    Y = 16'd1 << A[3:0];
			end
			//Comparator
			4'd13: begin
			    Y = {15'b0, Adder_S_Sign};
			end
			//B
			4'd14: begin
			    Y = B;
			end
			//find first one from left
			4'd15: begin
			    Y = {n{1'b0}};
			    for(i=0; i<n; i=i+1)begin
			        if(A[i]==1'b1)
			        Y = i[n - 1:0];
			    end
			end
			default: begin
                Y = ~A;

			end
		endcase
	end

	Adder_16bit u_Adder
	(
	.A(A),
	.B(Adder_B),
	.Cin(Adder_Cin),
	.S(Adder_S),
	.Cout(Adder_Cout)
	);


endmodule


















