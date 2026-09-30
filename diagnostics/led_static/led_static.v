module led_static(output wire [3:0] led);
    // Active-low LEDs: D7 and D6 on, D8 and D5 off.
    assign led = 4'b0110;
endmodule
