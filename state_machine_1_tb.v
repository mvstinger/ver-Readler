module state_machine_1_tb ();

	reg clock;
	reg reset;
	reg start;
	reg kill;
	wire done;
	
	state_machine_1	UUT(	.clk(clock),
							.reset(reset),
							.go(start),
							.kill(kill),
							.done(done)
						);
	
	//	Set up clock
	initial clock = 1'b0;
	
	always #( 1 )
		#1 clock <= ~clock;

	//	Set up inputs
	initial
		begin
		
			$dumpfile("test.vcd");
			$dumpvars(0,state_machine_1_tb);
		
			clock <= 1'b0;
			start <= 1'b0;
			kill <= 1'b0;

			#3	reset <= 1'b1;
			#5	reset <= 1'b0;
			
			#3	start <= 1'b1;
			#5	start <= 1'b0;
			
			#115	start <= 1'b1;
			#5		start <= 1'b0;
			
			#100	kill <= 1'b1;
			#5		kill <= 1'b0;
			
			$finish;
		end

endmodule