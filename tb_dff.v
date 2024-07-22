`include"dff.v"
module tb;
reg clk,rst,d;
wire q,qbar;

d dut(.*);
always #5 clk=~clk;
initial begin
clk=0;rst=1;
repeat(2)@(posedge clk);
repeat(5)begin 
rst=0;
d=1;
#15;
d=0;
#15;
end
end
initial #200 $finish();
initial $monitor($time,"\tclk=%b,rst=%b,d=%b,q=%b,qbar=%b",clk,rst,d,q,qbar);
endmodule

