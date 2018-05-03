module bus_breakout_tb ();
	
	reg	[3:0]	in_1;
	reg	[3:0]	in_2;
	
	wire	[5:0]	out_1;

	bus_breakout UUT(in_1, in_2, out_1);
	
	initial begin
	
		$dumpfile("test.vcd");
		$dumpvars(0,bus_breakout_tb);
	
		#1	in_1 = 4'b0000;
			in_2 = 4'b0000;
		
		#1	in_1 = 4'b0001;
			in_2 = 4'b1000;
	
		#1	in_1 = 4'b0010;
			in_2 = 4'b0100;
		
		#1	in_1 = 4'b0011;
			in_2 = 4'b1100;
			
		#1	in_1 = 4'b0111;
			in_2 = 4'b1110;
		
		#1	in_1 = 4'b1111;
			in_2 = 4'b1111;
	
		#1	$finish;
		
		end
		
	endmodule