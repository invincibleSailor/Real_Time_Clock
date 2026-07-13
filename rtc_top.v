module rtc_top(

input clk,
input rst,

output [4:0] hour,
output [5:0] minute,
output [5:0] second

);

wire clk1hz;

wire sec_carry;
wire min_carry;

clock_divider divider(
.clk(clk),
.rst(rst),
.clk_1hz(clk1hz)
);

second_counter sec(
.clk(clk1hz),
.rst(rst),
.sec(second),
.carry(sec_carry)
);

minute_counter min(
.clk(clk1hz),
.rst(rst),
.enable(sec_carry),
.min(minute),
.carry(min_carry)
);

hour_counter hr(

.clk(clk1hz),
.rst(rst),
.enable(min_carry),
.hr(hour)

);

endmodule
