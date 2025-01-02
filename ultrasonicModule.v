module ultrasonicModule (clock, trigOut, echoIn, distOut);
input echoIn, clock;
output trigOut;
output distOut;
wire [11:0] distOut;
wire [7:0] hexDist;



distanceMeasure meas (.clock(clock),.rst(1'b0),.trig(trigOut),.echo(echoIn),.dist(hexDist));
BinToBCD8 conv (.in(hexDist),.out(distOut));

endmodule