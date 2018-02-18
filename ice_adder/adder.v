module add(
output LED0,
output LED1,
output LED2,
input PIO1_02,
input PIO1_03,
input PIO1_04,
input iCE_CLK);

// Alias inputs
    wire inA;
    wire inB;
    wire reset; // reset switch
    wire carry; // Carry from addition
    reg carrylatch; // Remember carry result

    assign inA = PIO1_02;
    assign inB = PIO1_03;
    assign reset=PIO1_04;
    assign LED1 = carry;
    assign LED2 = carrylatch;

always
    begin
        LED0<=inA^inB;
        carry<=inA&inB;
    end

always @(posedge iCE_CLK)
    begin 
        if (reset == 1'b1) carrylatch<=1'b0;
        else begin
        if (carry) carrylatch<=1'b1;
        end
    end
endmodule


