`timescale 1ns / 1ps
`define SDFFILE "./ALU.sdf"

module tb();
	parameter n = 16;
	parameter m = 4;
	parameter delay = 4;

	reg [n - 1: 0] A, B;
	reg Cin;
	reg [m - 1: 0] Mode;

	wire [n - 1: 0] Y;
	wire Cout, Overflow;

	reg [n - 1: 0] Y_correct;
	reg Cout_correct, Overflow_correct;

	ALU alu(A, B, Cin, Mode, Y, Cout, Overflow);



	initial begin
		`ifdef SDF
			$sdf_annotate(`SDFFILE, alu);
		`endif
	end



	integer file, r, i;
	reg [n - 1: 0] score;
	wire special_Mode;
	assign special_Mode = Mode == 4'b0100 || Mode == 4'b0101;
	initial begin
		file = $fopen("./data.txt", "r");
		score = 16'd0;
		i = 0;
		while(!$feof(file))begin
			#delay;
			r = $fscanf(file, "%b %b %b %b %b %b %b", A, B, Cin, Mode, Y_correct, Cout_correct, Overflow_correct);
			#delay;
/*
			$display("tb.alu.Cout=%b", tb.alu.Cout);
            $display("tb.alu.Overflow=%b", tb.alu.Overflow);
            $display("tb.alu.A=%b", tb.alu.A);
            $display("tb.alu.B=%b", tb.alu.B);
            $display("tb.alu.Cin=%b", tb.alu.Cin);
    $display("tb.alu.Mode=%b", tb.alu.Mode);
$display("tb.alu.Adder_B=%b", tb.alu.Adder_B);
$display("tb.alu.Adder_Cin=%b", tb.alu.Adder_Cin);
$display("tb.alu.Adder_S=%b", tb.alu.Adder_S);
$display("tb.alu.Adder_Cout=%b", tb.alu.Adder_Cout);
*/
			if(Y === Y_correct && (!special_Mode || (special_Mode && Cout == Cout_correct && Overflow == Overflow_correct)))begin
				score = score + 16'd1;
			end
			else begin
				$display("Testcase %2d is wrong!", i);
				$display("A: (%b, %d), B: (%b, %d), Cin: %b, Mode: %d, ", A, $signed(A), B, $signed(B), Cin, Mode);
				$display("Your output,    Y: (%b, %d), Cout: %b, Overflow: %b", Y, $signed(Y), special_Mode ? Cout : 1'bx, special_Mode ? Overflow : 1'bx);
				$display("Correct output, Y: (%b, %d), Cout: %b, Overflow: %b", Y_correct, $signed(Y_correct), special_Mode ? Cout_correct : 1'bx, special_Mode ? Overflow_correct : 1'bx);
				$display("-----------------------------------");
			end

			i = i + 1;
		end
		#delay;
		$display("Total score: %d / %d", score, 64);
		if(score == 64)begin
			$display("Congratulations!");
		end
	end
endmodule
