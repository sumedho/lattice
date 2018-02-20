module and_gate(
    input SWITCH1,
    input SWITCH2,
    output LED1);

assign LED1 = SWITCH1 & SWITCH2;

endmodule
