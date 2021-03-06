//
// Generated by Bluespec Compiler, version 2014.07.A (build 34078, 2014-07-30)
//
// On Tue Nov  3 17:49:27 GMT 2015
//
//
// Ports:
// Name                         I/O  size props
// avalon_master_phy_m0_writedata  O    32 reg
// avalon_master_phy_m0_address   O    31 reg
// avalon_master_phy_m0_read      O     1 reg
// avalon_master_phy_m0_write     O     1 reg
// avalon_master_phy_m0_burstcount  O     1 reg
// pixel_stream_get               O    25 reg
// RDY_pixel_stream_get           O     1 reg
// RDY_params                     O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// avalon_master_phy_m0_readdata  I    32 reg
// avalon_master_phy_m0_readdatavalid  I     1
// avalon_master_phy_m0_waitrequest  I     1
// params_base                    I    64
// params_number_pixels           I    32 reg
// EN_params                      I     1
// EN_pixel_stream_get            I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkBurstRead(CLK,
		   RST_N,

		   avalon_master_phy_m0_readdata,
		   avalon_master_phy_m0_readdatavalid,
		   avalon_master_phy_m0_waitrequest,

		   avalon_master_phy_m0_writedata,

		   avalon_master_phy_m0_address,

		   avalon_master_phy_m0_read,

		   avalon_master_phy_m0_write,

		   avalon_master_phy_m0_burstcount,

		   EN_pixel_stream_get,
		   pixel_stream_get,
		   RDY_pixel_stream_get,

		   params_base,
		   params_number_pixels,
		   EN_params,
		   RDY_params);
  input  CLK;
  input  RST_N;

  // action method avalon_master_phy_m0
  input  [31 : 0] avalon_master_phy_m0_readdata;
  input  avalon_master_phy_m0_readdatavalid;
  input  avalon_master_phy_m0_waitrequest;

  // value method avalon_master_phy_m0_writedata
  output [31 : 0] avalon_master_phy_m0_writedata;

  // value method avalon_master_phy_m0_address
  output [30 : 0] avalon_master_phy_m0_address;

  // value method avalon_master_phy_m0_read
  output avalon_master_phy_m0_read;

  // value method avalon_master_phy_m0_write
  output avalon_master_phy_m0_write;

  // value method avalon_master_phy_m0_burstcount
  output avalon_master_phy_m0_burstcount;

  // actionvalue method pixel_stream_get
  input  EN_pixel_stream_get;
  output [24 : 0] pixel_stream_get;
  output RDY_pixel_stream_get;

  // action method params
  input  [63 : 0] params_base;
  input  [31 : 0] params_number_pixels;
  input  EN_params;
  output RDY_params;

  // signals for module outputs
  wire [31 : 0] avalon_master_phy_m0_writedata;
  wire [30 : 0] avalon_master_phy_m0_address;
  wire [24 : 0] pixel_stream_get;
  wire RDY_params,
       RDY_pixel_stream_get,
       avalon_master_phy_m0_burstcount,
       avalon_master_phy_m0_read,
       avalon_master_phy_m0_write;

  // inlined wires
  wire avalon_master_signal_read$whas, avalon_master_signal_write$whas;

  // register addr
  reg [30 : 0] addr;
  wire [30 : 0] addr$D_IN;
  wire addr$EN;

  // register addrctr
  reg [31 : 0] addrctr;
  wire [31 : 0] addrctr$D_IN;
  wire addrctr$EN;

  // register avalon_master_address_r
  reg [30 : 0] avalon_master_address_r;
  wire [30 : 0] avalon_master_address_r$D_IN;
  wire avalon_master_address_r$EN;

  // register avalon_master_burstcount_r
  reg avalon_master_burstcount_r;
  wire avalon_master_burstcount_r$D_IN, avalon_master_burstcount_r$EN;

  // register avalon_master_outstandingWrites_value
  reg [1 : 0] avalon_master_outstandingWrites_value;
  wire [1 : 0] avalon_master_outstandingWrites_value$D_IN;
  wire avalon_master_outstandingWrites_value$EN;

  // register avalon_master_read_r
  reg avalon_master_read_r;
  wire avalon_master_read_r$D_IN, avalon_master_read_r$EN;

  // register avalon_master_requestBufferCount_value
  reg [1 : 0] avalon_master_requestBufferCount_value;
  wire [1 : 0] avalon_master_requestBufferCount_value$D_IN;
  wire avalon_master_requestBufferCount_value$EN;

  // register avalon_master_responseBufferSpace
  reg [2 : 0] avalon_master_responseBufferSpace;
  wire [2 : 0] avalon_master_responseBufferSpace$D_IN;
  wire avalon_master_responseBufferSpace$EN;

  // register avalon_master_write_r
  reg avalon_master_write_r;
  wire avalon_master_write_r$D_IN, avalon_master_write_r$EN;

  // register avalon_master_writedata_r
  reg [31 : 0] avalon_master_writedata_r;
  wire [31 : 0] avalon_master_writedata_r$D_IN;
  wire avalon_master_writedata_r$EN;

  // register base_addr
  reg [30 : 0] base_addr;
  wire [30 : 0] base_addr$D_IN;
  wire base_addr$EN;

  // register demux_state
  reg demux_state;
  wire demux_state$D_IN, demux_state$EN;

  // register num_pixels
  reg [31 : 0] num_pixels;
  wire [31 : 0] num_pixels$D_IN;
  wire num_pixels$EN;

  // register pix7_0
  reg [15 : 0] pix7_0;
  wire [15 : 0] pix7_0$D_IN;
  wire pix7_0$EN;

  // register pixelctr
  reg [31 : 0] pixelctr;
  wire [31 : 0] pixelctr$D_IN;
  wire pixelctr$EN;

  // register startFrame
  reg startFrame;
  wire startFrame$D_IN, startFrame$EN;

  // ports of submodule avalon_master_requestBuffer
  wire [64 : 0] avalon_master_requestBuffer$D_IN,
		avalon_master_requestBuffer$D_OUT;
  wire avalon_master_requestBuffer$CLR,
       avalon_master_requestBuffer$DEQ,
       avalon_master_requestBuffer$EMPTY_N,
       avalon_master_requestBuffer$ENQ,
       avalon_master_requestBuffer$FULL_N;

  // ports of submodule avalon_master_responseBuffer
  wire [31 : 0] avalon_master_responseBuffer$D_IN,
		avalon_master_responseBuffer$D_OUT;
  wire avalon_master_responseBuffer$CLR,
       avalon_master_responseBuffer$DEQ,
       avalon_master_responseBuffer$EMPTY_N,
       avalon_master_responseBuffer$ENQ;

  // ports of submodule pixbuf
  wire [24 : 0] pixbuf$D_IN, pixbuf$D_OUT;
  wire pixbuf$CLR, pixbuf$DEQ, pixbuf$EMPTY_N, pixbuf$ENQ, pixbuf$FULL_N;

  // rule scheduling signals
  wire CAN_FIRE_RL_avalon_master_acceptWriteAck,
       CAN_FIRE_RL_avalon_master_buffer_data_read,
       CAN_FIRE_RL_avalon_master_do_read_reg,
       CAN_FIRE_RL_avalon_master_do_write_reg,
       CAN_FIRE_RL_avalon_master_outstandingWrites_doDecrement,
       CAN_FIRE_RL_avalon_master_outstandingWrites_doIncrement,
       CAN_FIRE_RL_avalon_master_performRequest,
       CAN_FIRE_RL_avalon_master_requestBufferCount_doDecrement,
       CAN_FIRE_RL_avalon_master_requestBufferCount_doIncrement,
       CAN_FIRE_RL_avalon_master_update_responseBufferSpace,
       CAN_FIRE_RL_pixel_demux,
       CAN_FIRE_RL_pixel_demux_s0,
       CAN_FIRE_RL_start_bursts,
       CAN_FIRE_RL_start_frame_off,
       CAN_FIRE_avalon_master_phy_m0,
       CAN_FIRE_params,
       CAN_FIRE_pixel_stream_get,
       WILL_FIRE_RL_avalon_master_acceptWriteAck,
       WILL_FIRE_RL_avalon_master_buffer_data_read,
       WILL_FIRE_RL_avalon_master_do_read_reg,
       WILL_FIRE_RL_avalon_master_do_write_reg,
       WILL_FIRE_RL_avalon_master_outstandingWrites_doDecrement,
       WILL_FIRE_RL_avalon_master_outstandingWrites_doIncrement,
       WILL_FIRE_RL_avalon_master_performRequest,
       WILL_FIRE_RL_avalon_master_requestBufferCount_doDecrement,
       WILL_FIRE_RL_avalon_master_requestBufferCount_doIncrement,
       WILL_FIRE_RL_avalon_master_update_responseBufferSpace,
       WILL_FIRE_RL_pixel_demux,
       WILL_FIRE_RL_pixel_demux_s0,
       WILL_FIRE_RL_start_bursts,
       WILL_FIRE_RL_start_frame_off,
       WILL_FIRE_avalon_master_phy_m0,
       WILL_FIRE_params,
       WILL_FIRE_pixel_stream_get;

  // inputs to muxes for submodule ports
  wire [31 : 0] MUX_addrctr$write_1__VAL_2, MUX_pixelctr$write_1__VAL_2;
  wire [30 : 0] MUX_addr$write_1__VAL_2;
  wire [24 : 0] MUX_pixbuf$enq_1__VAL_1, MUX_pixbuf$enq_1__VAL_2;
  wire [1 : 0] MUX_avalon_master_outstandingWrites_value$write_1__VAL_1,
	       MUX_avalon_master_outstandingWrites_value$write_1__VAL_2,
	       MUX_avalon_master_requestBufferCount_value$write_1__VAL_1,
	       MUX_avalon_master_requestBufferCount_value$write_1__VAL_2;

  // remaining internal signals
  reg [63 : 0] v__h2692, v__h2778;
  wire [63 : 0] params_base_SRL_2__q2;
  wire [31 : 0] b__h2602, x__h2618, y__h2716;
  wire [30 : 0] num_pixels_BITS_31_TO_1__q1;
  wire NOT_avalon_master_avalonwait_wget__7_8_OR_NOT__ETC___d62,
       addrctr_0_SLE_0___d71,
       pixelctr_8_SLE_0___d69;

  // action method avalon_master_phy_m0
  assign CAN_FIRE_avalon_master_phy_m0 = 1'd1 ;
  assign WILL_FIRE_avalon_master_phy_m0 = 1'd1 ;

  // value method avalon_master_phy_m0_writedata
  assign avalon_master_phy_m0_writedata = avalon_master_writedata_r ;

  // value method avalon_master_phy_m0_address
  assign avalon_master_phy_m0_address = avalon_master_address_r ;

  // value method avalon_master_phy_m0_read
  assign avalon_master_phy_m0_read = avalon_master_read_r ;

  // value method avalon_master_phy_m0_write
  assign avalon_master_phy_m0_write = avalon_master_write_r ;

  // value method avalon_master_phy_m0_burstcount
  assign avalon_master_phy_m0_burstcount = avalon_master_burstcount_r ;

  // actionvalue method pixel_stream_get
  assign pixel_stream_get = pixbuf$D_OUT ;
  assign RDY_pixel_stream_get = pixbuf$EMPTY_N ;
  assign CAN_FIRE_pixel_stream_get = pixbuf$EMPTY_N ;
  assign WILL_FIRE_pixel_stream_get = EN_pixel_stream_get ;

  // action method params
  assign RDY_params = 1'd1 ;
  assign CAN_FIRE_params = 1'd1 ;
  assign WILL_FIRE_params = EN_params ;

  // submodule avalon_master_requestBuffer
  FIFO2 #(.width(32'd65),
	  .guarded(32'd1)) avalon_master_requestBuffer(.RST(RST_N),
						       .CLK(CLK),
						       .D_IN(avalon_master_requestBuffer$D_IN),
						       .ENQ(avalon_master_requestBuffer$ENQ),
						       .DEQ(avalon_master_requestBuffer$DEQ),
						       .CLR(avalon_master_requestBuffer$CLR),
						       .D_OUT(avalon_master_requestBuffer$D_OUT),
						       .FULL_N(avalon_master_requestBuffer$FULL_N),
						       .EMPTY_N(avalon_master_requestBuffer$EMPTY_N));

  // submodule avalon_master_responseBuffer
  SizedFIFO #(.p1width(32'd32),
	      .p2depth(32'd3),
	      .p3cntr_width(32'd1),
	      .guarded(32'd1)) avalon_master_responseBuffer(.RST(RST_N),
							    .CLK(CLK),
							    .D_IN(avalon_master_responseBuffer$D_IN),
							    .ENQ(avalon_master_responseBuffer$ENQ),
							    .DEQ(avalon_master_responseBuffer$DEQ),
							    .CLR(avalon_master_responseBuffer$CLR),
							    .D_OUT(avalon_master_responseBuffer$D_OUT),
							    .FULL_N(),
							    .EMPTY_N(avalon_master_responseBuffer$EMPTY_N));

  // submodule pixbuf
  SizedFIFO #(.p1width(32'd25),
	      .p2depth(32'd32),
	      .p3cntr_width(32'd5),
	      .guarded(32'd1)) pixbuf(.RST(RST_N),
				      .CLK(CLK),
				      .D_IN(pixbuf$D_IN),
				      .ENQ(pixbuf$ENQ),
				      .DEQ(pixbuf$DEQ),
				      .CLR(pixbuf$CLR),
				      .D_OUT(pixbuf$D_OUT),
				      .FULL_N(pixbuf$FULL_N),
				      .EMPTY_N(pixbuf$EMPTY_N));

  // rule RL_start_frame_off
  assign CAN_FIRE_RL_start_frame_off =
	     pixelctr_8_SLE_0___d69 && addrctr_0_SLE_0___d71 &&
	     (num_pixels ^ 32'h80000000) > 32'h80000000 &&
	     !pixbuf$EMPTY_N ;
  assign WILL_FIRE_RL_start_frame_off = CAN_FIRE_RL_start_frame_off ;

  // rule RL_start_bursts
  assign CAN_FIRE_RL_start_bursts =
	     avalon_master_requestBuffer$FULL_N && !addrctr_0_SLE_0___d71 &&
	     avalon_master_requestBufferCount_value == 2'd0 ;
  assign WILL_FIRE_RL_start_bursts = CAN_FIRE_RL_start_bursts ;

  // rule RL_pixel_demux_s0
  assign CAN_FIRE_RL_pixel_demux_s0 =
	     avalon_master_responseBuffer$EMPTY_N && pixbuf$FULL_N &&
	     !demux_state &&
	     !pixelctr_8_SLE_0___d69 ;
  assign WILL_FIRE_RL_pixel_demux_s0 = CAN_FIRE_RL_pixel_demux_s0 ;

  // rule RL_pixel_demux
  assign CAN_FIRE_RL_pixel_demux =
	     pixbuf$FULL_N && demux_state && !pixelctr_8_SLE_0___d69 ;
  assign WILL_FIRE_RL_pixel_demux = CAN_FIRE_RL_pixel_demux ;

  // rule RL_avalon_master_buffer_data_read
  assign CAN_FIRE_RL_avalon_master_buffer_data_read =
	     avalon_master_phy_m0_readdatavalid ;
  assign WILL_FIRE_RL_avalon_master_buffer_data_read =
	     avalon_master_phy_m0_readdatavalid ;

  // rule RL_avalon_master_acceptWriteAck
  assign CAN_FIRE_RL_avalon_master_acceptWriteAck =
	     avalon_master_outstandingWrites_value != 2'd0 &&
	     avalon_master_write_r &&
	     !avalon_master_read_r &&
	     !avalon_master_phy_m0_waitrequest ;
  assign WILL_FIRE_RL_avalon_master_acceptWriteAck =
	     CAN_FIRE_RL_avalon_master_acceptWriteAck ;

  // rule RL_avalon_master_performRequest
  assign CAN_FIRE_RL_avalon_master_performRequest =
	     avalon_master_requestBufferCount_value != 2'd0 &&
	     avalon_master_requestBuffer$EMPTY_N &&
	     (!avalon_master_requestBuffer$D_OUT[64] ||
	      avalon_master_outstandingWrites_value != 2'd3) &&
	     NOT_avalon_master_avalonwait_wget__7_8_OR_NOT__ETC___d62 ;
  assign WILL_FIRE_RL_avalon_master_performRequest =
	     CAN_FIRE_RL_avalon_master_performRequest ;

  // rule RL_avalon_master_do_read_reg
  assign CAN_FIRE_RL_avalon_master_do_read_reg = 1'd1 ;
  assign WILL_FIRE_RL_avalon_master_do_read_reg = 1'd1 ;

  // rule RL_avalon_master_do_write_reg
  assign CAN_FIRE_RL_avalon_master_do_write_reg = 1'd1 ;
  assign WILL_FIRE_RL_avalon_master_do_write_reg = 1'd1 ;

  // rule RL_avalon_master_update_responseBufferSpace
  assign CAN_FIRE_RL_avalon_master_update_responseBufferSpace = 1'd1 ;
  assign WILL_FIRE_RL_avalon_master_update_responseBufferSpace = 1'd1 ;

  // rule RL_avalon_master_requestBufferCount_doIncrement
  assign CAN_FIRE_RL_avalon_master_requestBufferCount_doIncrement =
	     CAN_FIRE_RL_start_bursts &&
	     !CAN_FIRE_RL_avalon_master_performRequest ;
  assign WILL_FIRE_RL_avalon_master_requestBufferCount_doIncrement =
	     CAN_FIRE_RL_avalon_master_requestBufferCount_doIncrement ;

  // rule RL_avalon_master_requestBufferCount_doDecrement
  assign CAN_FIRE_RL_avalon_master_requestBufferCount_doDecrement =
	     !CAN_FIRE_RL_start_bursts &&
	     CAN_FIRE_RL_avalon_master_performRequest ;
  assign WILL_FIRE_RL_avalon_master_requestBufferCount_doDecrement =
	     CAN_FIRE_RL_avalon_master_requestBufferCount_doDecrement ;

  // rule RL_avalon_master_outstandingWrites_doIncrement
  assign CAN_FIRE_RL_avalon_master_outstandingWrites_doIncrement =
	     avalon_master_signal_write$whas &&
	     !CAN_FIRE_RL_avalon_master_acceptWriteAck ;
  assign WILL_FIRE_RL_avalon_master_outstandingWrites_doIncrement =
	     CAN_FIRE_RL_avalon_master_outstandingWrites_doIncrement ;

  // rule RL_avalon_master_outstandingWrites_doDecrement
  assign CAN_FIRE_RL_avalon_master_outstandingWrites_doDecrement =
	     !avalon_master_signal_write$whas &&
	     CAN_FIRE_RL_avalon_master_acceptWriteAck ;
  assign WILL_FIRE_RL_avalon_master_outstandingWrites_doDecrement =
	     CAN_FIRE_RL_avalon_master_outstandingWrites_doDecrement ;

  // inputs to muxes for submodule ports
  assign MUX_addr$write_1__VAL_2 = addr + 31'd1 ;
  assign MUX_addrctr$write_1__VAL_2 = addrctr - 32'd1 ;
  assign MUX_avalon_master_outstandingWrites_value$write_1__VAL_1 =
	     avalon_master_outstandingWrites_value + 2'd1 ;
  assign MUX_avalon_master_outstandingWrites_value$write_1__VAL_2 =
	     avalon_master_outstandingWrites_value - 2'd1 ;
  assign MUX_avalon_master_requestBufferCount_value$write_1__VAL_1 =
	     avalon_master_requestBufferCount_value + 2'd1 ;
  assign MUX_avalon_master_requestBufferCount_value$write_1__VAL_2 =
	     avalon_master_requestBufferCount_value - 2'd1 ;
  assign MUX_pixbuf$enq_1__VAL_1 =
	     { avalon_master_responseBuffer$D_OUT[4:0],
	       3'b0,
	       avalon_master_responseBuffer$D_OUT[10:5],
	       2'b0,
	       avalon_master_responseBuffer$D_OUT[15:11],
	       3'b0,
	       startFrame } ;
  assign MUX_pixbuf$enq_1__VAL_2 =
	     { pix7_0[4:0], 3'b0, pix7_0[10:5], 2'b0, pix7_0[15:11], 4'b0 } ;
  assign MUX_pixelctr$write_1__VAL_2 = pixelctr - 32'd1 ;

  // inlined wires
  assign avalon_master_signal_read$whas =
	     WILL_FIRE_RL_avalon_master_performRequest &&
	     !avalon_master_requestBuffer$D_OUT[64] ;
  assign avalon_master_signal_write$whas =
	     WILL_FIRE_RL_avalon_master_performRequest &&
	     avalon_master_requestBuffer$D_OUT[64] ;

  // register addr
  assign addr$D_IN =
	     WILL_FIRE_RL_start_frame_off ?
	       base_addr :
	       MUX_addr$write_1__VAL_2 ;
  assign addr$EN = WILL_FIRE_RL_start_frame_off || WILL_FIRE_RL_start_bursts ;

  // register addrctr
  assign addrctr$D_IN =
	     WILL_FIRE_RL_start_frame_off ?
	       b__h2602 :
	       MUX_addrctr$write_1__VAL_2 ;
  assign addrctr$EN =
	     WILL_FIRE_RL_start_frame_off || WILL_FIRE_RL_start_bursts ;

  // register avalon_master_address_r
  assign avalon_master_address_r$D_IN =
	     avalon_master_requestBuffer$D_OUT[62:32] ;
  assign avalon_master_address_r$EN =
	     CAN_FIRE_RL_avalon_master_performRequest ;

  // register avalon_master_burstcount_r
  assign avalon_master_burstcount_r$D_IN =
	     avalon_master_requestBuffer$D_OUT[64] ||
	     avalon_master_requestBuffer$D_OUT[63] ;
  assign avalon_master_burstcount_r$EN =
	     CAN_FIRE_RL_avalon_master_performRequest ;

  // register avalon_master_outstandingWrites_value
  assign avalon_master_outstandingWrites_value$D_IN =
	     WILL_FIRE_RL_avalon_master_outstandingWrites_doIncrement ?
	       MUX_avalon_master_outstandingWrites_value$write_1__VAL_1 :
	       MUX_avalon_master_outstandingWrites_value$write_1__VAL_2 ;
  assign avalon_master_outstandingWrites_value$EN =
	     WILL_FIRE_RL_avalon_master_outstandingWrites_doIncrement ||
	     WILL_FIRE_RL_avalon_master_outstandingWrites_doDecrement ;

  // register avalon_master_read_r
  assign avalon_master_read_r$D_IN = avalon_master_signal_read$whas ;
  assign avalon_master_read_r$EN =
	     avalon_master_signal_read$whas ||
	     !avalon_master_phy_m0_waitrequest ;

  // register avalon_master_requestBufferCount_value
  assign avalon_master_requestBufferCount_value$D_IN =
	     WILL_FIRE_RL_avalon_master_requestBufferCount_doIncrement ?
	       MUX_avalon_master_requestBufferCount_value$write_1__VAL_1 :
	       MUX_avalon_master_requestBufferCount_value$write_1__VAL_2 ;
  assign avalon_master_requestBufferCount_value$EN =
	     WILL_FIRE_RL_avalon_master_requestBufferCount_doIncrement ||
	     WILL_FIRE_RL_avalon_master_requestBufferCount_doDecrement ;

  // register avalon_master_responseBufferSpace
  assign avalon_master_responseBufferSpace$D_IN =
	     (avalon_master_responseBufferSpace -
	      { 2'd0,
		avalon_master_signal_read$whas &&
		avalon_master_requestBuffer$D_OUT[63] }) +
	     { 2'd0, CAN_FIRE_RL_pixel_demux_s0 } ;
  assign avalon_master_responseBufferSpace$EN = 1'd1 ;

  // register avalon_master_write_r
  assign avalon_master_write_r$D_IN = avalon_master_signal_write$whas ;
  assign avalon_master_write_r$EN =
	     avalon_master_signal_write$whas ||
	     !avalon_master_phy_m0_waitrequest ;

  // register avalon_master_writedata_r
  assign avalon_master_writedata_r$D_IN =
	     avalon_master_requestBuffer$D_OUT[31:0] ;
  assign avalon_master_writedata_r$EN =
	     CAN_FIRE_RL_avalon_master_performRequest ;

  // register base_addr
  assign base_addr$D_IN = params_base_SRL_2__q2[30:0] ;
  assign base_addr$EN = EN_params ;

  // register demux_state
  assign demux_state$D_IN = WILL_FIRE_RL_pixel_demux_s0 && pixelctr != 32'd1 ;
  assign demux_state$EN =
	     WILL_FIRE_RL_pixel_demux_s0 || WILL_FIRE_RL_pixel_demux ;

  // register num_pixels
  assign num_pixels$D_IN = params_number_pixels ;
  assign num_pixels$EN = EN_params ;

  // register pix7_0
  assign pix7_0$D_IN = avalon_master_responseBuffer$D_OUT[31:16] ;
  assign pix7_0$EN = CAN_FIRE_RL_pixel_demux_s0 ;

  // register pixelctr
  assign pixelctr$D_IN =
	     WILL_FIRE_RL_start_frame_off ?
	       num_pixels :
	       MUX_pixelctr$write_1__VAL_2 ;
  assign pixelctr$EN =
	     WILL_FIRE_RL_start_frame_off || WILL_FIRE_RL_pixel_demux ||
	     WILL_FIRE_RL_pixel_demux_s0 ;

  // register startFrame
  assign startFrame$D_IN = !WILL_FIRE_RL_pixel_demux_s0 ;
  assign startFrame$EN =
	     WILL_FIRE_RL_pixel_demux_s0 || WILL_FIRE_RL_start_frame_off ;

  // submodule avalon_master_requestBuffer
  assign avalon_master_requestBuffer$D_IN =
	     { 1'd0,
	       (addrctr ^ 32'h80000000) > 32'h80000001 || addrctr[0],
	       addr,
	       32'd0 } ;
  assign avalon_master_requestBuffer$ENQ = CAN_FIRE_RL_start_bursts ;
  assign avalon_master_requestBuffer$DEQ =
	     CAN_FIRE_RL_avalon_master_performRequest ;
  assign avalon_master_requestBuffer$CLR = 1'b0 ;

  // submodule avalon_master_responseBuffer
  assign avalon_master_responseBuffer$D_IN = avalon_master_phy_m0_readdata ;
  assign avalon_master_responseBuffer$ENQ =
	     avalon_master_phy_m0_readdatavalid ;
  assign avalon_master_responseBuffer$DEQ = CAN_FIRE_RL_pixel_demux_s0 ;
  assign avalon_master_responseBuffer$CLR = 1'b0 ;

  // submodule pixbuf
  assign pixbuf$D_IN =
	     WILL_FIRE_RL_pixel_demux_s0 ?
	       MUX_pixbuf$enq_1__VAL_1 :
	       MUX_pixbuf$enq_1__VAL_2 ;
  assign pixbuf$ENQ =
	     WILL_FIRE_RL_pixel_demux_s0 || WILL_FIRE_RL_pixel_demux ;
  assign pixbuf$DEQ = EN_pixel_stream_get ;
  assign pixbuf$CLR = 1'b0 ;

  // remaining internal signals
  assign NOT_avalon_master_avalonwait_wget__7_8_OR_NOT__ETC___d62 =
	     (!avalon_master_phy_m0_waitrequest ||
	      !avalon_master_read_r && !avalon_master_write_r) &&
	     avalon_master_responseBufferSpace > 3'd1 ;
  assign addrctr_0_SLE_0___d71 = (addrctr ^ 32'h80000000) <= 32'h80000000 ;
  assign b__h2602 = x__h2618 + y__h2716 ;
  assign num_pixels_BITS_31_TO_1__q1 = num_pixels[31:1] ;
  assign params_base_SRL_2__q2 = params_base >> 2 ;
  assign pixelctr_8_SLE_0___d69 = (pixelctr ^ 32'h80000000) <= 32'h80000000 ;
  assign x__h2618 =
	     { num_pixels_BITS_31_TO_1__q1[30],
	       num_pixels_BITS_31_TO_1__q1 } ;
  assign y__h2716 = num_pixels[0] ? 32'd1 : 32'd0 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        addr <= `BSV_ASSIGNMENT_DELAY 31'd0;
	addrctr <= `BSV_ASSIGNMENT_DELAY 32'd0;
	avalon_master_address_r <= `BSV_ASSIGNMENT_DELAY 31'd0;
	avalon_master_outstandingWrites_value <= `BSV_ASSIGNMENT_DELAY 2'd0;
	avalon_master_read_r <= `BSV_ASSIGNMENT_DELAY 1'd0;
	avalon_master_requestBufferCount_value <= `BSV_ASSIGNMENT_DELAY 2'd0;
	avalon_master_responseBufferSpace <= `BSV_ASSIGNMENT_DELAY 3'd3;
	avalon_master_write_r <= `BSV_ASSIGNMENT_DELAY 1'd0;
	avalon_master_writedata_r <= `BSV_ASSIGNMENT_DELAY 32'd0;
	base_addr <= `BSV_ASSIGNMENT_DELAY 31'd0;
	demux_state <= `BSV_ASSIGNMENT_DELAY 1'd0;
	num_pixels <= `BSV_ASSIGNMENT_DELAY 32'd0;
	pix7_0 <= `BSV_ASSIGNMENT_DELAY 16'd0;
	pixelctr <= `BSV_ASSIGNMENT_DELAY 32'd0;
	startFrame <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (addr$EN) addr <= `BSV_ASSIGNMENT_DELAY addr$D_IN;
	if (addrctr$EN) addrctr <= `BSV_ASSIGNMENT_DELAY addrctr$D_IN;
	if (avalon_master_address_r$EN)
	  avalon_master_address_r <= `BSV_ASSIGNMENT_DELAY
	      avalon_master_address_r$D_IN;
	if (avalon_master_outstandingWrites_value$EN)
	  avalon_master_outstandingWrites_value <= `BSV_ASSIGNMENT_DELAY
	      avalon_master_outstandingWrites_value$D_IN;
	if (avalon_master_read_r$EN)
	  avalon_master_read_r <= `BSV_ASSIGNMENT_DELAY
	      avalon_master_read_r$D_IN;
	if (avalon_master_requestBufferCount_value$EN)
	  avalon_master_requestBufferCount_value <= `BSV_ASSIGNMENT_DELAY
	      avalon_master_requestBufferCount_value$D_IN;
	if (avalon_master_responseBufferSpace$EN)
	  avalon_master_responseBufferSpace <= `BSV_ASSIGNMENT_DELAY
	      avalon_master_responseBufferSpace$D_IN;
	if (avalon_master_write_r$EN)
	  avalon_master_write_r <= `BSV_ASSIGNMENT_DELAY
	      avalon_master_write_r$D_IN;
	if (avalon_master_writedata_r$EN)
	  avalon_master_writedata_r <= `BSV_ASSIGNMENT_DELAY
	      avalon_master_writedata_r$D_IN;
	if (base_addr$EN) base_addr <= `BSV_ASSIGNMENT_DELAY base_addr$D_IN;
	if (demux_state$EN)
	  demux_state <= `BSV_ASSIGNMENT_DELAY demux_state$D_IN;
	if (num_pixels$EN)
	  num_pixels <= `BSV_ASSIGNMENT_DELAY num_pixels$D_IN;
	if (pix7_0$EN) pix7_0 <= `BSV_ASSIGNMENT_DELAY pix7_0$D_IN;
	if (pixelctr$EN) pixelctr <= `BSV_ASSIGNMENT_DELAY pixelctr$D_IN;
	if (startFrame$EN)
	  startFrame <= `BSV_ASSIGNMENT_DELAY startFrame$D_IN;
      end
    if (avalon_master_burstcount_r$EN)
      avalon_master_burstcount_r <= `BSV_ASSIGNMENT_DELAY
	  avalon_master_burstcount_r$D_IN;
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    addr = 31'h2AAAAAAA;
    addrctr = 32'hAAAAAAAA;
    avalon_master_address_r = 31'h2AAAAAAA;
    avalon_master_burstcount_r = 1'h0;
    avalon_master_outstandingWrites_value = 2'h2;
    avalon_master_read_r = 1'h0;
    avalon_master_requestBufferCount_value = 2'h2;
    avalon_master_responseBufferSpace = 3'h2;
    avalon_master_write_r = 1'h0;
    avalon_master_writedata_r = 32'hAAAAAAAA;
    base_addr = 31'h2AAAAAAA;
    demux_state = 1'h0;
    num_pixels = 32'hAAAAAAAA;
    pix7_0 = 16'hAAAA;
    pixelctr = 32'hAAAAAAAA;
    startFrame = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_start_frame_off)
	begin
	  v__h2692 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_start_frame_off)
	$display("%05t: starting frame base_addr=0x%08x, addrctr=0x%08x, pixelctr=0x%08x",
		 v__h2692,
		 $unsigned(base_addr),
		 b__h2602,
		 num_pixels);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_start_bursts)
	begin
	  v__h2778 = $time;
	  #0;
	end
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_start_bursts)
	$display("%05t: PixelStream initiating burst length %1d  address=0x%08x",
		 v__h2778,
		 $unsigned((addrctr ^ 32'h80000000) > 32'h80000001 ||
			   addrctr[0]),
		 $unsigned(addr));
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_pixel_demux_s0)
	$display("Memory returned word 0x%08x",
		 $unsigned(avalon_master_responseBuffer$D_OUT));
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_pixel_demux_s0)
	$display("Pixel %d buffer enqueued  first 0x%08x",
		 $signed(pixelctr),
		 { avalon_master_responseBuffer$D_OUT[4:0],
		   3'b0,
		   avalon_master_responseBuffer$D_OUT[10:5],
		   2'b0,
		   avalon_master_responseBuffer$D_OUT[15:11],
		   3'b0,
		   startFrame });
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_pixel_demux)
	$display("Pixel %d buffer enqueued %dth 0x%08x",
		 $signed(pixelctr),
		 $unsigned(demux_state),
		 { pix7_0[4:0],
		   3'b0,
		   pix7_0[10:5],
		   2'b0,
		   pix7_0[15:11],
		   4'b0 });
  end
  // synopsys translate_on
endmodule  // mkBurstRead

