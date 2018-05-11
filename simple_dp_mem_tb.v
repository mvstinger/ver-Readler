module simple_dp_mem_tb ();
	
	reg clock;
	reg	[15:0]	data_input;
	reg	[9:0]	write_addy;
	reg write_enable;
	wire	[15:0]	data_output;
	reg	[9:0]	read_addy;

	simple_dp_mem UUT(	.clk(clock),
						.dat_in(data_input),
						.wr_adr(write_addy),
						.wr_en(write_enable),
						.dat_out(data_output),
						.rd_adr(read_addy)
					);
	
	always begin
		#1	clock = !clock;
		end
	
	initial begin
		clock <= 0;
		
		$dumpfile("test.vcd");
		$dumpvars(0,simple_dp_mem_tb);

		#2	data_input <= 16'hA;
			write_addy <= 10'b1010101010;
			read_addy <= 10'b1010101010;
		
		#1	write_enable <= 1;
		#2	write_enable <= 0;

		#5	$finish;
		
		end



endmodule