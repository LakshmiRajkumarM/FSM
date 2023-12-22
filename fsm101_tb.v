module fsm101_tb;
reg rst,x;
reg clk=0;
wire y;

fsm101 dut(.rst(rst),.clk(clk),.x(x),.y(y));

initial
begin
forever #15 clk=~clk;
end

initial
begin
rst=1'b1;x=1'b0;
#20 rst=1'b0;x=1'b0;
#20 rst=1'b0;x=1'b1;
#20 rst=1'b0;x=1'b1;
#20 rst=1'b0;x=1'b0;
#20 rst=1'b0;x=1'b1;
#20 rst=1'b0;x=1'b0;
#20 rst=1'b0;x=1'b1;
#20 rst=1'b0;x=1'b0;

#1000 $stop;
end
endmodule