
module PAT(clk, reset, data, flag);

	input clk, reset, data;
	output wire flag;

    reg [4 - 1: 0] state, next;
    parameter s0=4'b0000, s1=4'b0001, s2=4'b0010, s3=4'b0011, s4=4'b0100, s5=4'b0101, s6=4'b0110, s7=4'b0111, s8=4'b1000, s9=4'b1001;

    //This always block will be triggered at the posedge of clock.
    always@(posedge clk)begin
        if(reset)begin
            state <= s8;
        end
        else begin
            state <= next;
        end
    end

    assign flag = (state == s7);

    always@(data, state)begin
        case(state)
            s0: if(data==1) next = s1;
                else next = s0;
            s1: if(data==0) next = s2;
                else next = s8;
            s2: if(data==1) next = s3;
                else next = s0;
            s3: if(data==0) next = s4;
                else next = s9;
            s4: if(data==1) next = s5;
                else next = s0;
            s5: if(data==1) next = s6;
                else next = s2;
            s6: if(data==1) next = s7;
                else next = s4;
            s7: if(data==1) next = s8;
                else next = s0;
            s8: if(data==0) next = s0;
                else next = s8;

            s9: if(data==0) next = s4;
                else next = s8;
            default: next = s8;
        endcase
    end

endmodule
