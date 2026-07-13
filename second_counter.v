module second_counter(

input clk,
input rst,

output reg [5:0] sec,
output reg carry

);

always @(posedge clk or posedge rst)
begin

if(rst)
begin
    sec<=0;
    carry<=0;
end

else

begin

if(sec==59)
begin
    sec<=0;
    carry<=1;
end

else

begin
    sec<=sec+1;
    carry<=0;
end

end

end

endmodule
