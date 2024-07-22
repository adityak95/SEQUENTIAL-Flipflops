`include"jkff.v"
module tb;
reg clk,rst,k,j;
wire q,qbar;

jk dut(.*);
always #5 clk=~clk;
initial begin
clk=0;rst=1;
repeat(2)@(posedge clk);
rst=0;
j=0;k=0;
#15;
j=0;k=1;
#15;
j=1;k=0;
#15;
j=1;k=1;
end
initial #200 $finish();
initial $monitor($time,"\tclk=%b,rst=%b,j=%b,k=%b,q=%b,qbar=%b",clk,rst,j,k,q,qbar);
endmodule

