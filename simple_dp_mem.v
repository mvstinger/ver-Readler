module simple_dp_mem(
	input wire clk,
	input wire reset,
	input wire [15:0] dat_in,
	input wire [9:0] wr_adr,
	input wire wr_en,
	output reg [15:0] dat_out,
	input wire [9:0] rd_adr
	);
	
	//	Set up memory
	reg [15:0]	memory	[0:1023];
	
	always @( posedge clk )
		begin
			if (wr_en)
				memory[wr_adr] <= dat_in;
			dat_out <= memory[rd_adr];
		end

endmodule