module flipflop(
    input CLK,
    input SWITCH1,
    output LED1);

    reg r_switch = 1'b0;
    reg r_led = 1'b0;

    assign LED1 = r_led;

    always @(posedge CLK)
    begin 
        r_switch <= SWITCH1;

        if (SWITCH1 == 1'b0 && r_switch == 1'b1)
        begin
            r_led <= ~r_led;
        end
    end
endmodule
