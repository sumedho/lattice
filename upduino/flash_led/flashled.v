module blinkled(
input CLK,
output LEDR,
output LEDG);

// Internal Variable
reg[31:0]blinkcount;

// Internal signals
wire clk_in;
wire reset_in;

assign clk_in = CLK;
assign LEDR = blinkcount[22];
assign LEDG = blinkcount[23];

always @(posedge clk_in)
begin 
    blinkcount <= blinkcount + 1;
end
endmodule
