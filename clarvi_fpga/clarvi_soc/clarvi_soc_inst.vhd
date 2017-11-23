	component clarvi_soc is
		port (
			clk_clk                                  : in  std_logic                     := 'X';             -- clk
			pixelstream_0_conduit_end_0_lcd_red      : out std_logic_vector(7 downto 0);                     -- lcd_red
			pixelstream_0_conduit_end_0_lcd_green    : out std_logic_vector(7 downto 0);                     -- lcd_green
			pixelstream_0_conduit_end_0_lcd_blue     : out std_logic_vector(7 downto 0);                     -- lcd_blue
			pixelstream_0_conduit_end_0_lcd_hsync    : out std_logic;                                        -- lcd_hsync
			pixelstream_0_conduit_end_0_lcd_vsync    : out std_logic;                                        -- lcd_vsync
			pixelstream_0_conduit_end_0_lcd_de       : out std_logic;                                        -- lcd_de
			pixelstream_0_conduit_end_0_lcd_dclk     : out std_logic;                                        -- lcd_dclk
			pixelstream_0_conduit_end_0_lcd_dclk_en  : out std_logic;                                        -- lcd_dclk_en
			reset_reset_n                            : in  std_logic                     := 'X';             -- reset_n
			buttons_pio_external_connection_export   : in  std_logic_vector(15 downto 0) := (others => 'X'); -- export
			rightdial_pio_external_connection_export : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			leftdial_pio_external_connection_export  : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			hex_pio_external_connection_export       : out std_logic_vector(23 downto 0);                    -- export
			led_pio_external_connection_export       : out std_logic_vector(9 downto 0)                      -- export
		);
	end component clarvi_soc;

	u0 : component clarvi_soc
		port map (
			clk_clk                                  => CONNECTED_TO_clk_clk,                                  --                               clk.clk
			pixelstream_0_conduit_end_0_lcd_red      => CONNECTED_TO_pixelstream_0_conduit_end_0_lcd_red,      --       pixelstream_0_conduit_end_0.lcd_red
			pixelstream_0_conduit_end_0_lcd_green    => CONNECTED_TO_pixelstream_0_conduit_end_0_lcd_green,    --                                  .lcd_green
			pixelstream_0_conduit_end_0_lcd_blue     => CONNECTED_TO_pixelstream_0_conduit_end_0_lcd_blue,     --                                  .lcd_blue
			pixelstream_0_conduit_end_0_lcd_hsync    => CONNECTED_TO_pixelstream_0_conduit_end_0_lcd_hsync,    --                                  .lcd_hsync
			pixelstream_0_conduit_end_0_lcd_vsync    => CONNECTED_TO_pixelstream_0_conduit_end_0_lcd_vsync,    --                                  .lcd_vsync
			pixelstream_0_conduit_end_0_lcd_de       => CONNECTED_TO_pixelstream_0_conduit_end_0_lcd_de,       --                                  .lcd_de
			pixelstream_0_conduit_end_0_lcd_dclk     => CONNECTED_TO_pixelstream_0_conduit_end_0_lcd_dclk,     --                                  .lcd_dclk
			pixelstream_0_conduit_end_0_lcd_dclk_en  => CONNECTED_TO_pixelstream_0_conduit_end_0_lcd_dclk_en,  --                                  .lcd_dclk_en
			reset_reset_n                            => CONNECTED_TO_reset_reset_n,                            --                             reset.reset_n
			buttons_pio_external_connection_export   => CONNECTED_TO_buttons_pio_external_connection_export,   --   buttons_pio_external_connection.export
			rightdial_pio_external_connection_export => CONNECTED_TO_rightdial_pio_external_connection_export, -- rightdial_pio_external_connection.export
			leftdial_pio_external_connection_export  => CONNECTED_TO_leftdial_pio_external_connection_export,  --  leftdial_pio_external_connection.export
			hex_pio_external_connection_export       => CONNECTED_TO_hex_pio_external_connection_export,       --       hex_pio_external_connection.export
			led_pio_external_connection_export       => CONNECTED_TO_led_pio_external_connection_export        --       led_pio_external_connection.export
		);

