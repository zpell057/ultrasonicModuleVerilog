module BinToBCD8( in, out);
output reg [11:0] out;
input [7:0] in;

integer i;
	always @(*) begin
		out = 12'b0;
		
		for( i=7;i>=0;i=i-1 ) begin
			//Double Dabble
			if( out[11:8] >= 4'd5 ) begin
				out[11:8] = out[11:8] + 4'd3;
				end
			if( out[7:4] >= 4'd5 ) begin
				out[7:4] = out[7:4] + 4'd3;
				end			
			if (out[3:0] >= 4'd5) begin
				out[3:0]  = out[3:0]  + 4'd3;
				end
			out = out << 1;
			out[0] = in[i];
		end
	end
endmodule