
module hex_to_led (
	clk_clk,
	reset_reset_n,
	eightbitstosevenseg_0_data_in_export,
	eightbitstosevenseg_0_led_pins_led0,
	eightbitstosevenseg_0_led_pins_led1);	

	input		clk_clk;
	input		reset_reset_n;
	input	[7:0]	eightbitstosevenseg_0_data_in_export;
	output	[6:0]	eightbitstosevenseg_0_led_pins_led0;
	output	[6:0]	eightbitstosevenseg_0_led_pins_led1;
endmodule
