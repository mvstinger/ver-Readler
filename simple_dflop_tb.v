module simple_dflop_tb ();
	
	reg in_1;

	wire out_1;
	wire out_2;

	reg clk = 1;
	
	simple_dflop UUT(clk, in_1, out_1);
	
	initial begin
	
		$dumpfile("test.vcd");
		$dumpvars(0,simple_dflop_tb);
	
		always @()
			begin
				#1 clk = ~clk;
			end
		
		
		#50	$finish;
		
		end
		
	endmodule