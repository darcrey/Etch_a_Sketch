
module hex_led (
	clk_clk,
	eightbitstosevenseg_0_data_in_export,
	eightbitstosevenseg_0_led_pins_led0,
	eightbitstosevenseg_0_led_pins_led1,
	eightbitstosevenseg_1_data_in_export,
	eightbitstosevenseg_1_led_pins_led0,
	eightbitstosevenseg_1_led_pins_led1,
	eightbitstosevenseg_2_data_in_export,
	reset_reset_n,
	eightbitstosevenseg_2_led_pins_led0,
	eightbitstosevenseg_2_led_pins_led1);	

	input		clk_clk;
	input	[7:0]	eightbitstosevenseg_0_data_in_export;
	output	[6:0]	eightbitstosevenseg_0_led_pins_led0;
	output	[6:0]	eightbitstosevenseg_0_led_pins_led1;
	input	[7:0]	eightbitstosevenseg_1_data_in_export;
	output	[6:0]	eightbitstosevenseg_1_led_pins_led0;
	output	[6:0]	eightbitstosevenseg_1_led_pins_led1;
	input	[7:0]	eightbitstosevenseg_2_data_in_export;
	input		reset_reset_n;
	output	[6:0]	eightbitstosevenseg_2_led_pins_led0;
	output	[6:0]	eightbitstosevenseg_2_led_pins_led1;
endmodule
