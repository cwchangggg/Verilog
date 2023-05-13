
`define SDFFILE "./PAT.sdf"

module PAT_tb;

	initial begin
		`ifdef SDF
			$sdf_annotate(`SDFFILE, lab3);
			$fsdbDumpfile("PAT_syn.fsdb");
		`else
			$fsdbDumpfile("PAT.fsdb");
		`endif
		$fsdbDumpvars;
	end

	parameter cycle = 50;
	parameter pattern_max_length = 200;
	
	//Initialize variables.
	reg clk, reset, data;
	wire flag;

	//clk control.
	initial begin
		clk = 1'b0;
	end
	always begin
		#(cycle / 2) clk = ~clk;
	end

	//read pattern from txt file.
	reg pattern[0: pattern_max_length];
	reg  answer[0: pattern_max_length];
	initial begin
		`ifdef testcase0
			$readmemb("testcase0.txt", pattern);
			$readmemb("testcase0_ans.txt", answer);
			$display("testcase0");
		`elsif testcase1
			$readmemb("testcase1.txt", pattern);
			$readmemb("testcase1_ans.txt", answer);
			$display("testcase1");
		`elsif testcase2
			$readmemb("testcase2.txt", pattern);
			$readmemb("testcase2_ans.txt", answer);
			$display("testcase2");
		`endif
	end
	
	PAT lab3(
		.clk(clk),
		.reset(reset),
		.data(data),
		.flag(flag)	
	);
	
	initial begin
		reset = 1'b1;
		
		#(cycle * 1.7)
		
		reset = 1'b0;
	end
	
	integer i, j, k, size;
	initial begin
		#cycle
		i = 0;
		k = 0;
		
		for(j = 0; j < pattern_max_length; j = j + 1)begin
			if(pattern[j] === 1'bx && k == 0)begin
				k = 1;
				size = j;
			end
		end
	end
	always@(negedge clk)begin
		if(!reset)begin
			if(flag === 1'bx || flag === 1'bz)begin
				$display("The value of flag is x or z!");
				$finish;
			end
			if(flag != answer[i])begin
				$display("You got wrong answer!");
				$display("Your flag: %d, Right answer: %d", flag, answer[i]);
				$finish;
			end
			if(i == size)begin
				$display("Pass!");
				$finish;
			end
			
			data <= pattern[i];
			#(cycle * 0.7)
			i = i + 1;
		end
	end
endmodule
