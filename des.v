`timescale 1ns / 1ps


module des

#(parameter ADDR_WIDTH=16,DATA_WIDTH=32)

(input clk,input we,input [ADDR_WIDTH-1:0] addr,
input [DATA_WIDTH-1:0] din,
output wire [DATA_WIDTH-1:0] dout
    );
reg [DATA_WIDTH-1:0] mem[2**ADDR_WIDTH-1:0];
always @ (posedge clk) begin
if(we==1)
mem[addr]<=din;
end
assign dout=mem[addr];
endmodule
