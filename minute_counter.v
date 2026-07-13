module minute_counter(

input clk,
input rst,
input enable,

output reg [5:0] min,
output reg carry

);

always @(posedge clk or posedge rst)
begin

if(rst)
begin
    min<=0;
    carry<=0;
end

else if(enable)

begin

if(min==59)

begin
    min<=0;
    carry<=1;
end

else

begin
    min<=min+1;
    carry<=0;
end

end

end

endmodule
