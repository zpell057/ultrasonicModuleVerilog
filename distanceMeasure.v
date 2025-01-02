module distanceMeasure(clock, rst, trig, echo, dist);
input rst, echo, clock;
output dist;
reg [7:0] dist;
output trig;
reg trig;
reg [18:0] startTime;
reg [18:0] counter;


always @ (posedge clock)
begin
	if(rst)
		begin
			counter <= 18'd0;
		end
	else
	begin
		if(counter >= 18'd500)
			begin
				trig <= 1'b0;
			end
		else
			begin
				trig <= 1'b1;
			end
		counter <= counter +1;
	end
end

always @ (posedge echo)
begin
	startTime <= counter;
end
always @ (negedge echo)
begin
	dist <= (counter - startTime) >> 11;
end

endmodule