module fsm101(rst,clk,x,y);
input rst,clk,x;
output reg y;
reg [2:0]state;

parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

always @(posedge clk)begin
if(rst)
state<=s0;
else
begin
case(state)
s0:if(x==1)state<=s1;else state<=s0;
s1:if(x==1)state<=s1;else state<=s2;
s2:if(x==1)state<=s3;else state<=s0;
s3:if(x==1)state<=s1;else state<=s2;
endcase
end
end
always @(state)begin
case(state)

s0,s1,s2: y=0;
s3: y=1;
endcase
end
endmodule



