module simple_in_n_out_tb ();
	
	reg in_1;
	reg in_2;
	reg in_3;
	
	wire out_1;
	wire out_2;

	intermed_wire UUT(in_1, in_2, in_3, out_1, out_2);
	
	initial begin
	
		$dumpfile("test.vcd");
		$dumpvars(0,intermed_wire_tb);
	
		#1	in_1 = 0;
			in_2 = 0;
			in_3 = 0;
		
		#1	in_1 = 1;
			in_2 = 0;
			in_3 = 0;
	
		#1	in_1 = 0;
			in_2 = 1;
			in_3 = 0;
	
		#1	in_1 = 1;
			in_2 = 1;
			in_3 = 0;
		
		#1	in_1 = 0;
			in_2 = 0;
			in_3 = 1;
		
		#1	in_1 = 1;
			in_2 = 0;
			in_3 = 1;
	
		#1	in_1 = 0;
			in_2 = 1;
			in_3 = 1;
	
		#1	in_1 = 1;
			in_2 = 1;
			in_3 = 1;

		#1	$finish;
		
		end
		
	endmodule