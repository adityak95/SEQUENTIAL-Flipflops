`include"Tff.v"
module tb;
reg clk,rst,t;
wire q,qbar;

t dut(.*);
always #5 clk=~clk;
initial begin
clk=0;rst=1;
repeat(2)@(posedge clk);
repeat(5)begin 
rst=0;
t=1;
#15;
t=0;
#15;
end
end
initial #200 $finish();
initial $monitor($time,"\tclk=%b,rst=%b,t=%b,q=%b,qbar=%b",clk,rst,t,q,qbar);
endmodule

