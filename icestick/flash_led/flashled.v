module blinkled(
input iCE_CLK,
input PIO1_02,
output LED0,
output LED1);

// Internal Variable
reg[31:0]blinkcount;

// Internal signals
wire clk_in;
wire reset_in;

assign clk_in = iCE_CLK;
assign reset_in = PIO1_02;
assign LED0 = blinkcount[22];
assign LED1 = blinkcount[23];

always @(posedge clk_in)
if (reset_in) begin
    blinkcount <= 32'b0;
end
else
begin 
    blinkcount <= blinkcount + 1;
end
endmodule
