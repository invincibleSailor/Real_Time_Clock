module clock_divider
#(
parameter CLK_FREQ = 50000000
)
(
input clk,
input rst,
output reg clk_1hz
);

integer count;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        count <= 0;
        clk_1hz <= 0;
    end
    else
    begin
        if(count == CLK_FREQ/2-1)
        begin
            clk_1hz <= ~clk_1hz;
            count <= 0;
        end
        else
            count <= count + 1;
    end
end

endmodule
