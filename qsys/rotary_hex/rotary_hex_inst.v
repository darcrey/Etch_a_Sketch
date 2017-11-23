	rotary_hex u0 (
		.clk_clk                              (<connected-to-clk_clk>),                              //                            clk.clk
		.eightbitstosevenseg_0_led_pins_led0  (<connected-to-eightbitstosevenseg_0_led_pins_led0>),  // eightbitstosevenseg_0_led_pins.led0
		.eightbitstosevenseg_0_led_pins_led1  (<connected-to-eightbitstosevenseg_0_led_pins_led1>),  //                               .led1
		.reset_reset_n                        (<connected-to-reset_reset_n>),                        //                          reset.reset_n
		.rotaryctl2_0_rotary_event_rotary_cw  (<connected-to-rotaryctl2_0_rotary_event_rotary_cw>),  //      rotaryctl2_0_rotary_event.rotary_cw
		.rotaryctl2_0_rotary_event_rotary_ccw (<connected-to-rotaryctl2_0_rotary_event_rotary_ccw>), //                               .rotary_ccw
		.rotaryctl2_0_rotary_in_rotary_in     (<connected-to-rotaryctl2_0_rotary_in_rotary_in>)      //         rotaryctl2_0_rotary_in.rotary_in
	);

