//Gate Level Description
module Fib_G(in, out);

	parameter n = 4;

	input [ n - 1: 0]in;
	output out;

	wire not_a, not_b, not_c, not_d;
	wire and0, and1, and2;

	not not_gate0(not_a, in[3]);
	not not_gate1(not_b, in[2]);
	not not_gate2(not_c, in[1]);
	not not_gate3(not_d, in[0]);

	and and_gate0(and0, not_a, not_b);
	and and_gate1(and1, not_b, not_c, not_d);
	and and_gate2(and2, in[2], not_c, in[0]);

	or or_gate(out, and0, and1, and2);

endmodule

//Dataflow Description
module Fib_D(in, out);


	parameter n = 4;

	input [ n - 1: 0]in;
	output out;

	assign out = (!in[3] & !in[2]) | (!in[2] & !in[1] & !in[0]) | (in[2] & !in[1] &in[0]);

endmodule

//Behavior Description
module Fib_B(in, out);


	parameter n = 4;

	input [ n - 1: 0]in;
	output out;
	reg out;

	always@(*)begin
		case(in)
			0, 1, 2, 3, 5, 8, 13:begin
				out = 1'b1;
			end
			default:begin
				out = 1'b0;
			end
		endcase
	end
endmodule
