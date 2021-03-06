// blinkingLED_VisualTest.v
module blinkingLED_VisualTest
(   
    input wire CLOCK_50, reset,
    input wire [7:0] SW,
    output wire[1:0] LEDR
);

nios_blinkingLED u0 (
      .clk_clk                          (CLOCK_50), // clk.clk
      .reset_reset_n                    (reset), // reset.reset_n
      .switch_external_connection_export (SW),    // switch_external_connection_export.export
      .led_external_connection_export   (LEDR)  // led_external_connection.export
 );
 
endmodule