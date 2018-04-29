module standard_mux_tb ();
	
	reg	[3:0]	in_1;
	reg	[3:0]	in_2;
	reg	in_3;
	
	wire	[3:0]	out_1;

	standard_mux UUT(in_1, in_2, in_3, out_1);
	
	initial begin
	
		$dumpfile("test.vcd");
		$dumpvars(0,standard_mux_tb);
	
		#1	in_1 = 4'b0000;
			in_2 = 4'b0000;
			in_3 = 0;
		
		#1	in_1 = 4'b0001;
			in_2 = 4'b0000;
			in_3 = 0;
	
		#1	in_1 = 4'b0010;
			in_2 = 4'b0000;
			in_3 = 0;
		
		#1	in_1 = 4'b0011;
			in_2 = 4'b0000;
			in_3 = 0;

			
		#1	in_1 = 4'b0000;
			in_2 = 4'b0001;
			in_3 = 1;
		
		#1	in_1 = 4'b0001;
			in_2 = 4'b0001;
			in_3 = 1;
	
		#1	in_1 = 4'b0010;
			in_2 = 4'b0001;
			in_3 = 1;
		
		#1	in_1 = 4'b0011;
			in_2 = 4'b0001;
			in_3 = 1;
	
	
		#1	in_1 = 4'b0000;
			in_2 = 4'b0010;
			in_3 = 1;
		
		#1	in_1 = 4'b0001;
			in_2 = 4'b0010;
			in_3 = 1;
	
		#1	in_1 = 4'b0010;
			in_2 = 4'b0010;
			in_3 = 1;
		
		#1	in_1 = 4'b0011;
			in_2 = 4'b0010;
			in_3 = 1;

			
		#1	in_1 = 4'b0000;
			in_2 = 4'b0011;
			in_3 = 1;
		
		#1	in_1 = 4'b0001;
			in_2 = 4'b0011;
			in_3 = 1;
	
		#1	in_1 = 4'b0010;
			in_2 = 4'b0011;
			in_3 = 1;
		
		#1	in_1 = 4'b0011;
			in_2 = 4'b0011;
			in_3 = 1;
	
	
	
		#1	$finish;
		
		end
		
	endmodule