
module clarvi_soc (
	clk_clk,
	pixelstream_0_conduit_end_0_lcd_red,
	pixelstream_0_conduit_end_0_lcd_green,
	pixelstream_0_conduit_end_0_lcd_blue,
	pixelstream_0_conduit_end_0_lcd_hsync,
	pixelstream_0_conduit_end_0_lcd_vsync,
	pixelstream_0_conduit_end_0_lcd_de,
	pixelstream_0_conduit_end_0_lcd_dclk,
	pixelstream_0_conduit_end_0_lcd_dclk_en,
	reset_reset_n,
	buttons_pio_external_connection_export,
	rightdial_pio_external_connection_export,
	leftdial_pio_external_connection_export,
	hex_pio_external_connection_export,
	led_pio_external_connection_export);	

	input		clk_clk;
	output	[7:0]	pixelstream_0_conduit_end_0_lcd_red;
	output	[7:0]	pixelstream_0_conduit_end_0_lcd_green;
	output	[7:0]	pixelstream_0_conduit_end_0_lcd_blue;
	output		pixelstream_0_conduit_end_0_lcd_hsync;
	output		pixelstream_0_conduit_end_0_lcd_vsync;
	output		pixelstream_0_conduit_end_0_lcd_de;
	output		pixelstream_0_conduit_end_0_lcd_dclk;
	output		pixelstream_0_conduit_end_0_lcd_dclk_en;
	input		reset_reset_n;
	input	[15:0]	buttons_pio_external_connection_export;
	input	[7:0]	rightdial_pio_external_connection_export;
	input	[7:0]	leftdial_pio_external_connection_export;
	output	[23:0]	hex_pio_external_connection_export;
	output	[9:0]	led_pio_external_connection_export;
endmodule
