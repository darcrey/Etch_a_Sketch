	hex_to_led u0 (
		.clk_clk                              (<connected-to-clk_clk>),                              //                            clk.clk
		.reset_reset_n                        (<connected-to-reset_reset_n>),                        //                          reset.reset_n
		.eightbitstosevenseg_0_data_in_export (<connected-to-eightbitstosevenseg_0_data_in_export>), //  eightbitstosevenseg_0_data_in.export
		.eightbitstosevenseg_0_led_pins_led0  (<connected-to-eightbitstosevenseg_0_led_pins_led0>),  // eightbitstosevenseg_0_led_pins.led0
		.eightbitstosevenseg_0_led_pins_led1  (<connected-to-eightbitstosevenseg_0_led_pins_led1>)   //                               .led1
	);

