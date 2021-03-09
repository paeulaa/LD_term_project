module ant_suit (
  input wire clk,
  input wire rst_n,
  input wire ant_r,
  input wire ant_l,
  input wire hit,
  input wire escape,
// challenge mode
`ifdef CHALLENGE
  output reg [`PH_WIDTH - 1:0] ph_drop,
  input wire [`PH_WIDTH - 1:0] ph_detected,
`endif
  output reg [1:0] move
);

  // parameters: action
  parameter [1:0] halt       = `HALT;
  parameter [1:0] turn_right = `RIGHT;
  parameter [1:0] turn_left  = `LEFT;
  parameter [1:0] forward    = `FORWARD;
  parameter cyc = `CYC;
  parameter delay = `DELAY;

  parameter [2:0] IDLE   = 3'b000;
  parameter [2:0] S1 = 3'b001;
  parameter [2:0] S2 = 3'b010;
  parameter [2:0] S3 = 3'b011;
  parameter [2:0] S4 = 3'b011;

  //internal
  reg [2:0] curr_state;
  wire [2:0] next_state;
  //reg if_turn_left;
  wire [1:0] detect;

  assign detect = {ant_l, ant_r};

  always@(posedge clk, negedge rst_n)begin
      if(~rst_n) curr_state = IDLE;
      else curr_state = next_state;
  end

  always@* begin
    if(detect==2'b10) move = forward;
    else if(detect==2'b01) move = (curr_state == S1)?turn_left:turn_right;
    else if(detect==2'b11) begin
         move = (curr_state == S1)?turn_left:turn_right;
    end else begin
	if(curr_state == S1) move = turn_left;
        else if(curr_state == S4 || curr_state == IDLE) move = forward;
    end
  end

  assign next_state = (detect == 2'b10)? S1 : (detect==2'b00)? S4: (detect==2'b01)? S2: S3;
  
  

endmodule
