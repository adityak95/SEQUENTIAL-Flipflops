`include"srff.v"
module tb;
reg clk,rst,s,r;
wire q,qbar;

sr dut(.*);
always #5 clk=~clk;
initial begin
clk=0;rst=1;
repeat(2)@(posedge clk);
rst=0;
s=0;r=0;
#15;
s=0;r=1;
#15;
s=1;r=0;
#15;
s=1;r=1;
end
initial #200 $finish();
initial $monitor($time,"\tclk=%b,rst=%b,s=%b,r=%b,q=%b,qbar=%b",clk,rst,s,r,q,qbar);
endmodule
