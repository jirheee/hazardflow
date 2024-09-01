// Generated by CIRCT unknown git version
// Standard header to adapt well known macros to our needs.
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_MEM_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_MEM_INIT
`endif // not def RANDOMIZE

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define 'PRINTF_COND' to add an extra gate to prints.
`ifndef PRINTF_COND_
  `ifdef PRINTF_COND
    `define PRINTF_COND_ (`PRINTF_COND)
  `else  // PRINTF_COND
    `define PRINTF_COND_ 1
  `endif // PRINTF_COND
`endif // not def PRINTF_COND_

// Users can define 'ASSERT_VERBOSE_COND' to add an extra gate to assert error printing.
`ifndef ASSERT_VERBOSE_COND_
  `ifdef ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ (`ASSERT_VERBOSE_COND)
  `else  // ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ 1
  `endif // ASSERT_VERBOSE_COND
`endif // not def ASSERT_VERBOSE_COND_

// Users can define 'STOP_COND' to add an extra gate to stop conditions.
`ifndef STOP_COND_
  `ifdef STOP_COND
    `define STOP_COND_ (`STOP_COND)
  `else  // STOP_COND
    `define STOP_COND_ 1
  `endif // STOP_COND
`endif // not def STOP_COND_

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_

module TagQueue(
  input         clock,
                reset,
                io_enq_valid,
                io_enq_bits_tag_rob_id_valid,
  input  [5:0]  io_enq_bits_tag_rob_id_bits,
  input         io_enq_bits_tag_addr_is_acc_addr,
                io_enq_bits_tag_addr_accumulate,
                io_enq_bits_tag_addr_read_full_acc_row,
                io_enq_bits_tag_addr_garbage_bit,
  input  [13:0] io_enq_bits_tag_addr_data,
  input  [4:0]  io_enq_bits_tag_rows,
                io_enq_bits_tag_cols,
  input  [2:0]  io_enq_bits_id,
  input         io_deq_ready,
  output        io_enq_ready,
                io_deq_valid,
                io_deq_bits_tag_rob_id_valid,
  output [5:0]  io_deq_bits_tag_rob_id_bits,
  output        io_deq_bits_tag_addr_is_acc_addr,
                io_deq_bits_tag_addr_accumulate,
                io_deq_bits_tag_addr_read_full_acc_row,
                io_deq_bits_tag_addr_garbage_bit,
  output [13:0] io_deq_bits_tag_addr_data,
  output [4:0]  io_deq_bits_tag_rows,
                io_deq_bits_tag_cols,
  output [2:0]  io_deq_bits_id,
  output        io_all_0_tag_rob_id_valid,
                io_all_0_tag_addr_is_acc_addr,
                io_all_0_tag_addr_accumulate,
                io_all_0_tag_addr_read_full_acc_row,
                io_all_0_tag_addr_garbage_bit,
  output [13:0] io_all_0_tag_addr_data,
  output        io_all_1_tag_rob_id_valid,
                io_all_1_tag_addr_is_acc_addr,
                io_all_1_tag_addr_accumulate,
                io_all_1_tag_addr_read_full_acc_row,
                io_all_1_tag_addr_garbage_bit,
  output [13:0] io_all_1_tag_addr_data,
  output        io_all_2_tag_rob_id_valid,
                io_all_2_tag_addr_is_acc_addr,
                io_all_2_tag_addr_accumulate,
                io_all_2_tag_addr_read_full_acc_row,
                io_all_2_tag_addr_garbage_bit,
  output [13:0] io_all_2_tag_addr_data,
  output        io_all_3_tag_rob_id_valid,
                io_all_3_tag_addr_is_acc_addr,
                io_all_3_tag_addr_accumulate,
                io_all_3_tag_addr_read_full_acc_row,
                io_all_3_tag_addr_garbage_bit,
  output [13:0] io_all_3_tag_addr_data,
  output        io_all_4_tag_rob_id_valid,
                io_all_4_tag_addr_is_acc_addr,
                io_all_4_tag_addr_accumulate,
                io_all_4_tag_addr_read_full_acc_row,
                io_all_4_tag_addr_garbage_bit,
  output [13:0] io_all_4_tag_addr_data,
  output        io_all_5_tag_rob_id_valid,
                io_all_5_tag_addr_is_acc_addr,
                io_all_5_tag_addr_accumulate,
                io_all_5_tag_addr_read_full_acc_row,
                io_all_5_tag_addr_garbage_bit,
  output [13:0] io_all_5_tag_addr_data
);

  reg              regs_0_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  reg  [5:0]       regs_0_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
  reg              regs_0_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  reg              regs_0_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  reg              regs_0_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  reg              regs_0_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  reg  [13:0]      regs_0_tag_addr_data;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_0_tag_rows;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_0_tag_cols;	// @[TagQueue.scala:18:17]
  reg  [2:0]       regs_0_id;	// @[TagQueue.scala:18:17]
  reg              regs_1_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  reg  [5:0]       regs_1_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
  reg              regs_1_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  reg              regs_1_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  reg              regs_1_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  reg              regs_1_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  reg  [13:0]      regs_1_tag_addr_data;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_1_tag_rows;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_1_tag_cols;	// @[TagQueue.scala:18:17]
  reg  [2:0]       regs_1_id;	// @[TagQueue.scala:18:17]
  reg              regs_2_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  reg  [5:0]       regs_2_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
  reg              regs_2_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  reg              regs_2_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  reg              regs_2_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  reg              regs_2_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  reg  [13:0]      regs_2_tag_addr_data;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_2_tag_rows;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_2_tag_cols;	// @[TagQueue.scala:18:17]
  reg  [2:0]       regs_2_id;	// @[TagQueue.scala:18:17]
  reg              regs_3_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  reg  [5:0]       regs_3_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
  reg              regs_3_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  reg              regs_3_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  reg              regs_3_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  reg              regs_3_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  reg  [13:0]      regs_3_tag_addr_data;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_3_tag_rows;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_3_tag_cols;	// @[TagQueue.scala:18:17]
  reg  [2:0]       regs_3_id;	// @[TagQueue.scala:18:17]
  reg              regs_4_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  reg  [5:0]       regs_4_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
  reg              regs_4_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  reg              regs_4_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  reg              regs_4_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  reg              regs_4_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  reg  [13:0]      regs_4_tag_addr_data;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_4_tag_rows;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_4_tag_cols;	// @[TagQueue.scala:18:17]
  reg  [2:0]       regs_4_id;	// @[TagQueue.scala:18:17]
  reg              regs_5_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  reg  [5:0]       regs_5_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
  reg              regs_5_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  reg              regs_5_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  reg              regs_5_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  reg              regs_5_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  reg  [13:0]      regs_5_tag_addr_data;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_5_tag_rows;	// @[TagQueue.scala:18:17]
  reg  [4:0]       regs_5_tag_cols;	// @[TagQueue.scala:18:17]
  reg  [2:0]       regs_5_id;	// @[TagQueue.scala:18:17]
  reg  [2:0]       raddr;	// @[TagQueue.scala:19:22]
  reg  [2:0]       waddr;	// @[TagQueue.scala:20:22]
  reg  [2:0]       len;	// @[TagQueue.scala:21:20]
  wire             _io_enq_ready_output = len != 3'h6;	// @[TagQueue.scala:21:20, :24:18]
  wire [7:0]       _GEN = {{regs_0_tag_rob_id_valid}, {regs_0_tag_rob_id_valid}, {regs_5_tag_rob_id_valid}, {regs_4_tag_rob_id_valid}, {regs_3_tag_rob_id_valid}, {regs_2_tag_rob_id_valid}, {regs_1_tag_rob_id_valid}, {regs_0_tag_rob_id_valid}};	// @[TagQueue.scala:18:17, :28:15]
  wire [7:0][5:0]  _GEN_0 = {{regs_0_tag_rob_id_bits}, {regs_0_tag_rob_id_bits}, {regs_5_tag_rob_id_bits}, {regs_4_tag_rob_id_bits}, {regs_3_tag_rob_id_bits}, {regs_2_tag_rob_id_bits}, {regs_1_tag_rob_id_bits}, {regs_0_tag_rob_id_bits}};	// @[TagQueue.scala:18:17, :28:15]
  wire [7:0]       _GEN_1 = {{regs_0_tag_addr_is_acc_addr}, {regs_0_tag_addr_is_acc_addr}, {regs_5_tag_addr_is_acc_addr}, {regs_4_tag_addr_is_acc_addr}, {regs_3_tag_addr_is_acc_addr}, {regs_2_tag_addr_is_acc_addr}, {regs_1_tag_addr_is_acc_addr}, {regs_0_tag_addr_is_acc_addr}};	// @[TagQueue.scala:18:17, :28:15]
  wire [7:0]       _GEN_2 = {{regs_0_tag_addr_accumulate}, {regs_0_tag_addr_accumulate}, {regs_5_tag_addr_accumulate}, {regs_4_tag_addr_accumulate}, {regs_3_tag_addr_accumulate}, {regs_2_tag_addr_accumulate}, {regs_1_tag_addr_accumulate}, {regs_0_tag_addr_accumulate}};	// @[TagQueue.scala:18:17, :28:15]
  wire [7:0]       _GEN_3 = {{regs_0_tag_addr_read_full_acc_row}, {regs_0_tag_addr_read_full_acc_row}, {regs_5_tag_addr_read_full_acc_row}, {regs_4_tag_addr_read_full_acc_row}, {regs_3_tag_addr_read_full_acc_row}, {regs_2_tag_addr_read_full_acc_row}, {regs_1_tag_addr_read_full_acc_row}, {regs_0_tag_addr_read_full_acc_row}};	// @[TagQueue.scala:18:17, :28:15]
  wire [7:0]       _GEN_4 = {{regs_0_tag_addr_garbage_bit}, {regs_0_tag_addr_garbage_bit}, {regs_5_tag_addr_garbage_bit}, {regs_4_tag_addr_garbage_bit}, {regs_3_tag_addr_garbage_bit}, {regs_2_tag_addr_garbage_bit}, {regs_1_tag_addr_garbage_bit}, {regs_0_tag_addr_garbage_bit}};	// @[TagQueue.scala:18:17, :28:15]
  wire [7:0][13:0] _GEN_5 = {{regs_0_tag_addr_data}, {regs_0_tag_addr_data}, {regs_5_tag_addr_data}, {regs_4_tag_addr_data}, {regs_3_tag_addr_data}, {regs_2_tag_addr_data}, {regs_1_tag_addr_data}, {regs_0_tag_addr_data}};	// @[TagQueue.scala:18:17, :28:15]
  wire [7:0][4:0]  _GEN_6 = {{regs_0_tag_rows}, {regs_0_tag_rows}, {regs_5_tag_rows}, {regs_4_tag_rows}, {regs_3_tag_rows}, {regs_2_tag_rows}, {regs_1_tag_rows}, {regs_0_tag_rows}};	// @[TagQueue.scala:18:17, :28:15]
  wire [7:0][4:0]  _GEN_7 = {{regs_0_tag_cols}, {regs_0_tag_cols}, {regs_5_tag_cols}, {regs_4_tag_cols}, {regs_3_tag_cols}, {regs_2_tag_cols}, {regs_1_tag_cols}, {regs_0_tag_cols}};	// @[TagQueue.scala:18:17, :28:15]
  wire [7:0][2:0]  _GEN_8 = {{regs_0_id}, {regs_0_id}, {regs_5_id}, {regs_4_id}, {regs_3_id}, {regs_2_id}, {regs_1_id}, {regs_0_id}};	// @[TagQueue.scala:18:17, :28:15]
  wire             _T_6 = _io_enq_ready_output & io_enq_valid;	// @[Decoupled.scala:51:35, TagQueue.scala:24:18]
  wire             _GEN_9 = _T_6 & waddr == 3'h0;	// @[Decoupled.scala:51:35, TagQueue.scala:18:17, :19:22, :20:22, :31:22, :32:17]
  wire             _GEN_10 = _T_6 & waddr == 3'h1;	// @[Decoupled.scala:51:35, TagQueue.scala:18:17, :20:22, :31:22, :32:17]
  wire             _GEN_11 = _T_6 & waddr == 3'h2;	// @[Decoupled.scala:51:35, TagQueue.scala:18:17, :20:22, :31:22, :32:17]
  wire             _GEN_12 = _T_6 & waddr == 3'h3;	// @[Decoupled.scala:51:35, TagQueue.scala:18:17, :20:22, :31:22, :32:17]
  wire             _GEN_13 = _T_6 & waddr == 3'h4;	// @[Decoupled.scala:51:35, TagQueue.scala:18:17, :20:22, :31:22, :32:17]
  wire             _GEN_14 = _T_6 & waddr == 3'h5;	// @[Decoupled.scala:51:35, TagQueue.scala:18:17, :20:22, :31:22, :32:17, Util.scala:12:16]
  wire             _T_8 = io_deq_ready & (|len);	// @[Decoupled.scala:51:35, TagQueue.scala:21:20, :23:19]
  wire             _GEN_15 = reset | _T_8 & raddr == 3'h0;	// @[Decoupled.scala:51:35, ExecuteController.scala:54:20, TagQueue.scala:19:22, :31:22, :36:22, :47:23]
  wire             _GEN_16 = reset | _T_8 & raddr == 3'h1;	// @[Decoupled.scala:51:35, ExecuteController.scala:54:20, TagQueue.scala:19:22, :31:22, :32:17, :36:22, :47:23]
  wire             _GEN_17 = reset | _T_8 & raddr == 3'h2;	// @[Decoupled.scala:51:35, ExecuteController.scala:54:20, TagQueue.scala:19:22, :31:22, :32:17, :36:22, :47:23]
  wire             _GEN_18 = reset | _T_8 & raddr == 3'h3;	// @[Decoupled.scala:51:35, ExecuteController.scala:54:20, TagQueue.scala:19:22, :31:22, :32:17, :36:22, :47:23]
  wire             _GEN_19 = reset | _T_8 & raddr == 3'h4;	// @[Decoupled.scala:51:35, ExecuteController.scala:54:20, TagQueue.scala:19:22, :31:22, :32:17, :36:22, :47:23]
  wire             _GEN_20 = reset | _T_8 & raddr == 3'h5;	// @[Decoupled.scala:51:35, ExecuteController.scala:54:20, TagQueue.scala:19:22, :31:22, :36:22, :47:23, Util.scala:12:16]
  always @(posedge clock) begin
    regs_0_tag_rob_id_valid <= ~_GEN_15 & (_GEN_9 ? io_enq_bits_tag_rob_id_valid : regs_0_tag_rob_id_valid);	// @[ExecuteController.scala:54:20, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_9) begin	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_0_tag_rob_id_bits <= io_enq_bits_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
      regs_0_tag_rows <= io_enq_bits_tag_rows;	// @[TagQueue.scala:18:17]
      regs_0_tag_cols <= io_enq_bits_tag_cols;	// @[TagQueue.scala:18:17]
      regs_0_id <= io_enq_bits_id;	// @[TagQueue.scala:18:17]
    end
    regs_0_tag_addr_is_acc_addr <= _GEN_15 | (_GEN_9 ? io_enq_bits_tag_addr_is_acc_addr : regs_0_tag_addr_is_acc_addr);	// @[ExecuteController.scala:54:20, LocalAddr.scala:95:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_0_tag_addr_accumulate <= _GEN_15 | (_GEN_9 ? io_enq_bits_tag_addr_accumulate : regs_0_tag_addr_accumulate);	// @[ExecuteController.scala:54:20, LocalAddr.scala:96:16, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_0_tag_addr_read_full_acc_row <= _GEN_15 | (_GEN_9 ? io_enq_bits_tag_addr_read_full_acc_row : regs_0_tag_addr_read_full_acc_row);	// @[ExecuteController.scala:54:20, LocalAddr.scala:97:23, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_0_tag_addr_garbage_bit <= _GEN_15 | (_GEN_9 ? io_enq_bits_tag_addr_garbage_bit : regs_0_tag_addr_garbage_bit);	// @[ExecuteController.scala:54:20, LocalAddr.scala:98:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_15)	// @[ExecuteController.scala:54:20, TagQueue.scala:31:22, :36:22, :47:23]
      regs_0_tag_addr_data <= 14'h3FFF;	// @[LocalAddr.scala:99:13, TagQueue.scala:18:17]
    else if (_GEN_9)	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_0_tag_addr_data <= io_enq_bits_tag_addr_data;	// @[TagQueue.scala:18:17]
    regs_1_tag_rob_id_valid <= ~_GEN_16 & (_GEN_10 ? io_enq_bits_tag_rob_id_valid : regs_1_tag_rob_id_valid);	// @[ExecuteController.scala:54:20, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_10) begin	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_1_tag_rob_id_bits <= io_enq_bits_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
      regs_1_tag_rows <= io_enq_bits_tag_rows;	// @[TagQueue.scala:18:17]
      regs_1_tag_cols <= io_enq_bits_tag_cols;	// @[TagQueue.scala:18:17]
      regs_1_id <= io_enq_bits_id;	// @[TagQueue.scala:18:17]
    end
    regs_1_tag_addr_is_acc_addr <= _GEN_16 | (_GEN_10 ? io_enq_bits_tag_addr_is_acc_addr : regs_1_tag_addr_is_acc_addr);	// @[ExecuteController.scala:54:20, LocalAddr.scala:95:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_1_tag_addr_accumulate <= _GEN_16 | (_GEN_10 ? io_enq_bits_tag_addr_accumulate : regs_1_tag_addr_accumulate);	// @[ExecuteController.scala:54:20, LocalAddr.scala:96:16, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_1_tag_addr_read_full_acc_row <= _GEN_16 | (_GEN_10 ? io_enq_bits_tag_addr_read_full_acc_row : regs_1_tag_addr_read_full_acc_row);	// @[ExecuteController.scala:54:20, LocalAddr.scala:97:23, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_1_tag_addr_garbage_bit <= _GEN_16 | (_GEN_10 ? io_enq_bits_tag_addr_garbage_bit : regs_1_tag_addr_garbage_bit);	// @[ExecuteController.scala:54:20, LocalAddr.scala:98:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_16)	// @[ExecuteController.scala:54:20, TagQueue.scala:31:22, :36:22, :47:23]
      regs_1_tag_addr_data <= 14'h3FFF;	// @[LocalAddr.scala:99:13, TagQueue.scala:18:17]
    else if (_GEN_10)	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_1_tag_addr_data <= io_enq_bits_tag_addr_data;	// @[TagQueue.scala:18:17]
    regs_2_tag_rob_id_valid <= ~_GEN_17 & (_GEN_11 ? io_enq_bits_tag_rob_id_valid : regs_2_tag_rob_id_valid);	// @[ExecuteController.scala:54:20, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_11) begin	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_2_tag_rob_id_bits <= io_enq_bits_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
      regs_2_tag_rows <= io_enq_bits_tag_rows;	// @[TagQueue.scala:18:17]
      regs_2_tag_cols <= io_enq_bits_tag_cols;	// @[TagQueue.scala:18:17]
      regs_2_id <= io_enq_bits_id;	// @[TagQueue.scala:18:17]
    end
    regs_2_tag_addr_is_acc_addr <= _GEN_17 | (_GEN_11 ? io_enq_bits_tag_addr_is_acc_addr : regs_2_tag_addr_is_acc_addr);	// @[ExecuteController.scala:54:20, LocalAddr.scala:95:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_2_tag_addr_accumulate <= _GEN_17 | (_GEN_11 ? io_enq_bits_tag_addr_accumulate : regs_2_tag_addr_accumulate);	// @[ExecuteController.scala:54:20, LocalAddr.scala:96:16, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_2_tag_addr_read_full_acc_row <= _GEN_17 | (_GEN_11 ? io_enq_bits_tag_addr_read_full_acc_row : regs_2_tag_addr_read_full_acc_row);	// @[ExecuteController.scala:54:20, LocalAddr.scala:97:23, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_2_tag_addr_garbage_bit <= _GEN_17 | (_GEN_11 ? io_enq_bits_tag_addr_garbage_bit : regs_2_tag_addr_garbage_bit);	// @[ExecuteController.scala:54:20, LocalAddr.scala:98:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_17)	// @[ExecuteController.scala:54:20, TagQueue.scala:31:22, :36:22, :47:23]
      regs_2_tag_addr_data <= 14'h3FFF;	// @[LocalAddr.scala:99:13, TagQueue.scala:18:17]
    else if (_GEN_11)	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_2_tag_addr_data <= io_enq_bits_tag_addr_data;	// @[TagQueue.scala:18:17]
    regs_3_tag_rob_id_valid <= ~_GEN_18 & (_GEN_12 ? io_enq_bits_tag_rob_id_valid : regs_3_tag_rob_id_valid);	// @[ExecuteController.scala:54:20, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_12) begin	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_3_tag_rob_id_bits <= io_enq_bits_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
      regs_3_tag_rows <= io_enq_bits_tag_rows;	// @[TagQueue.scala:18:17]
      regs_3_tag_cols <= io_enq_bits_tag_cols;	// @[TagQueue.scala:18:17]
      regs_3_id <= io_enq_bits_id;	// @[TagQueue.scala:18:17]
    end
    regs_3_tag_addr_is_acc_addr <= _GEN_18 | (_GEN_12 ? io_enq_bits_tag_addr_is_acc_addr : regs_3_tag_addr_is_acc_addr);	// @[ExecuteController.scala:54:20, LocalAddr.scala:95:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_3_tag_addr_accumulate <= _GEN_18 | (_GEN_12 ? io_enq_bits_tag_addr_accumulate : regs_3_tag_addr_accumulate);	// @[ExecuteController.scala:54:20, LocalAddr.scala:96:16, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_3_tag_addr_read_full_acc_row <= _GEN_18 | (_GEN_12 ? io_enq_bits_tag_addr_read_full_acc_row : regs_3_tag_addr_read_full_acc_row);	// @[ExecuteController.scala:54:20, LocalAddr.scala:97:23, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_3_tag_addr_garbage_bit <= _GEN_18 | (_GEN_12 ? io_enq_bits_tag_addr_garbage_bit : regs_3_tag_addr_garbage_bit);	// @[ExecuteController.scala:54:20, LocalAddr.scala:98:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_18)	// @[ExecuteController.scala:54:20, TagQueue.scala:31:22, :36:22, :47:23]
      regs_3_tag_addr_data <= 14'h3FFF;	// @[LocalAddr.scala:99:13, TagQueue.scala:18:17]
    else if (_GEN_12)	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_3_tag_addr_data <= io_enq_bits_tag_addr_data;	// @[TagQueue.scala:18:17]
    regs_4_tag_rob_id_valid <= ~_GEN_19 & (_GEN_13 ? io_enq_bits_tag_rob_id_valid : regs_4_tag_rob_id_valid);	// @[ExecuteController.scala:54:20, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_13) begin	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_4_tag_rob_id_bits <= io_enq_bits_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
      regs_4_tag_rows <= io_enq_bits_tag_rows;	// @[TagQueue.scala:18:17]
      regs_4_tag_cols <= io_enq_bits_tag_cols;	// @[TagQueue.scala:18:17]
      regs_4_id <= io_enq_bits_id;	// @[TagQueue.scala:18:17]
    end
    regs_4_tag_addr_is_acc_addr <= _GEN_19 | (_GEN_13 ? io_enq_bits_tag_addr_is_acc_addr : regs_4_tag_addr_is_acc_addr);	// @[ExecuteController.scala:54:20, LocalAddr.scala:95:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_4_tag_addr_accumulate <= _GEN_19 | (_GEN_13 ? io_enq_bits_tag_addr_accumulate : regs_4_tag_addr_accumulate);	// @[ExecuteController.scala:54:20, LocalAddr.scala:96:16, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_4_tag_addr_read_full_acc_row <= _GEN_19 | (_GEN_13 ? io_enq_bits_tag_addr_read_full_acc_row : regs_4_tag_addr_read_full_acc_row);	// @[ExecuteController.scala:54:20, LocalAddr.scala:97:23, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_4_tag_addr_garbage_bit <= _GEN_19 | (_GEN_13 ? io_enq_bits_tag_addr_garbage_bit : regs_4_tag_addr_garbage_bit);	// @[ExecuteController.scala:54:20, LocalAddr.scala:98:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_19)	// @[ExecuteController.scala:54:20, TagQueue.scala:31:22, :36:22, :47:23]
      regs_4_tag_addr_data <= 14'h3FFF;	// @[LocalAddr.scala:99:13, TagQueue.scala:18:17]
    else if (_GEN_13)	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_4_tag_addr_data <= io_enq_bits_tag_addr_data;	// @[TagQueue.scala:18:17]
    regs_5_tag_rob_id_valid <= ~_GEN_20 & (_GEN_14 ? io_enq_bits_tag_rob_id_valid : regs_5_tag_rob_id_valid);	// @[ExecuteController.scala:54:20, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_14) begin	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_5_tag_rob_id_bits <= io_enq_bits_tag_rob_id_bits;	// @[TagQueue.scala:18:17]
      regs_5_tag_rows <= io_enq_bits_tag_rows;	// @[TagQueue.scala:18:17]
      regs_5_tag_cols <= io_enq_bits_tag_cols;	// @[TagQueue.scala:18:17]
      regs_5_id <= io_enq_bits_id;	// @[TagQueue.scala:18:17]
    end
    regs_5_tag_addr_is_acc_addr <= _GEN_20 | (_GEN_14 ? io_enq_bits_tag_addr_is_acc_addr : regs_5_tag_addr_is_acc_addr);	// @[ExecuteController.scala:54:20, LocalAddr.scala:95:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_5_tag_addr_accumulate <= _GEN_20 | (_GEN_14 ? io_enq_bits_tag_addr_accumulate : regs_5_tag_addr_accumulate);	// @[ExecuteController.scala:54:20, LocalAddr.scala:96:16, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_5_tag_addr_read_full_acc_row <= _GEN_20 | (_GEN_14 ? io_enq_bits_tag_addr_read_full_acc_row : regs_5_tag_addr_read_full_acc_row);	// @[ExecuteController.scala:54:20, LocalAddr.scala:97:23, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    regs_5_tag_addr_garbage_bit <= _GEN_20 | (_GEN_14 ? io_enq_bits_tag_addr_garbage_bit : regs_5_tag_addr_garbage_bit);	// @[ExecuteController.scala:54:20, LocalAddr.scala:98:17, TagQueue.scala:18:17, :31:22, :32:17, :36:22, :47:23]
    if (_GEN_20)	// @[ExecuteController.scala:54:20, TagQueue.scala:31:22, :36:22, :47:23]
      regs_5_tag_addr_data <= 14'h3FFF;	// @[LocalAddr.scala:99:13, TagQueue.scala:18:17]
    else if (_GEN_14)	// @[TagQueue.scala:18:17, :31:22, :32:17]
      regs_5_tag_addr_data <= io_enq_bits_tag_addr_data;	// @[TagQueue.scala:18:17]
    if (reset) begin
      raddr <= 3'h0;	// @[TagQueue.scala:19:22]
      waddr <= 3'h0;	// @[TagQueue.scala:19:22, :20:22]
      len <= 3'h0;	// @[TagQueue.scala:19:22, :21:20]
    end
    else begin
      if (_T_8) begin	// @[Decoupled.scala:51:35]
        if (raddr > 3'h4)	// @[TagQueue.scala:19:22, :32:17, Util.scala:13:13]
          raddr <= 3'h1 - (3'h5 - raddr) - 3'h1;	// @[TagQueue.scala:19:22, :32:17, Util.scala:12:16, :13:{48,57,62}]
        else	// @[Util.scala:13:13]
          raddr <= raddr + 3'h1;	// @[TagQueue.scala:19:22, :32:17, Util.scala:13:71]
      end
      if (_T_6) begin	// @[Decoupled.scala:51:35]
        if (waddr > 3'h4)	// @[TagQueue.scala:20:22, :32:17, Util.scala:13:13]
          waddr <= 3'h1 - (3'h5 - waddr) - 3'h1;	// @[TagQueue.scala:20:22, :32:17, Util.scala:12:16, :13:{48,57,62}]
        else	// @[Util.scala:13:13]
          waddr <= waddr + 3'h1;	// @[TagQueue.scala:20:22, :32:17, Util.scala:13:71]
      end
      if (_T_6 & ~_T_8)	// @[Decoupled.scala:51:35, TagQueue.scala:41:{21,24}]
        len <= len + 3'h1;	// @[TagQueue.scala:21:20, :32:17, :42:16]
      else if (~_T_6 & _T_8)	// @[Decoupled.scala:51:35, TagQueue.scala:43:{14,27}]
        len <= len - 3'h1;	// @[TagQueue.scala:21:20, :44:16]
    end
  end // always @(posedge)
  `ifndef SYNTHESIS
    always @(posedge clock) begin	// @[TagQueue.scala:51:9]
      if (~reset & (&len)) begin	// @[TagQueue.scala:21:20, :51:{9,14}]
        if (`ASSERT_VERBOSE_COND_)	// @[TagQueue.scala:51:9]
          $error("Assertion failed\n    at TagQueue.scala:51 assert(len <= entries.U)\n");	// @[TagQueue.scala:51:9]
        if (`STOP_COND_)	// @[TagQueue.scala:51:9]
          $fatal;	// @[TagQueue.scala:51:9]
      end
    end // always @(posedge)
    `ifdef FIRRTL_BEFORE_INITIAL
      `FIRRTL_BEFORE_INITIAL
    `endif // FIRRTL_BEFORE_INITIAL
    logic [31:0] _RANDOM_0;
    logic [31:0] _RANDOM_1;
    logic [31:0] _RANDOM_2;
    logic [31:0] _RANDOM_3;
    logic [31:0] _RANDOM_4;
    logic [31:0] _RANDOM_5;
    logic [31:0] _RANDOM_6;
    logic [31:0] _RANDOM_7;
    logic [31:0] _RANDOM_8;
    logic [31:0] _RANDOM_9;
    logic [31:0] _RANDOM_10;
    initial begin
      `ifdef INIT_RANDOM_PROLOG_
        `INIT_RANDOM_PROLOG_
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT
        _RANDOM_0 = `RANDOM;
        _RANDOM_1 = `RANDOM;
        _RANDOM_2 = `RANDOM;
        _RANDOM_3 = `RANDOM;
        _RANDOM_4 = `RANDOM;
        _RANDOM_5 = `RANDOM;
        _RANDOM_6 = `RANDOM;
        _RANDOM_7 = `RANDOM;
        _RANDOM_8 = `RANDOM;
        _RANDOM_9 = `RANDOM;
        _RANDOM_10 = `RANDOM;
        regs_0_tag_rob_id_valid = _RANDOM_0[0];	// @[TagQueue.scala:18:17]
        regs_0_tag_rob_id_bits = _RANDOM_0[6:1];	// @[TagQueue.scala:18:17]
        regs_0_tag_addr_is_acc_addr = _RANDOM_0[7];	// @[TagQueue.scala:18:17]
        regs_0_tag_addr_accumulate = _RANDOM_0[8];	// @[TagQueue.scala:18:17]
        regs_0_tag_addr_read_full_acc_row = _RANDOM_0[9];	// @[TagQueue.scala:18:17]
        regs_0_tag_addr_garbage_bit = _RANDOM_0[24];	// @[TagQueue.scala:18:17]
        regs_0_tag_addr_data = {_RANDOM_0[31:25], _RANDOM_1[6:0]};	// @[TagQueue.scala:18:17]
        regs_0_tag_rows = _RANDOM_1[11:7];	// @[TagQueue.scala:18:17]
        regs_0_tag_cols = _RANDOM_1[16:12];	// @[TagQueue.scala:18:17]
        regs_0_id = _RANDOM_1[19:17];	// @[TagQueue.scala:18:17]
        regs_1_tag_rob_id_valid = _RANDOM_1[25];	// @[TagQueue.scala:18:17]
        regs_1_tag_rob_id_bits = _RANDOM_1[31:26];	// @[TagQueue.scala:18:17]
        regs_1_tag_addr_is_acc_addr = _RANDOM_2[0];	// @[TagQueue.scala:18:17]
        regs_1_tag_addr_accumulate = _RANDOM_2[1];	// @[TagQueue.scala:18:17]
        regs_1_tag_addr_read_full_acc_row = _RANDOM_2[2];	// @[TagQueue.scala:18:17]
        regs_1_tag_addr_garbage_bit = _RANDOM_2[17];	// @[TagQueue.scala:18:17]
        regs_1_tag_addr_data = _RANDOM_2[31:18];	// @[TagQueue.scala:18:17]
        regs_1_tag_rows = _RANDOM_3[4:0];	// @[TagQueue.scala:18:17]
        regs_1_tag_cols = _RANDOM_3[9:5];	// @[TagQueue.scala:18:17]
        regs_1_id = _RANDOM_3[12:10];	// @[TagQueue.scala:18:17]
        regs_2_tag_rob_id_valid = _RANDOM_3[18];	// @[TagQueue.scala:18:17]
        regs_2_tag_rob_id_bits = _RANDOM_3[24:19];	// @[TagQueue.scala:18:17]
        regs_2_tag_addr_is_acc_addr = _RANDOM_3[25];	// @[TagQueue.scala:18:17]
        regs_2_tag_addr_accumulate = _RANDOM_3[26];	// @[TagQueue.scala:18:17]
        regs_2_tag_addr_read_full_acc_row = _RANDOM_3[27];	// @[TagQueue.scala:18:17]
        regs_2_tag_addr_garbage_bit = _RANDOM_4[10];	// @[TagQueue.scala:18:17]
        regs_2_tag_addr_data = _RANDOM_4[24:11];	// @[TagQueue.scala:18:17]
        regs_2_tag_rows = _RANDOM_4[29:25];	// @[TagQueue.scala:18:17]
        regs_2_tag_cols = {_RANDOM_4[31:30], _RANDOM_5[2:0]};	// @[TagQueue.scala:18:17]
        regs_2_id = _RANDOM_5[5:3];	// @[TagQueue.scala:18:17]
        regs_3_tag_rob_id_valid = _RANDOM_5[11];	// @[TagQueue.scala:18:17]
        regs_3_tag_rob_id_bits = _RANDOM_5[17:12];	// @[TagQueue.scala:18:17]
        regs_3_tag_addr_is_acc_addr = _RANDOM_5[18];	// @[TagQueue.scala:18:17]
        regs_3_tag_addr_accumulate = _RANDOM_5[19];	// @[TagQueue.scala:18:17]
        regs_3_tag_addr_read_full_acc_row = _RANDOM_5[20];	// @[TagQueue.scala:18:17]
        regs_3_tag_addr_garbage_bit = _RANDOM_6[3];	// @[TagQueue.scala:18:17]
        regs_3_tag_addr_data = _RANDOM_6[17:4];	// @[TagQueue.scala:18:17]
        regs_3_tag_rows = _RANDOM_6[22:18];	// @[TagQueue.scala:18:17]
        regs_3_tag_cols = _RANDOM_6[27:23];	// @[TagQueue.scala:18:17]
        regs_3_id = _RANDOM_6[30:28];	// @[TagQueue.scala:18:17]
        regs_4_tag_rob_id_valid = _RANDOM_7[4];	// @[TagQueue.scala:18:17]
        regs_4_tag_rob_id_bits = _RANDOM_7[10:5];	// @[TagQueue.scala:18:17]
        regs_4_tag_addr_is_acc_addr = _RANDOM_7[11];	// @[TagQueue.scala:18:17]
        regs_4_tag_addr_accumulate = _RANDOM_7[12];	// @[TagQueue.scala:18:17]
        regs_4_tag_addr_read_full_acc_row = _RANDOM_7[13];	// @[TagQueue.scala:18:17]
        regs_4_tag_addr_garbage_bit = _RANDOM_7[28];	// @[TagQueue.scala:18:17]
        regs_4_tag_addr_data = {_RANDOM_7[31:29], _RANDOM_8[10:0]};	// @[TagQueue.scala:18:17]
        regs_4_tag_rows = _RANDOM_8[15:11];	// @[TagQueue.scala:18:17]
        regs_4_tag_cols = _RANDOM_8[20:16];	// @[TagQueue.scala:18:17]
        regs_4_id = _RANDOM_8[23:21];	// @[TagQueue.scala:18:17]
        regs_5_tag_rob_id_valid = _RANDOM_8[29];	// @[TagQueue.scala:18:17]
        regs_5_tag_rob_id_bits = {_RANDOM_8[31:30], _RANDOM_9[3:0]};	// @[TagQueue.scala:18:17]
        regs_5_tag_addr_is_acc_addr = _RANDOM_9[4];	// @[TagQueue.scala:18:17]
        regs_5_tag_addr_accumulate = _RANDOM_9[5];	// @[TagQueue.scala:18:17]
        regs_5_tag_addr_read_full_acc_row = _RANDOM_9[6];	// @[TagQueue.scala:18:17]
        regs_5_tag_addr_garbage_bit = _RANDOM_9[21];	// @[TagQueue.scala:18:17]
        regs_5_tag_addr_data = {_RANDOM_9[31:22], _RANDOM_10[3:0]};	// @[TagQueue.scala:18:17]
        regs_5_tag_rows = _RANDOM_10[8:4];	// @[TagQueue.scala:18:17]
        regs_5_tag_cols = _RANDOM_10[13:9];	// @[TagQueue.scala:18:17]
        regs_5_id = _RANDOM_10[16:14];	// @[TagQueue.scala:18:17]
        raddr = _RANDOM_10[24:22];	// @[TagQueue.scala:18:17, :19:22]
        waddr = _RANDOM_10[27:25];	// @[TagQueue.scala:18:17, :20:22]
        len = _RANDOM_10[30:28];	// @[TagQueue.scala:18:17, :21:20]
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // not def SYNTHESIS
  assign io_enq_ready = _io_enq_ready_output;	// @[TagQueue.scala:24:18]
  assign io_deq_valid = |len;	// @[TagQueue.scala:21:20, :23:19]
  assign io_deq_bits_tag_rob_id_valid = _GEN[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_deq_bits_tag_rob_id_bits = _GEN_0[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_deq_bits_tag_addr_is_acc_addr = _GEN_1[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_deq_bits_tag_addr_accumulate = _GEN_2[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_deq_bits_tag_addr_read_full_acc_row = _GEN_3[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_deq_bits_tag_addr_garbage_bit = _GEN_4[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_deq_bits_tag_addr_data = _GEN_5[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_deq_bits_tag_rows = _GEN_6[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_deq_bits_tag_cols = _GEN_7[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_deq_bits_id = _GEN_8[raddr];	// @[TagQueue.scala:19:22, :28:15]
  assign io_all_0_tag_rob_id_valid = regs_0_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  assign io_all_0_tag_addr_is_acc_addr = regs_0_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  assign io_all_0_tag_addr_accumulate = regs_0_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  assign io_all_0_tag_addr_read_full_acc_row = regs_0_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  assign io_all_0_tag_addr_garbage_bit = regs_0_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  assign io_all_0_tag_addr_data = regs_0_tag_addr_data;	// @[TagQueue.scala:18:17]
  assign io_all_1_tag_rob_id_valid = regs_1_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  assign io_all_1_tag_addr_is_acc_addr = regs_1_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  assign io_all_1_tag_addr_accumulate = regs_1_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  assign io_all_1_tag_addr_read_full_acc_row = regs_1_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  assign io_all_1_tag_addr_garbage_bit = regs_1_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  assign io_all_1_tag_addr_data = regs_1_tag_addr_data;	// @[TagQueue.scala:18:17]
  assign io_all_2_tag_rob_id_valid = regs_2_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  assign io_all_2_tag_addr_is_acc_addr = regs_2_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  assign io_all_2_tag_addr_accumulate = regs_2_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  assign io_all_2_tag_addr_read_full_acc_row = regs_2_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  assign io_all_2_tag_addr_garbage_bit = regs_2_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  assign io_all_2_tag_addr_data = regs_2_tag_addr_data;	// @[TagQueue.scala:18:17]
  assign io_all_3_tag_rob_id_valid = regs_3_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  assign io_all_3_tag_addr_is_acc_addr = regs_3_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  assign io_all_3_tag_addr_accumulate = regs_3_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  assign io_all_3_tag_addr_read_full_acc_row = regs_3_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  assign io_all_3_tag_addr_garbage_bit = regs_3_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  assign io_all_3_tag_addr_data = regs_3_tag_addr_data;	// @[TagQueue.scala:18:17]
  assign io_all_4_tag_rob_id_valid = regs_4_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  assign io_all_4_tag_addr_is_acc_addr = regs_4_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  assign io_all_4_tag_addr_accumulate = regs_4_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  assign io_all_4_tag_addr_read_full_acc_row = regs_4_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  assign io_all_4_tag_addr_garbage_bit = regs_4_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  assign io_all_4_tag_addr_data = regs_4_tag_addr_data;	// @[TagQueue.scala:18:17]
  assign io_all_5_tag_rob_id_valid = regs_5_tag_rob_id_valid;	// @[TagQueue.scala:18:17]
  assign io_all_5_tag_addr_is_acc_addr = regs_5_tag_addr_is_acc_addr;	// @[TagQueue.scala:18:17]
  assign io_all_5_tag_addr_accumulate = regs_5_tag_addr_accumulate;	// @[TagQueue.scala:18:17]
  assign io_all_5_tag_addr_read_full_acc_row = regs_5_tag_addr_read_full_acc_row;	// @[TagQueue.scala:18:17]
  assign io_all_5_tag_addr_garbage_bit = regs_5_tag_addr_garbage_bit;	// @[TagQueue.scala:18:17]
  assign io_all_5_tag_addr_data = regs_5_tag_addr_data;	// @[TagQueue.scala:18:17]
endmodule

