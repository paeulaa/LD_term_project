{\rtf1\ansi\ansicpg950\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 `timescale 1ns/1ps\
module GCD (\
  input wire CLK,\
  input wire RST_N,\
  input wire [7:0] A,\
  input wire [7:0] B,\
  input wire START,\
  output reg [7:0] Y,\
  output reg DONE,\
  output reg ERROR\
);\
\
parameter [1:0] IDLE   = 2'b00;\
parameter [1:0] CALC   = 2'b01;\
parameter [1:0] FINISH = 2'b10;\
\
reg [1:0] curr_state;\
reg [1:0] next_state;\
reg error_next;\
reg done_next;\
\
//internal\
wire [7:0]data_a;\
wire [7:0]data_b;\
wire [7:0]diff;\
wire found;\
reg [7:0]_a;\
reg [7:0]_b;\
//reg [7:0]_diff;\
wire swap;\
reg [7:0] Y_next;\
\
// [HW]\
// Finish this design based on\
//   1. FSM\
//   2. Datapath diagram\
//\
// Note: You may manipulate the signals by using either\
//       assign statement or always block. Just remember\
//       to use the proper signal type (namely, wire or reg).\
//\
\
//FSM\
//state reg\
always@(posedge CLK, negedge RST_N) begin\
        if(RST_N == 1'b0) curr_state <= IDLE;\
        else curr_state <= next_state;\
end\
\
always@(posedge CLK) begin\
        _a <= (START == 1)?A : diff;\
        _b <= (START == 1)?B : data_b;\
        Y_next <= (found == 1)?data_a : Y;\
        done_next <= (found == 1 || error_next == 1)?1 : 0;\
end\
\
//next_state logic\
always@* begin\
   next_state = IDLE;\
   Y = 1'b0;\
   DONE = 1'b0;\
   ERROR = 1'b0;\
   case (curr_state)\
     IDLE: begin\
         if(!START) next_state = IDLE;\
         else  begin  \
              next_state = CALC;\
              error_next = (A == 0 || B == 0)? 1: 0;\
         end\
     end\
     CALC: begin\
         if(!found && !error_next) begin\
                next_state = CALC;\
         end else  next_state = FINISH;\
     end\
     FINISH:begin \
         ERROR = error_next;\
         Y = Y_next;\
         DONE = done_next;\
         next_state = IDLE;\
     end\
     default: next_state = IDLE;\
   endcase    \
end\
\
//Block diagram \
assign diff = data_a - data_b;\
assign swap = (_a < _b)?1:0;\
assign found = (diff == 0)?1:0;\
\
\
assign data_a = (swap == 1)?_b:_a;\
assign data_b = (swap == 1)?_a:_b;\
\
/*\
always@(posedge CLK)begin\
    _a = (START == 1)?A : diff;\
    _b = (START == 1)?B : data_b;\
end\
*/\
endmodule\
}