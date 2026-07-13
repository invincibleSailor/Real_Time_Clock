module hour_counter(

input clk,
input rst,
input enable,

output reg [4:0] hr

);

always @(posedge clk or posedge rst)
begin

if(rst)
    hr<=0;

else if(enable)

begin

if(hr==23)
    hr<=0;
else
    hr<=hr+1;

end

end

endmodule
