	clarvi_soc u0 (
		.clk_clk                                  (<connected-to-clk_clk>),                                  //                               clk.clk
		.pixelstream_0_conduit_end_0_lcd_red      (<connected-to-pixelstream_0_conduit_end_0_lcd_red>),      //       pixelstream_0_conduit_end_0.lcd_red
		.pixelstream_0_conduit_end_0_lcd_green    (<connected-to-pixelstream_0_conduit_end_0_lcd_green>),    //                                  .lcd_green
		.pixelstream_0_conduit_end_0_lcd_blue     (<connected-to-pixelstream_0_conduit_end_0_lcd_blue>),     //                                  .lcd_blue
		.pixelstream_0_conduit_end_0_lcd_hsync    (<connected-to-pixelstream_0_conduit_end_0_lcd_hsync>),    //                                  .lcd_hsync
		.pixelstream_0_conduit_end_0_lcd_vsync    (<connected-to-pixelstream_0_conduit_end_0_lcd_vsync>),    //                                  .lcd_vsync
		.pixelstream_0_conduit_end_0_lcd_de       (<connected-to-pixelstream_0_conduit_end_0_lcd_de>),       //                                  .lcd_de
		.pixelstream_0_conduit_end_0_lcd_dclk     (<connected-to-pixelstream_0_conduit_end_0_lcd_dclk>),     //                                  .lcd_dclk
		.pixelstream_0_conduit_end_0_lcd_dclk_en  (<connected-to-pixelstream_0_conduit_end_0_lcd_dclk_en>),  //                                  .lcd_dclk_en
		.reset_reset_n                            (<connected-to-reset_reset_n>),                            //                             reset.reset_n
		.buttons_pio_external_connection_export   (<connected-to-buttons_pio_external_connection_export>),   //   buttons_pio_external_connection.export
		.rightdial_pio_external_connection_export (<connected-to-rightdial_pio_external_connection_export>), // rightdial_pio_external_connection.export
		.leftdial_pio_external_connection_export  (<connected-to-leftdial_pio_external_connection_export>),  //  leftdial_pio_external_connection.export
		.hex_pio_external_connection_export       (<connected-to-hex_pio_external_connection_export>),       //       hex_pio_external_connection.export
		.led_pio_external_connection_export       (<connected-to-led_pio_external_connection_export>)        //       led_pio_external_connection.export
	);

