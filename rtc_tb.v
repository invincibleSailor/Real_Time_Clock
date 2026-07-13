`timescale 1ns/1ps

module rtc_tb;

reg clk;
reg rst;

wire [4:0] hr;
wire [5:0] min;
wire [5:0] sec;

rtc_top DUT(

.clk(clk),
.rst(rst),
.hour(hr),
.minute(min),
.second(sec)

);

always #5 clk=~clk;

initial

begin

clk=0;
rst=1;

#20;

rst=0;

#5000;

$finish;

end

initial

begin

$monitor("Time = %d:%d:%d",hr,min,sec);

end

endmodule
