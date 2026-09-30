`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/09/25 12:59:52
// Design Name: 
// Module Name: LED_twinkle
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LED_twinkle(
        output[3:0]led
    );
    
parameter times = 28'b0010_1111_1010_1111_0000_1000_0000;
wire clk;
wire [3:0] led_n; 

ipcore u_ipcore(
    .FCLK_CLK0_0(clk)
);

led #(.times(times)) u_led
(
    .clk    (clk),
    .rst_n  (1'b1),
    .led    (led_n) 
);

assign led = ~led_n;
endmodule