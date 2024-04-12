module Register(
  input         clock,
  input         reset,
  input  [31:0] io_inData,
  input         io_enable,
  output [31:0] io_outData
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_; // @[Register.scala 10:24]
  assign io_outData = reg_; // @[Register.scala 14:18]
  always @(posedge clock) begin
    if (reset) begin // @[Register.scala 10:24]
      reg_ <= 32'h0; // @[Register.scala 10:24]
    end else if (io_enable) begin // @[Register.scala 11:25]
      reg_ <= io_inData; // @[Register.scala 12:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_ = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PEctrlregs(
  input         clock,
  input         reset,
  input  [31:0] io_inData_18,
  input  [31:0] io_inData_19,
  input  [31:0] io_inData_20,
  input  [31:0] io_inData_21,
  input  [31:0] io_inData_22,
  input  [31:0] io_inData_23,
  input  [31:0] io_inData_24,
  input  [31:0] io_inData_25,
  input  [31:0] io_inData_26,
  input  [31:0] io_inData_27,
  input  [31:0] io_inData_28,
  output [31:0] io_outData_0,
  output [31:0] io_outData_1,
  output [31:0] io_outData_2,
  output [31:0] io_outData_3,
  output [31:0] io_outData_4,
  output [31:0] io_outData_5,
  output [31:0] io_outData_6,
  output [31:0] io_outData_7,
  output [31:0] io_outData_8,
  output [31:0] io_outData_9,
  output [31:0] io_outData_10,
  output [31:0] io_outData_11,
  output [31:0] io_outData_12,
  output [31:0] io_outData_13,
  output [31:0] io_outData_14,
  output [31:0] io_outData_15,
  output [31:0] io_outData_16,
  output [31:0] io_outData_17,
  output [31:0] io_outData_18,
  output [31:0] io_outData_19,
  output [31:0] io_outData_20,
  output [31:0] io_outData_21,
  output [31:0] io_outData_22,
  output [31:0] io_outData_23,
  output [31:0] io_outData_24,
  output [31:0] io_outData_25,
  output [31:0] io_outData_26,
  output [31:0] io_outData_27,
  output [31:0] io_outData_28,
  input         io_wen_18,
  input         io_wen_19,
  input         io_wen_20,
  input         io_wen_21,
  input         io_wen_22,
  input         io_wen_23,
  input         io_wen_24,
  input         io_wen_25,
  input         io_wen_26,
  input         io_wen_27,
  input         io_wen_28,
  input  [31:0] io_configwaddr,
  input         io_configwen,
  input  [31:0] io_configwdata
);
  wire  Ctrlregs_0_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_0_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_0_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_0_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_0_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_1_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_1_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_1_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_1_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_1_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_2_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_2_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_2_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_2_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_2_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_3_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_3_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_3_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_3_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_3_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_4_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_4_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_4_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_4_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_4_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_5_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_5_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_5_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_5_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_5_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_6_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_6_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_6_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_6_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_6_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_7_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_7_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_7_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_7_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_7_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_8_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_8_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_8_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_8_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_8_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_9_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_9_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_9_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_9_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_9_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_10_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_10_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_10_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_10_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_10_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_11_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_11_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_11_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_11_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_11_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_12_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_12_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_12_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_12_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_12_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_13_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_13_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_13_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_13_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_13_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_14_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_14_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_14_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_14_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_14_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_15_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_15_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_15_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_15_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_15_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_16_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_16_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_16_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_16_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_16_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_17_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_17_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_17_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_17_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_17_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_18_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_18_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_18_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_18_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_18_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_19_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_19_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_19_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_19_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_19_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_20_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_20_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_20_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_20_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_20_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_21_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_21_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_21_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_21_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_21_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_22_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_22_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_22_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_22_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_22_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_23_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_23_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_23_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_23_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_23_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_24_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_24_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_24_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_24_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_24_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_25_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_25_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_25_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_25_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_25_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_26_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_26_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_26_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_26_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_26_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_27_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_27_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_27_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_27_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_27_io_outData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_28_clock; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_28_reset; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_28_io_inData; // @[PEctrlregs.scala 14:59]
  wire  Ctrlregs_28_io_enable; // @[PEctrlregs.scala 14:59]
  wire [31:0] Ctrlregs_28_io_outData; // @[PEctrlregs.scala 14:59]
  Register Ctrlregs_0 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_0_clock),
    .reset(Ctrlregs_0_reset),
    .io_inData(Ctrlregs_0_io_inData),
    .io_enable(Ctrlregs_0_io_enable),
    .io_outData(Ctrlregs_0_io_outData)
  );
  Register Ctrlregs_1 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_1_clock),
    .reset(Ctrlregs_1_reset),
    .io_inData(Ctrlregs_1_io_inData),
    .io_enable(Ctrlregs_1_io_enable),
    .io_outData(Ctrlregs_1_io_outData)
  );
  Register Ctrlregs_2 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_2_clock),
    .reset(Ctrlregs_2_reset),
    .io_inData(Ctrlregs_2_io_inData),
    .io_enable(Ctrlregs_2_io_enable),
    .io_outData(Ctrlregs_2_io_outData)
  );
  Register Ctrlregs_3 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_3_clock),
    .reset(Ctrlregs_3_reset),
    .io_inData(Ctrlregs_3_io_inData),
    .io_enable(Ctrlregs_3_io_enable),
    .io_outData(Ctrlregs_3_io_outData)
  );
  Register Ctrlregs_4 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_4_clock),
    .reset(Ctrlregs_4_reset),
    .io_inData(Ctrlregs_4_io_inData),
    .io_enable(Ctrlregs_4_io_enable),
    .io_outData(Ctrlregs_4_io_outData)
  );
  Register Ctrlregs_5 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_5_clock),
    .reset(Ctrlregs_5_reset),
    .io_inData(Ctrlregs_5_io_inData),
    .io_enable(Ctrlregs_5_io_enable),
    .io_outData(Ctrlregs_5_io_outData)
  );
  Register Ctrlregs_6 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_6_clock),
    .reset(Ctrlregs_6_reset),
    .io_inData(Ctrlregs_6_io_inData),
    .io_enable(Ctrlregs_6_io_enable),
    .io_outData(Ctrlregs_6_io_outData)
  );
  Register Ctrlregs_7 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_7_clock),
    .reset(Ctrlregs_7_reset),
    .io_inData(Ctrlregs_7_io_inData),
    .io_enable(Ctrlregs_7_io_enable),
    .io_outData(Ctrlregs_7_io_outData)
  );
  Register Ctrlregs_8 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_8_clock),
    .reset(Ctrlregs_8_reset),
    .io_inData(Ctrlregs_8_io_inData),
    .io_enable(Ctrlregs_8_io_enable),
    .io_outData(Ctrlregs_8_io_outData)
  );
  Register Ctrlregs_9 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_9_clock),
    .reset(Ctrlregs_9_reset),
    .io_inData(Ctrlregs_9_io_inData),
    .io_enable(Ctrlregs_9_io_enable),
    .io_outData(Ctrlregs_9_io_outData)
  );
  Register Ctrlregs_10 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_10_clock),
    .reset(Ctrlregs_10_reset),
    .io_inData(Ctrlregs_10_io_inData),
    .io_enable(Ctrlregs_10_io_enable),
    .io_outData(Ctrlregs_10_io_outData)
  );
  Register Ctrlregs_11 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_11_clock),
    .reset(Ctrlregs_11_reset),
    .io_inData(Ctrlregs_11_io_inData),
    .io_enable(Ctrlregs_11_io_enable),
    .io_outData(Ctrlregs_11_io_outData)
  );
  Register Ctrlregs_12 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_12_clock),
    .reset(Ctrlregs_12_reset),
    .io_inData(Ctrlregs_12_io_inData),
    .io_enable(Ctrlregs_12_io_enable),
    .io_outData(Ctrlregs_12_io_outData)
  );
  Register Ctrlregs_13 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_13_clock),
    .reset(Ctrlregs_13_reset),
    .io_inData(Ctrlregs_13_io_inData),
    .io_enable(Ctrlregs_13_io_enable),
    .io_outData(Ctrlregs_13_io_outData)
  );
  Register Ctrlregs_14 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_14_clock),
    .reset(Ctrlregs_14_reset),
    .io_inData(Ctrlregs_14_io_inData),
    .io_enable(Ctrlregs_14_io_enable),
    .io_outData(Ctrlregs_14_io_outData)
  );
  Register Ctrlregs_15 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_15_clock),
    .reset(Ctrlregs_15_reset),
    .io_inData(Ctrlregs_15_io_inData),
    .io_enable(Ctrlregs_15_io_enable),
    .io_outData(Ctrlregs_15_io_outData)
  );
  Register Ctrlregs_16 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_16_clock),
    .reset(Ctrlregs_16_reset),
    .io_inData(Ctrlregs_16_io_inData),
    .io_enable(Ctrlregs_16_io_enable),
    .io_outData(Ctrlregs_16_io_outData)
  );
  Register Ctrlregs_17 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_17_clock),
    .reset(Ctrlregs_17_reset),
    .io_inData(Ctrlregs_17_io_inData),
    .io_enable(Ctrlregs_17_io_enable),
    .io_outData(Ctrlregs_17_io_outData)
  );
  Register Ctrlregs_18 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_18_clock),
    .reset(Ctrlregs_18_reset),
    .io_inData(Ctrlregs_18_io_inData),
    .io_enable(Ctrlregs_18_io_enable),
    .io_outData(Ctrlregs_18_io_outData)
  );
  Register Ctrlregs_19 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_19_clock),
    .reset(Ctrlregs_19_reset),
    .io_inData(Ctrlregs_19_io_inData),
    .io_enable(Ctrlregs_19_io_enable),
    .io_outData(Ctrlregs_19_io_outData)
  );
  Register Ctrlregs_20 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_20_clock),
    .reset(Ctrlregs_20_reset),
    .io_inData(Ctrlregs_20_io_inData),
    .io_enable(Ctrlregs_20_io_enable),
    .io_outData(Ctrlregs_20_io_outData)
  );
  Register Ctrlregs_21 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_21_clock),
    .reset(Ctrlregs_21_reset),
    .io_inData(Ctrlregs_21_io_inData),
    .io_enable(Ctrlregs_21_io_enable),
    .io_outData(Ctrlregs_21_io_outData)
  );
  Register Ctrlregs_22 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_22_clock),
    .reset(Ctrlregs_22_reset),
    .io_inData(Ctrlregs_22_io_inData),
    .io_enable(Ctrlregs_22_io_enable),
    .io_outData(Ctrlregs_22_io_outData)
  );
  Register Ctrlregs_23 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_23_clock),
    .reset(Ctrlregs_23_reset),
    .io_inData(Ctrlregs_23_io_inData),
    .io_enable(Ctrlregs_23_io_enable),
    .io_outData(Ctrlregs_23_io_outData)
  );
  Register Ctrlregs_24 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_24_clock),
    .reset(Ctrlregs_24_reset),
    .io_inData(Ctrlregs_24_io_inData),
    .io_enable(Ctrlregs_24_io_enable),
    .io_outData(Ctrlregs_24_io_outData)
  );
  Register Ctrlregs_25 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_25_clock),
    .reset(Ctrlregs_25_reset),
    .io_inData(Ctrlregs_25_io_inData),
    .io_enable(Ctrlregs_25_io_enable),
    .io_outData(Ctrlregs_25_io_outData)
  );
  Register Ctrlregs_26 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_26_clock),
    .reset(Ctrlregs_26_reset),
    .io_inData(Ctrlregs_26_io_inData),
    .io_enable(Ctrlregs_26_io_enable),
    .io_outData(Ctrlregs_26_io_outData)
  );
  Register Ctrlregs_27 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_27_clock),
    .reset(Ctrlregs_27_reset),
    .io_inData(Ctrlregs_27_io_inData),
    .io_enable(Ctrlregs_27_io_enable),
    .io_outData(Ctrlregs_27_io_outData)
  );
  Register Ctrlregs_28 ( // @[PEctrlregs.scala 14:59]
    .clock(Ctrlregs_28_clock),
    .reset(Ctrlregs_28_reset),
    .io_inData(Ctrlregs_28_io_inData),
    .io_enable(Ctrlregs_28_io_enable),
    .io_outData(Ctrlregs_28_io_outData)
  );
  assign io_outData_0 = Ctrlregs_0_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_1 = Ctrlregs_1_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_2 = Ctrlregs_2_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_3 = Ctrlregs_3_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_4 = Ctrlregs_4_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_5 = Ctrlregs_5_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_6 = Ctrlregs_6_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_7 = Ctrlregs_7_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_8 = Ctrlregs_8_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_9 = Ctrlregs_9_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_10 = Ctrlregs_10_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_11 = Ctrlregs_11_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_12 = Ctrlregs_12_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_13 = Ctrlregs_13_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_14 = Ctrlregs_14_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_15 = Ctrlregs_15_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_16 = Ctrlregs_16_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_17 = Ctrlregs_17_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_18 = Ctrlregs_18_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_19 = Ctrlregs_19_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_20 = Ctrlregs_20_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_21 = Ctrlregs_21_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_22 = Ctrlregs_22_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_23 = Ctrlregs_23_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_24 = Ctrlregs_24_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_25 = Ctrlregs_25_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_26 = Ctrlregs_26_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_27 = Ctrlregs_27_io_outData; // @[PEctrlregs.scala 17:19]
  assign io_outData_28 = Ctrlregs_28_io_outData; // @[PEctrlregs.scala 17:19]
  assign Ctrlregs_0_clock = clock;
  assign Ctrlregs_0_reset = reset;
  assign Ctrlregs_0_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_0_io_enable = io_configwen & io_configwaddr == 32'h50; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_1_clock = clock;
  assign Ctrlregs_1_reset = reset;
  assign Ctrlregs_1_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_1_io_enable = io_configwen & io_configwaddr == 32'h51; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_2_clock = clock;
  assign Ctrlregs_2_reset = reset;
  assign Ctrlregs_2_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_2_io_enable = io_configwen & io_configwaddr == 32'h52; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_3_clock = clock;
  assign Ctrlregs_3_reset = reset;
  assign Ctrlregs_3_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_3_io_enable = io_configwen & io_configwaddr == 32'h53; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_4_clock = clock;
  assign Ctrlregs_4_reset = reset;
  assign Ctrlregs_4_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_4_io_enable = io_configwen & io_configwaddr == 32'h54; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_5_clock = clock;
  assign Ctrlregs_5_reset = reset;
  assign Ctrlregs_5_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_5_io_enable = io_configwen & io_configwaddr == 32'h55; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_6_clock = clock;
  assign Ctrlregs_6_reset = reset;
  assign Ctrlregs_6_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_6_io_enable = io_configwen & io_configwaddr == 32'h56; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_7_clock = clock;
  assign Ctrlregs_7_reset = reset;
  assign Ctrlregs_7_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_7_io_enable = io_configwen & io_configwaddr == 32'h57; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_8_clock = clock;
  assign Ctrlregs_8_reset = reset;
  assign Ctrlregs_8_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_8_io_enable = io_configwen & io_configwaddr == 32'h58; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_9_clock = clock;
  assign Ctrlregs_9_reset = reset;
  assign Ctrlregs_9_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_9_io_enable = io_configwen & io_configwaddr == 32'h59; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_10_clock = clock;
  assign Ctrlregs_10_reset = reset;
  assign Ctrlregs_10_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_10_io_enable = io_configwen & io_configwaddr == 32'h5a; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_11_clock = clock;
  assign Ctrlregs_11_reset = reset;
  assign Ctrlregs_11_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_11_io_enable = io_configwen & io_configwaddr == 32'h5b; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_12_clock = clock;
  assign Ctrlregs_12_reset = reset;
  assign Ctrlregs_12_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_12_io_enable = io_configwen & io_configwaddr == 32'h5c; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_13_clock = clock;
  assign Ctrlregs_13_reset = reset;
  assign Ctrlregs_13_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_13_io_enable = io_configwen & io_configwaddr == 32'h5d; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_14_clock = clock;
  assign Ctrlregs_14_reset = reset;
  assign Ctrlregs_14_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_14_io_enable = io_configwen & io_configwaddr == 32'h5e; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_15_clock = clock;
  assign Ctrlregs_15_reset = reset;
  assign Ctrlregs_15_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_15_io_enable = io_configwen & io_configwaddr == 32'h5f; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_16_clock = clock;
  assign Ctrlregs_16_reset = reset;
  assign Ctrlregs_16_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_16_io_enable = io_configwen & io_configwaddr == 32'h60; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_17_clock = clock;
  assign Ctrlregs_17_reset = reset;
  assign Ctrlregs_17_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_17_io_enable = io_configwen & io_configwaddr == 32'h61; // @[PEctrlregs.scala 18:52]
  assign Ctrlregs_18_clock = clock;
  assign Ctrlregs_18_reset = reset;
  assign Ctrlregs_18_io_inData = io_configwen ? io_configwdata : io_inData_18; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_18_io_enable = io_wen_18 | io_configwen & io_configwaddr == 32'h62; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_19_clock = clock;
  assign Ctrlregs_19_reset = reset;
  assign Ctrlregs_19_io_inData = io_configwen ? io_configwdata : io_inData_19; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_19_io_enable = io_wen_19 | io_configwen & io_configwaddr == 32'h63; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_20_clock = clock;
  assign Ctrlregs_20_reset = reset;
  assign Ctrlregs_20_io_inData = io_configwen ? io_configwdata : io_inData_20; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_20_io_enable = io_wen_20 | io_configwen & io_configwaddr == 32'h64; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_21_clock = clock;
  assign Ctrlregs_21_reset = reset;
  assign Ctrlregs_21_io_inData = io_configwen ? io_configwdata : io_inData_21; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_21_io_enable = io_wen_21 | io_configwen & io_configwaddr == 32'h65; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_22_clock = clock;
  assign Ctrlregs_22_reset = reset;
  assign Ctrlregs_22_io_inData = io_configwen ? io_configwdata : io_inData_22; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_22_io_enable = io_wen_22 | io_configwen & io_configwaddr == 32'h66; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_23_clock = clock;
  assign Ctrlregs_23_reset = reset;
  assign Ctrlregs_23_io_inData = io_configwen ? io_configwdata : io_inData_23; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_23_io_enable = io_wen_23 | io_configwen & io_configwaddr == 32'h67; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_24_clock = clock;
  assign Ctrlregs_24_reset = reset;
  assign Ctrlregs_24_io_inData = io_configwen ? io_configwdata : io_inData_24; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_24_io_enable = io_wen_24 | io_configwen & io_configwaddr == 32'h68; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_25_clock = clock;
  assign Ctrlregs_25_reset = reset;
  assign Ctrlregs_25_io_inData = io_configwen ? io_configwdata : io_inData_25; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_25_io_enable = io_wen_25 | io_configwen & io_configwaddr == 32'h69; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_26_clock = clock;
  assign Ctrlregs_26_reset = reset;
  assign Ctrlregs_26_io_inData = io_configwen ? io_configwdata : io_inData_26; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_26_io_enable = io_wen_26 | io_configwen & io_configwaddr == 32'h6a; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_27_clock = clock;
  assign Ctrlregs_27_reset = reset;
  assign Ctrlregs_27_io_inData = io_configwen ? io_configwdata : io_inData_27; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_27_io_enable = io_wen_27 | io_configwen & io_configwaddr == 32'h6b; // @[PEctrlregs.scala 18:36]
  assign Ctrlregs_28_clock = clock;
  assign Ctrlregs_28_reset = reset;
  assign Ctrlregs_28_io_inData = io_configwen ? io_configwdata : io_inData_28; // @[PEctrlregs.scala 16:28]
  assign Ctrlregs_28_io_enable = io_wen_28 | io_configwen & io_configwaddr == 32'h6c; // @[PEctrlregs.scala 18:36]
endmodule
module Memutil(
  input         clock,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  input  [31:0] io_raddr,
  output [31:0] io_rdata
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mem [0:7]; // @[Memutil.scala 13:47]
  wire  mem_io_rdata_MPORT_en; // @[Memutil.scala 13:47]
  wire [2:0] mem_io_rdata_MPORT_addr; // @[Memutil.scala 13:47]
  wire [31:0] mem_io_rdata_MPORT_data; // @[Memutil.scala 13:47]
  wire [31:0] mem_MPORT_data; // @[Memutil.scala 13:47]
  wire [2:0] mem_MPORT_addr; // @[Memutil.scala 13:47]
  wire  mem_MPORT_mask; // @[Memutil.scala 13:47]
  wire  mem_MPORT_en; // @[Memutil.scala 13:47]
  reg  mem_io_rdata_MPORT_en_pipe_0;
  reg [2:0] mem_io_rdata_MPORT_addr_pipe_0;
  assign mem_io_rdata_MPORT_en = mem_io_rdata_MPORT_en_pipe_0;
  assign mem_io_rdata_MPORT_addr = mem_io_rdata_MPORT_addr_pipe_0;
  assign mem_io_rdata_MPORT_data = mem[mem_io_rdata_MPORT_addr]; // @[Memutil.scala 13:47]
  assign mem_MPORT_data = io_wdata;
  assign mem_MPORT_addr = io_waddr[2:0];
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_wen;
  assign io_rdata = mem_io_rdata_MPORT_data; // @[Memutil.scala 14:16]
  always @(posedge clock) begin
    if (mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[Memutil.scala 13:47]
    end
    mem_io_rdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_io_rdata_MPORT_addr_pipe_0 <= io_raddr[2:0];
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_io_rdata_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_io_rdata_MPORT_addr_pipe_0 = _RAND_2[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PEDecode(
  input  [31:0] io_inst_0,
  input  [31:0] io_inst_2,
  input  [31:0] io_inst_3,
  input  [31:0] io_inst_4,
  input  [31:0] io_inst_5,
  input  [31:0] io_iicnt,
  input  [31:0] io_iinum,
  input  [31:0] io_startcyclecnt,
  input  [31:0] io_startcyclenum,
  output [2:0]  io_alukey,
  output [3:0]  io_srckey_0,
  output [3:0]  io_srckey_1,
  output [2:0]  io_linkkey_0,
  output [2:0]  io_linkkey_1,
  output [2:0]  io_linkkey_2,
  output [2:0]  io_linkkey_3,
  output        io_useconst_0,
  output        io_useconst_1,
  output        io_haveshiftconst_0,
  output        io_haveshiftconst_1,
  output        io_linkinstskip_0,
  output        io_linkinstskip_1,
  output        io_linkinstskip_2,
  output        io_linkinstskip_3,
  output        io_canexe
);
  wire [31:0] _io_linkinstskip_0_T_2 = io_iinum + io_inst_2; // @[PEDecode.scala 45:124]
  wire [31:0] _io_linkinstskip_1_T_2 = io_iinum + io_inst_3; // @[PEDecode.scala 45:124]
  wire [31:0] _io_linkinstskip_2_T_2 = io_iinum + io_inst_4; // @[PEDecode.scala 45:124]
  wire [31:0] _io_linkinstskip_3_T_2 = io_iinum + io_inst_5; // @[PEDecode.scala 45:124]
  assign io_alukey = io_inst_0[4:2]; // @[PEDecode.scala 27:37]
  assign io_srckey_0 = io_inst_0[13:10]; // @[PEDecode.scala 28:40]
  assign io_srckey_1 = io_inst_0[18:15]; // @[PEDecode.scala 29:40]
  assign io_linkkey_0 = io_inst_0[22:20]; // @[PEDecode.scala 32:40]
  assign io_linkkey_1 = io_inst_0[25:23]; // @[PEDecode.scala 32:40]
  assign io_linkkey_2 = io_inst_0[28:26]; // @[PEDecode.scala 32:40]
  assign io_linkkey_3 = io_inst_0[31:29]; // @[PEDecode.scala 32:40]
  assign io_useconst_0 = io_inst_0[13:10] == 4'h1; // @[PEDecode.scala 37:102]
  assign io_useconst_1 = io_inst_0[18:15] == 4'h1; // @[PEDecode.scala 38:102]
  assign io_haveshiftconst_0 = io_inst_0[0]; // @[PEDecode.scala 40:48]
  assign io_haveshiftconst_1 = io_inst_0[1]; // @[PEDecode.scala 41:48]
  assign io_linkinstskip_0 = io_iicnt < io_inst_2 | io_iicnt >= _io_linkinstskip_0_T_2; // @[PEDecode.scala 45:100]
  assign io_linkinstskip_1 = io_iicnt < io_inst_3 | io_iicnt >= _io_linkinstskip_1_T_2; // @[PEDecode.scala 45:100]
  assign io_linkinstskip_2 = io_iicnt < io_inst_4 | io_iicnt >= _io_linkinstskip_2_T_2; // @[PEDecode.scala 45:100]
  assign io_linkinstskip_3 = io_iicnt < io_inst_5 | io_iicnt >= _io_linkinstskip_3_T_2; // @[PEDecode.scala 45:100]
  assign io_canexe = io_startcyclecnt >= io_startcyclenum; // @[PEDecode.scala 47:33]
endmodule
module GenericMux(
  input  [31:0] io_in_0,
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  input  [31:0] io_in_8,
  input  [3:0]  io_sel,
  output [31:0] io_out
);
  wire [31:0] _io_out_T_1 = 4'h0 == io_sel ? io_in_0 : 32'h0; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_3 = 4'h1 == io_sel ? io_in_1 : _io_out_T_1; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_5 = 4'h2 == io_sel ? io_in_2 : _io_out_T_3; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_7 = 4'h3 == io_sel ? io_in_3 : _io_out_T_5; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_9 = 4'h4 == io_sel ? io_in_4 : _io_out_T_7; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_11 = 4'h5 == io_sel ? io_in_5 : _io_out_T_9; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_13 = 4'h6 == io_sel ? io_in_6 : _io_out_T_11; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_15 = 4'h7 == io_sel ? io_in_7 : _io_out_T_13; // @[Mux.scala 81:58]
  assign io_out = 4'h8 == io_sel ? io_in_8 : _io_out_T_15; // @[Mux.scala 81:58]
endmodule
module Muxonehot(
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input         io_sel_0,
  input         io_sel_1,
  input         io_sel_2,
  input         io_sel_3,
  input         io_sel_4,
  input         io_sel_5,
  output [31:0] io_out
);
  wire [31:0] _io_out_T_7 = io_sel_5 ? io_in_5 : 32'h0; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_8 = io_sel_4 ? io_in_4 : _io_out_T_7; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_9 = io_sel_3 ? io_in_3 : _io_out_T_8; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_10 = io_sel_2 ? io_in_2 : _io_out_T_9; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_11 = io_sel_1 ? io_in_1 : _io_out_T_10; // @[Mux.scala 47:70]
  assign io_out = io_sel_0 ? 32'h0 : _io_out_T_11; // @[Mux.scala 47:70]
endmodule
module Fu(
  input  [2:0]  io_fn,
  input  [31:0] io_src1,
  input  [31:0] io_src2,
  output        io_result_valid,
  output [31:0] io_result_bits,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire [31:0] outmux_io_in_1; // @[Fu.scala 55:22]
  wire [31:0] outmux_io_in_2; // @[Fu.scala 55:22]
  wire [31:0] outmux_io_in_3; // @[Fu.scala 55:22]
  wire [31:0] outmux_io_in_4; // @[Fu.scala 55:22]
  wire [31:0] outmux_io_in_5; // @[Fu.scala 55:22]
  wire  outmux_io_sel_0; // @[Fu.scala 55:22]
  wire  outmux_io_sel_1; // @[Fu.scala 55:22]
  wire  outmux_io_sel_2; // @[Fu.scala 55:22]
  wire  outmux_io_sel_3; // @[Fu.scala 55:22]
  wire  outmux_io_sel_4; // @[Fu.scala 55:22]
  wire  outmux_io_sel_5; // @[Fu.scala 55:22]
  wire [31:0] outmux_io_out; // @[Fu.scala 55:22]
  wire [31:0] src1 = io_src1; // @[Fu.scala 48:22]
  wire [31:0] src2 = io_src2; // @[Fu.scala 49:22]
  wire  result_valid_0 = io_fn == 3'h0; // @[Fu.scala 69:14]
  wire  result_valid_1 = io_fn == 3'h2; // @[Fu.scala 69:14]
  wire [31:0] _result_1_T_3 = $signed(io_src1) + $signed(io_src2); // @[Fu.scala 70:41]
  wire  result_valid_2 = io_fn == 3'h1; // @[Fu.scala 69:14]
  wire [63:0] _result_2_T_1 = $signed(io_src1) * $signed(io_src2); // @[Fu.scala 70:41]
  wire [63:0] _GEN_4 = result_valid_2 ? _result_2_T_1 : 64'h0; // @[Fu.scala 69:52 70:23 52:46]
  wire  result_valid_3 = io_fn == 3'h3; // @[Fu.scala 69:14]
  wire  result_valid_4 = io_fn == 3'h6; // @[Fu.scala 77:14]
  wire [62:0] _GEN_0 = {{31{src1[31]}},src1}; // @[Fu.scala 78:35]
  wire [62:0] _result_4_T_2 = $signed(_GEN_0) << src2[4:0]; // @[Fu.scala 78:49]
  wire [62:0] _GEN_8 = result_valid_4 ? _result_4_T_2 : 63'h0; // @[Fu.scala 77:41 78:26 52:46]
  Muxonehot outmux ( // @[Fu.scala 55:22]
    .io_in_1(outmux_io_in_1),
    .io_in_2(outmux_io_in_2),
    .io_in_3(outmux_io_in_3),
    .io_in_4(outmux_io_in_4),
    .io_in_5(outmux_io_in_5),
    .io_sel_0(outmux_io_sel_0),
    .io_sel_1(outmux_io_sel_1),
    .io_sel_2(outmux_io_sel_2),
    .io_sel_3(outmux_io_sel_3),
    .io_sel_4(outmux_io_sel_4),
    .io_sel_5(outmux_io_sel_5),
    .io_out(outmux_io_out)
  );
  assign io_result_valid = result_valid_0 | result_valid_1 | result_valid_2 | result_valid_3 | result_valid_4 |
    io_datamemio_memoptvalid | io_datamemio_memoptvalid; // @[Fu.scala 103:43]
  assign io_result_bits = outmux_io_out; // @[Fu.scala 102:18]
  assign io_datamemio_wen = io_fn == 3'h5; // @[Fu.scala 93:14]
  assign io_datamemio_waddr = io_fn == 3'h5 ? io_src2 : 32'h0; // @[Fu.scala 43:21 93:43 94:25]
  assign io_datamemio_wdata = io_fn == 3'h5 ? io_src1 : 32'h0; // @[Fu.scala 44:21 93:43 95:25]
  assign io_datamemio_ren = io_fn == 3'h4; // @[Fu.scala 84:14]
  assign io_datamemio_raddr = io_fn == 3'h4 ? io_src1 : 32'h0; // @[Fu.scala 42:21 84:42 85:25]
  assign outmux_io_in_1 = result_valid_1 ? _result_1_T_3 : 32'h0; // @[Fu.scala 69:52 70:23 52:46]
  assign outmux_io_in_2 = _GEN_4[31:0]; // @[Fu.scala 50:19]
  assign outmux_io_in_3 = result_valid_3 ? _result_1_T_3 : 32'h0; // @[Fu.scala 69:52 70:23 52:46]
  assign outmux_io_in_4 = _GEN_8[31:0]; // @[Fu.scala 50:19]
  assign outmux_io_in_5 = io_datamemio_rdata; // @[Fu.scala 50:19 88:27]
  assign outmux_io_sel_0 = io_fn == 3'h0; // @[Fu.scala 69:14]
  assign outmux_io_sel_1 = io_fn == 3'h2; // @[Fu.scala 69:14]
  assign outmux_io_sel_2 = io_fn == 3'h1; // @[Fu.scala 69:14]
  assign outmux_io_sel_3 = io_fn == 3'h3; // @[Fu.scala 69:14]
  assign outmux_io_sel_4 = io_fn == 3'h6; // @[Fu.scala 77:14]
  assign outmux_io_sel_5 = io_datamemio_memoptvalid; // @[Fu.scala 51:26 89:32]
endmodule
module Crossbar(
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [2:0]  io_select_0,
  input  [2:0]  io_select_1,
  input  [2:0]  io_select_2,
  input  [2:0]  io_select_3,
  output [31:0] io_out_0,
  output [31:0] io_out_1,
  output [31:0] io_out_2,
  output [31:0] io_out_3
);
  wire [31:0] _io_out_0_T_3 = 3'h1 == io_select_0 ? io_in_1 : 32'h0; // @[Mux.scala 81:58]
  wire [31:0] _io_out_0_T_5 = 3'h2 == io_select_0 ? io_in_2 : _io_out_0_T_3; // @[Mux.scala 81:58]
  wire [31:0] _io_out_0_T_7 = 3'h3 == io_select_0 ? io_in_3 : _io_out_0_T_5; // @[Mux.scala 81:58]
  wire [31:0] _io_out_0_T_9 = 3'h4 == io_select_0 ? io_in_4 : _io_out_0_T_7; // @[Mux.scala 81:58]
  wire [31:0] _io_out_0_T_11 = 3'h5 == io_select_0 ? io_in_5 : _io_out_0_T_9; // @[Mux.scala 81:58]
  wire [31:0] _io_out_1_T_3 = 3'h1 == io_select_1 ? io_in_1 : 32'h0; // @[Mux.scala 81:58]
  wire [31:0] _io_out_1_T_5 = 3'h2 == io_select_1 ? io_in_2 : _io_out_1_T_3; // @[Mux.scala 81:58]
  wire [31:0] _io_out_1_T_7 = 3'h3 == io_select_1 ? io_in_3 : _io_out_1_T_5; // @[Mux.scala 81:58]
  wire [31:0] _io_out_1_T_9 = 3'h4 == io_select_1 ? io_in_4 : _io_out_1_T_7; // @[Mux.scala 81:58]
  wire [31:0] _io_out_1_T_11 = 3'h5 == io_select_1 ? io_in_5 : _io_out_1_T_9; // @[Mux.scala 81:58]
  wire [31:0] _io_out_2_T_3 = 3'h1 == io_select_2 ? io_in_1 : 32'h0; // @[Mux.scala 81:58]
  wire [31:0] _io_out_2_T_5 = 3'h2 == io_select_2 ? io_in_2 : _io_out_2_T_3; // @[Mux.scala 81:58]
  wire [31:0] _io_out_2_T_7 = 3'h3 == io_select_2 ? io_in_3 : _io_out_2_T_5; // @[Mux.scala 81:58]
  wire [31:0] _io_out_2_T_9 = 3'h4 == io_select_2 ? io_in_4 : _io_out_2_T_7; // @[Mux.scala 81:58]
  wire [31:0] _io_out_2_T_11 = 3'h5 == io_select_2 ? io_in_5 : _io_out_2_T_9; // @[Mux.scala 81:58]
  wire [31:0] _io_out_3_T_3 = 3'h1 == io_select_3 ? io_in_1 : 32'h0; // @[Mux.scala 81:58]
  wire [31:0] _io_out_3_T_5 = 3'h2 == io_select_3 ? io_in_2 : _io_out_3_T_3; // @[Mux.scala 81:58]
  wire [31:0] _io_out_3_T_7 = 3'h3 == io_select_3 ? io_in_3 : _io_out_3_T_5; // @[Mux.scala 81:58]
  wire [31:0] _io_out_3_T_9 = 3'h4 == io_select_3 ? io_in_4 : _io_out_3_T_7; // @[Mux.scala 81:58]
  wire [31:0] _io_out_3_T_11 = 3'h5 == io_select_3 ? io_in_5 : _io_out_3_T_9; // @[Mux.scala 81:58]
  assign io_out_0 = 3'h6 == io_select_0 ? io_in_6 : _io_out_0_T_11; // @[Mux.scala 81:58]
  assign io_out_1 = 3'h6 == io_select_1 ? io_in_6 : _io_out_1_T_11; // @[Mux.scala 81:58]
  assign io_out_2 = 3'h6 == io_select_2 ? io_in_6 : _io_out_2_T_11; // @[Mux.scala 81:58]
  assign io_out_3 = 3'h6 == io_select_3 ? io_in_6 : _io_out_3_T_11; // @[Mux.scala 81:58]
endmodule
module PE(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
  input  [31:0] io_inLinks_3,
  output        io_outLinks_0_valid,
  output [31:0] io_outLinks_0_bits,
  output        io_outLinks_3_valid,
  output [31:0] io_outLinks_3_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire  PEctrlregs_clock; // @[PE.scala 18:26]
  wire  PEctrlregs_reset; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 18:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 18:26]
  wire  Fureg_clock; // @[PE.scala 19:21]
  wire  Fureg_reset; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 19:21]
  wire  Fureg_io_enable; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 19:21]
  wire  Instmems_0_clock; // @[PE.scala 21:11]
  wire  Instmems_0_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_1_clock; // @[PE.scala 21:11]
  wire  Instmems_1_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_2_clock; // @[PE.scala 21:11]
  wire  Instmems_2_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_3_clock; // @[PE.scala 21:11]
  wire  Instmems_3_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_4_clock; // @[PE.scala 21:11]
  wire  Instmems_4_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_5_clock; // @[PE.scala 21:11]
  wire  Instmems_5_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 21:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_alukey; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 23:23]
  wire  Decoder_io_canexe; // @[PE.scala 23:23]
  wire  Constmems_0_clock; // @[PE.scala 25:11]
  wire  Constmems_0_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 25:11]
  wire  Constmems_1_clock; // @[PE.scala 25:11]
  wire  Constmems_1_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 25:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 28:11]
  wire [31:0] Srcmuxs_0_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 30:48]
  wire [2:0] Alu_io_fn; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 31:19]
  wire  Alu_io_result_valid; // @[PE.scala 31:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_waddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_raddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 31:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 32:24]
  wire [31:0] _T_1 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_6 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_7 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_9 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_14 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_15 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_17 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_22 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_23 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_25 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_30 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_31 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_33 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_38 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_39 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  wire  _T_42 = PEctrlregs_io_outData_19 == _T_1; // @[PE.scala 47:58]
  wire [31:0] _T_44 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 47:100]
  wire  _T_48 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 48:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 51:51]
  wire  Jchange = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(PEctrlregs_io_outData_17)
     : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 51:8]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 55:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 51:51]
  wire  Ichange = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(PEctrlregs_io_outData_16)
     : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 51:8]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 59:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 51:51]
  wire  Iinit = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(PEctrlregs_io_outData_15) :
    $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 51:8]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 63:55]
  wire [31:0] _T_51 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 65:125]
  wire  canupdatestate = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(Shiftconstmems_0_io_rdata); // @[PE.scala 143:111]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(Shiftconstmems_1_io_rdata); // @[PE.scala 144:111]
  PEctrlregs PEctrlregs ( // @[PE.scala 18:26]
    .clock(PEctrlregs_clock),
    .reset(PEctrlregs_reset),
    .io_inData_18(PEctrlregs_io_inData_18),
    .io_inData_19(PEctrlregs_io_inData_19),
    .io_inData_20(PEctrlregs_io_inData_20),
    .io_inData_21(PEctrlregs_io_inData_21),
    .io_inData_22(PEctrlregs_io_inData_22),
    .io_inData_23(PEctrlregs_io_inData_23),
    .io_inData_24(PEctrlregs_io_inData_24),
    .io_inData_25(PEctrlregs_io_inData_25),
    .io_inData_26(PEctrlregs_io_inData_26),
    .io_inData_27(PEctrlregs_io_inData_27),
    .io_inData_28(PEctrlregs_io_inData_28),
    .io_outData_0(PEctrlregs_io_outData_0),
    .io_outData_1(PEctrlregs_io_outData_1),
    .io_outData_2(PEctrlregs_io_outData_2),
    .io_outData_3(PEctrlregs_io_outData_3),
    .io_outData_4(PEctrlregs_io_outData_4),
    .io_outData_5(PEctrlregs_io_outData_5),
    .io_outData_6(PEctrlregs_io_outData_6),
    .io_outData_7(PEctrlregs_io_outData_7),
    .io_outData_8(PEctrlregs_io_outData_8),
    .io_outData_9(PEctrlregs_io_outData_9),
    .io_outData_10(PEctrlregs_io_outData_10),
    .io_outData_11(PEctrlregs_io_outData_11),
    .io_outData_12(PEctrlregs_io_outData_12),
    .io_outData_13(PEctrlregs_io_outData_13),
    .io_outData_14(PEctrlregs_io_outData_14),
    .io_outData_15(PEctrlregs_io_outData_15),
    .io_outData_16(PEctrlregs_io_outData_16),
    .io_outData_17(PEctrlregs_io_outData_17),
    .io_outData_18(PEctrlregs_io_outData_18),
    .io_outData_19(PEctrlregs_io_outData_19),
    .io_outData_20(PEctrlregs_io_outData_20),
    .io_outData_21(PEctrlregs_io_outData_21),
    .io_outData_22(PEctrlregs_io_outData_22),
    .io_outData_23(PEctrlregs_io_outData_23),
    .io_outData_24(PEctrlregs_io_outData_24),
    .io_outData_25(PEctrlregs_io_outData_25),
    .io_outData_26(PEctrlregs_io_outData_26),
    .io_outData_27(PEctrlregs_io_outData_27),
    .io_outData_28(PEctrlregs_io_outData_28),
    .io_wen_18(PEctrlregs_io_wen_18),
    .io_wen_19(PEctrlregs_io_wen_19),
    .io_wen_20(PEctrlregs_io_wen_20),
    .io_wen_21(PEctrlregs_io_wen_21),
    .io_wen_22(PEctrlregs_io_wen_22),
    .io_wen_23(PEctrlregs_io_wen_23),
    .io_wen_24(PEctrlregs_io_wen_24),
    .io_wen_25(PEctrlregs_io_wen_25),
    .io_wen_26(PEctrlregs_io_wen_26),
    .io_wen_27(PEctrlregs_io_wen_27),
    .io_wen_28(PEctrlregs_io_wen_28),
    .io_configwaddr(PEctrlregs_io_configwaddr),
    .io_configwen(PEctrlregs_io_configwen),
    .io_configwdata(PEctrlregs_io_configwdata)
  );
  Register Fureg ( // @[PE.scala 19:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 21:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 21:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 21:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 21:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 21:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 21:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 23:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_2(Decoder_io_inst_2),
    .io_inst_3(Decoder_io_inst_3),
    .io_inst_4(Decoder_io_inst_4),
    .io_inst_5(Decoder_io_inst_5),
    .io_iicnt(Decoder_io_iicnt),
    .io_iinum(Decoder_io_iinum),
    .io_startcyclecnt(Decoder_io_startcyclecnt),
    .io_startcyclenum(Decoder_io_startcyclenum),
    .io_alukey(Decoder_io_alukey),
    .io_srckey_0(Decoder_io_srckey_0),
    .io_srckey_1(Decoder_io_srckey_1),
    .io_linkkey_0(Decoder_io_linkkey_0),
    .io_linkkey_1(Decoder_io_linkkey_1),
    .io_linkkey_2(Decoder_io_linkkey_2),
    .io_linkkey_3(Decoder_io_linkkey_3),
    .io_useconst_0(Decoder_io_useconst_0),
    .io_useconst_1(Decoder_io_useconst_1),
    .io_haveshiftconst_0(Decoder_io_haveshiftconst_0),
    .io_haveshiftconst_1(Decoder_io_haveshiftconst_1),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil Constmems_0 ( // @[PE.scala 25:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil Constmems_1 ( // @[PE.scala 25:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil Shiftconstmems_0 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil Shiftconstmems_1 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_0_io_in_0),
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_1_io_in_0),
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 31:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_waddr(Alu_io_datamemio_waddr),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_raddr(Alu_io_datamemio_raddr),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 32:24]
    .io_in_1(Crossbar_io_in_1),
    .io_in_2(Crossbar_io_in_2),
    .io_in_3(Crossbar_io_in_3),
    .io_in_4(Crossbar_io_in_4),
    .io_in_5(Crossbar_io_in_5),
    .io_in_6(Crossbar_io_in_6),
    .io_select_0(Crossbar_io_select_0),
    .io_select_1(Crossbar_io_select_1),
    .io_select_2(Crossbar_io_select_2),
    .io_select_3(Crossbar_io_select_3),
    .io_out_0(Crossbar_io_out_0),
    .io_out_1(Crossbar_io_out_1),
    .io_out_2(Crossbar_io_out_2),
    .io_out_3(Crossbar_io_out_3)
  );
  assign io_outLinks_0_valid = canupdatestate & ~Decoder_io_linkinstskip_0; // @[PE.scala 155:68]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 154:15]
  assign io_outLinks_3_valid = canupdatestate & ~Decoder_io_linkinstskip_3; // @[PE.scala 155:68]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 154:15]
  assign io_finish = PEctrlregs_io_outData_28 == 32'h1; // @[PE.scala 167:34]
  assign io_datamemio_wen = Alu_io_datamemio_wen; // @[PE.scala 166:16]
  assign io_datamemio_waddr = Alu_io_datamemio_waddr; // @[PE.scala 166:16]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 166:16]
  assign io_datamemio_ren = Alu_io_datamemio_ren; // @[PE.scala 166:16]
  assign io_datamemio_raddr = Alu_io_datamemio_raddr; // @[PE.scala 166:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_51 : PEctrlregs_io_outData_18
    ; // @[PE.scala 65:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_1 ? _T_44 : PEctrlregs_io_outData_20; // @[PE.scala 47:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 55:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 59:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 63:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_48}; // @[PE.scala 110:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 111:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_21 = canupdatestate & Decoder_io_useconst_0; // @[PE.scala 68:51]
  assign PEctrlregs_io_wen_22 = canupdatestate & Decoder_io_useconst_1; // @[PE.scala 69:51]
  assign PEctrlregs_io_wen_23 = canupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 70:56]
  assign PEctrlregs_io_wen_24 = canupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 71:57]
  assign PEctrlregs_io_wen_25 = canupdatestate & _T_42; // @[PE.scala 74:43]
  assign PEctrlregs_io_wen_26 = canupdatestate & Jchange; // @[PE.scala 75:43]
  assign PEctrlregs_io_wen_27 = canupdatestate & Ichange; // @[PE.scala 76:43]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 85:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 84:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 86:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 80:19]
  assign Fureg_io_enable = canupdatestate & Alu_io_result_valid; // @[PE.scala 81:37]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'h8; // @[PE.scala 96:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 95:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_0_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'h8 & io_waddr < 32'h10; // @[PE.scala 96:82]
  assign Instmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 95:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_1_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h10 & io_waddr < 32'h18; // @[PE.scala 96:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h10; // @[PE.scala 95:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_2_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h18 & io_waddr < 32'h20; // @[PE.scala 96:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h18; // @[PE.scala 95:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_3_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h20 & io_waddr < 32'h28; // @[PE.scala 96:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h20; // @[PE.scala 95:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_4_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h30; // @[PE.scala 96:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h28; // @[PE.scala 95:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_5_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 102:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 103:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 104:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 105:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h30 & io_waddr < 32'h38; // @[PE.scala 119:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 118:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_0_io_raddr = canupdatestate ? _T_15 : PEctrlregs_io_outData_21; // @[PE.scala 115:29]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h38 & io_waddr < 32'h40; // @[PE.scala 119:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 118:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_1_io_raddr = canupdatestate ? _T_23 : PEctrlregs_io_outData_22; // @[PE.scala 116:29]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h40 & io_waddr < 32'h48; // @[PE.scala 128:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 127:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_0_io_raddr = canupdatestate ? _T_31 : PEctrlregs_io_outData_23; // @[PE.scala 124:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h48 & io_waddr < 32'h50; // @[PE.scala 128:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 127:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_1_io_raddr = canupdatestate ? _T_39 : PEctrlregs_io_outData_24; // @[PE.scala 125:35]
  assign Srcmuxs_0_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_0_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_0_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_3 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_4 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_0_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_0_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_0_io_sel = Decoder_io_srckey_0; // @[PE.scala 133:19]
  assign Srcmuxs_1_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_1_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_1_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_3 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_4 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_1_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_1_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_1_io_sel = Decoder_io_srckey_1; // @[PE.scala 133:19]
  assign Alu_io_fn = Decoder_io_alukey; // @[PE.scala 142:13]
  assign Alu_io_src1 = Decoder_io_haveshiftconst_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 143:19]
  assign Alu_io_src2 = Decoder_io_haveshiftconst_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 144:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 166:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 166:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 149:68]
  assign Crossbar_io_in_2 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_3 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 149:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 150:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 151:20]
  assign Crossbar_io_select_0 = Decoder_io_linkkey_0; // @[PE.scala 147:22]
  assign Crossbar_io_select_1 = Decoder_io_linkkey_1; // @[PE.scala 147:22]
  assign Crossbar_io_select_2 = Decoder_io_linkkey_2; // @[PE.scala 147:22]
  assign Crossbar_io_select_3 = Decoder_io_linkkey_3; // @[PE.scala 147:22]
endmodule
module PE_1(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
  input  [31:0] io_inLinks_2,
  input  [31:0] io_inLinks_3,
  output        io_outLinks_0_valid,
  output [31:0] io_outLinks_0_bits,
  output        io_outLinks_2_valid,
  output [31:0] io_outLinks_2_bits,
  output        io_outLinks_3_valid,
  output [31:0] io_outLinks_3_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire  PEctrlregs_clock; // @[PE.scala 18:26]
  wire  PEctrlregs_reset; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 18:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 18:26]
  wire  Fureg_clock; // @[PE.scala 19:21]
  wire  Fureg_reset; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 19:21]
  wire  Fureg_io_enable; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 19:21]
  wire  Instmems_0_clock; // @[PE.scala 21:11]
  wire  Instmems_0_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_1_clock; // @[PE.scala 21:11]
  wire  Instmems_1_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_2_clock; // @[PE.scala 21:11]
  wire  Instmems_2_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_3_clock; // @[PE.scala 21:11]
  wire  Instmems_3_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_4_clock; // @[PE.scala 21:11]
  wire  Instmems_4_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_5_clock; // @[PE.scala 21:11]
  wire  Instmems_5_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 21:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_alukey; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 23:23]
  wire  Decoder_io_canexe; // @[PE.scala 23:23]
  wire  Constmems_0_clock; // @[PE.scala 25:11]
  wire  Constmems_0_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 25:11]
  wire  Constmems_1_clock; // @[PE.scala 25:11]
  wire  Constmems_1_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 25:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 28:11]
  wire [31:0] Srcmuxs_0_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 30:48]
  wire [2:0] Alu_io_fn; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 31:19]
  wire  Alu_io_result_valid; // @[PE.scala 31:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_waddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_raddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 31:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 32:24]
  wire [31:0] _T_1 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_6 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_7 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_9 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_14 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_15 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_17 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_22 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_23 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_25 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_30 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_31 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_33 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_38 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_39 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  wire  _T_42 = PEctrlregs_io_outData_19 == _T_1; // @[PE.scala 47:58]
  wire [31:0] _T_44 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 47:100]
  wire  _T_48 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 48:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 51:51]
  wire  Jchange = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(PEctrlregs_io_outData_17)
     : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 51:8]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 55:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 51:51]
  wire  Ichange = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(PEctrlregs_io_outData_16)
     : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 51:8]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 59:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 51:51]
  wire  Iinit = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(PEctrlregs_io_outData_15) :
    $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 51:8]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 63:55]
  wire [31:0] _T_51 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 65:125]
  wire  canupdatestate = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(Shiftconstmems_0_io_rdata); // @[PE.scala 143:111]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(Shiftconstmems_1_io_rdata); // @[PE.scala 144:111]
  PEctrlregs PEctrlregs ( // @[PE.scala 18:26]
    .clock(PEctrlregs_clock),
    .reset(PEctrlregs_reset),
    .io_inData_18(PEctrlregs_io_inData_18),
    .io_inData_19(PEctrlregs_io_inData_19),
    .io_inData_20(PEctrlregs_io_inData_20),
    .io_inData_21(PEctrlregs_io_inData_21),
    .io_inData_22(PEctrlregs_io_inData_22),
    .io_inData_23(PEctrlregs_io_inData_23),
    .io_inData_24(PEctrlregs_io_inData_24),
    .io_inData_25(PEctrlregs_io_inData_25),
    .io_inData_26(PEctrlregs_io_inData_26),
    .io_inData_27(PEctrlregs_io_inData_27),
    .io_inData_28(PEctrlregs_io_inData_28),
    .io_outData_0(PEctrlregs_io_outData_0),
    .io_outData_1(PEctrlregs_io_outData_1),
    .io_outData_2(PEctrlregs_io_outData_2),
    .io_outData_3(PEctrlregs_io_outData_3),
    .io_outData_4(PEctrlregs_io_outData_4),
    .io_outData_5(PEctrlregs_io_outData_5),
    .io_outData_6(PEctrlregs_io_outData_6),
    .io_outData_7(PEctrlregs_io_outData_7),
    .io_outData_8(PEctrlregs_io_outData_8),
    .io_outData_9(PEctrlregs_io_outData_9),
    .io_outData_10(PEctrlregs_io_outData_10),
    .io_outData_11(PEctrlregs_io_outData_11),
    .io_outData_12(PEctrlregs_io_outData_12),
    .io_outData_13(PEctrlregs_io_outData_13),
    .io_outData_14(PEctrlregs_io_outData_14),
    .io_outData_15(PEctrlregs_io_outData_15),
    .io_outData_16(PEctrlregs_io_outData_16),
    .io_outData_17(PEctrlregs_io_outData_17),
    .io_outData_18(PEctrlregs_io_outData_18),
    .io_outData_19(PEctrlregs_io_outData_19),
    .io_outData_20(PEctrlregs_io_outData_20),
    .io_outData_21(PEctrlregs_io_outData_21),
    .io_outData_22(PEctrlregs_io_outData_22),
    .io_outData_23(PEctrlregs_io_outData_23),
    .io_outData_24(PEctrlregs_io_outData_24),
    .io_outData_25(PEctrlregs_io_outData_25),
    .io_outData_26(PEctrlregs_io_outData_26),
    .io_outData_27(PEctrlregs_io_outData_27),
    .io_outData_28(PEctrlregs_io_outData_28),
    .io_wen_18(PEctrlregs_io_wen_18),
    .io_wen_19(PEctrlregs_io_wen_19),
    .io_wen_20(PEctrlregs_io_wen_20),
    .io_wen_21(PEctrlregs_io_wen_21),
    .io_wen_22(PEctrlregs_io_wen_22),
    .io_wen_23(PEctrlregs_io_wen_23),
    .io_wen_24(PEctrlregs_io_wen_24),
    .io_wen_25(PEctrlregs_io_wen_25),
    .io_wen_26(PEctrlregs_io_wen_26),
    .io_wen_27(PEctrlregs_io_wen_27),
    .io_wen_28(PEctrlregs_io_wen_28),
    .io_configwaddr(PEctrlregs_io_configwaddr),
    .io_configwen(PEctrlregs_io_configwen),
    .io_configwdata(PEctrlregs_io_configwdata)
  );
  Register Fureg ( // @[PE.scala 19:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 21:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 21:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 21:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 21:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 21:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 21:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 23:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_2(Decoder_io_inst_2),
    .io_inst_3(Decoder_io_inst_3),
    .io_inst_4(Decoder_io_inst_4),
    .io_inst_5(Decoder_io_inst_5),
    .io_iicnt(Decoder_io_iicnt),
    .io_iinum(Decoder_io_iinum),
    .io_startcyclecnt(Decoder_io_startcyclecnt),
    .io_startcyclenum(Decoder_io_startcyclenum),
    .io_alukey(Decoder_io_alukey),
    .io_srckey_0(Decoder_io_srckey_0),
    .io_srckey_1(Decoder_io_srckey_1),
    .io_linkkey_0(Decoder_io_linkkey_0),
    .io_linkkey_1(Decoder_io_linkkey_1),
    .io_linkkey_2(Decoder_io_linkkey_2),
    .io_linkkey_3(Decoder_io_linkkey_3),
    .io_useconst_0(Decoder_io_useconst_0),
    .io_useconst_1(Decoder_io_useconst_1),
    .io_haveshiftconst_0(Decoder_io_haveshiftconst_0),
    .io_haveshiftconst_1(Decoder_io_haveshiftconst_1),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil Constmems_0 ( // @[PE.scala 25:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil Constmems_1 ( // @[PE.scala 25:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil Shiftconstmems_0 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil Shiftconstmems_1 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_0_io_in_0),
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_1_io_in_0),
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 31:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_waddr(Alu_io_datamemio_waddr),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_raddr(Alu_io_datamemio_raddr),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 32:24]
    .io_in_1(Crossbar_io_in_1),
    .io_in_2(Crossbar_io_in_2),
    .io_in_3(Crossbar_io_in_3),
    .io_in_4(Crossbar_io_in_4),
    .io_in_5(Crossbar_io_in_5),
    .io_in_6(Crossbar_io_in_6),
    .io_select_0(Crossbar_io_select_0),
    .io_select_1(Crossbar_io_select_1),
    .io_select_2(Crossbar_io_select_2),
    .io_select_3(Crossbar_io_select_3),
    .io_out_0(Crossbar_io_out_0),
    .io_out_1(Crossbar_io_out_1),
    .io_out_2(Crossbar_io_out_2),
    .io_out_3(Crossbar_io_out_3)
  );
  assign io_outLinks_0_valid = canupdatestate & ~Decoder_io_linkinstskip_0; // @[PE.scala 155:68]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 154:15]
  assign io_outLinks_2_valid = canupdatestate & ~Decoder_io_linkinstskip_2; // @[PE.scala 155:68]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 154:15]
  assign io_outLinks_3_valid = canupdatestate & ~Decoder_io_linkinstskip_3; // @[PE.scala 155:68]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 154:15]
  assign io_finish = PEctrlregs_io_outData_28 == 32'h1; // @[PE.scala 167:34]
  assign io_datamemio_wen = Alu_io_datamemio_wen; // @[PE.scala 166:16]
  assign io_datamemio_waddr = Alu_io_datamemio_waddr; // @[PE.scala 166:16]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 166:16]
  assign io_datamemio_ren = Alu_io_datamemio_ren; // @[PE.scala 166:16]
  assign io_datamemio_raddr = Alu_io_datamemio_raddr; // @[PE.scala 166:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_51 : PEctrlregs_io_outData_18
    ; // @[PE.scala 65:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_1 ? _T_44 : PEctrlregs_io_outData_20; // @[PE.scala 47:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 55:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 59:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 63:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_48}; // @[PE.scala 110:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 111:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_21 = canupdatestate & Decoder_io_useconst_0; // @[PE.scala 68:51]
  assign PEctrlregs_io_wen_22 = canupdatestate & Decoder_io_useconst_1; // @[PE.scala 69:51]
  assign PEctrlregs_io_wen_23 = canupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 70:56]
  assign PEctrlregs_io_wen_24 = canupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 71:57]
  assign PEctrlregs_io_wen_25 = canupdatestate & _T_42; // @[PE.scala 74:43]
  assign PEctrlregs_io_wen_26 = canupdatestate & Jchange; // @[PE.scala 75:43]
  assign PEctrlregs_io_wen_27 = canupdatestate & Ichange; // @[PE.scala 76:43]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 85:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 84:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 86:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 80:19]
  assign Fureg_io_enable = canupdatestate & Alu_io_result_valid; // @[PE.scala 81:37]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'h8; // @[PE.scala 96:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 95:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_0_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'h8 & io_waddr < 32'h10; // @[PE.scala 96:82]
  assign Instmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 95:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_1_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h10 & io_waddr < 32'h18; // @[PE.scala 96:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h10; // @[PE.scala 95:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_2_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h18 & io_waddr < 32'h20; // @[PE.scala 96:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h18; // @[PE.scala 95:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_3_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h20 & io_waddr < 32'h28; // @[PE.scala 96:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h20; // @[PE.scala 95:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_4_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h30; // @[PE.scala 96:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h28; // @[PE.scala 95:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_5_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 102:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 103:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 104:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 105:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h30 & io_waddr < 32'h38; // @[PE.scala 119:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 118:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_0_io_raddr = canupdatestate ? _T_15 : PEctrlregs_io_outData_21; // @[PE.scala 115:29]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h38 & io_waddr < 32'h40; // @[PE.scala 119:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 118:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_1_io_raddr = canupdatestate ? _T_23 : PEctrlregs_io_outData_22; // @[PE.scala 116:29]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h40 & io_waddr < 32'h48; // @[PE.scala 128:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 127:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_0_io_raddr = canupdatestate ? _T_31 : PEctrlregs_io_outData_23; // @[PE.scala 124:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h48 & io_waddr < 32'h50; // @[PE.scala 128:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 127:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_1_io_raddr = canupdatestate ? _T_39 : PEctrlregs_io_outData_24; // @[PE.scala 125:35]
  assign Srcmuxs_0_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_0_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_0_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_3 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_0_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_0_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_0_io_sel = Decoder_io_srckey_0; // @[PE.scala 133:19]
  assign Srcmuxs_1_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_1_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_1_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_3 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_1_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_1_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_1_io_sel = Decoder_io_srckey_1; // @[PE.scala 133:19]
  assign Alu_io_fn = Decoder_io_alukey; // @[PE.scala 142:13]
  assign Alu_io_src1 = Decoder_io_haveshiftconst_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 143:19]
  assign Alu_io_src2 = Decoder_io_haveshiftconst_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 144:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 166:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 166:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 149:68]
  assign Crossbar_io_in_2 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 149:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 149:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 150:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 151:20]
  assign Crossbar_io_select_0 = Decoder_io_linkkey_0; // @[PE.scala 147:22]
  assign Crossbar_io_select_1 = Decoder_io_linkkey_1; // @[PE.scala 147:22]
  assign Crossbar_io_select_2 = Decoder_io_linkkey_2; // @[PE.scala 147:22]
  assign Crossbar_io_select_3 = Decoder_io_linkkey_3; // @[PE.scala 147:22]
endmodule
module PE_2(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
  input  [31:0] io_inLinks_2,
  output        io_outLinks_0_valid,
  output [31:0] io_outLinks_0_bits,
  output        io_outLinks_2_valid,
  output [31:0] io_outLinks_2_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire  PEctrlregs_clock; // @[PE.scala 18:26]
  wire  PEctrlregs_reset; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 18:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 18:26]
  wire  Fureg_clock; // @[PE.scala 19:21]
  wire  Fureg_reset; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 19:21]
  wire  Fureg_io_enable; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 19:21]
  wire  Instmems_0_clock; // @[PE.scala 21:11]
  wire  Instmems_0_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_1_clock; // @[PE.scala 21:11]
  wire  Instmems_1_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_2_clock; // @[PE.scala 21:11]
  wire  Instmems_2_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_3_clock; // @[PE.scala 21:11]
  wire  Instmems_3_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_4_clock; // @[PE.scala 21:11]
  wire  Instmems_4_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_5_clock; // @[PE.scala 21:11]
  wire  Instmems_5_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 21:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_alukey; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 23:23]
  wire  Decoder_io_canexe; // @[PE.scala 23:23]
  wire  Constmems_0_clock; // @[PE.scala 25:11]
  wire  Constmems_0_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 25:11]
  wire  Constmems_1_clock; // @[PE.scala 25:11]
  wire  Constmems_1_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 25:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 28:11]
  wire [31:0] Srcmuxs_0_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 30:48]
  wire [2:0] Alu_io_fn; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 31:19]
  wire  Alu_io_result_valid; // @[PE.scala 31:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_waddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_raddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 31:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 32:24]
  wire [31:0] _T_1 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_6 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_7 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_9 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_14 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_15 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_17 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_22 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_23 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_25 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_30 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_31 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_33 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_38 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_39 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  wire  _T_42 = PEctrlregs_io_outData_19 == _T_1; // @[PE.scala 47:58]
  wire [31:0] _T_44 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 47:100]
  wire  _T_48 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 48:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 51:51]
  wire  Jchange = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(PEctrlregs_io_outData_17)
     : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 51:8]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 55:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 51:51]
  wire  Ichange = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(PEctrlregs_io_outData_16)
     : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 51:8]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 59:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 51:51]
  wire  Iinit = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(PEctrlregs_io_outData_15) :
    $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 51:8]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 63:55]
  wire [31:0] _T_51 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 65:125]
  wire  canupdatestate = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(Shiftconstmems_0_io_rdata); // @[PE.scala 143:111]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(Shiftconstmems_1_io_rdata); // @[PE.scala 144:111]
  PEctrlregs PEctrlregs ( // @[PE.scala 18:26]
    .clock(PEctrlregs_clock),
    .reset(PEctrlregs_reset),
    .io_inData_18(PEctrlregs_io_inData_18),
    .io_inData_19(PEctrlregs_io_inData_19),
    .io_inData_20(PEctrlregs_io_inData_20),
    .io_inData_21(PEctrlregs_io_inData_21),
    .io_inData_22(PEctrlregs_io_inData_22),
    .io_inData_23(PEctrlregs_io_inData_23),
    .io_inData_24(PEctrlregs_io_inData_24),
    .io_inData_25(PEctrlregs_io_inData_25),
    .io_inData_26(PEctrlregs_io_inData_26),
    .io_inData_27(PEctrlregs_io_inData_27),
    .io_inData_28(PEctrlregs_io_inData_28),
    .io_outData_0(PEctrlregs_io_outData_0),
    .io_outData_1(PEctrlregs_io_outData_1),
    .io_outData_2(PEctrlregs_io_outData_2),
    .io_outData_3(PEctrlregs_io_outData_3),
    .io_outData_4(PEctrlregs_io_outData_4),
    .io_outData_5(PEctrlregs_io_outData_5),
    .io_outData_6(PEctrlregs_io_outData_6),
    .io_outData_7(PEctrlregs_io_outData_7),
    .io_outData_8(PEctrlregs_io_outData_8),
    .io_outData_9(PEctrlregs_io_outData_9),
    .io_outData_10(PEctrlregs_io_outData_10),
    .io_outData_11(PEctrlregs_io_outData_11),
    .io_outData_12(PEctrlregs_io_outData_12),
    .io_outData_13(PEctrlregs_io_outData_13),
    .io_outData_14(PEctrlregs_io_outData_14),
    .io_outData_15(PEctrlregs_io_outData_15),
    .io_outData_16(PEctrlregs_io_outData_16),
    .io_outData_17(PEctrlregs_io_outData_17),
    .io_outData_18(PEctrlregs_io_outData_18),
    .io_outData_19(PEctrlregs_io_outData_19),
    .io_outData_20(PEctrlregs_io_outData_20),
    .io_outData_21(PEctrlregs_io_outData_21),
    .io_outData_22(PEctrlregs_io_outData_22),
    .io_outData_23(PEctrlregs_io_outData_23),
    .io_outData_24(PEctrlregs_io_outData_24),
    .io_outData_25(PEctrlregs_io_outData_25),
    .io_outData_26(PEctrlregs_io_outData_26),
    .io_outData_27(PEctrlregs_io_outData_27),
    .io_outData_28(PEctrlregs_io_outData_28),
    .io_wen_18(PEctrlregs_io_wen_18),
    .io_wen_19(PEctrlregs_io_wen_19),
    .io_wen_20(PEctrlregs_io_wen_20),
    .io_wen_21(PEctrlregs_io_wen_21),
    .io_wen_22(PEctrlregs_io_wen_22),
    .io_wen_23(PEctrlregs_io_wen_23),
    .io_wen_24(PEctrlregs_io_wen_24),
    .io_wen_25(PEctrlregs_io_wen_25),
    .io_wen_26(PEctrlregs_io_wen_26),
    .io_wen_27(PEctrlregs_io_wen_27),
    .io_wen_28(PEctrlregs_io_wen_28),
    .io_configwaddr(PEctrlregs_io_configwaddr),
    .io_configwen(PEctrlregs_io_configwen),
    .io_configwdata(PEctrlregs_io_configwdata)
  );
  Register Fureg ( // @[PE.scala 19:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 21:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 21:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 21:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 21:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 21:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 21:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 23:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_2(Decoder_io_inst_2),
    .io_inst_3(Decoder_io_inst_3),
    .io_inst_4(Decoder_io_inst_4),
    .io_inst_5(Decoder_io_inst_5),
    .io_iicnt(Decoder_io_iicnt),
    .io_iinum(Decoder_io_iinum),
    .io_startcyclecnt(Decoder_io_startcyclecnt),
    .io_startcyclenum(Decoder_io_startcyclenum),
    .io_alukey(Decoder_io_alukey),
    .io_srckey_0(Decoder_io_srckey_0),
    .io_srckey_1(Decoder_io_srckey_1),
    .io_linkkey_0(Decoder_io_linkkey_0),
    .io_linkkey_1(Decoder_io_linkkey_1),
    .io_linkkey_2(Decoder_io_linkkey_2),
    .io_linkkey_3(Decoder_io_linkkey_3),
    .io_useconst_0(Decoder_io_useconst_0),
    .io_useconst_1(Decoder_io_useconst_1),
    .io_haveshiftconst_0(Decoder_io_haveshiftconst_0),
    .io_haveshiftconst_1(Decoder_io_haveshiftconst_1),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil Constmems_0 ( // @[PE.scala 25:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil Constmems_1 ( // @[PE.scala 25:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil Shiftconstmems_0 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil Shiftconstmems_1 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_0_io_in_0),
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_1_io_in_0),
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 31:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_waddr(Alu_io_datamemio_waddr),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_raddr(Alu_io_datamemio_raddr),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 32:24]
    .io_in_1(Crossbar_io_in_1),
    .io_in_2(Crossbar_io_in_2),
    .io_in_3(Crossbar_io_in_3),
    .io_in_4(Crossbar_io_in_4),
    .io_in_5(Crossbar_io_in_5),
    .io_in_6(Crossbar_io_in_6),
    .io_select_0(Crossbar_io_select_0),
    .io_select_1(Crossbar_io_select_1),
    .io_select_2(Crossbar_io_select_2),
    .io_select_3(Crossbar_io_select_3),
    .io_out_0(Crossbar_io_out_0),
    .io_out_1(Crossbar_io_out_1),
    .io_out_2(Crossbar_io_out_2),
    .io_out_3(Crossbar_io_out_3)
  );
  assign io_outLinks_0_valid = canupdatestate & ~Decoder_io_linkinstskip_0; // @[PE.scala 155:68]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 154:15]
  assign io_outLinks_2_valid = canupdatestate & ~Decoder_io_linkinstskip_2; // @[PE.scala 155:68]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 154:15]
  assign io_finish = PEctrlregs_io_outData_28 == 32'h1; // @[PE.scala 167:34]
  assign io_datamemio_wen = Alu_io_datamemio_wen; // @[PE.scala 166:16]
  assign io_datamemio_waddr = Alu_io_datamemio_waddr; // @[PE.scala 166:16]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 166:16]
  assign io_datamemio_ren = Alu_io_datamemio_ren; // @[PE.scala 166:16]
  assign io_datamemio_raddr = Alu_io_datamemio_raddr; // @[PE.scala 166:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_51 : PEctrlregs_io_outData_18
    ; // @[PE.scala 65:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_1 ? _T_44 : PEctrlregs_io_outData_20; // @[PE.scala 47:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 55:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 59:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 63:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_48}; // @[PE.scala 110:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 111:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_21 = canupdatestate & Decoder_io_useconst_0; // @[PE.scala 68:51]
  assign PEctrlregs_io_wen_22 = canupdatestate & Decoder_io_useconst_1; // @[PE.scala 69:51]
  assign PEctrlregs_io_wen_23 = canupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 70:56]
  assign PEctrlregs_io_wen_24 = canupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 71:57]
  assign PEctrlregs_io_wen_25 = canupdatestate & _T_42; // @[PE.scala 74:43]
  assign PEctrlregs_io_wen_26 = canupdatestate & Jchange; // @[PE.scala 75:43]
  assign PEctrlregs_io_wen_27 = canupdatestate & Ichange; // @[PE.scala 76:43]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 85:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 84:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 86:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 80:19]
  assign Fureg_io_enable = canupdatestate & Alu_io_result_valid; // @[PE.scala 81:37]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'h8; // @[PE.scala 96:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 95:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_0_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'h8 & io_waddr < 32'h10; // @[PE.scala 96:82]
  assign Instmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 95:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_1_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h10 & io_waddr < 32'h18; // @[PE.scala 96:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h10; // @[PE.scala 95:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_2_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h18 & io_waddr < 32'h20; // @[PE.scala 96:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h18; // @[PE.scala 95:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_3_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h20 & io_waddr < 32'h28; // @[PE.scala 96:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h20; // @[PE.scala 95:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_4_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h30; // @[PE.scala 96:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h28; // @[PE.scala 95:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_5_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 102:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 103:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 104:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 105:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h30 & io_waddr < 32'h38; // @[PE.scala 119:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 118:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_0_io_raddr = canupdatestate ? _T_15 : PEctrlregs_io_outData_21; // @[PE.scala 115:29]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h38 & io_waddr < 32'h40; // @[PE.scala 119:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 118:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_1_io_raddr = canupdatestate ? _T_23 : PEctrlregs_io_outData_22; // @[PE.scala 116:29]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h40 & io_waddr < 32'h48; // @[PE.scala 128:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 127:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_0_io_raddr = canupdatestate ? _T_31 : PEctrlregs_io_outData_23; // @[PE.scala 124:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h48 & io_waddr < 32'h50; // @[PE.scala 128:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 127:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_1_io_raddr = canupdatestate ? _T_39 : PEctrlregs_io_outData_24; // @[PE.scala 125:35]
  assign Srcmuxs_0_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_0_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_0_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_3 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_5 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_0_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_0_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_0_io_sel = Decoder_io_srckey_0; // @[PE.scala 133:19]
  assign Srcmuxs_1_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_1_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_1_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_3 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_5 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_1_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_1_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_1_io_sel = Decoder_io_srckey_1; // @[PE.scala 133:19]
  assign Alu_io_fn = Decoder_io_alukey; // @[PE.scala 142:13]
  assign Alu_io_src1 = Decoder_io_haveshiftconst_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 143:19]
  assign Alu_io_src2 = Decoder_io_haveshiftconst_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 144:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 166:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 166:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 149:68]
  assign Crossbar_io_in_2 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 149:68]
  assign Crossbar_io_in_4 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 150:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 151:20]
  assign Crossbar_io_select_0 = Decoder_io_linkkey_0; // @[PE.scala 147:22]
  assign Crossbar_io_select_1 = Decoder_io_linkkey_1; // @[PE.scala 147:22]
  assign Crossbar_io_select_2 = Decoder_io_linkkey_2; // @[PE.scala 147:22]
  assign Crossbar_io_select_3 = Decoder_io_linkkey_3; // @[PE.scala 147:22]
endmodule
module PE_3(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
  input  [31:0] io_inLinks_1,
  input  [31:0] io_inLinks_3,
  output        io_outLinks_0_valid,
  output [31:0] io_outLinks_0_bits,
  output        io_outLinks_1_valid,
  output [31:0] io_outLinks_1_bits,
  output        io_outLinks_3_valid,
  output [31:0] io_outLinks_3_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire  PEctrlregs_clock; // @[PE.scala 18:26]
  wire  PEctrlregs_reset; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 18:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 18:26]
  wire  Fureg_clock; // @[PE.scala 19:21]
  wire  Fureg_reset; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 19:21]
  wire  Fureg_io_enable; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 19:21]
  wire  Instmems_0_clock; // @[PE.scala 21:11]
  wire  Instmems_0_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_1_clock; // @[PE.scala 21:11]
  wire  Instmems_1_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_2_clock; // @[PE.scala 21:11]
  wire  Instmems_2_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_3_clock; // @[PE.scala 21:11]
  wire  Instmems_3_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_4_clock; // @[PE.scala 21:11]
  wire  Instmems_4_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_5_clock; // @[PE.scala 21:11]
  wire  Instmems_5_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 21:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_alukey; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 23:23]
  wire  Decoder_io_canexe; // @[PE.scala 23:23]
  wire  Constmems_0_clock; // @[PE.scala 25:11]
  wire  Constmems_0_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 25:11]
  wire  Constmems_1_clock; // @[PE.scala 25:11]
  wire  Constmems_1_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 25:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 28:11]
  wire [31:0] Srcmuxs_0_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 30:48]
  wire [2:0] Alu_io_fn; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 31:19]
  wire  Alu_io_result_valid; // @[PE.scala 31:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_waddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_raddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 31:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 32:24]
  wire [31:0] _T_1 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_6 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_7 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_9 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_14 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_15 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_17 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_22 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_23 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_25 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_30 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_31 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_33 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_38 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_39 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  wire  _T_42 = PEctrlregs_io_outData_19 == _T_1; // @[PE.scala 47:58]
  wire [31:0] _T_44 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 47:100]
  wire  _T_48 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 48:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 51:51]
  wire  Jchange = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(PEctrlregs_io_outData_17)
     : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 51:8]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 55:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 51:51]
  wire  Ichange = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(PEctrlregs_io_outData_16)
     : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 51:8]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 59:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 51:51]
  wire  Iinit = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(PEctrlregs_io_outData_15) :
    $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 51:8]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 63:55]
  wire [31:0] _T_51 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 65:125]
  wire  canupdatestate = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(Shiftconstmems_0_io_rdata); // @[PE.scala 143:111]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(Shiftconstmems_1_io_rdata); // @[PE.scala 144:111]
  PEctrlregs PEctrlregs ( // @[PE.scala 18:26]
    .clock(PEctrlregs_clock),
    .reset(PEctrlregs_reset),
    .io_inData_18(PEctrlregs_io_inData_18),
    .io_inData_19(PEctrlregs_io_inData_19),
    .io_inData_20(PEctrlregs_io_inData_20),
    .io_inData_21(PEctrlregs_io_inData_21),
    .io_inData_22(PEctrlregs_io_inData_22),
    .io_inData_23(PEctrlregs_io_inData_23),
    .io_inData_24(PEctrlregs_io_inData_24),
    .io_inData_25(PEctrlregs_io_inData_25),
    .io_inData_26(PEctrlregs_io_inData_26),
    .io_inData_27(PEctrlregs_io_inData_27),
    .io_inData_28(PEctrlregs_io_inData_28),
    .io_outData_0(PEctrlregs_io_outData_0),
    .io_outData_1(PEctrlregs_io_outData_1),
    .io_outData_2(PEctrlregs_io_outData_2),
    .io_outData_3(PEctrlregs_io_outData_3),
    .io_outData_4(PEctrlregs_io_outData_4),
    .io_outData_5(PEctrlregs_io_outData_5),
    .io_outData_6(PEctrlregs_io_outData_6),
    .io_outData_7(PEctrlregs_io_outData_7),
    .io_outData_8(PEctrlregs_io_outData_8),
    .io_outData_9(PEctrlregs_io_outData_9),
    .io_outData_10(PEctrlregs_io_outData_10),
    .io_outData_11(PEctrlregs_io_outData_11),
    .io_outData_12(PEctrlregs_io_outData_12),
    .io_outData_13(PEctrlregs_io_outData_13),
    .io_outData_14(PEctrlregs_io_outData_14),
    .io_outData_15(PEctrlregs_io_outData_15),
    .io_outData_16(PEctrlregs_io_outData_16),
    .io_outData_17(PEctrlregs_io_outData_17),
    .io_outData_18(PEctrlregs_io_outData_18),
    .io_outData_19(PEctrlregs_io_outData_19),
    .io_outData_20(PEctrlregs_io_outData_20),
    .io_outData_21(PEctrlregs_io_outData_21),
    .io_outData_22(PEctrlregs_io_outData_22),
    .io_outData_23(PEctrlregs_io_outData_23),
    .io_outData_24(PEctrlregs_io_outData_24),
    .io_outData_25(PEctrlregs_io_outData_25),
    .io_outData_26(PEctrlregs_io_outData_26),
    .io_outData_27(PEctrlregs_io_outData_27),
    .io_outData_28(PEctrlregs_io_outData_28),
    .io_wen_18(PEctrlregs_io_wen_18),
    .io_wen_19(PEctrlregs_io_wen_19),
    .io_wen_20(PEctrlregs_io_wen_20),
    .io_wen_21(PEctrlregs_io_wen_21),
    .io_wen_22(PEctrlregs_io_wen_22),
    .io_wen_23(PEctrlregs_io_wen_23),
    .io_wen_24(PEctrlregs_io_wen_24),
    .io_wen_25(PEctrlregs_io_wen_25),
    .io_wen_26(PEctrlregs_io_wen_26),
    .io_wen_27(PEctrlregs_io_wen_27),
    .io_wen_28(PEctrlregs_io_wen_28),
    .io_configwaddr(PEctrlregs_io_configwaddr),
    .io_configwen(PEctrlregs_io_configwen),
    .io_configwdata(PEctrlregs_io_configwdata)
  );
  Register Fureg ( // @[PE.scala 19:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 21:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 21:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 21:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 21:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 21:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 21:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 23:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_2(Decoder_io_inst_2),
    .io_inst_3(Decoder_io_inst_3),
    .io_inst_4(Decoder_io_inst_4),
    .io_inst_5(Decoder_io_inst_5),
    .io_iicnt(Decoder_io_iicnt),
    .io_iinum(Decoder_io_iinum),
    .io_startcyclecnt(Decoder_io_startcyclecnt),
    .io_startcyclenum(Decoder_io_startcyclenum),
    .io_alukey(Decoder_io_alukey),
    .io_srckey_0(Decoder_io_srckey_0),
    .io_srckey_1(Decoder_io_srckey_1),
    .io_linkkey_0(Decoder_io_linkkey_0),
    .io_linkkey_1(Decoder_io_linkkey_1),
    .io_linkkey_2(Decoder_io_linkkey_2),
    .io_linkkey_3(Decoder_io_linkkey_3),
    .io_useconst_0(Decoder_io_useconst_0),
    .io_useconst_1(Decoder_io_useconst_1),
    .io_haveshiftconst_0(Decoder_io_haveshiftconst_0),
    .io_haveshiftconst_1(Decoder_io_haveshiftconst_1),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil Constmems_0 ( // @[PE.scala 25:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil Constmems_1 ( // @[PE.scala 25:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil Shiftconstmems_0 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil Shiftconstmems_1 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_0_io_in_0),
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_1_io_in_0),
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 31:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_waddr(Alu_io_datamemio_waddr),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_raddr(Alu_io_datamemio_raddr),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 32:24]
    .io_in_1(Crossbar_io_in_1),
    .io_in_2(Crossbar_io_in_2),
    .io_in_3(Crossbar_io_in_3),
    .io_in_4(Crossbar_io_in_4),
    .io_in_5(Crossbar_io_in_5),
    .io_in_6(Crossbar_io_in_6),
    .io_select_0(Crossbar_io_select_0),
    .io_select_1(Crossbar_io_select_1),
    .io_select_2(Crossbar_io_select_2),
    .io_select_3(Crossbar_io_select_3),
    .io_out_0(Crossbar_io_out_0),
    .io_out_1(Crossbar_io_out_1),
    .io_out_2(Crossbar_io_out_2),
    .io_out_3(Crossbar_io_out_3)
  );
  assign io_outLinks_0_valid = canupdatestate & ~Decoder_io_linkinstskip_0; // @[PE.scala 155:68]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 154:15]
  assign io_outLinks_1_valid = canupdatestate & ~Decoder_io_linkinstskip_1; // @[PE.scala 155:68]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 154:15]
  assign io_outLinks_3_valid = canupdatestate & ~Decoder_io_linkinstskip_3; // @[PE.scala 155:68]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 154:15]
  assign io_finish = PEctrlregs_io_outData_28 == 32'h1; // @[PE.scala 167:34]
  assign io_datamemio_wen = Alu_io_datamemio_wen; // @[PE.scala 166:16]
  assign io_datamemio_waddr = Alu_io_datamemio_waddr; // @[PE.scala 166:16]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 166:16]
  assign io_datamemio_ren = Alu_io_datamemio_ren; // @[PE.scala 166:16]
  assign io_datamemio_raddr = Alu_io_datamemio_raddr; // @[PE.scala 166:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_51 : PEctrlregs_io_outData_18
    ; // @[PE.scala 65:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_1 ? _T_44 : PEctrlregs_io_outData_20; // @[PE.scala 47:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 55:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 59:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 63:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_48}; // @[PE.scala 110:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 111:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_21 = canupdatestate & Decoder_io_useconst_0; // @[PE.scala 68:51]
  assign PEctrlregs_io_wen_22 = canupdatestate & Decoder_io_useconst_1; // @[PE.scala 69:51]
  assign PEctrlregs_io_wen_23 = canupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 70:56]
  assign PEctrlregs_io_wen_24 = canupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 71:57]
  assign PEctrlregs_io_wen_25 = canupdatestate & _T_42; // @[PE.scala 74:43]
  assign PEctrlregs_io_wen_26 = canupdatestate & Jchange; // @[PE.scala 75:43]
  assign PEctrlregs_io_wen_27 = canupdatestate & Ichange; // @[PE.scala 76:43]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 85:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 84:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 86:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 80:19]
  assign Fureg_io_enable = canupdatestate & Alu_io_result_valid; // @[PE.scala 81:37]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'h8; // @[PE.scala 96:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 95:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_0_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'h8 & io_waddr < 32'h10; // @[PE.scala 96:82]
  assign Instmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 95:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_1_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h10 & io_waddr < 32'h18; // @[PE.scala 96:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h10; // @[PE.scala 95:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_2_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h18 & io_waddr < 32'h20; // @[PE.scala 96:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h18; // @[PE.scala 95:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_3_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h20 & io_waddr < 32'h28; // @[PE.scala 96:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h20; // @[PE.scala 95:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_4_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h30; // @[PE.scala 96:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h28; // @[PE.scala 95:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_5_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 102:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 103:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 104:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 105:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h30 & io_waddr < 32'h38; // @[PE.scala 119:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 118:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_0_io_raddr = canupdatestate ? _T_15 : PEctrlregs_io_outData_21; // @[PE.scala 115:29]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h38 & io_waddr < 32'h40; // @[PE.scala 119:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 118:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_1_io_raddr = canupdatestate ? _T_23 : PEctrlregs_io_outData_22; // @[PE.scala 116:29]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h40 & io_waddr < 32'h48; // @[PE.scala 128:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 127:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_0_io_raddr = canupdatestate ? _T_31 : PEctrlregs_io_outData_23; // @[PE.scala 124:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h48 & io_waddr < 32'h50; // @[PE.scala 128:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 127:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_1_io_raddr = canupdatestate ? _T_39 : PEctrlregs_io_outData_24; // @[PE.scala 125:35]
  assign Srcmuxs_0_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_0_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_0_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_4 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_0_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_0_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_0_io_sel = Decoder_io_srckey_0; // @[PE.scala 133:19]
  assign Srcmuxs_1_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_1_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_1_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_4 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_1_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_1_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_1_io_sel = Decoder_io_srckey_1; // @[PE.scala 133:19]
  assign Alu_io_fn = Decoder_io_alukey; // @[PE.scala 142:13]
  assign Alu_io_src1 = Decoder_io_haveshiftconst_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 143:19]
  assign Alu_io_src2 = Decoder_io_haveshiftconst_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 144:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 166:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 166:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 149:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 149:68]
  assign Crossbar_io_in_3 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 149:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 150:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 151:20]
  assign Crossbar_io_select_0 = Decoder_io_linkkey_0; // @[PE.scala 147:22]
  assign Crossbar_io_select_1 = Decoder_io_linkkey_1; // @[PE.scala 147:22]
  assign Crossbar_io_select_2 = Decoder_io_linkkey_2; // @[PE.scala 147:22]
  assign Crossbar_io_select_3 = Decoder_io_linkkey_3; // @[PE.scala 147:22]
endmodule
module PE_4(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
  input  [31:0] io_inLinks_1,
  input  [31:0] io_inLinks_2,
  input  [31:0] io_inLinks_3,
  output        io_outLinks_0_valid,
  output [31:0] io_outLinks_0_bits,
  output        io_outLinks_1_valid,
  output [31:0] io_outLinks_1_bits,
  output        io_outLinks_2_valid,
  output [31:0] io_outLinks_2_bits,
  output        io_outLinks_3_valid,
  output [31:0] io_outLinks_3_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire  PEctrlregs_clock; // @[PE.scala 18:26]
  wire  PEctrlregs_reset; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 18:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 18:26]
  wire  Fureg_clock; // @[PE.scala 19:21]
  wire  Fureg_reset; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 19:21]
  wire  Fureg_io_enable; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 19:21]
  wire  Instmems_0_clock; // @[PE.scala 21:11]
  wire  Instmems_0_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_1_clock; // @[PE.scala 21:11]
  wire  Instmems_1_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_2_clock; // @[PE.scala 21:11]
  wire  Instmems_2_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_3_clock; // @[PE.scala 21:11]
  wire  Instmems_3_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_4_clock; // @[PE.scala 21:11]
  wire  Instmems_4_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_5_clock; // @[PE.scala 21:11]
  wire  Instmems_5_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 21:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_alukey; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 23:23]
  wire  Decoder_io_canexe; // @[PE.scala 23:23]
  wire  Constmems_0_clock; // @[PE.scala 25:11]
  wire  Constmems_0_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 25:11]
  wire  Constmems_1_clock; // @[PE.scala 25:11]
  wire  Constmems_1_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 25:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 28:11]
  wire [31:0] Srcmuxs_0_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 30:48]
  wire [2:0] Alu_io_fn; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 31:19]
  wire  Alu_io_result_valid; // @[PE.scala 31:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_waddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_raddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 31:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 32:24]
  wire [31:0] _T_1 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_6 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_7 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_9 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_14 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_15 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_17 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_22 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_23 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_25 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_30 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_31 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_33 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_38 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_39 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  wire  _T_42 = PEctrlregs_io_outData_19 == _T_1; // @[PE.scala 47:58]
  wire [31:0] _T_44 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 47:100]
  wire  _T_48 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 48:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 51:51]
  wire  Jchange = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(PEctrlregs_io_outData_17)
     : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 51:8]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 55:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 51:51]
  wire  Ichange = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(PEctrlregs_io_outData_16)
     : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 51:8]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 59:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 51:51]
  wire  Iinit = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(PEctrlregs_io_outData_15) :
    $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 51:8]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 63:55]
  wire [31:0] _T_51 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 65:125]
  wire  canupdatestate = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(Shiftconstmems_0_io_rdata); // @[PE.scala 143:111]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(Shiftconstmems_1_io_rdata); // @[PE.scala 144:111]
  PEctrlregs PEctrlregs ( // @[PE.scala 18:26]
    .clock(PEctrlregs_clock),
    .reset(PEctrlregs_reset),
    .io_inData_18(PEctrlregs_io_inData_18),
    .io_inData_19(PEctrlregs_io_inData_19),
    .io_inData_20(PEctrlregs_io_inData_20),
    .io_inData_21(PEctrlregs_io_inData_21),
    .io_inData_22(PEctrlregs_io_inData_22),
    .io_inData_23(PEctrlregs_io_inData_23),
    .io_inData_24(PEctrlregs_io_inData_24),
    .io_inData_25(PEctrlregs_io_inData_25),
    .io_inData_26(PEctrlregs_io_inData_26),
    .io_inData_27(PEctrlregs_io_inData_27),
    .io_inData_28(PEctrlregs_io_inData_28),
    .io_outData_0(PEctrlregs_io_outData_0),
    .io_outData_1(PEctrlregs_io_outData_1),
    .io_outData_2(PEctrlregs_io_outData_2),
    .io_outData_3(PEctrlregs_io_outData_3),
    .io_outData_4(PEctrlregs_io_outData_4),
    .io_outData_5(PEctrlregs_io_outData_5),
    .io_outData_6(PEctrlregs_io_outData_6),
    .io_outData_7(PEctrlregs_io_outData_7),
    .io_outData_8(PEctrlregs_io_outData_8),
    .io_outData_9(PEctrlregs_io_outData_9),
    .io_outData_10(PEctrlregs_io_outData_10),
    .io_outData_11(PEctrlregs_io_outData_11),
    .io_outData_12(PEctrlregs_io_outData_12),
    .io_outData_13(PEctrlregs_io_outData_13),
    .io_outData_14(PEctrlregs_io_outData_14),
    .io_outData_15(PEctrlregs_io_outData_15),
    .io_outData_16(PEctrlregs_io_outData_16),
    .io_outData_17(PEctrlregs_io_outData_17),
    .io_outData_18(PEctrlregs_io_outData_18),
    .io_outData_19(PEctrlregs_io_outData_19),
    .io_outData_20(PEctrlregs_io_outData_20),
    .io_outData_21(PEctrlregs_io_outData_21),
    .io_outData_22(PEctrlregs_io_outData_22),
    .io_outData_23(PEctrlregs_io_outData_23),
    .io_outData_24(PEctrlregs_io_outData_24),
    .io_outData_25(PEctrlregs_io_outData_25),
    .io_outData_26(PEctrlregs_io_outData_26),
    .io_outData_27(PEctrlregs_io_outData_27),
    .io_outData_28(PEctrlregs_io_outData_28),
    .io_wen_18(PEctrlregs_io_wen_18),
    .io_wen_19(PEctrlregs_io_wen_19),
    .io_wen_20(PEctrlregs_io_wen_20),
    .io_wen_21(PEctrlregs_io_wen_21),
    .io_wen_22(PEctrlregs_io_wen_22),
    .io_wen_23(PEctrlregs_io_wen_23),
    .io_wen_24(PEctrlregs_io_wen_24),
    .io_wen_25(PEctrlregs_io_wen_25),
    .io_wen_26(PEctrlregs_io_wen_26),
    .io_wen_27(PEctrlregs_io_wen_27),
    .io_wen_28(PEctrlregs_io_wen_28),
    .io_configwaddr(PEctrlregs_io_configwaddr),
    .io_configwen(PEctrlregs_io_configwen),
    .io_configwdata(PEctrlregs_io_configwdata)
  );
  Register Fureg ( // @[PE.scala 19:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 21:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 21:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 21:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 21:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 21:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 21:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 23:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_2(Decoder_io_inst_2),
    .io_inst_3(Decoder_io_inst_3),
    .io_inst_4(Decoder_io_inst_4),
    .io_inst_5(Decoder_io_inst_5),
    .io_iicnt(Decoder_io_iicnt),
    .io_iinum(Decoder_io_iinum),
    .io_startcyclecnt(Decoder_io_startcyclecnt),
    .io_startcyclenum(Decoder_io_startcyclenum),
    .io_alukey(Decoder_io_alukey),
    .io_srckey_0(Decoder_io_srckey_0),
    .io_srckey_1(Decoder_io_srckey_1),
    .io_linkkey_0(Decoder_io_linkkey_0),
    .io_linkkey_1(Decoder_io_linkkey_1),
    .io_linkkey_2(Decoder_io_linkkey_2),
    .io_linkkey_3(Decoder_io_linkkey_3),
    .io_useconst_0(Decoder_io_useconst_0),
    .io_useconst_1(Decoder_io_useconst_1),
    .io_haveshiftconst_0(Decoder_io_haveshiftconst_0),
    .io_haveshiftconst_1(Decoder_io_haveshiftconst_1),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil Constmems_0 ( // @[PE.scala 25:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil Constmems_1 ( // @[PE.scala 25:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil Shiftconstmems_0 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil Shiftconstmems_1 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_0_io_in_0),
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_1_io_in_0),
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 31:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_waddr(Alu_io_datamemio_waddr),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_raddr(Alu_io_datamemio_raddr),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 32:24]
    .io_in_1(Crossbar_io_in_1),
    .io_in_2(Crossbar_io_in_2),
    .io_in_3(Crossbar_io_in_3),
    .io_in_4(Crossbar_io_in_4),
    .io_in_5(Crossbar_io_in_5),
    .io_in_6(Crossbar_io_in_6),
    .io_select_0(Crossbar_io_select_0),
    .io_select_1(Crossbar_io_select_1),
    .io_select_2(Crossbar_io_select_2),
    .io_select_3(Crossbar_io_select_3),
    .io_out_0(Crossbar_io_out_0),
    .io_out_1(Crossbar_io_out_1),
    .io_out_2(Crossbar_io_out_2),
    .io_out_3(Crossbar_io_out_3)
  );
  assign io_outLinks_0_valid = canupdatestate & ~Decoder_io_linkinstskip_0; // @[PE.scala 155:68]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 154:15]
  assign io_outLinks_1_valid = canupdatestate & ~Decoder_io_linkinstskip_1; // @[PE.scala 155:68]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 154:15]
  assign io_outLinks_2_valid = canupdatestate & ~Decoder_io_linkinstskip_2; // @[PE.scala 155:68]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 154:15]
  assign io_outLinks_3_valid = canupdatestate & ~Decoder_io_linkinstskip_3; // @[PE.scala 155:68]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 154:15]
  assign io_finish = PEctrlregs_io_outData_28 == 32'h1; // @[PE.scala 167:34]
  assign io_datamemio_wen = Alu_io_datamemio_wen; // @[PE.scala 166:16]
  assign io_datamemio_waddr = Alu_io_datamemio_waddr; // @[PE.scala 166:16]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 166:16]
  assign io_datamemio_ren = Alu_io_datamemio_ren; // @[PE.scala 166:16]
  assign io_datamemio_raddr = Alu_io_datamemio_raddr; // @[PE.scala 166:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_51 : PEctrlregs_io_outData_18
    ; // @[PE.scala 65:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_1 ? _T_44 : PEctrlregs_io_outData_20; // @[PE.scala 47:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 55:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 59:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 63:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_48}; // @[PE.scala 110:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 111:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_21 = canupdatestate & Decoder_io_useconst_0; // @[PE.scala 68:51]
  assign PEctrlregs_io_wen_22 = canupdatestate & Decoder_io_useconst_1; // @[PE.scala 69:51]
  assign PEctrlregs_io_wen_23 = canupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 70:56]
  assign PEctrlregs_io_wen_24 = canupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 71:57]
  assign PEctrlregs_io_wen_25 = canupdatestate & _T_42; // @[PE.scala 74:43]
  assign PEctrlregs_io_wen_26 = canupdatestate & Jchange; // @[PE.scala 75:43]
  assign PEctrlregs_io_wen_27 = canupdatestate & Ichange; // @[PE.scala 76:43]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 85:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 84:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 86:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 80:19]
  assign Fureg_io_enable = canupdatestate & Alu_io_result_valid; // @[PE.scala 81:37]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'h8; // @[PE.scala 96:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 95:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_0_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'h8 & io_waddr < 32'h10; // @[PE.scala 96:82]
  assign Instmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 95:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_1_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h10 & io_waddr < 32'h18; // @[PE.scala 96:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h10; // @[PE.scala 95:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_2_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h18 & io_waddr < 32'h20; // @[PE.scala 96:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h18; // @[PE.scala 95:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_3_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h20 & io_waddr < 32'h28; // @[PE.scala 96:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h20; // @[PE.scala 95:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_4_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h30; // @[PE.scala 96:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h28; // @[PE.scala 95:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_5_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 102:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 103:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 104:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 105:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h30 & io_waddr < 32'h38; // @[PE.scala 119:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 118:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_0_io_raddr = canupdatestate ? _T_15 : PEctrlregs_io_outData_21; // @[PE.scala 115:29]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h38 & io_waddr < 32'h40; // @[PE.scala 119:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 118:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_1_io_raddr = canupdatestate ? _T_23 : PEctrlregs_io_outData_22; // @[PE.scala 116:29]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h40 & io_waddr < 32'h48; // @[PE.scala 128:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 127:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_0_io_raddr = canupdatestate ? _T_31 : PEctrlregs_io_outData_23; // @[PE.scala 124:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h48 & io_waddr < 32'h50; // @[PE.scala 128:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 127:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_1_io_raddr = canupdatestate ? _T_39 : PEctrlregs_io_outData_24; // @[PE.scala 125:35]
  assign Srcmuxs_0_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_0_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_0_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_0_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_0_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_0_io_sel = Decoder_io_srckey_0; // @[PE.scala 133:19]
  assign Srcmuxs_1_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_1_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_1_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_1_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_1_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_1_io_sel = Decoder_io_srckey_1; // @[PE.scala 133:19]
  assign Alu_io_fn = Decoder_io_alukey; // @[PE.scala 142:13]
  assign Alu_io_src1 = Decoder_io_haveshiftconst_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 143:19]
  assign Alu_io_src2 = Decoder_io_haveshiftconst_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 144:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 166:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 166:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 149:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 149:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 149:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 149:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 150:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 151:20]
  assign Crossbar_io_select_0 = Decoder_io_linkkey_0; // @[PE.scala 147:22]
  assign Crossbar_io_select_1 = Decoder_io_linkkey_1; // @[PE.scala 147:22]
  assign Crossbar_io_select_2 = Decoder_io_linkkey_2; // @[PE.scala 147:22]
  assign Crossbar_io_select_3 = Decoder_io_linkkey_3; // @[PE.scala 147:22]
endmodule
module PE_5(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
  input  [31:0] io_inLinks_1,
  input  [31:0] io_inLinks_2,
  output        io_outLinks_0_valid,
  output [31:0] io_outLinks_0_bits,
  output        io_outLinks_1_valid,
  output [31:0] io_outLinks_1_bits,
  output        io_outLinks_2_valid,
  output [31:0] io_outLinks_2_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire  PEctrlregs_clock; // @[PE.scala 18:26]
  wire  PEctrlregs_reset; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 18:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 18:26]
  wire  Fureg_clock; // @[PE.scala 19:21]
  wire  Fureg_reset; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 19:21]
  wire  Fureg_io_enable; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 19:21]
  wire  Instmems_0_clock; // @[PE.scala 21:11]
  wire  Instmems_0_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_1_clock; // @[PE.scala 21:11]
  wire  Instmems_1_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_2_clock; // @[PE.scala 21:11]
  wire  Instmems_2_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_3_clock; // @[PE.scala 21:11]
  wire  Instmems_3_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_4_clock; // @[PE.scala 21:11]
  wire  Instmems_4_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_5_clock; // @[PE.scala 21:11]
  wire  Instmems_5_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 21:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_alukey; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 23:23]
  wire  Decoder_io_canexe; // @[PE.scala 23:23]
  wire  Constmems_0_clock; // @[PE.scala 25:11]
  wire  Constmems_0_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 25:11]
  wire  Constmems_1_clock; // @[PE.scala 25:11]
  wire  Constmems_1_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 25:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 28:11]
  wire [31:0] Srcmuxs_0_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 30:48]
  wire [2:0] Alu_io_fn; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 31:19]
  wire  Alu_io_result_valid; // @[PE.scala 31:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_waddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_raddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 31:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 32:24]
  wire [31:0] _T_1 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_6 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_7 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_9 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_14 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_15 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_17 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_22 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_23 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_25 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_30 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_31 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_33 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_38 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_39 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  wire  _T_42 = PEctrlregs_io_outData_19 == _T_1; // @[PE.scala 47:58]
  wire [31:0] _T_44 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 47:100]
  wire  _T_48 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 48:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 51:51]
  wire  Jchange = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(PEctrlregs_io_outData_17)
     : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 51:8]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 55:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 51:51]
  wire  Ichange = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(PEctrlregs_io_outData_16)
     : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 51:8]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 59:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 51:51]
  wire  Iinit = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(PEctrlregs_io_outData_15) :
    $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 51:8]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 63:55]
  wire [31:0] _T_51 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 65:125]
  wire  canupdatestate = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(Shiftconstmems_0_io_rdata); // @[PE.scala 143:111]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(Shiftconstmems_1_io_rdata); // @[PE.scala 144:111]
  PEctrlregs PEctrlregs ( // @[PE.scala 18:26]
    .clock(PEctrlregs_clock),
    .reset(PEctrlregs_reset),
    .io_inData_18(PEctrlregs_io_inData_18),
    .io_inData_19(PEctrlregs_io_inData_19),
    .io_inData_20(PEctrlregs_io_inData_20),
    .io_inData_21(PEctrlregs_io_inData_21),
    .io_inData_22(PEctrlregs_io_inData_22),
    .io_inData_23(PEctrlregs_io_inData_23),
    .io_inData_24(PEctrlregs_io_inData_24),
    .io_inData_25(PEctrlregs_io_inData_25),
    .io_inData_26(PEctrlregs_io_inData_26),
    .io_inData_27(PEctrlregs_io_inData_27),
    .io_inData_28(PEctrlregs_io_inData_28),
    .io_outData_0(PEctrlregs_io_outData_0),
    .io_outData_1(PEctrlregs_io_outData_1),
    .io_outData_2(PEctrlregs_io_outData_2),
    .io_outData_3(PEctrlregs_io_outData_3),
    .io_outData_4(PEctrlregs_io_outData_4),
    .io_outData_5(PEctrlregs_io_outData_5),
    .io_outData_6(PEctrlregs_io_outData_6),
    .io_outData_7(PEctrlregs_io_outData_7),
    .io_outData_8(PEctrlregs_io_outData_8),
    .io_outData_9(PEctrlregs_io_outData_9),
    .io_outData_10(PEctrlregs_io_outData_10),
    .io_outData_11(PEctrlregs_io_outData_11),
    .io_outData_12(PEctrlregs_io_outData_12),
    .io_outData_13(PEctrlregs_io_outData_13),
    .io_outData_14(PEctrlregs_io_outData_14),
    .io_outData_15(PEctrlregs_io_outData_15),
    .io_outData_16(PEctrlregs_io_outData_16),
    .io_outData_17(PEctrlregs_io_outData_17),
    .io_outData_18(PEctrlregs_io_outData_18),
    .io_outData_19(PEctrlregs_io_outData_19),
    .io_outData_20(PEctrlregs_io_outData_20),
    .io_outData_21(PEctrlregs_io_outData_21),
    .io_outData_22(PEctrlregs_io_outData_22),
    .io_outData_23(PEctrlregs_io_outData_23),
    .io_outData_24(PEctrlregs_io_outData_24),
    .io_outData_25(PEctrlregs_io_outData_25),
    .io_outData_26(PEctrlregs_io_outData_26),
    .io_outData_27(PEctrlregs_io_outData_27),
    .io_outData_28(PEctrlregs_io_outData_28),
    .io_wen_18(PEctrlregs_io_wen_18),
    .io_wen_19(PEctrlregs_io_wen_19),
    .io_wen_20(PEctrlregs_io_wen_20),
    .io_wen_21(PEctrlregs_io_wen_21),
    .io_wen_22(PEctrlregs_io_wen_22),
    .io_wen_23(PEctrlregs_io_wen_23),
    .io_wen_24(PEctrlregs_io_wen_24),
    .io_wen_25(PEctrlregs_io_wen_25),
    .io_wen_26(PEctrlregs_io_wen_26),
    .io_wen_27(PEctrlregs_io_wen_27),
    .io_wen_28(PEctrlregs_io_wen_28),
    .io_configwaddr(PEctrlregs_io_configwaddr),
    .io_configwen(PEctrlregs_io_configwen),
    .io_configwdata(PEctrlregs_io_configwdata)
  );
  Register Fureg ( // @[PE.scala 19:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 21:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 21:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 21:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 21:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 21:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 21:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 23:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_2(Decoder_io_inst_2),
    .io_inst_3(Decoder_io_inst_3),
    .io_inst_4(Decoder_io_inst_4),
    .io_inst_5(Decoder_io_inst_5),
    .io_iicnt(Decoder_io_iicnt),
    .io_iinum(Decoder_io_iinum),
    .io_startcyclecnt(Decoder_io_startcyclecnt),
    .io_startcyclenum(Decoder_io_startcyclenum),
    .io_alukey(Decoder_io_alukey),
    .io_srckey_0(Decoder_io_srckey_0),
    .io_srckey_1(Decoder_io_srckey_1),
    .io_linkkey_0(Decoder_io_linkkey_0),
    .io_linkkey_1(Decoder_io_linkkey_1),
    .io_linkkey_2(Decoder_io_linkkey_2),
    .io_linkkey_3(Decoder_io_linkkey_3),
    .io_useconst_0(Decoder_io_useconst_0),
    .io_useconst_1(Decoder_io_useconst_1),
    .io_haveshiftconst_0(Decoder_io_haveshiftconst_0),
    .io_haveshiftconst_1(Decoder_io_haveshiftconst_1),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil Constmems_0 ( // @[PE.scala 25:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil Constmems_1 ( // @[PE.scala 25:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil Shiftconstmems_0 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil Shiftconstmems_1 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_0_io_in_0),
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_1_io_in_0),
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 31:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_waddr(Alu_io_datamemio_waddr),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_raddr(Alu_io_datamemio_raddr),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 32:24]
    .io_in_1(Crossbar_io_in_1),
    .io_in_2(Crossbar_io_in_2),
    .io_in_3(Crossbar_io_in_3),
    .io_in_4(Crossbar_io_in_4),
    .io_in_5(Crossbar_io_in_5),
    .io_in_6(Crossbar_io_in_6),
    .io_select_0(Crossbar_io_select_0),
    .io_select_1(Crossbar_io_select_1),
    .io_select_2(Crossbar_io_select_2),
    .io_select_3(Crossbar_io_select_3),
    .io_out_0(Crossbar_io_out_0),
    .io_out_1(Crossbar_io_out_1),
    .io_out_2(Crossbar_io_out_2),
    .io_out_3(Crossbar_io_out_3)
  );
  assign io_outLinks_0_valid = canupdatestate & ~Decoder_io_linkinstskip_0; // @[PE.scala 155:68]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 154:15]
  assign io_outLinks_1_valid = canupdatestate & ~Decoder_io_linkinstskip_1; // @[PE.scala 155:68]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 154:15]
  assign io_outLinks_2_valid = canupdatestate & ~Decoder_io_linkinstskip_2; // @[PE.scala 155:68]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 154:15]
  assign io_finish = PEctrlregs_io_outData_28 == 32'h1; // @[PE.scala 167:34]
  assign io_datamemio_wen = Alu_io_datamemio_wen; // @[PE.scala 166:16]
  assign io_datamemio_waddr = Alu_io_datamemio_waddr; // @[PE.scala 166:16]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 166:16]
  assign io_datamemio_ren = Alu_io_datamemio_ren; // @[PE.scala 166:16]
  assign io_datamemio_raddr = Alu_io_datamemio_raddr; // @[PE.scala 166:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_51 : PEctrlregs_io_outData_18
    ; // @[PE.scala 65:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_1 ? _T_44 : PEctrlregs_io_outData_20; // @[PE.scala 47:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 55:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 59:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 63:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_48}; // @[PE.scala 110:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 111:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_21 = canupdatestate & Decoder_io_useconst_0; // @[PE.scala 68:51]
  assign PEctrlregs_io_wen_22 = canupdatestate & Decoder_io_useconst_1; // @[PE.scala 69:51]
  assign PEctrlregs_io_wen_23 = canupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 70:56]
  assign PEctrlregs_io_wen_24 = canupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 71:57]
  assign PEctrlregs_io_wen_25 = canupdatestate & _T_42; // @[PE.scala 74:43]
  assign PEctrlregs_io_wen_26 = canupdatestate & Jchange; // @[PE.scala 75:43]
  assign PEctrlregs_io_wen_27 = canupdatestate & Ichange; // @[PE.scala 76:43]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 85:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 84:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 86:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 80:19]
  assign Fureg_io_enable = canupdatestate & Alu_io_result_valid; // @[PE.scala 81:37]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'h8; // @[PE.scala 96:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 95:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_0_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'h8 & io_waddr < 32'h10; // @[PE.scala 96:82]
  assign Instmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 95:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_1_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h10 & io_waddr < 32'h18; // @[PE.scala 96:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h10; // @[PE.scala 95:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_2_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h18 & io_waddr < 32'h20; // @[PE.scala 96:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h18; // @[PE.scala 95:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_3_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h20 & io_waddr < 32'h28; // @[PE.scala 96:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h20; // @[PE.scala 95:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_4_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h30; // @[PE.scala 96:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h28; // @[PE.scala 95:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_5_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 102:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 103:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 104:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 105:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h30 & io_waddr < 32'h38; // @[PE.scala 119:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 118:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_0_io_raddr = canupdatestate ? _T_15 : PEctrlregs_io_outData_21; // @[PE.scala 115:29]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h38 & io_waddr < 32'h40; // @[PE.scala 119:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 118:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_1_io_raddr = canupdatestate ? _T_23 : PEctrlregs_io_outData_22; // @[PE.scala 116:29]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h40 & io_waddr < 32'h48; // @[PE.scala 128:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 127:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_0_io_raddr = canupdatestate ? _T_31 : PEctrlregs_io_outData_23; // @[PE.scala 124:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h48 & io_waddr < 32'h50; // @[PE.scala 128:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 127:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_1_io_raddr = canupdatestate ? _T_39 : PEctrlregs_io_outData_24; // @[PE.scala 125:35]
  assign Srcmuxs_0_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_0_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_0_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_5 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_0_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_0_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_0_io_sel = Decoder_io_srckey_0; // @[PE.scala 133:19]
  assign Srcmuxs_1_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_1_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_1_io_in_2 = io_inLinks_0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_5 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_1_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_1_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_1_io_sel = Decoder_io_srckey_1; // @[PE.scala 133:19]
  assign Alu_io_fn = Decoder_io_alukey; // @[PE.scala 142:13]
  assign Alu_io_src1 = Decoder_io_haveshiftconst_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 143:19]
  assign Alu_io_src2 = Decoder_io_haveshiftconst_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 144:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 166:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 166:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 149:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 149:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 149:68]
  assign Crossbar_io_in_4 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 150:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 151:20]
  assign Crossbar_io_select_0 = Decoder_io_linkkey_0; // @[PE.scala 147:22]
  assign Crossbar_io_select_1 = Decoder_io_linkkey_1; // @[PE.scala 147:22]
  assign Crossbar_io_select_2 = Decoder_io_linkkey_2; // @[PE.scala 147:22]
  assign Crossbar_io_select_3 = Decoder_io_linkkey_3; // @[PE.scala 147:22]
endmodule
module PE_6(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_1,
  input  [31:0] io_inLinks_3,
  output        io_outLinks_1_valid,
  output [31:0] io_outLinks_1_bits,
  output        io_outLinks_3_valid,
  output [31:0] io_outLinks_3_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire  PEctrlregs_clock; // @[PE.scala 18:26]
  wire  PEctrlregs_reset; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 18:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 18:26]
  wire  Fureg_clock; // @[PE.scala 19:21]
  wire  Fureg_reset; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 19:21]
  wire  Fureg_io_enable; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 19:21]
  wire  Instmems_0_clock; // @[PE.scala 21:11]
  wire  Instmems_0_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_1_clock; // @[PE.scala 21:11]
  wire  Instmems_1_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_2_clock; // @[PE.scala 21:11]
  wire  Instmems_2_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_3_clock; // @[PE.scala 21:11]
  wire  Instmems_3_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_4_clock; // @[PE.scala 21:11]
  wire  Instmems_4_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_5_clock; // @[PE.scala 21:11]
  wire  Instmems_5_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 21:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_alukey; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 23:23]
  wire  Decoder_io_canexe; // @[PE.scala 23:23]
  wire  Constmems_0_clock; // @[PE.scala 25:11]
  wire  Constmems_0_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 25:11]
  wire  Constmems_1_clock; // @[PE.scala 25:11]
  wire  Constmems_1_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 25:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 28:11]
  wire [31:0] Srcmuxs_0_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 30:48]
  wire [2:0] Alu_io_fn; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 31:19]
  wire  Alu_io_result_valid; // @[PE.scala 31:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_waddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_raddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 31:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 32:24]
  wire [31:0] _T_1 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_6 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_7 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_9 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_14 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_15 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_17 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_22 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_23 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_25 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_30 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_31 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_33 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_38 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_39 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  wire  _T_42 = PEctrlregs_io_outData_19 == _T_1; // @[PE.scala 47:58]
  wire [31:0] _T_44 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 47:100]
  wire  _T_48 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 48:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 51:51]
  wire  Jchange = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(PEctrlregs_io_outData_17)
     : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 51:8]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 55:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 51:51]
  wire  Ichange = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(PEctrlregs_io_outData_16)
     : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 51:8]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 59:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 51:51]
  wire  Iinit = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(PEctrlregs_io_outData_15) :
    $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 51:8]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 63:55]
  wire [31:0] _T_51 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 65:125]
  wire  canupdatestate = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(Shiftconstmems_0_io_rdata); // @[PE.scala 143:111]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(Shiftconstmems_1_io_rdata); // @[PE.scala 144:111]
  PEctrlregs PEctrlregs ( // @[PE.scala 18:26]
    .clock(PEctrlregs_clock),
    .reset(PEctrlregs_reset),
    .io_inData_18(PEctrlregs_io_inData_18),
    .io_inData_19(PEctrlregs_io_inData_19),
    .io_inData_20(PEctrlregs_io_inData_20),
    .io_inData_21(PEctrlregs_io_inData_21),
    .io_inData_22(PEctrlregs_io_inData_22),
    .io_inData_23(PEctrlregs_io_inData_23),
    .io_inData_24(PEctrlregs_io_inData_24),
    .io_inData_25(PEctrlregs_io_inData_25),
    .io_inData_26(PEctrlregs_io_inData_26),
    .io_inData_27(PEctrlregs_io_inData_27),
    .io_inData_28(PEctrlregs_io_inData_28),
    .io_outData_0(PEctrlregs_io_outData_0),
    .io_outData_1(PEctrlregs_io_outData_1),
    .io_outData_2(PEctrlregs_io_outData_2),
    .io_outData_3(PEctrlregs_io_outData_3),
    .io_outData_4(PEctrlregs_io_outData_4),
    .io_outData_5(PEctrlregs_io_outData_5),
    .io_outData_6(PEctrlregs_io_outData_6),
    .io_outData_7(PEctrlregs_io_outData_7),
    .io_outData_8(PEctrlregs_io_outData_8),
    .io_outData_9(PEctrlregs_io_outData_9),
    .io_outData_10(PEctrlregs_io_outData_10),
    .io_outData_11(PEctrlregs_io_outData_11),
    .io_outData_12(PEctrlregs_io_outData_12),
    .io_outData_13(PEctrlregs_io_outData_13),
    .io_outData_14(PEctrlregs_io_outData_14),
    .io_outData_15(PEctrlregs_io_outData_15),
    .io_outData_16(PEctrlregs_io_outData_16),
    .io_outData_17(PEctrlregs_io_outData_17),
    .io_outData_18(PEctrlregs_io_outData_18),
    .io_outData_19(PEctrlregs_io_outData_19),
    .io_outData_20(PEctrlregs_io_outData_20),
    .io_outData_21(PEctrlregs_io_outData_21),
    .io_outData_22(PEctrlregs_io_outData_22),
    .io_outData_23(PEctrlregs_io_outData_23),
    .io_outData_24(PEctrlregs_io_outData_24),
    .io_outData_25(PEctrlregs_io_outData_25),
    .io_outData_26(PEctrlregs_io_outData_26),
    .io_outData_27(PEctrlregs_io_outData_27),
    .io_outData_28(PEctrlregs_io_outData_28),
    .io_wen_18(PEctrlregs_io_wen_18),
    .io_wen_19(PEctrlregs_io_wen_19),
    .io_wen_20(PEctrlregs_io_wen_20),
    .io_wen_21(PEctrlregs_io_wen_21),
    .io_wen_22(PEctrlregs_io_wen_22),
    .io_wen_23(PEctrlregs_io_wen_23),
    .io_wen_24(PEctrlregs_io_wen_24),
    .io_wen_25(PEctrlregs_io_wen_25),
    .io_wen_26(PEctrlregs_io_wen_26),
    .io_wen_27(PEctrlregs_io_wen_27),
    .io_wen_28(PEctrlregs_io_wen_28),
    .io_configwaddr(PEctrlregs_io_configwaddr),
    .io_configwen(PEctrlregs_io_configwen),
    .io_configwdata(PEctrlregs_io_configwdata)
  );
  Register Fureg ( // @[PE.scala 19:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 21:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 21:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 21:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 21:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 21:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 21:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 23:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_2(Decoder_io_inst_2),
    .io_inst_3(Decoder_io_inst_3),
    .io_inst_4(Decoder_io_inst_4),
    .io_inst_5(Decoder_io_inst_5),
    .io_iicnt(Decoder_io_iicnt),
    .io_iinum(Decoder_io_iinum),
    .io_startcyclecnt(Decoder_io_startcyclecnt),
    .io_startcyclenum(Decoder_io_startcyclenum),
    .io_alukey(Decoder_io_alukey),
    .io_srckey_0(Decoder_io_srckey_0),
    .io_srckey_1(Decoder_io_srckey_1),
    .io_linkkey_0(Decoder_io_linkkey_0),
    .io_linkkey_1(Decoder_io_linkkey_1),
    .io_linkkey_2(Decoder_io_linkkey_2),
    .io_linkkey_3(Decoder_io_linkkey_3),
    .io_useconst_0(Decoder_io_useconst_0),
    .io_useconst_1(Decoder_io_useconst_1),
    .io_haveshiftconst_0(Decoder_io_haveshiftconst_0),
    .io_haveshiftconst_1(Decoder_io_haveshiftconst_1),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil Constmems_0 ( // @[PE.scala 25:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil Constmems_1 ( // @[PE.scala 25:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil Shiftconstmems_0 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil Shiftconstmems_1 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_0_io_in_0),
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_1_io_in_0),
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 31:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_waddr(Alu_io_datamemio_waddr),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_raddr(Alu_io_datamemio_raddr),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 32:24]
    .io_in_1(Crossbar_io_in_1),
    .io_in_2(Crossbar_io_in_2),
    .io_in_3(Crossbar_io_in_3),
    .io_in_4(Crossbar_io_in_4),
    .io_in_5(Crossbar_io_in_5),
    .io_in_6(Crossbar_io_in_6),
    .io_select_0(Crossbar_io_select_0),
    .io_select_1(Crossbar_io_select_1),
    .io_select_2(Crossbar_io_select_2),
    .io_select_3(Crossbar_io_select_3),
    .io_out_0(Crossbar_io_out_0),
    .io_out_1(Crossbar_io_out_1),
    .io_out_2(Crossbar_io_out_2),
    .io_out_3(Crossbar_io_out_3)
  );
  assign io_outLinks_1_valid = canupdatestate & ~Decoder_io_linkinstskip_1; // @[PE.scala 155:68]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 154:15]
  assign io_outLinks_3_valid = canupdatestate & ~Decoder_io_linkinstskip_3; // @[PE.scala 155:68]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 154:15]
  assign io_finish = PEctrlregs_io_outData_28 == 32'h1; // @[PE.scala 167:34]
  assign io_datamemio_wen = Alu_io_datamemio_wen; // @[PE.scala 166:16]
  assign io_datamemio_waddr = Alu_io_datamemio_waddr; // @[PE.scala 166:16]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 166:16]
  assign io_datamemio_ren = Alu_io_datamemio_ren; // @[PE.scala 166:16]
  assign io_datamemio_raddr = Alu_io_datamemio_raddr; // @[PE.scala 166:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_51 : PEctrlregs_io_outData_18
    ; // @[PE.scala 65:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_1 ? _T_44 : PEctrlregs_io_outData_20; // @[PE.scala 47:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 55:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 59:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 63:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_48}; // @[PE.scala 110:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 111:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_21 = canupdatestate & Decoder_io_useconst_0; // @[PE.scala 68:51]
  assign PEctrlregs_io_wen_22 = canupdatestate & Decoder_io_useconst_1; // @[PE.scala 69:51]
  assign PEctrlregs_io_wen_23 = canupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 70:56]
  assign PEctrlregs_io_wen_24 = canupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 71:57]
  assign PEctrlregs_io_wen_25 = canupdatestate & _T_42; // @[PE.scala 74:43]
  assign PEctrlregs_io_wen_26 = canupdatestate & Jchange; // @[PE.scala 75:43]
  assign PEctrlregs_io_wen_27 = canupdatestate & Ichange; // @[PE.scala 76:43]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 85:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 84:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 86:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 80:19]
  assign Fureg_io_enable = canupdatestate & Alu_io_result_valid; // @[PE.scala 81:37]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'h8; // @[PE.scala 96:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 95:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_0_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'h8 & io_waddr < 32'h10; // @[PE.scala 96:82]
  assign Instmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 95:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_1_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h10 & io_waddr < 32'h18; // @[PE.scala 96:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h10; // @[PE.scala 95:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_2_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h18 & io_waddr < 32'h20; // @[PE.scala 96:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h18; // @[PE.scala 95:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_3_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h20 & io_waddr < 32'h28; // @[PE.scala 96:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h20; // @[PE.scala 95:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_4_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h30; // @[PE.scala 96:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h28; // @[PE.scala 95:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_5_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 102:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 103:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 104:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 105:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h30 & io_waddr < 32'h38; // @[PE.scala 119:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 118:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_0_io_raddr = canupdatestate ? _T_15 : PEctrlregs_io_outData_21; // @[PE.scala 115:29]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h38 & io_waddr < 32'h40; // @[PE.scala 119:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 118:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_1_io_raddr = canupdatestate ? _T_23 : PEctrlregs_io_outData_22; // @[PE.scala 116:29]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h40 & io_waddr < 32'h48; // @[PE.scala 128:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 127:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_0_io_raddr = canupdatestate ? _T_31 : PEctrlregs_io_outData_23; // @[PE.scala 124:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h48 & io_waddr < 32'h50; // @[PE.scala 128:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 127:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_1_io_raddr = canupdatestate ? _T_39 : PEctrlregs_io_outData_24; // @[PE.scala 125:35]
  assign Srcmuxs_0_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_0_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_0_io_in_2 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_4 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_0_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_0_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_0_io_sel = Decoder_io_srckey_0; // @[PE.scala 133:19]
  assign Srcmuxs_1_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_1_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_1_io_in_2 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_4 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_1_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_1_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_1_io_sel = Decoder_io_srckey_1; // @[PE.scala 133:19]
  assign Alu_io_fn = Decoder_io_alukey; // @[PE.scala 142:13]
  assign Alu_io_src1 = Decoder_io_haveshiftconst_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 143:19]
  assign Alu_io_src2 = Decoder_io_haveshiftconst_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 144:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 166:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 166:16]
  assign Crossbar_io_in_1 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 149:68]
  assign Crossbar_io_in_3 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 149:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 150:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 151:20]
  assign Crossbar_io_select_0 = Decoder_io_linkkey_0; // @[PE.scala 147:22]
  assign Crossbar_io_select_1 = Decoder_io_linkkey_1; // @[PE.scala 147:22]
  assign Crossbar_io_select_2 = Decoder_io_linkkey_2; // @[PE.scala 147:22]
  assign Crossbar_io_select_3 = Decoder_io_linkkey_3; // @[PE.scala 147:22]
endmodule
module PE_7(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_1,
  input  [31:0] io_inLinks_2,
  input  [31:0] io_inLinks_3,
  output        io_outLinks_1_valid,
  output [31:0] io_outLinks_1_bits,
  output        io_outLinks_2_valid,
  output [31:0] io_outLinks_2_bits,
  output        io_outLinks_3_valid,
  output [31:0] io_outLinks_3_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire  PEctrlregs_clock; // @[PE.scala 18:26]
  wire  PEctrlregs_reset; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 18:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 18:26]
  wire  Fureg_clock; // @[PE.scala 19:21]
  wire  Fureg_reset; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 19:21]
  wire  Fureg_io_enable; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 19:21]
  wire  Instmems_0_clock; // @[PE.scala 21:11]
  wire  Instmems_0_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_1_clock; // @[PE.scala 21:11]
  wire  Instmems_1_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_2_clock; // @[PE.scala 21:11]
  wire  Instmems_2_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_3_clock; // @[PE.scala 21:11]
  wire  Instmems_3_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_4_clock; // @[PE.scala 21:11]
  wire  Instmems_4_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_5_clock; // @[PE.scala 21:11]
  wire  Instmems_5_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 21:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_alukey; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 23:23]
  wire  Decoder_io_canexe; // @[PE.scala 23:23]
  wire  Constmems_0_clock; // @[PE.scala 25:11]
  wire  Constmems_0_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 25:11]
  wire  Constmems_1_clock; // @[PE.scala 25:11]
  wire  Constmems_1_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 25:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 28:11]
  wire [31:0] Srcmuxs_0_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 30:48]
  wire [2:0] Alu_io_fn; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 31:19]
  wire  Alu_io_result_valid; // @[PE.scala 31:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_waddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_raddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 31:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 32:24]
  wire [31:0] _T_1 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_6 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_7 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_9 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_14 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_15 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_17 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_22 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_23 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_25 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_30 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_31 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_33 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_38 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_39 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  wire  _T_42 = PEctrlregs_io_outData_19 == _T_1; // @[PE.scala 47:58]
  wire [31:0] _T_44 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 47:100]
  wire  _T_48 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 48:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 51:51]
  wire  Jchange = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(PEctrlregs_io_outData_17)
     : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 51:8]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 55:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 51:51]
  wire  Ichange = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(PEctrlregs_io_outData_16)
     : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 51:8]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 59:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 51:51]
  wire  Iinit = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(PEctrlregs_io_outData_15) :
    $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 51:8]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 63:55]
  wire [31:0] _T_51 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 65:125]
  wire  canupdatestate = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(Shiftconstmems_0_io_rdata); // @[PE.scala 143:111]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(Shiftconstmems_1_io_rdata); // @[PE.scala 144:111]
  PEctrlregs PEctrlregs ( // @[PE.scala 18:26]
    .clock(PEctrlregs_clock),
    .reset(PEctrlregs_reset),
    .io_inData_18(PEctrlregs_io_inData_18),
    .io_inData_19(PEctrlregs_io_inData_19),
    .io_inData_20(PEctrlregs_io_inData_20),
    .io_inData_21(PEctrlregs_io_inData_21),
    .io_inData_22(PEctrlregs_io_inData_22),
    .io_inData_23(PEctrlregs_io_inData_23),
    .io_inData_24(PEctrlregs_io_inData_24),
    .io_inData_25(PEctrlregs_io_inData_25),
    .io_inData_26(PEctrlregs_io_inData_26),
    .io_inData_27(PEctrlregs_io_inData_27),
    .io_inData_28(PEctrlregs_io_inData_28),
    .io_outData_0(PEctrlregs_io_outData_0),
    .io_outData_1(PEctrlregs_io_outData_1),
    .io_outData_2(PEctrlregs_io_outData_2),
    .io_outData_3(PEctrlregs_io_outData_3),
    .io_outData_4(PEctrlregs_io_outData_4),
    .io_outData_5(PEctrlregs_io_outData_5),
    .io_outData_6(PEctrlregs_io_outData_6),
    .io_outData_7(PEctrlregs_io_outData_7),
    .io_outData_8(PEctrlregs_io_outData_8),
    .io_outData_9(PEctrlregs_io_outData_9),
    .io_outData_10(PEctrlregs_io_outData_10),
    .io_outData_11(PEctrlregs_io_outData_11),
    .io_outData_12(PEctrlregs_io_outData_12),
    .io_outData_13(PEctrlregs_io_outData_13),
    .io_outData_14(PEctrlregs_io_outData_14),
    .io_outData_15(PEctrlregs_io_outData_15),
    .io_outData_16(PEctrlregs_io_outData_16),
    .io_outData_17(PEctrlregs_io_outData_17),
    .io_outData_18(PEctrlregs_io_outData_18),
    .io_outData_19(PEctrlregs_io_outData_19),
    .io_outData_20(PEctrlregs_io_outData_20),
    .io_outData_21(PEctrlregs_io_outData_21),
    .io_outData_22(PEctrlregs_io_outData_22),
    .io_outData_23(PEctrlregs_io_outData_23),
    .io_outData_24(PEctrlregs_io_outData_24),
    .io_outData_25(PEctrlregs_io_outData_25),
    .io_outData_26(PEctrlregs_io_outData_26),
    .io_outData_27(PEctrlregs_io_outData_27),
    .io_outData_28(PEctrlregs_io_outData_28),
    .io_wen_18(PEctrlregs_io_wen_18),
    .io_wen_19(PEctrlregs_io_wen_19),
    .io_wen_20(PEctrlregs_io_wen_20),
    .io_wen_21(PEctrlregs_io_wen_21),
    .io_wen_22(PEctrlregs_io_wen_22),
    .io_wen_23(PEctrlregs_io_wen_23),
    .io_wen_24(PEctrlregs_io_wen_24),
    .io_wen_25(PEctrlregs_io_wen_25),
    .io_wen_26(PEctrlregs_io_wen_26),
    .io_wen_27(PEctrlregs_io_wen_27),
    .io_wen_28(PEctrlregs_io_wen_28),
    .io_configwaddr(PEctrlregs_io_configwaddr),
    .io_configwen(PEctrlregs_io_configwen),
    .io_configwdata(PEctrlregs_io_configwdata)
  );
  Register Fureg ( // @[PE.scala 19:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 21:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 21:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 21:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 21:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 21:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 21:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 23:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_2(Decoder_io_inst_2),
    .io_inst_3(Decoder_io_inst_3),
    .io_inst_4(Decoder_io_inst_4),
    .io_inst_5(Decoder_io_inst_5),
    .io_iicnt(Decoder_io_iicnt),
    .io_iinum(Decoder_io_iinum),
    .io_startcyclecnt(Decoder_io_startcyclecnt),
    .io_startcyclenum(Decoder_io_startcyclenum),
    .io_alukey(Decoder_io_alukey),
    .io_srckey_0(Decoder_io_srckey_0),
    .io_srckey_1(Decoder_io_srckey_1),
    .io_linkkey_0(Decoder_io_linkkey_0),
    .io_linkkey_1(Decoder_io_linkkey_1),
    .io_linkkey_2(Decoder_io_linkkey_2),
    .io_linkkey_3(Decoder_io_linkkey_3),
    .io_useconst_0(Decoder_io_useconst_0),
    .io_useconst_1(Decoder_io_useconst_1),
    .io_haveshiftconst_0(Decoder_io_haveshiftconst_0),
    .io_haveshiftconst_1(Decoder_io_haveshiftconst_1),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil Constmems_0 ( // @[PE.scala 25:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil Constmems_1 ( // @[PE.scala 25:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil Shiftconstmems_0 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil Shiftconstmems_1 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_0_io_in_0),
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_1_io_in_0),
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 31:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_waddr(Alu_io_datamemio_waddr),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_raddr(Alu_io_datamemio_raddr),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 32:24]
    .io_in_1(Crossbar_io_in_1),
    .io_in_2(Crossbar_io_in_2),
    .io_in_3(Crossbar_io_in_3),
    .io_in_4(Crossbar_io_in_4),
    .io_in_5(Crossbar_io_in_5),
    .io_in_6(Crossbar_io_in_6),
    .io_select_0(Crossbar_io_select_0),
    .io_select_1(Crossbar_io_select_1),
    .io_select_2(Crossbar_io_select_2),
    .io_select_3(Crossbar_io_select_3),
    .io_out_0(Crossbar_io_out_0),
    .io_out_1(Crossbar_io_out_1),
    .io_out_2(Crossbar_io_out_2),
    .io_out_3(Crossbar_io_out_3)
  );
  assign io_outLinks_1_valid = canupdatestate & ~Decoder_io_linkinstskip_1; // @[PE.scala 155:68]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 154:15]
  assign io_outLinks_2_valid = canupdatestate & ~Decoder_io_linkinstskip_2; // @[PE.scala 155:68]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 154:15]
  assign io_outLinks_3_valid = canupdatestate & ~Decoder_io_linkinstskip_3; // @[PE.scala 155:68]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 154:15]
  assign io_finish = PEctrlregs_io_outData_28 == 32'h1; // @[PE.scala 167:34]
  assign io_datamemio_wen = Alu_io_datamemio_wen; // @[PE.scala 166:16]
  assign io_datamemio_waddr = Alu_io_datamemio_waddr; // @[PE.scala 166:16]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 166:16]
  assign io_datamemio_ren = Alu_io_datamemio_ren; // @[PE.scala 166:16]
  assign io_datamemio_raddr = Alu_io_datamemio_raddr; // @[PE.scala 166:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_51 : PEctrlregs_io_outData_18
    ; // @[PE.scala 65:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_1 ? _T_44 : PEctrlregs_io_outData_20; // @[PE.scala 47:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 55:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 59:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 63:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_48}; // @[PE.scala 110:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 111:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_21 = canupdatestate & Decoder_io_useconst_0; // @[PE.scala 68:51]
  assign PEctrlregs_io_wen_22 = canupdatestate & Decoder_io_useconst_1; // @[PE.scala 69:51]
  assign PEctrlregs_io_wen_23 = canupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 70:56]
  assign PEctrlregs_io_wen_24 = canupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 71:57]
  assign PEctrlregs_io_wen_25 = canupdatestate & _T_42; // @[PE.scala 74:43]
  assign PEctrlregs_io_wen_26 = canupdatestate & Jchange; // @[PE.scala 75:43]
  assign PEctrlregs_io_wen_27 = canupdatestate & Ichange; // @[PE.scala 76:43]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 85:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 84:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 86:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 80:19]
  assign Fureg_io_enable = canupdatestate & Alu_io_result_valid; // @[PE.scala 81:37]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'h8; // @[PE.scala 96:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 95:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_0_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'h8 & io_waddr < 32'h10; // @[PE.scala 96:82]
  assign Instmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 95:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_1_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h10 & io_waddr < 32'h18; // @[PE.scala 96:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h10; // @[PE.scala 95:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_2_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h18 & io_waddr < 32'h20; // @[PE.scala 96:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h18; // @[PE.scala 95:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_3_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h20 & io_waddr < 32'h28; // @[PE.scala 96:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h20; // @[PE.scala 95:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_4_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h30; // @[PE.scala 96:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h28; // @[PE.scala 95:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_5_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 102:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 103:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 104:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 105:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h30 & io_waddr < 32'h38; // @[PE.scala 119:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 118:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_0_io_raddr = canupdatestate ? _T_15 : PEctrlregs_io_outData_21; // @[PE.scala 115:29]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h38 & io_waddr < 32'h40; // @[PE.scala 119:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 118:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_1_io_raddr = canupdatestate ? _T_23 : PEctrlregs_io_outData_22; // @[PE.scala 116:29]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h40 & io_waddr < 32'h48; // @[PE.scala 128:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 127:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_0_io_raddr = canupdatestate ? _T_31 : PEctrlregs_io_outData_23; // @[PE.scala 124:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h48 & io_waddr < 32'h50; // @[PE.scala 128:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 127:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_1_io_raddr = canupdatestate ? _T_39 : PEctrlregs_io_outData_24; // @[PE.scala 125:35]
  assign Srcmuxs_0_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_0_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_0_io_in_2 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_0_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_0_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_0_io_sel = Decoder_io_srckey_0; // @[PE.scala 133:19]
  assign Srcmuxs_1_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_1_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_1_io_in_2 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_3; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_1_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_1_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_1_io_sel = Decoder_io_srckey_1; // @[PE.scala 133:19]
  assign Alu_io_fn = Decoder_io_alukey; // @[PE.scala 142:13]
  assign Alu_io_src1 = Decoder_io_haveshiftconst_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 143:19]
  assign Alu_io_src2 = Decoder_io_haveshiftconst_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 144:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 166:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 166:16]
  assign Crossbar_io_in_1 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 149:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 149:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 149:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 150:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 151:20]
  assign Crossbar_io_select_0 = Decoder_io_linkkey_0; // @[PE.scala 147:22]
  assign Crossbar_io_select_1 = Decoder_io_linkkey_1; // @[PE.scala 147:22]
  assign Crossbar_io_select_2 = Decoder_io_linkkey_2; // @[PE.scala 147:22]
  assign Crossbar_io_select_3 = Decoder_io_linkkey_3; // @[PE.scala 147:22]
endmodule
module PE_8(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_1,
  input  [31:0] io_inLinks_2,
  output        io_outLinks_1_valid,
  output [31:0] io_outLinks_1_bits,
  output        io_outLinks_2_valid,
  output [31:0] io_outLinks_2_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_waddr,
  output [31:0] io_datamemio_wdata,
  output        io_datamemio_ren,
  output [31:0] io_datamemio_raddr,
  input  [31:0] io_datamemio_rdata,
  input         io_datamemio_memoptvalid
);
  wire  PEctrlregs_clock; // @[PE.scala 18:26]
  wire  PEctrlregs_reset; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 18:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 18:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 18:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 18:26]
  wire  Fureg_clock; // @[PE.scala 19:21]
  wire  Fureg_reset; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 19:21]
  wire  Fureg_io_enable; // @[PE.scala 19:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 19:21]
  wire  Instmems_0_clock; // @[PE.scala 21:11]
  wire  Instmems_0_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_1_clock; // @[PE.scala 21:11]
  wire  Instmems_1_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_2_clock; // @[PE.scala 21:11]
  wire  Instmems_2_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_3_clock; // @[PE.scala 21:11]
  wire  Instmems_3_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_4_clock; // @[PE.scala 21:11]
  wire  Instmems_4_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 21:11]
  wire  Instmems_5_clock; // @[PE.scala 21:11]
  wire  Instmems_5_io_wen; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 21:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 21:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 23:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_alukey; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 23:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 23:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 23:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 23:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 23:23]
  wire  Decoder_io_canexe; // @[PE.scala 23:23]
  wire  Constmems_0_clock; // @[PE.scala 25:11]
  wire  Constmems_0_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 25:11]
  wire  Constmems_1_clock; // @[PE.scala 25:11]
  wire  Constmems_1_io_wen; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 25:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 25:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 28:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 28:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 28:11]
  wire [31:0] Srcmuxs_0_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_0; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 30:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 30:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 30:48]
  wire [2:0] Alu_io_fn; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 31:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 31:19]
  wire  Alu_io_result_valid; // @[PE.scala 31:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_waddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_raddr; // @[PE.scala 31:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 31:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 31:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 32:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 32:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 32:24]
  wire [31:0] _T_1 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_6 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_7 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_9 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_14 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_15 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_17 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_22 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_23 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_25 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_30 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_31 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  wire [31:0] _T_33 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 41:41]
  wire [31:0] _T_38 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 41:77]
  wire [31:0] _T_39 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  wire  _T_42 = PEctrlregs_io_outData_19 == _T_1; // @[PE.scala 47:58]
  wire [31:0] _T_44 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 47:100]
  wire  _T_48 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 48:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 51:51]
  wire  Jchange = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(PEctrlregs_io_outData_17)
     : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 51:8]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 55:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 51:51]
  wire  Ichange = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(PEctrlregs_io_outData_16)
     : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 51:8]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 59:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 51:51]
  wire  Iinit = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(PEctrlregs_io_outData_15) :
    $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 51:8]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 63:55]
  wire [31:0] _T_51 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 65:125]
  wire  canupdatestate = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(Shiftconstmems_0_io_rdata); // @[PE.scala 143:111]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(Shiftconstmems_1_io_rdata); // @[PE.scala 144:111]
  PEctrlregs PEctrlregs ( // @[PE.scala 18:26]
    .clock(PEctrlregs_clock),
    .reset(PEctrlregs_reset),
    .io_inData_18(PEctrlregs_io_inData_18),
    .io_inData_19(PEctrlregs_io_inData_19),
    .io_inData_20(PEctrlregs_io_inData_20),
    .io_inData_21(PEctrlregs_io_inData_21),
    .io_inData_22(PEctrlregs_io_inData_22),
    .io_inData_23(PEctrlregs_io_inData_23),
    .io_inData_24(PEctrlregs_io_inData_24),
    .io_inData_25(PEctrlregs_io_inData_25),
    .io_inData_26(PEctrlregs_io_inData_26),
    .io_inData_27(PEctrlregs_io_inData_27),
    .io_inData_28(PEctrlregs_io_inData_28),
    .io_outData_0(PEctrlregs_io_outData_0),
    .io_outData_1(PEctrlregs_io_outData_1),
    .io_outData_2(PEctrlregs_io_outData_2),
    .io_outData_3(PEctrlregs_io_outData_3),
    .io_outData_4(PEctrlregs_io_outData_4),
    .io_outData_5(PEctrlregs_io_outData_5),
    .io_outData_6(PEctrlregs_io_outData_6),
    .io_outData_7(PEctrlregs_io_outData_7),
    .io_outData_8(PEctrlregs_io_outData_8),
    .io_outData_9(PEctrlregs_io_outData_9),
    .io_outData_10(PEctrlregs_io_outData_10),
    .io_outData_11(PEctrlregs_io_outData_11),
    .io_outData_12(PEctrlregs_io_outData_12),
    .io_outData_13(PEctrlregs_io_outData_13),
    .io_outData_14(PEctrlregs_io_outData_14),
    .io_outData_15(PEctrlregs_io_outData_15),
    .io_outData_16(PEctrlregs_io_outData_16),
    .io_outData_17(PEctrlregs_io_outData_17),
    .io_outData_18(PEctrlregs_io_outData_18),
    .io_outData_19(PEctrlregs_io_outData_19),
    .io_outData_20(PEctrlregs_io_outData_20),
    .io_outData_21(PEctrlregs_io_outData_21),
    .io_outData_22(PEctrlregs_io_outData_22),
    .io_outData_23(PEctrlregs_io_outData_23),
    .io_outData_24(PEctrlregs_io_outData_24),
    .io_outData_25(PEctrlregs_io_outData_25),
    .io_outData_26(PEctrlregs_io_outData_26),
    .io_outData_27(PEctrlregs_io_outData_27),
    .io_outData_28(PEctrlregs_io_outData_28),
    .io_wen_18(PEctrlregs_io_wen_18),
    .io_wen_19(PEctrlregs_io_wen_19),
    .io_wen_20(PEctrlregs_io_wen_20),
    .io_wen_21(PEctrlregs_io_wen_21),
    .io_wen_22(PEctrlregs_io_wen_22),
    .io_wen_23(PEctrlregs_io_wen_23),
    .io_wen_24(PEctrlregs_io_wen_24),
    .io_wen_25(PEctrlregs_io_wen_25),
    .io_wen_26(PEctrlregs_io_wen_26),
    .io_wen_27(PEctrlregs_io_wen_27),
    .io_wen_28(PEctrlregs_io_wen_28),
    .io_configwaddr(PEctrlregs_io_configwaddr),
    .io_configwen(PEctrlregs_io_configwen),
    .io_configwdata(PEctrlregs_io_configwdata)
  );
  Register Fureg ( // @[PE.scala 19:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 21:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 21:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 21:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 21:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 21:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 21:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 23:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_2(Decoder_io_inst_2),
    .io_inst_3(Decoder_io_inst_3),
    .io_inst_4(Decoder_io_inst_4),
    .io_inst_5(Decoder_io_inst_5),
    .io_iicnt(Decoder_io_iicnt),
    .io_iinum(Decoder_io_iinum),
    .io_startcyclecnt(Decoder_io_startcyclecnt),
    .io_startcyclenum(Decoder_io_startcyclenum),
    .io_alukey(Decoder_io_alukey),
    .io_srckey_0(Decoder_io_srckey_0),
    .io_srckey_1(Decoder_io_srckey_1),
    .io_linkkey_0(Decoder_io_linkkey_0),
    .io_linkkey_1(Decoder_io_linkkey_1),
    .io_linkkey_2(Decoder_io_linkkey_2),
    .io_linkkey_3(Decoder_io_linkkey_3),
    .io_useconst_0(Decoder_io_useconst_0),
    .io_useconst_1(Decoder_io_useconst_1),
    .io_haveshiftconst_0(Decoder_io_haveshiftconst_0),
    .io_haveshiftconst_1(Decoder_io_haveshiftconst_1),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil Constmems_0 ( // @[PE.scala 25:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil Constmems_1 ( // @[PE.scala 25:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil Shiftconstmems_0 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil Shiftconstmems_1 ( // @[PE.scala 28:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_0_io_in_0),
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 30:48]
    .io_in_0(Srcmuxs_1_io_in_0),
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 31:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_waddr(Alu_io_datamemio_waddr),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_raddr(Alu_io_datamemio_raddr),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 32:24]
    .io_in_1(Crossbar_io_in_1),
    .io_in_2(Crossbar_io_in_2),
    .io_in_3(Crossbar_io_in_3),
    .io_in_4(Crossbar_io_in_4),
    .io_in_5(Crossbar_io_in_5),
    .io_in_6(Crossbar_io_in_6),
    .io_select_0(Crossbar_io_select_0),
    .io_select_1(Crossbar_io_select_1),
    .io_select_2(Crossbar_io_select_2),
    .io_select_3(Crossbar_io_select_3),
    .io_out_0(Crossbar_io_out_0),
    .io_out_1(Crossbar_io_out_1),
    .io_out_2(Crossbar_io_out_2),
    .io_out_3(Crossbar_io_out_3)
  );
  assign io_outLinks_1_valid = canupdatestate & ~Decoder_io_linkinstskip_1; // @[PE.scala 155:68]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 154:15]
  assign io_outLinks_2_valid = canupdatestate & ~Decoder_io_linkinstskip_2; // @[PE.scala 155:68]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 154:15]
  assign io_finish = PEctrlregs_io_outData_28 == 32'h1; // @[PE.scala 167:34]
  assign io_datamemio_wen = Alu_io_datamemio_wen; // @[PE.scala 166:16]
  assign io_datamemio_waddr = Alu_io_datamemio_waddr; // @[PE.scala 166:16]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 166:16]
  assign io_datamemio_ren = Alu_io_datamemio_ren; // @[PE.scala 166:16]
  assign io_datamemio_raddr = Alu_io_datamemio_raddr; // @[PE.scala 166:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_51 : PEctrlregs_io_outData_18
    ; // @[PE.scala 65:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_1 & PEctrlregs_io_outData_0 > 32'h0 ? _T_6 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_1 ? _T_44 : PEctrlregs_io_outData_20; // @[PE.scala 47:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_9 & PEctrlregs_io_outData_5 > 32'h0 ? _T_14 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_17 & PEctrlregs_io_outData_6 > 32'h0 ? _T_22 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_25 & PEctrlregs_io_outData_7 > 32'h0 ? _T_30 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_33 & PEctrlregs_io_outData_8 > 32'h0 ? _T_38 : 32'h0; // @[PE.scala 41:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 55:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 59:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 63:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_48}; // @[PE.scala 110:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 111:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_wen_21 = canupdatestate & Decoder_io_useconst_0; // @[PE.scala 68:51]
  assign PEctrlregs_io_wen_22 = canupdatestate & Decoder_io_useconst_1; // @[PE.scala 69:51]
  assign PEctrlregs_io_wen_23 = canupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 70:56]
  assign PEctrlregs_io_wen_24 = canupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 71:57]
  assign PEctrlregs_io_wen_25 = canupdatestate & _T_42; // @[PE.scala 74:43]
  assign PEctrlregs_io_wen_26 = canupdatestate & Jchange; // @[PE.scala 75:43]
  assign PEctrlregs_io_wen_27 = canupdatestate & Ichange; // @[PE.scala 76:43]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run; // @[PE.scala 66:41]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 85:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 84:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 86:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 80:19]
  assign Fureg_io_enable = canupdatestate & Alu_io_result_valid; // @[PE.scala 81:37]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'h8; // @[PE.scala 96:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 95:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_0_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'h8 & io_waddr < 32'h10; // @[PE.scala 96:82]
  assign Instmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 95:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_1_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h10 & io_waddr < 32'h18; // @[PE.scala 96:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h10; // @[PE.scala 95:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_2_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h18 & io_waddr < 32'h20; // @[PE.scala 96:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h18; // @[PE.scala 95:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_3_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h20 & io_waddr < 32'h28; // @[PE.scala 96:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h20; // @[PE.scala 95:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_4_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h30; // @[PE.scala 96:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h28; // @[PE.scala 95:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 97:24]
  assign Instmems_5_io_raddr = canupdatestate ? _T_7 : PEctrlregs_io_outData_19; // @[PE.scala 93:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 101:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 102:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 103:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 104:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 105:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h30 & io_waddr < 32'h38; // @[PE.scala 119:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 118:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_0_io_raddr = canupdatestate ? _T_15 : PEctrlregs_io_outData_21; // @[PE.scala 115:29]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h38 & io_waddr < 32'h40; // @[PE.scala 119:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 118:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 120:25]
  assign Constmems_1_io_raddr = canupdatestate ? _T_23 : PEctrlregs_io_outData_22; // @[PE.scala 116:29]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h40 & io_waddr < 32'h48; // @[PE.scala 128:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 127:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_0_io_raddr = canupdatestate ? _T_31 : PEctrlregs_io_outData_23; // @[PE.scala 124:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h48 & io_waddr < 32'h50; // @[PE.scala 128:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h8; // @[PE.scala 127:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 129:30]
  assign Shiftconstmems_1_io_raddr = canupdatestate ? _T_39 : PEctrlregs_io_outData_24; // @[PE.scala 125:35]
  assign Srcmuxs_0_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_0_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_0_io_in_2 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_5 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_0_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_0_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_0_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_0_io_sel = Decoder_io_srckey_0; // @[PE.scala 133:19]
  assign Srcmuxs_1_io_in_0 = Fureg_io_outData; // @[PE.scala 134:20]
  assign Srcmuxs_1_io_in_1 = Constmems_0_io_rdata; // @[PE.scala 135:20]
  assign Srcmuxs_1_io_in_2 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_3 = io_inLinks_1; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_2; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_5 = 32'h0; // @[PE.scala 136:68]
  assign Srcmuxs_1_io_in_6 = PEctrlregs_io_outData_27; // @[PE.scala 137:20]
  assign Srcmuxs_1_io_in_7 = PEctrlregs_io_outData_26; // @[PE.scala 138:20]
  assign Srcmuxs_1_io_in_8 = PEctrlregs_io_outData_25; // @[PE.scala 139:20]
  assign Srcmuxs_1_io_sel = Decoder_io_srckey_1; // @[PE.scala 133:19]
  assign Alu_io_fn = Decoder_io_alukey; // @[PE.scala 142:13]
  assign Alu_io_src1 = Decoder_io_haveshiftconst_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 143:19]
  assign Alu_io_src2 = Decoder_io_haveshiftconst_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 144:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 166:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 166:16]
  assign Crossbar_io_in_1 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 149:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 149:68]
  assign Crossbar_io_in_4 = 32'h0; // @[PE.scala 149:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 150:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 151:20]
  assign Crossbar_io_select_0 = Decoder_io_linkkey_0; // @[PE.scala 147:22]
  assign Crossbar_io_select_1 = Decoder_io_linkkey_1; // @[PE.scala 147:22]
  assign Crossbar_io_select_2 = Decoder_io_linkkey_2; // @[PE.scala 147:22]
  assign Crossbar_io_select_3 = Decoder_io_linkkey_3; // @[PE.scala 147:22]
endmodule
module Link(
  input         clock,
  input         reset,
  input         io_in_valid,
  input  [31:0] io_in_bits,
  output [31:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] reg_; // @[Link.scala 10:24]
  assign io_out = reg_; // @[Link.scala 14:13]
  always @(posedge clock) begin
    if (reset) begin // @[Link.scala 10:24]
      reg_ <= 32'h0; // @[Link.scala 10:24]
    end else if (io_in_valid) begin // @[Link.scala 11:27]
      reg_ <= io_in_bits; // @[Link.scala 12:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_ = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Memutil_90(
  input         clock,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  input  [31:0] io_raddr,
  output [31:0] io_rdata
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mem [0:511]; // @[Memutil.scala 13:47]
  wire  mem_io_rdata_MPORT_en; // @[Memutil.scala 13:47]
  wire [8:0] mem_io_rdata_MPORT_addr; // @[Memutil.scala 13:47]
  wire [31:0] mem_io_rdata_MPORT_data; // @[Memutil.scala 13:47]
  wire [31:0] mem_MPORT_data; // @[Memutil.scala 13:47]
  wire [8:0] mem_MPORT_addr; // @[Memutil.scala 13:47]
  wire  mem_MPORT_mask; // @[Memutil.scala 13:47]
  wire  mem_MPORT_en; // @[Memutil.scala 13:47]
  reg  mem_io_rdata_MPORT_en_pipe_0;
  reg [8:0] mem_io_rdata_MPORT_addr_pipe_0;
  assign mem_io_rdata_MPORT_en = mem_io_rdata_MPORT_en_pipe_0;
  assign mem_io_rdata_MPORT_addr = mem_io_rdata_MPORT_addr_pipe_0;
  assign mem_io_rdata_MPORT_data = mem[mem_io_rdata_MPORT_addr]; // @[Memutil.scala 13:47]
  assign mem_MPORT_data = io_wdata;
  assign mem_MPORT_addr = io_waddr[8:0];
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_wen;
  assign io_rdata = mem_io_rdata_MPORT_data; // @[Memutil.scala 14:16]
  always @(posedge clock) begin
    if (mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[Memutil.scala 13:47]
    end
    mem_io_rdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_io_rdata_MPORT_addr_pipe_0 <= io_raddr[8:0];
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_io_rdata_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_io_rdata_MPORT_addr_pipe_0 = _RAND_2[8:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Datamem(
  input         clock,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  input         io_ren,
  input  [31:0] io_raddr,
  output [31:0] io_rdata,
  output        io_memoptvalid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  mem_clock; // @[Datamem.scala 16:19]
  wire  mem_io_wen; // @[Datamem.scala 16:19]
  wire [31:0] mem_io_waddr; // @[Datamem.scala 16:19]
  wire [31:0] mem_io_wdata; // @[Datamem.scala 16:19]
  wire [31:0] mem_io_raddr; // @[Datamem.scala 16:19]
  wire [31:0] mem_io_rdata; // @[Datamem.scala 16:19]
  reg  io_memoptvalid_REG; // @[Datamem.scala 22:28]
  reg  io_memoptvalid_REG_1; // @[Datamem.scala 22:46]
  Memutil_90 mem ( // @[Datamem.scala 16:19]
    .clock(mem_clock),
    .io_wen(mem_io_wen),
    .io_waddr(mem_io_waddr),
    .io_wdata(mem_io_wdata),
    .io_raddr(mem_io_raddr),
    .io_rdata(mem_io_rdata)
  );
  assign io_rdata = mem_io_rdata; // @[Datamem.scala 21:12]
  assign io_memoptvalid = io_memoptvalid_REG | io_memoptvalid_REG_1; // @[Datamem.scala 22:37]
  assign mem_clock = clock;
  assign mem_io_wen = io_wen; // @[Datamem.scala 17:14]
  assign mem_io_waddr = io_waddr; // @[Datamem.scala 18:16]
  assign mem_io_wdata = io_wdata; // @[Datamem.scala 19:16]
  assign mem_io_raddr = io_raddr; // @[Datamem.scala 20:16]
  always @(posedge clock) begin
    io_memoptvalid_REG <= io_ren; // @[Datamem.scala 22:28]
    io_memoptvalid_REG_1 <= io_wen; // @[Datamem.scala 22:46]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  io_memoptvalid_REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  io_memoptvalid_REG_1 = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CGRA(
  input         clock,
  input         reset,
  input         io_run,
  output        io_finish,
  output        io_axilite_s_araddr_ready,
  input         io_axilite_s_araddr_valid,
  input  [31:0] io_axilite_s_araddr_bits,
  input         io_axilite_s_rdata_ready,
  output        io_axilite_s_rdata_valid,
  output [31:0] io_axilite_s_rdata_bits,
  output [1:0]  io_axilite_s_rresp,
  output        io_axilite_s_awaddr_ready,
  input         io_axilite_s_awaddr_valid,
  input  [31:0] io_axilite_s_awaddr_bits,
  output        io_axilite_s_wdata_ready,
  input         io_axilite_s_wdata_valid,
  input  [31:0] io_axilite_s_wdata_bits,
  input  [3:0]  io_axilite_s_wstrb,
  input         io_axilite_s_bresp_ready,
  output        io_axilite_s_bresp_valid,
  output [1:0]  io_axilite_s_bresp_bits,
  input         io_axistream_s_valid,
  output        io_axistream_s_ready,
  input  [31:0] io_axistream_s_data,
  input         io_axistream_s_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  wire  PE_clock; // @[CGRA.scala 14:53]
  wire  PE_reset; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_inLinks_0; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_inLinks_3; // @[CGRA.scala 14:53]
  wire  PE_io_outLinks_0_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_outLinks_0_bits; // @[CGRA.scala 14:53]
  wire  PE_io_outLinks_3_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_outLinks_3_bits; // @[CGRA.scala 14:53]
  wire  PE_io_run; // @[CGRA.scala 14:53]
  wire  PE_io_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_wdata; // @[CGRA.scala 14:53]
  wire  PE_io_finish; // @[CGRA.scala 14:53]
  wire  PE_io_datamemio_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_datamemio_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_datamemio_wdata; // @[CGRA.scala 14:53]
  wire  PE_io_datamemio_ren; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_datamemio_raddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_io_datamemio_rdata; // @[CGRA.scala 14:53]
  wire  PE_io_datamemio_memoptvalid; // @[CGRA.scala 14:53]
  wire  PE_1_clock; // @[CGRA.scala 14:53]
  wire  PE_1_reset; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_inLinks_0; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_inLinks_2; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_inLinks_3; // @[CGRA.scala 14:53]
  wire  PE_1_io_outLinks_0_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_outLinks_0_bits; // @[CGRA.scala 14:53]
  wire  PE_1_io_outLinks_2_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_outLinks_2_bits; // @[CGRA.scala 14:53]
  wire  PE_1_io_outLinks_3_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_outLinks_3_bits; // @[CGRA.scala 14:53]
  wire  PE_1_io_run; // @[CGRA.scala 14:53]
  wire  PE_1_io_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_wdata; // @[CGRA.scala 14:53]
  wire  PE_1_io_finish; // @[CGRA.scala 14:53]
  wire  PE_1_io_datamemio_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_datamemio_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_datamemio_wdata; // @[CGRA.scala 14:53]
  wire  PE_1_io_datamemio_ren; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_datamemio_raddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_1_io_datamemio_rdata; // @[CGRA.scala 14:53]
  wire  PE_1_io_datamemio_memoptvalid; // @[CGRA.scala 14:53]
  wire  PE_2_clock; // @[CGRA.scala 14:53]
  wire  PE_2_reset; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_inLinks_0; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_inLinks_2; // @[CGRA.scala 14:53]
  wire  PE_2_io_outLinks_0_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_outLinks_0_bits; // @[CGRA.scala 14:53]
  wire  PE_2_io_outLinks_2_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_outLinks_2_bits; // @[CGRA.scala 14:53]
  wire  PE_2_io_run; // @[CGRA.scala 14:53]
  wire  PE_2_io_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_wdata; // @[CGRA.scala 14:53]
  wire  PE_2_io_finish; // @[CGRA.scala 14:53]
  wire  PE_2_io_datamemio_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_datamemio_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_datamemio_wdata; // @[CGRA.scala 14:53]
  wire  PE_2_io_datamemio_ren; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_datamemio_raddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_2_io_datamemio_rdata; // @[CGRA.scala 14:53]
  wire  PE_2_io_datamemio_memoptvalid; // @[CGRA.scala 14:53]
  wire  PE_3_clock; // @[CGRA.scala 14:53]
  wire  PE_3_reset; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_inLinks_0; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_inLinks_1; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_inLinks_3; // @[CGRA.scala 14:53]
  wire  PE_3_io_outLinks_0_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_outLinks_0_bits; // @[CGRA.scala 14:53]
  wire  PE_3_io_outLinks_1_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_outLinks_1_bits; // @[CGRA.scala 14:53]
  wire  PE_3_io_outLinks_3_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_outLinks_3_bits; // @[CGRA.scala 14:53]
  wire  PE_3_io_run; // @[CGRA.scala 14:53]
  wire  PE_3_io_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_wdata; // @[CGRA.scala 14:53]
  wire  PE_3_io_finish; // @[CGRA.scala 14:53]
  wire  PE_3_io_datamemio_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_datamemio_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_datamemio_wdata; // @[CGRA.scala 14:53]
  wire  PE_3_io_datamemio_ren; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_datamemio_raddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_3_io_datamemio_rdata; // @[CGRA.scala 14:53]
  wire  PE_3_io_datamemio_memoptvalid; // @[CGRA.scala 14:53]
  wire  PE_4_clock; // @[CGRA.scala 14:53]
  wire  PE_4_reset; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_inLinks_0; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_inLinks_1; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_inLinks_2; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_inLinks_3; // @[CGRA.scala 14:53]
  wire  PE_4_io_outLinks_0_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_outLinks_0_bits; // @[CGRA.scala 14:53]
  wire  PE_4_io_outLinks_1_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_outLinks_1_bits; // @[CGRA.scala 14:53]
  wire  PE_4_io_outLinks_2_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_outLinks_2_bits; // @[CGRA.scala 14:53]
  wire  PE_4_io_outLinks_3_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_outLinks_3_bits; // @[CGRA.scala 14:53]
  wire  PE_4_io_run; // @[CGRA.scala 14:53]
  wire  PE_4_io_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_wdata; // @[CGRA.scala 14:53]
  wire  PE_4_io_finish; // @[CGRA.scala 14:53]
  wire  PE_4_io_datamemio_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_datamemio_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_datamemio_wdata; // @[CGRA.scala 14:53]
  wire  PE_4_io_datamemio_ren; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_datamemio_raddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_4_io_datamemio_rdata; // @[CGRA.scala 14:53]
  wire  PE_4_io_datamemio_memoptvalid; // @[CGRA.scala 14:53]
  wire  PE_5_clock; // @[CGRA.scala 14:53]
  wire  PE_5_reset; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_inLinks_0; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_inLinks_1; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_inLinks_2; // @[CGRA.scala 14:53]
  wire  PE_5_io_outLinks_0_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_outLinks_0_bits; // @[CGRA.scala 14:53]
  wire  PE_5_io_outLinks_1_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_outLinks_1_bits; // @[CGRA.scala 14:53]
  wire  PE_5_io_outLinks_2_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_outLinks_2_bits; // @[CGRA.scala 14:53]
  wire  PE_5_io_run; // @[CGRA.scala 14:53]
  wire  PE_5_io_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_wdata; // @[CGRA.scala 14:53]
  wire  PE_5_io_finish; // @[CGRA.scala 14:53]
  wire  PE_5_io_datamemio_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_datamemio_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_datamemio_wdata; // @[CGRA.scala 14:53]
  wire  PE_5_io_datamemio_ren; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_datamemio_raddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_5_io_datamemio_rdata; // @[CGRA.scala 14:53]
  wire  PE_5_io_datamemio_memoptvalid; // @[CGRA.scala 14:53]
  wire  PE_6_clock; // @[CGRA.scala 14:53]
  wire  PE_6_reset; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_inLinks_1; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_inLinks_3; // @[CGRA.scala 14:53]
  wire  PE_6_io_outLinks_1_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_outLinks_1_bits; // @[CGRA.scala 14:53]
  wire  PE_6_io_outLinks_3_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_outLinks_3_bits; // @[CGRA.scala 14:53]
  wire  PE_6_io_run; // @[CGRA.scala 14:53]
  wire  PE_6_io_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_wdata; // @[CGRA.scala 14:53]
  wire  PE_6_io_finish; // @[CGRA.scala 14:53]
  wire  PE_6_io_datamemio_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_datamemio_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_datamemio_wdata; // @[CGRA.scala 14:53]
  wire  PE_6_io_datamemio_ren; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_datamemio_raddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_6_io_datamemio_rdata; // @[CGRA.scala 14:53]
  wire  PE_6_io_datamemio_memoptvalid; // @[CGRA.scala 14:53]
  wire  PE_7_clock; // @[CGRA.scala 14:53]
  wire  PE_7_reset; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_inLinks_1; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_inLinks_2; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_inLinks_3; // @[CGRA.scala 14:53]
  wire  PE_7_io_outLinks_1_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_outLinks_1_bits; // @[CGRA.scala 14:53]
  wire  PE_7_io_outLinks_2_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_outLinks_2_bits; // @[CGRA.scala 14:53]
  wire  PE_7_io_outLinks_3_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_outLinks_3_bits; // @[CGRA.scala 14:53]
  wire  PE_7_io_run; // @[CGRA.scala 14:53]
  wire  PE_7_io_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_wdata; // @[CGRA.scala 14:53]
  wire  PE_7_io_finish; // @[CGRA.scala 14:53]
  wire  PE_7_io_datamemio_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_datamemio_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_datamemio_wdata; // @[CGRA.scala 14:53]
  wire  PE_7_io_datamemio_ren; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_datamemio_raddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_7_io_datamemio_rdata; // @[CGRA.scala 14:53]
  wire  PE_7_io_datamemio_memoptvalid; // @[CGRA.scala 14:53]
  wire  PE_8_clock; // @[CGRA.scala 14:53]
  wire  PE_8_reset; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_inLinks_1; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_inLinks_2; // @[CGRA.scala 14:53]
  wire  PE_8_io_outLinks_1_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_outLinks_1_bits; // @[CGRA.scala 14:53]
  wire  PE_8_io_outLinks_2_valid; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_outLinks_2_bits; // @[CGRA.scala 14:53]
  wire  PE_8_io_run; // @[CGRA.scala 14:53]
  wire  PE_8_io_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_wdata; // @[CGRA.scala 14:53]
  wire  PE_8_io_finish; // @[CGRA.scala 14:53]
  wire  PE_8_io_datamemio_wen; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_datamemio_waddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_datamemio_wdata; // @[CGRA.scala 14:53]
  wire  PE_8_io_datamemio_ren; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_datamemio_raddr; // @[CGRA.scala 14:53]
  wire [31:0] PE_8_io_datamemio_rdata; // @[CGRA.scala 14:53]
  wire  PE_8_io_datamemio_memoptvalid; // @[CGRA.scala 14:53]
  wire  Link_clock; // @[CGRA.scala 15:89]
  wire  Link_reset; // @[CGRA.scala 15:89]
  wire  Link_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_io_out; // @[CGRA.scala 15:89]
  wire  Link_1_clock; // @[CGRA.scala 15:89]
  wire  Link_1_reset; // @[CGRA.scala 15:89]
  wire  Link_1_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_1_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_1_io_out; // @[CGRA.scala 15:89]
  wire  Link_2_clock; // @[CGRA.scala 15:89]
  wire  Link_2_reset; // @[CGRA.scala 15:89]
  wire  Link_2_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_2_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_2_io_out; // @[CGRA.scala 15:89]
  wire  Link_3_clock; // @[CGRA.scala 15:89]
  wire  Link_3_reset; // @[CGRA.scala 15:89]
  wire  Link_3_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_3_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_3_io_out; // @[CGRA.scala 15:89]
  wire  Link_4_clock; // @[CGRA.scala 15:89]
  wire  Link_4_reset; // @[CGRA.scala 15:89]
  wire  Link_4_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_4_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_4_io_out; // @[CGRA.scala 15:89]
  wire  Link_5_clock; // @[CGRA.scala 15:89]
  wire  Link_5_reset; // @[CGRA.scala 15:89]
  wire  Link_5_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_5_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_5_io_out; // @[CGRA.scala 15:89]
  wire  Link_6_clock; // @[CGRA.scala 15:89]
  wire  Link_6_reset; // @[CGRA.scala 15:89]
  wire  Link_6_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_6_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_6_io_out; // @[CGRA.scala 15:89]
  wire  Link_7_clock; // @[CGRA.scala 15:89]
  wire  Link_7_reset; // @[CGRA.scala 15:89]
  wire  Link_7_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_7_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_7_io_out; // @[CGRA.scala 15:89]
  wire  Link_8_clock; // @[CGRA.scala 15:89]
  wire  Link_8_reset; // @[CGRA.scala 15:89]
  wire  Link_8_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_8_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_8_io_out; // @[CGRA.scala 15:89]
  wire  Link_9_clock; // @[CGRA.scala 15:89]
  wire  Link_9_reset; // @[CGRA.scala 15:89]
  wire  Link_9_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_9_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_9_io_out; // @[CGRA.scala 15:89]
  wire  Link_10_clock; // @[CGRA.scala 15:89]
  wire  Link_10_reset; // @[CGRA.scala 15:89]
  wire  Link_10_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_10_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_10_io_out; // @[CGRA.scala 15:89]
  wire  Link_11_clock; // @[CGRA.scala 15:89]
  wire  Link_11_reset; // @[CGRA.scala 15:89]
  wire  Link_11_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_11_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_11_io_out; // @[CGRA.scala 15:89]
  wire  Link_12_clock; // @[CGRA.scala 15:89]
  wire  Link_12_reset; // @[CGRA.scala 15:89]
  wire  Link_12_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_12_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_12_io_out; // @[CGRA.scala 15:89]
  wire  Link_13_clock; // @[CGRA.scala 15:89]
  wire  Link_13_reset; // @[CGRA.scala 15:89]
  wire  Link_13_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_13_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_13_io_out; // @[CGRA.scala 15:89]
  wire  Link_14_clock; // @[CGRA.scala 15:89]
  wire  Link_14_reset; // @[CGRA.scala 15:89]
  wire  Link_14_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_14_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_14_io_out; // @[CGRA.scala 15:89]
  wire  Link_15_clock; // @[CGRA.scala 15:89]
  wire  Link_15_reset; // @[CGRA.scala 15:89]
  wire  Link_15_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_15_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_15_io_out; // @[CGRA.scala 15:89]
  wire  Link_16_clock; // @[CGRA.scala 15:89]
  wire  Link_16_reset; // @[CGRA.scala 15:89]
  wire  Link_16_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_16_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_16_io_out; // @[CGRA.scala 15:89]
  wire  Link_17_clock; // @[CGRA.scala 15:89]
  wire  Link_17_reset; // @[CGRA.scala 15:89]
  wire  Link_17_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_17_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_17_io_out; // @[CGRA.scala 15:89]
  wire  Link_18_clock; // @[CGRA.scala 15:89]
  wire  Link_18_reset; // @[CGRA.scala 15:89]
  wire  Link_18_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_18_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_18_io_out; // @[CGRA.scala 15:89]
  wire  Link_19_clock; // @[CGRA.scala 15:89]
  wire  Link_19_reset; // @[CGRA.scala 15:89]
  wire  Link_19_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_19_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_19_io_out; // @[CGRA.scala 15:89]
  wire  Link_20_clock; // @[CGRA.scala 15:89]
  wire  Link_20_reset; // @[CGRA.scala 15:89]
  wire  Link_20_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_20_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_20_io_out; // @[CGRA.scala 15:89]
  wire  Link_21_clock; // @[CGRA.scala 15:89]
  wire  Link_21_reset; // @[CGRA.scala 15:89]
  wire  Link_21_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_21_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_21_io_out; // @[CGRA.scala 15:89]
  wire  Link_22_clock; // @[CGRA.scala 15:89]
  wire  Link_22_reset; // @[CGRA.scala 15:89]
  wire  Link_22_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_22_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_22_io_out; // @[CGRA.scala 15:89]
  wire  Link_23_clock; // @[CGRA.scala 15:89]
  wire  Link_23_reset; // @[CGRA.scala 15:89]
  wire  Link_23_io_in_valid; // @[CGRA.scala 15:89]
  wire [31:0] Link_23_io_in_bits; // @[CGRA.scala 15:89]
  wire [31:0] Link_23_io_out; // @[CGRA.scala 15:89]
  wire  Datamem_clock; // @[CGRA.scala 16:54]
  wire  Datamem_io_wen; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_io_waddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_io_wdata; // @[CGRA.scala 16:54]
  wire  Datamem_io_ren; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_io_raddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_io_rdata; // @[CGRA.scala 16:54]
  wire  Datamem_io_memoptvalid; // @[CGRA.scala 16:54]
  wire  Datamem_1_clock; // @[CGRA.scala 16:54]
  wire  Datamem_1_io_wen; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_1_io_waddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_1_io_wdata; // @[CGRA.scala 16:54]
  wire  Datamem_1_io_ren; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_1_io_raddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_1_io_rdata; // @[CGRA.scala 16:54]
  wire  Datamem_1_io_memoptvalid; // @[CGRA.scala 16:54]
  wire  Datamem_2_clock; // @[CGRA.scala 16:54]
  wire  Datamem_2_io_wen; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_2_io_waddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_2_io_wdata; // @[CGRA.scala 16:54]
  wire  Datamem_2_io_ren; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_2_io_raddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_2_io_rdata; // @[CGRA.scala 16:54]
  wire  Datamem_2_io_memoptvalid; // @[CGRA.scala 16:54]
  wire  Datamem_3_clock; // @[CGRA.scala 16:54]
  wire  Datamem_3_io_wen; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_3_io_waddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_3_io_wdata; // @[CGRA.scala 16:54]
  wire  Datamem_3_io_ren; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_3_io_raddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_3_io_rdata; // @[CGRA.scala 16:54]
  wire  Datamem_3_io_memoptvalid; // @[CGRA.scala 16:54]
  wire  Datamem_4_clock; // @[CGRA.scala 16:54]
  wire  Datamem_4_io_wen; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_4_io_waddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_4_io_wdata; // @[CGRA.scala 16:54]
  wire  Datamem_4_io_ren; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_4_io_raddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_4_io_rdata; // @[CGRA.scala 16:54]
  wire  Datamem_4_io_memoptvalid; // @[CGRA.scala 16:54]
  wire  Datamem_5_clock; // @[CGRA.scala 16:54]
  wire  Datamem_5_io_wen; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_5_io_waddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_5_io_wdata; // @[CGRA.scala 16:54]
  wire  Datamem_5_io_ren; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_5_io_raddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_5_io_rdata; // @[CGRA.scala 16:54]
  wire  Datamem_5_io_memoptvalid; // @[CGRA.scala 16:54]
  wire  Datamem_6_clock; // @[CGRA.scala 16:54]
  wire  Datamem_6_io_wen; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_6_io_waddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_6_io_wdata; // @[CGRA.scala 16:54]
  wire  Datamem_6_io_ren; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_6_io_raddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_6_io_rdata; // @[CGRA.scala 16:54]
  wire  Datamem_6_io_memoptvalid; // @[CGRA.scala 16:54]
  wire  Datamem_7_clock; // @[CGRA.scala 16:54]
  wire  Datamem_7_io_wen; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_7_io_waddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_7_io_wdata; // @[CGRA.scala 16:54]
  wire  Datamem_7_io_ren; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_7_io_raddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_7_io_rdata; // @[CGRA.scala 16:54]
  wire  Datamem_7_io_memoptvalid; // @[CGRA.scala 16:54]
  wire  Datamem_8_clock; // @[CGRA.scala 16:54]
  wire  Datamem_8_io_wen; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_8_io_waddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_8_io_wdata; // @[CGRA.scala 16:54]
  wire  Datamem_8_io_ren; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_8_io_raddr; // @[CGRA.scala 16:54]
  wire [31:0] Datamem_8_io_rdata; // @[CGRA.scala 16:54]
  wire  Datamem_8_io_memoptvalid; // @[CGRA.scala 16:54]
  reg [31:0] ctrlregs_0; // @[CGRA.scala 18:27]
  reg [31:0] ctrlregs_1; // @[CGRA.scala 18:27]
  reg [31:0] ctrlregs_2; // @[CGRA.scala 18:27]
  reg [31:0] ctrlregs_3; // @[CGRA.scala 18:27]
  reg [31:0] ctrlregs_4; // @[CGRA.scala 18:27]
  reg [31:0] configwaddr; // @[CGRA.scala 22:30]
  reg [31:0] configPEcnt; // @[CGRA.scala 23:30]
  wire  _T_129 = ctrlregs_0 == 32'h1; // @[CGRA.scala 159:33]
  wire  configwen = ctrlregs_0 == 32'h1 & io_axistream_s_valid & io_axistream_s_ready; // @[CGRA.scala 159:77]
  wire  _T_16 = configPEcnt == 32'h8; // @[CGRA.scala 37:53]
  wire  _T_18 = ctrlregs_0 == 32'h2; // @[CGRA.scala 45:58]
  wire  _T_20 = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready; // @[CGRA.scala 45:103]
  wire [31:0] _T_25 = ctrlregs_3 + ctrlregs_4; // @[CGRA.scala 46:118]
  wire  cgrafinish = PE_io_finish & PE_1_io_finish & PE_2_io_finish & PE_3_io_finish & PE_4_io_finish & PE_5_io_finish
     & PE_6_io_finish & PE_7_io_finish & PE_8_io_finish; // @[CGRA.scala 78:49]
  reg [1:0] statew; // @[CGRA.scala 83:23]
  reg [1:0] stater; // @[CGRA.scala 84:23]
  reg [31:0] currentAddressr; // @[CGRA.scala 85:32]
  reg [31:0] currentAddressw; // @[CGRA.scala 86:32]
  wire [7:0] _mask_T_2 = io_axilite_s_wstrb[3] ? 8'hff : 8'h0; // @[Bitwise.scala 77:12]
  wire [7:0] _mask_T_5 = io_axilite_s_wstrb[2] ? 8'hff : 8'h0; // @[Bitwise.scala 77:12]
  wire [7:0] _mask_T_8 = io_axilite_s_wstrb[1] ? 8'hff : 8'h0; // @[Bitwise.scala 77:12]
  wire [7:0] _mask_T_11 = io_axilite_s_wstrb[0] ? 8'hff : 8'h0; // @[Bitwise.scala 77:12]
  wire [31:0] mask = {_mask_T_2,_mask_T_5,_mask_T_8,_mask_T_11}; // @[Cat.scala 33:92]
  wire [31:0] _currentAddressw_T_1 = io_axilite_s_awaddr_bits - 32'h0; // @[CGRA.scala 103:52]
  wire  _T_120 = io_axilite_s_wdata_valid & io_axilite_s_wdata_ready; // @[CGRA.scala 108:36]
  wire [31:0] _ctrlregs_axil_wdata_T_1 = ~mask; // @[CGRA.scala 110:61]
  wire [31:0] _GEN_3 = 3'h1 == currentAddressw[2:0] ? ctrlregs_1 : ctrlregs_0; // @[CGRA.scala 110:{58,58}]
  wire [31:0] _GEN_4 = 3'h2 == currentAddressw[2:0] ? ctrlregs_2 : _GEN_3; // @[CGRA.scala 110:{58,58}]
  wire [31:0] _GEN_5 = 3'h3 == currentAddressw[2:0] ? ctrlregs_3 : _GEN_4; // @[CGRA.scala 110:{58,58}]
  wire [31:0] _GEN_6 = 3'h4 == currentAddressw[2:0] ? ctrlregs_4 : _GEN_5; // @[CGRA.scala 110:{58,58}]
  wire [31:0] _ctrlregs_axil_wdata_T_2 = _GEN_6 & _ctrlregs_axil_wdata_T_1; // @[CGRA.scala 110:58]
  wire [31:0] _ctrlregs_axil_wdata_T_3 = io_axilite_s_wdata_bits & mask; // @[CGRA.scala 110:95]
  wire [31:0] _ctrlregs_axil_wdata_T_4 = _ctrlregs_axil_wdata_T_2 | _ctrlregs_axil_wdata_T_3; // @[CGRA.scala 110:69]
  wire [31:0] _GEN_8 = io_axilite_s_wdata_valid & io_axilite_s_wdata_ready ? _ctrlregs_axil_wdata_T_4 : 32'h0; // @[CGRA.scala 108:65 110:29 91:23]
  wire [1:0] _GEN_12 = io_axilite_s_bresp_ready ? 2'h0 : statew; // @[CGRA.scala 115:38 118:16 83:23]
  wire [31:0] _GEN_17 = 2'h1 == statew ? _GEN_8 : 32'h0; // @[CGRA.scala 100:18 91:23]
  wire  _GEN_19 = 2'h1 == statew ? 1'h0 : 2'h2 == statew & io_axilite_s_bresp_ready; // @[CGRA.scala 100:18 93:28]
  wire  ctrlregs_axil_wen = 2'h0 == statew ? 1'h0 : 2'h1 == statew & _T_120; // @[CGRA.scala 100:18 90:20]
  wire [31:0] ctrlregs_axil_wdata = 2'h0 == statew ? 32'h0 : _GEN_17; // @[CGRA.scala 100:18 91:23]
  wire  _io_axilite_s_rdata_valid_T = stater == 2'h1; // @[CGRA.scala 124:37]
  wire [31:0] _currentAddressr_T_1 = io_axilite_s_araddr_bits - 32'h0; // @[CGRA.scala 128:52]
  wire [31:0] _GEN_34 = 3'h1 == currentAddressr[2:0] ? ctrlregs_1 : ctrlregs_0; // @[CGRA.scala 138:{33,33}]
  wire [31:0] _GEN_35 = 3'h2 == currentAddressr[2:0] ? ctrlregs_2 : _GEN_34; // @[CGRA.scala 138:{33,33}]
  wire [31:0] _GEN_36 = 3'h3 == currentAddressr[2:0] ? ctrlregs_3 : _GEN_35; // @[CGRA.scala 138:{33,33}]
  wire [31:0] _GEN_37 = 3'h4 == currentAddressr[2:0] ? ctrlregs_4 : _GEN_36; // @[CGRA.scala 138:{33,33}]
  wire  _config_finish_T = configwaddr == 32'h6c; // @[CGRA.scala 157:33]
  wire  config_finish = configwaddr == 32'h6c & _T_16; // @[CGRA.scala 157:51]
  wire [31:0] statenext = _T_129 & config_finish ? 32'h0 : ctrlregs_0; // @[CGRA.scala 147:13 149:81 150:15]
  wire [31:0] _configwaddrnext_T_2 = configwaddr + 32'h1; // @[CGRA.scala 155:64]
  wire [31:0] _configPEnext_T_2 = configPEcnt + 32'h1; // @[CGRA.scala 156:75]
  wire [31:0] configPEnext = configPEcnt < 32'h8 ? _configPEnext_T_2 : 32'h0; // @[CGRA.scala 156:22]
  wire [31:0] _T_134 = ctrlregs_4 + 32'h1; // @[CGRA.scala 177:85]
  wire [31:0] _GEN_44 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_0; // @[CGRA.scala 18:27 183:{35,35}]
  wire [31:0] _GEN_45 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_1; // @[CGRA.scala 18:27 183:{35,35}]
  wire [31:0] _GEN_46 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_2; // @[CGRA.scala 18:27 183:{35,35}]
  wire [31:0] _GEN_47 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_3; // @[CGRA.scala 18:27 183:{35,35}]
  wire [31:0] _GEN_48 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_4; // @[CGRA.scala 18:27 183:{35,35}]
  wire [31:0] _GEN_49 = config_finish ? statenext : ctrlregs_0; // @[CGRA.scala 184:46 185:21 18:27]
  wire [31:0] _GEN_50 = ctrlregs_axil_wen ? _GEN_44 : _GEN_49; // @[CGRA.scala 182:30]
  wire [31:0] _GEN_51 = ctrlregs_axil_wen ? _GEN_45 : ctrlregs_1; // @[CGRA.scala 18:27 182:30]
  wire [31:0] _GEN_52 = ctrlregs_axil_wen ? _GEN_46 : ctrlregs_2; // @[CGRA.scala 18:27 182:30]
  wire [31:0] _GEN_53 = ctrlregs_axil_wen ? _GEN_47 : ctrlregs_3; // @[CGRA.scala 18:27 182:30]
  wire [31:0] _GEN_54 = ctrlregs_axil_wen ? _GEN_48 : ctrlregs_4; // @[CGRA.scala 18:27 182:30]
  wire [31:0] _GEN_55 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_50; // @[CGRA.scala 183:{35,35}]
  wire [31:0] _GEN_56 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_51; // @[CGRA.scala 183:{35,35}]
  wire [31:0] _GEN_57 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_52; // @[CGRA.scala 183:{35,35}]
  wire [31:0] _GEN_58 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_53; // @[CGRA.scala 183:{35,35}]
  wire [31:0] _GEN_59 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_54; // @[CGRA.scala 183:{35,35}]
  wire [31:0] _GEN_60 = cgrafinish ? {{31'd0}, cgrafinish} : _GEN_51; // @[CGRA.scala 184:46 185:21]
  wire [31:0] _GEN_61 = ctrlregs_axil_wen ? _GEN_55 : _GEN_50; // @[CGRA.scala 182:30]
  wire [31:0] _GEN_62 = ctrlregs_axil_wen ? _GEN_56 : _GEN_60; // @[CGRA.scala 182:30]
  wire [31:0] _GEN_63 = ctrlregs_axil_wen ? _GEN_57 : _GEN_52; // @[CGRA.scala 182:30]
  wire [31:0] _GEN_64 = ctrlregs_axil_wen ? _GEN_58 : _GEN_53; // @[CGRA.scala 182:30]
  wire [31:0] _GEN_65 = ctrlregs_axil_wen ? _GEN_59 : _GEN_54; // @[CGRA.scala 182:30]
  wire [31:0] _GEN_66 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_61; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_67 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_62; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_68 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_63; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_69 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_64; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_70 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_65; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_71 = ctrlregs_axil_wen ? _GEN_66 : _GEN_61; // @[CGRA.scala 188:30]
  wire [31:0] _GEN_72 = ctrlregs_axil_wen ? _GEN_67 : _GEN_62; // @[CGRA.scala 188:30]
  wire [31:0] _GEN_73 = ctrlregs_axil_wen ? _GEN_68 : _GEN_63; // @[CGRA.scala 188:30]
  wire [31:0] _GEN_74 = ctrlregs_axil_wen ? _GEN_69 : _GEN_64; // @[CGRA.scala 188:30]
  wire [31:0] _GEN_75 = ctrlregs_axil_wen ? _GEN_70 : _GEN_65; // @[CGRA.scala 188:30]
  wire [31:0] _GEN_76 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_71; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_77 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_72; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_78 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_73; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_79 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_74; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_80 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_75; // @[CGRA.scala 189:{35,35}]
  wire [31:0] _GEN_81 = ctrlregs_axil_wen ? _GEN_76 : _GEN_71; // @[CGRA.scala 188:30]
  wire [31:0] _GEN_82 = ctrlregs_axil_wen ? _GEN_77 : _GEN_72; // @[CGRA.scala 188:30]
  wire [31:0] _GEN_83 = ctrlregs_axil_wen ? _GEN_78 : _GEN_73; // @[CGRA.scala 188:30]
  wire [31:0] _GEN_84 = ctrlregs_axil_wen ? _GEN_79 : _GEN_74; // @[CGRA.scala 188:30]
  wire [31:0] _GEN_85 = ctrlregs_axil_wen ? _GEN_80 : _GEN_75; // @[CGRA.scala 188:30]
  PE PE ( // @[CGRA.scala 14:53]
    .clock(PE_clock),
    .reset(PE_reset),
    .io_inLinks_0(PE_io_inLinks_0),
    .io_inLinks_3(PE_io_inLinks_3),
    .io_outLinks_0_valid(PE_io_outLinks_0_valid),
    .io_outLinks_0_bits(PE_io_outLinks_0_bits),
    .io_outLinks_3_valid(PE_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_io_outLinks_3_bits),
    .io_run(PE_io_run),
    .io_wen(PE_io_wen),
    .io_waddr(PE_io_waddr),
    .io_wdata(PE_io_wdata),
    .io_finish(PE_io_finish),
    .io_datamemio_wen(PE_io_datamemio_wen),
    .io_datamemio_waddr(PE_io_datamemio_waddr),
    .io_datamemio_wdata(PE_io_datamemio_wdata),
    .io_datamemio_ren(PE_io_datamemio_ren),
    .io_datamemio_raddr(PE_io_datamemio_raddr),
    .io_datamemio_rdata(PE_io_datamemio_rdata),
    .io_datamemio_memoptvalid(PE_io_datamemio_memoptvalid)
  );
  PE_1 PE_1 ( // @[CGRA.scala 14:53]
    .clock(PE_1_clock),
    .reset(PE_1_reset),
    .io_inLinks_0(PE_1_io_inLinks_0),
    .io_inLinks_2(PE_1_io_inLinks_2),
    .io_inLinks_3(PE_1_io_inLinks_3),
    .io_outLinks_0_valid(PE_1_io_outLinks_0_valid),
    .io_outLinks_0_bits(PE_1_io_outLinks_0_bits),
    .io_outLinks_2_valid(PE_1_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_1_io_outLinks_2_bits),
    .io_outLinks_3_valid(PE_1_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_1_io_outLinks_3_bits),
    .io_run(PE_1_io_run),
    .io_wen(PE_1_io_wen),
    .io_waddr(PE_1_io_waddr),
    .io_wdata(PE_1_io_wdata),
    .io_finish(PE_1_io_finish),
    .io_datamemio_wen(PE_1_io_datamemio_wen),
    .io_datamemio_waddr(PE_1_io_datamemio_waddr),
    .io_datamemio_wdata(PE_1_io_datamemio_wdata),
    .io_datamemio_ren(PE_1_io_datamemio_ren),
    .io_datamemio_raddr(PE_1_io_datamemio_raddr),
    .io_datamemio_rdata(PE_1_io_datamemio_rdata),
    .io_datamemio_memoptvalid(PE_1_io_datamemio_memoptvalid)
  );
  PE_2 PE_2 ( // @[CGRA.scala 14:53]
    .clock(PE_2_clock),
    .reset(PE_2_reset),
    .io_inLinks_0(PE_2_io_inLinks_0),
    .io_inLinks_2(PE_2_io_inLinks_2),
    .io_outLinks_0_valid(PE_2_io_outLinks_0_valid),
    .io_outLinks_0_bits(PE_2_io_outLinks_0_bits),
    .io_outLinks_2_valid(PE_2_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_2_io_outLinks_2_bits),
    .io_run(PE_2_io_run),
    .io_wen(PE_2_io_wen),
    .io_waddr(PE_2_io_waddr),
    .io_wdata(PE_2_io_wdata),
    .io_finish(PE_2_io_finish),
    .io_datamemio_wen(PE_2_io_datamemio_wen),
    .io_datamemio_waddr(PE_2_io_datamemio_waddr),
    .io_datamemio_wdata(PE_2_io_datamemio_wdata),
    .io_datamemio_ren(PE_2_io_datamemio_ren),
    .io_datamemio_raddr(PE_2_io_datamemio_raddr),
    .io_datamemio_rdata(PE_2_io_datamemio_rdata),
    .io_datamemio_memoptvalid(PE_2_io_datamemio_memoptvalid)
  );
  PE_3 PE_3 ( // @[CGRA.scala 14:53]
    .clock(PE_3_clock),
    .reset(PE_3_reset),
    .io_inLinks_0(PE_3_io_inLinks_0),
    .io_inLinks_1(PE_3_io_inLinks_1),
    .io_inLinks_3(PE_3_io_inLinks_3),
    .io_outLinks_0_valid(PE_3_io_outLinks_0_valid),
    .io_outLinks_0_bits(PE_3_io_outLinks_0_bits),
    .io_outLinks_1_valid(PE_3_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_3_io_outLinks_1_bits),
    .io_outLinks_3_valid(PE_3_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_3_io_outLinks_3_bits),
    .io_run(PE_3_io_run),
    .io_wen(PE_3_io_wen),
    .io_waddr(PE_3_io_waddr),
    .io_wdata(PE_3_io_wdata),
    .io_finish(PE_3_io_finish),
    .io_datamemio_wen(PE_3_io_datamemio_wen),
    .io_datamemio_waddr(PE_3_io_datamemio_waddr),
    .io_datamemio_wdata(PE_3_io_datamemio_wdata),
    .io_datamemio_ren(PE_3_io_datamemio_ren),
    .io_datamemio_raddr(PE_3_io_datamemio_raddr),
    .io_datamemio_rdata(PE_3_io_datamemio_rdata),
    .io_datamemio_memoptvalid(PE_3_io_datamemio_memoptvalid)
  );
  PE_4 PE_4 ( // @[CGRA.scala 14:53]
    .clock(PE_4_clock),
    .reset(PE_4_reset),
    .io_inLinks_0(PE_4_io_inLinks_0),
    .io_inLinks_1(PE_4_io_inLinks_1),
    .io_inLinks_2(PE_4_io_inLinks_2),
    .io_inLinks_3(PE_4_io_inLinks_3),
    .io_outLinks_0_valid(PE_4_io_outLinks_0_valid),
    .io_outLinks_0_bits(PE_4_io_outLinks_0_bits),
    .io_outLinks_1_valid(PE_4_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_4_io_outLinks_1_bits),
    .io_outLinks_2_valid(PE_4_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_4_io_outLinks_2_bits),
    .io_outLinks_3_valid(PE_4_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_4_io_outLinks_3_bits),
    .io_run(PE_4_io_run),
    .io_wen(PE_4_io_wen),
    .io_waddr(PE_4_io_waddr),
    .io_wdata(PE_4_io_wdata),
    .io_finish(PE_4_io_finish),
    .io_datamemio_wen(PE_4_io_datamemio_wen),
    .io_datamemio_waddr(PE_4_io_datamemio_waddr),
    .io_datamemio_wdata(PE_4_io_datamemio_wdata),
    .io_datamemio_ren(PE_4_io_datamemio_ren),
    .io_datamemio_raddr(PE_4_io_datamemio_raddr),
    .io_datamemio_rdata(PE_4_io_datamemio_rdata),
    .io_datamemio_memoptvalid(PE_4_io_datamemio_memoptvalid)
  );
  PE_5 PE_5 ( // @[CGRA.scala 14:53]
    .clock(PE_5_clock),
    .reset(PE_5_reset),
    .io_inLinks_0(PE_5_io_inLinks_0),
    .io_inLinks_1(PE_5_io_inLinks_1),
    .io_inLinks_2(PE_5_io_inLinks_2),
    .io_outLinks_0_valid(PE_5_io_outLinks_0_valid),
    .io_outLinks_0_bits(PE_5_io_outLinks_0_bits),
    .io_outLinks_1_valid(PE_5_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_5_io_outLinks_1_bits),
    .io_outLinks_2_valid(PE_5_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_5_io_outLinks_2_bits),
    .io_run(PE_5_io_run),
    .io_wen(PE_5_io_wen),
    .io_waddr(PE_5_io_waddr),
    .io_wdata(PE_5_io_wdata),
    .io_finish(PE_5_io_finish),
    .io_datamemio_wen(PE_5_io_datamemio_wen),
    .io_datamemio_waddr(PE_5_io_datamemio_waddr),
    .io_datamemio_wdata(PE_5_io_datamemio_wdata),
    .io_datamemio_ren(PE_5_io_datamemio_ren),
    .io_datamemio_raddr(PE_5_io_datamemio_raddr),
    .io_datamemio_rdata(PE_5_io_datamemio_rdata),
    .io_datamemio_memoptvalid(PE_5_io_datamemio_memoptvalid)
  );
  PE_6 PE_6 ( // @[CGRA.scala 14:53]
    .clock(PE_6_clock),
    .reset(PE_6_reset),
    .io_inLinks_1(PE_6_io_inLinks_1),
    .io_inLinks_3(PE_6_io_inLinks_3),
    .io_outLinks_1_valid(PE_6_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_6_io_outLinks_1_bits),
    .io_outLinks_3_valid(PE_6_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_6_io_outLinks_3_bits),
    .io_run(PE_6_io_run),
    .io_wen(PE_6_io_wen),
    .io_waddr(PE_6_io_waddr),
    .io_wdata(PE_6_io_wdata),
    .io_finish(PE_6_io_finish),
    .io_datamemio_wen(PE_6_io_datamemio_wen),
    .io_datamemio_waddr(PE_6_io_datamemio_waddr),
    .io_datamemio_wdata(PE_6_io_datamemio_wdata),
    .io_datamemio_ren(PE_6_io_datamemio_ren),
    .io_datamemio_raddr(PE_6_io_datamemio_raddr),
    .io_datamemio_rdata(PE_6_io_datamemio_rdata),
    .io_datamemio_memoptvalid(PE_6_io_datamemio_memoptvalid)
  );
  PE_7 PE_7 ( // @[CGRA.scala 14:53]
    .clock(PE_7_clock),
    .reset(PE_7_reset),
    .io_inLinks_1(PE_7_io_inLinks_1),
    .io_inLinks_2(PE_7_io_inLinks_2),
    .io_inLinks_3(PE_7_io_inLinks_3),
    .io_outLinks_1_valid(PE_7_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_7_io_outLinks_1_bits),
    .io_outLinks_2_valid(PE_7_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_7_io_outLinks_2_bits),
    .io_outLinks_3_valid(PE_7_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_7_io_outLinks_3_bits),
    .io_run(PE_7_io_run),
    .io_wen(PE_7_io_wen),
    .io_waddr(PE_7_io_waddr),
    .io_wdata(PE_7_io_wdata),
    .io_finish(PE_7_io_finish),
    .io_datamemio_wen(PE_7_io_datamemio_wen),
    .io_datamemio_waddr(PE_7_io_datamemio_waddr),
    .io_datamemio_wdata(PE_7_io_datamemio_wdata),
    .io_datamemio_ren(PE_7_io_datamemio_ren),
    .io_datamemio_raddr(PE_7_io_datamemio_raddr),
    .io_datamemio_rdata(PE_7_io_datamemio_rdata),
    .io_datamemio_memoptvalid(PE_7_io_datamemio_memoptvalid)
  );
  PE_8 PE_8 ( // @[CGRA.scala 14:53]
    .clock(PE_8_clock),
    .reset(PE_8_reset),
    .io_inLinks_1(PE_8_io_inLinks_1),
    .io_inLinks_2(PE_8_io_inLinks_2),
    .io_outLinks_1_valid(PE_8_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_8_io_outLinks_1_bits),
    .io_outLinks_2_valid(PE_8_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_8_io_outLinks_2_bits),
    .io_run(PE_8_io_run),
    .io_wen(PE_8_io_wen),
    .io_waddr(PE_8_io_waddr),
    .io_wdata(PE_8_io_wdata),
    .io_finish(PE_8_io_finish),
    .io_datamemio_wen(PE_8_io_datamemio_wen),
    .io_datamemio_waddr(PE_8_io_datamemio_waddr),
    .io_datamemio_wdata(PE_8_io_datamemio_wdata),
    .io_datamemio_ren(PE_8_io_datamemio_ren),
    .io_datamemio_raddr(PE_8_io_datamemio_raddr),
    .io_datamemio_rdata(PE_8_io_datamemio_rdata),
    .io_datamemio_memoptvalid(PE_8_io_datamemio_memoptvalid)
  );
  Link Link ( // @[CGRA.scala 15:89]
    .clock(Link_clock),
    .reset(Link_reset),
    .io_in_valid(Link_io_in_valid),
    .io_in_bits(Link_io_in_bits),
    .io_out(Link_io_out)
  );
  Link Link_1 ( // @[CGRA.scala 15:89]
    .clock(Link_1_clock),
    .reset(Link_1_reset),
    .io_in_valid(Link_1_io_in_valid),
    .io_in_bits(Link_1_io_in_bits),
    .io_out(Link_1_io_out)
  );
  Link Link_2 ( // @[CGRA.scala 15:89]
    .clock(Link_2_clock),
    .reset(Link_2_reset),
    .io_in_valid(Link_2_io_in_valid),
    .io_in_bits(Link_2_io_in_bits),
    .io_out(Link_2_io_out)
  );
  Link Link_3 ( // @[CGRA.scala 15:89]
    .clock(Link_3_clock),
    .reset(Link_3_reset),
    .io_in_valid(Link_3_io_in_valid),
    .io_in_bits(Link_3_io_in_bits),
    .io_out(Link_3_io_out)
  );
  Link Link_4 ( // @[CGRA.scala 15:89]
    .clock(Link_4_clock),
    .reset(Link_4_reset),
    .io_in_valid(Link_4_io_in_valid),
    .io_in_bits(Link_4_io_in_bits),
    .io_out(Link_4_io_out)
  );
  Link Link_5 ( // @[CGRA.scala 15:89]
    .clock(Link_5_clock),
    .reset(Link_5_reset),
    .io_in_valid(Link_5_io_in_valid),
    .io_in_bits(Link_5_io_in_bits),
    .io_out(Link_5_io_out)
  );
  Link Link_6 ( // @[CGRA.scala 15:89]
    .clock(Link_6_clock),
    .reset(Link_6_reset),
    .io_in_valid(Link_6_io_in_valid),
    .io_in_bits(Link_6_io_in_bits),
    .io_out(Link_6_io_out)
  );
  Link Link_7 ( // @[CGRA.scala 15:89]
    .clock(Link_7_clock),
    .reset(Link_7_reset),
    .io_in_valid(Link_7_io_in_valid),
    .io_in_bits(Link_7_io_in_bits),
    .io_out(Link_7_io_out)
  );
  Link Link_8 ( // @[CGRA.scala 15:89]
    .clock(Link_8_clock),
    .reset(Link_8_reset),
    .io_in_valid(Link_8_io_in_valid),
    .io_in_bits(Link_8_io_in_bits),
    .io_out(Link_8_io_out)
  );
  Link Link_9 ( // @[CGRA.scala 15:89]
    .clock(Link_9_clock),
    .reset(Link_9_reset),
    .io_in_valid(Link_9_io_in_valid),
    .io_in_bits(Link_9_io_in_bits),
    .io_out(Link_9_io_out)
  );
  Link Link_10 ( // @[CGRA.scala 15:89]
    .clock(Link_10_clock),
    .reset(Link_10_reset),
    .io_in_valid(Link_10_io_in_valid),
    .io_in_bits(Link_10_io_in_bits),
    .io_out(Link_10_io_out)
  );
  Link Link_11 ( // @[CGRA.scala 15:89]
    .clock(Link_11_clock),
    .reset(Link_11_reset),
    .io_in_valid(Link_11_io_in_valid),
    .io_in_bits(Link_11_io_in_bits),
    .io_out(Link_11_io_out)
  );
  Link Link_12 ( // @[CGRA.scala 15:89]
    .clock(Link_12_clock),
    .reset(Link_12_reset),
    .io_in_valid(Link_12_io_in_valid),
    .io_in_bits(Link_12_io_in_bits),
    .io_out(Link_12_io_out)
  );
  Link Link_13 ( // @[CGRA.scala 15:89]
    .clock(Link_13_clock),
    .reset(Link_13_reset),
    .io_in_valid(Link_13_io_in_valid),
    .io_in_bits(Link_13_io_in_bits),
    .io_out(Link_13_io_out)
  );
  Link Link_14 ( // @[CGRA.scala 15:89]
    .clock(Link_14_clock),
    .reset(Link_14_reset),
    .io_in_valid(Link_14_io_in_valid),
    .io_in_bits(Link_14_io_in_bits),
    .io_out(Link_14_io_out)
  );
  Link Link_15 ( // @[CGRA.scala 15:89]
    .clock(Link_15_clock),
    .reset(Link_15_reset),
    .io_in_valid(Link_15_io_in_valid),
    .io_in_bits(Link_15_io_in_bits),
    .io_out(Link_15_io_out)
  );
  Link Link_16 ( // @[CGRA.scala 15:89]
    .clock(Link_16_clock),
    .reset(Link_16_reset),
    .io_in_valid(Link_16_io_in_valid),
    .io_in_bits(Link_16_io_in_bits),
    .io_out(Link_16_io_out)
  );
  Link Link_17 ( // @[CGRA.scala 15:89]
    .clock(Link_17_clock),
    .reset(Link_17_reset),
    .io_in_valid(Link_17_io_in_valid),
    .io_in_bits(Link_17_io_in_bits),
    .io_out(Link_17_io_out)
  );
  Link Link_18 ( // @[CGRA.scala 15:89]
    .clock(Link_18_clock),
    .reset(Link_18_reset),
    .io_in_valid(Link_18_io_in_valid),
    .io_in_bits(Link_18_io_in_bits),
    .io_out(Link_18_io_out)
  );
  Link Link_19 ( // @[CGRA.scala 15:89]
    .clock(Link_19_clock),
    .reset(Link_19_reset),
    .io_in_valid(Link_19_io_in_valid),
    .io_in_bits(Link_19_io_in_bits),
    .io_out(Link_19_io_out)
  );
  Link Link_20 ( // @[CGRA.scala 15:89]
    .clock(Link_20_clock),
    .reset(Link_20_reset),
    .io_in_valid(Link_20_io_in_valid),
    .io_in_bits(Link_20_io_in_bits),
    .io_out(Link_20_io_out)
  );
  Link Link_21 ( // @[CGRA.scala 15:89]
    .clock(Link_21_clock),
    .reset(Link_21_reset),
    .io_in_valid(Link_21_io_in_valid),
    .io_in_bits(Link_21_io_in_bits),
    .io_out(Link_21_io_out)
  );
  Link Link_22 ( // @[CGRA.scala 15:89]
    .clock(Link_22_clock),
    .reset(Link_22_reset),
    .io_in_valid(Link_22_io_in_valid),
    .io_in_bits(Link_22_io_in_bits),
    .io_out(Link_22_io_out)
  );
  Link Link_23 ( // @[CGRA.scala 15:89]
    .clock(Link_23_clock),
    .reset(Link_23_reset),
    .io_in_valid(Link_23_io_in_valid),
    .io_in_bits(Link_23_io_in_bits),
    .io_out(Link_23_io_out)
  );
  Datamem Datamem ( // @[CGRA.scala 16:54]
    .clock(Datamem_clock),
    .io_wen(Datamem_io_wen),
    .io_waddr(Datamem_io_waddr),
    .io_wdata(Datamem_io_wdata),
    .io_ren(Datamem_io_ren),
    .io_raddr(Datamem_io_raddr),
    .io_rdata(Datamem_io_rdata),
    .io_memoptvalid(Datamem_io_memoptvalid)
  );
  Datamem Datamem_1 ( // @[CGRA.scala 16:54]
    .clock(Datamem_1_clock),
    .io_wen(Datamem_1_io_wen),
    .io_waddr(Datamem_1_io_waddr),
    .io_wdata(Datamem_1_io_wdata),
    .io_ren(Datamem_1_io_ren),
    .io_raddr(Datamem_1_io_raddr),
    .io_rdata(Datamem_1_io_rdata),
    .io_memoptvalid(Datamem_1_io_memoptvalid)
  );
  Datamem Datamem_2 ( // @[CGRA.scala 16:54]
    .clock(Datamem_2_clock),
    .io_wen(Datamem_2_io_wen),
    .io_waddr(Datamem_2_io_waddr),
    .io_wdata(Datamem_2_io_wdata),
    .io_ren(Datamem_2_io_ren),
    .io_raddr(Datamem_2_io_raddr),
    .io_rdata(Datamem_2_io_rdata),
    .io_memoptvalid(Datamem_2_io_memoptvalid)
  );
  Datamem Datamem_3 ( // @[CGRA.scala 16:54]
    .clock(Datamem_3_clock),
    .io_wen(Datamem_3_io_wen),
    .io_waddr(Datamem_3_io_waddr),
    .io_wdata(Datamem_3_io_wdata),
    .io_ren(Datamem_3_io_ren),
    .io_raddr(Datamem_3_io_raddr),
    .io_rdata(Datamem_3_io_rdata),
    .io_memoptvalid(Datamem_3_io_memoptvalid)
  );
  Datamem Datamem_4 ( // @[CGRA.scala 16:54]
    .clock(Datamem_4_clock),
    .io_wen(Datamem_4_io_wen),
    .io_waddr(Datamem_4_io_waddr),
    .io_wdata(Datamem_4_io_wdata),
    .io_ren(Datamem_4_io_ren),
    .io_raddr(Datamem_4_io_raddr),
    .io_rdata(Datamem_4_io_rdata),
    .io_memoptvalid(Datamem_4_io_memoptvalid)
  );
  Datamem Datamem_5 ( // @[CGRA.scala 16:54]
    .clock(Datamem_5_clock),
    .io_wen(Datamem_5_io_wen),
    .io_waddr(Datamem_5_io_waddr),
    .io_wdata(Datamem_5_io_wdata),
    .io_ren(Datamem_5_io_ren),
    .io_raddr(Datamem_5_io_raddr),
    .io_rdata(Datamem_5_io_rdata),
    .io_memoptvalid(Datamem_5_io_memoptvalid)
  );
  Datamem Datamem_6 ( // @[CGRA.scala 16:54]
    .clock(Datamem_6_clock),
    .io_wen(Datamem_6_io_wen),
    .io_waddr(Datamem_6_io_waddr),
    .io_wdata(Datamem_6_io_wdata),
    .io_ren(Datamem_6_io_ren),
    .io_raddr(Datamem_6_io_raddr),
    .io_rdata(Datamem_6_io_rdata),
    .io_memoptvalid(Datamem_6_io_memoptvalid)
  );
  Datamem Datamem_7 ( // @[CGRA.scala 16:54]
    .clock(Datamem_7_clock),
    .io_wen(Datamem_7_io_wen),
    .io_waddr(Datamem_7_io_waddr),
    .io_wdata(Datamem_7_io_wdata),
    .io_ren(Datamem_7_io_ren),
    .io_raddr(Datamem_7_io_raddr),
    .io_rdata(Datamem_7_io_rdata),
    .io_memoptvalid(Datamem_7_io_memoptvalid)
  );
  Datamem Datamem_8 ( // @[CGRA.scala 16:54]
    .clock(Datamem_8_clock),
    .io_wen(Datamem_8_io_wen),
    .io_waddr(Datamem_8_io_waddr),
    .io_wdata(Datamem_8_io_wdata),
    .io_ren(Datamem_8_io_ren),
    .io_raddr(Datamem_8_io_raddr),
    .io_rdata(Datamem_8_io_rdata),
    .io_memoptvalid(Datamem_8_io_memoptvalid)
  );
  assign io_finish = ctrlregs_1[0]; // @[CGRA.scala 80:14]
  assign io_axilite_s_araddr_ready = stater == 2'h0; // @[CGRA.scala 123:39]
  assign io_axilite_s_rdata_valid = stater == 2'h1; // @[CGRA.scala 124:37]
  assign io_axilite_s_rdata_bits = _io_axilite_s_rdata_valid_T & io_axilite_s_rdata_valid & io_axilite_s_rdata_ready ?
    _GEN_37 : 32'h0; // @[CGRA.scala 138:33]
  assign io_axilite_s_rresp = 2'h0; // @[CGRA.scala 140:22]
  assign io_axilite_s_awaddr_ready = statew == 2'h0; // @[CGRA.scala 96:39]
  assign io_axilite_s_wdata_ready = statew == 2'h1; // @[CGRA.scala 97:38]
  assign io_axilite_s_bresp_valid = 2'h0 == statew ? 1'h0 : _GEN_19; // @[CGRA.scala 100:18 93:28]
  assign io_axilite_s_bresp_bits = 2'h0;
  assign io_axistream_s_ready = 32'h1 == ctrlregs_0 | 32'h2 == ctrlregs_0; // @[CGRA.scala 158:71]
  assign PE_clock = clock;
  assign PE_reset = reset;
  assign PE_io_inLinks_0 = Link_8_io_out; // @[CGRA.scala 62:47]
  assign PE_io_inLinks_3 = Link_4_io_out; // @[CGRA.scala 72:45]
  assign PE_io_run = io_run; // @[CGRA.scala 40:25]
  assign PE_io_wen = configwen & configPEcnt == 32'h0; // @[CGRA.scala 37:38]
  assign PE_io_waddr = configwaddr; // @[CGRA.scala 38:26]
  assign PE_io_wdata = configwen ? io_axistream_s_data : 32'h0; // @[CGRA.scala 159:101 160:17 26:17]
  assign PE_io_datamemio_rdata = Datamem_io_rdata; // @[CGRA.scala 44:27]
  assign PE_io_datamemio_memoptvalid = Datamem_io_memoptvalid; // @[CGRA.scala 44:27]
  assign PE_1_clock = clock;
  assign PE_1_reset = reset;
  assign PE_1_io_inLinks_0 = Link_11_io_out; // @[CGRA.scala 62:47]
  assign PE_1_io_inLinks_2 = Link_1_io_out; // @[CGRA.scala 67:45]
  assign PE_1_io_inLinks_3 = Link_6_io_out; // @[CGRA.scala 72:45]
  assign PE_1_io_run = io_run; // @[CGRA.scala 40:25]
  assign PE_1_io_wen = configwen & configPEcnt == 32'h1; // @[CGRA.scala 37:38]
  assign PE_1_io_waddr = configwaddr; // @[CGRA.scala 38:26]
  assign PE_1_io_wdata = configwen ? io_axistream_s_data : 32'h0; // @[CGRA.scala 159:101 160:17 26:17]
  assign PE_1_io_datamemio_rdata = Datamem_1_io_rdata; // @[CGRA.scala 44:27]
  assign PE_1_io_datamemio_memoptvalid = Datamem_1_io_memoptvalid; // @[CGRA.scala 44:27]
  assign PE_2_clock = clock;
  assign PE_2_reset = reset;
  assign PE_2_io_inLinks_0 = Link_15_io_out; // @[CGRA.scala 62:47]
  assign PE_2_io_inLinks_2 = Link_3_io_out; // @[CGRA.scala 67:45]
  assign PE_2_io_run = io_run; // @[CGRA.scala 40:25]
  assign PE_2_io_wen = configwen & configPEcnt == 32'h2; // @[CGRA.scala 37:38]
  assign PE_2_io_waddr = configwaddr; // @[CGRA.scala 38:26]
  assign PE_2_io_wdata = configwen ? io_axistream_s_data : 32'h0; // @[CGRA.scala 159:101 160:17 26:17]
  assign PE_2_io_datamemio_rdata = Datamem_2_io_rdata; // @[CGRA.scala 44:27]
  assign PE_2_io_datamemio_memoptvalid = Datamem_2_io_memoptvalid; // @[CGRA.scala 44:27]
  assign PE_3_clock = clock;
  assign PE_3_reset = reset;
  assign PE_3_io_inLinks_0 = Link_17_io_out; // @[CGRA.scala 62:47]
  assign PE_3_io_inLinks_1 = Link_io_out; // @[CGRA.scala 57:47]
  assign PE_3_io_inLinks_3 = Link_13_io_out; // @[CGRA.scala 72:45]
  assign PE_3_io_run = io_run; // @[CGRA.scala 40:25]
  assign PE_3_io_wen = configwen & configPEcnt == 32'h3; // @[CGRA.scala 37:38]
  assign PE_3_io_waddr = configwaddr; // @[CGRA.scala 38:26]
  assign PE_3_io_wdata = configwen ? io_axistream_s_data : 32'h0; // @[CGRA.scala 159:101 160:17 26:17]
  assign PE_3_io_datamemio_rdata = Datamem_3_io_rdata; // @[CGRA.scala 44:27]
  assign PE_3_io_datamemio_memoptvalid = Datamem_3_io_memoptvalid; // @[CGRA.scala 44:27]
  assign PE_4_clock = clock;
  assign PE_4_reset = reset;
  assign PE_4_io_inLinks_0 = Link_19_io_out; // @[CGRA.scala 62:47]
  assign PE_4_io_inLinks_1 = Link_2_io_out; // @[CGRA.scala 57:47]
  assign PE_4_io_inLinks_2 = Link_9_io_out; // @[CGRA.scala 67:45]
  assign PE_4_io_inLinks_3 = Link_16_io_out; // @[CGRA.scala 72:45]
  assign PE_4_io_run = io_run; // @[CGRA.scala 40:25]
  assign PE_4_io_wen = configwen & configPEcnt == 32'h4; // @[CGRA.scala 37:38]
  assign PE_4_io_waddr = configwaddr; // @[CGRA.scala 38:26]
  assign PE_4_io_wdata = configwen ? io_axistream_s_data : 32'h0; // @[CGRA.scala 159:101 160:17 26:17]
  assign PE_4_io_datamemio_rdata = Datamem_4_io_rdata; // @[CGRA.scala 44:27]
  assign PE_4_io_datamemio_memoptvalid = Datamem_4_io_memoptvalid; // @[CGRA.scala 44:27]
  assign PE_5_clock = clock;
  assign PE_5_reset = reset;
  assign PE_5_io_inLinks_0 = Link_22_io_out; // @[CGRA.scala 62:47]
  assign PE_5_io_inLinks_1 = Link_5_io_out; // @[CGRA.scala 57:47]
  assign PE_5_io_inLinks_2 = Link_12_io_out; // @[CGRA.scala 67:45]
  assign PE_5_io_run = io_run; // @[CGRA.scala 40:25]
  assign PE_5_io_wen = configwen & configPEcnt == 32'h5; // @[CGRA.scala 37:38]
  assign PE_5_io_waddr = configwaddr; // @[CGRA.scala 38:26]
  assign PE_5_io_wdata = configwen ? io_axistream_s_data : 32'h0; // @[CGRA.scala 159:101 160:17 26:17]
  assign PE_5_io_datamemio_rdata = Datamem_5_io_rdata; // @[CGRA.scala 44:27]
  assign PE_5_io_datamemio_memoptvalid = Datamem_5_io_memoptvalid; // @[CGRA.scala 44:27]
  assign PE_6_clock = clock;
  assign PE_6_reset = reset;
  assign PE_6_io_inLinks_1 = Link_7_io_out; // @[CGRA.scala 57:47]
  assign PE_6_io_inLinks_3 = Link_21_io_out; // @[CGRA.scala 72:45]
  assign PE_6_io_run = io_run; // @[CGRA.scala 40:25]
  assign PE_6_io_wen = configwen & configPEcnt == 32'h6; // @[CGRA.scala 37:38]
  assign PE_6_io_waddr = configwaddr; // @[CGRA.scala 38:26]
  assign PE_6_io_wdata = configwen ? io_axistream_s_data : 32'h0; // @[CGRA.scala 159:101 160:17 26:17]
  assign PE_6_io_datamemio_rdata = Datamem_6_io_rdata; // @[CGRA.scala 44:27]
  assign PE_6_io_datamemio_memoptvalid = Datamem_6_io_memoptvalid; // @[CGRA.scala 44:27]
  assign PE_7_clock = clock;
  assign PE_7_reset = reset;
  assign PE_7_io_inLinks_1 = Link_10_io_out; // @[CGRA.scala 57:47]
  assign PE_7_io_inLinks_2 = Link_18_io_out; // @[CGRA.scala 67:45]
  assign PE_7_io_inLinks_3 = Link_23_io_out; // @[CGRA.scala 72:45]
  assign PE_7_io_run = io_run; // @[CGRA.scala 40:25]
  assign PE_7_io_wen = configwen & configPEcnt == 32'h7; // @[CGRA.scala 37:38]
  assign PE_7_io_waddr = configwaddr; // @[CGRA.scala 38:26]
  assign PE_7_io_wdata = configwen ? io_axistream_s_data : 32'h0; // @[CGRA.scala 159:101 160:17 26:17]
  assign PE_7_io_datamemio_rdata = Datamem_7_io_rdata; // @[CGRA.scala 44:27]
  assign PE_7_io_datamemio_memoptvalid = Datamem_7_io_memoptvalid; // @[CGRA.scala 44:27]
  assign PE_8_clock = clock;
  assign PE_8_reset = reset;
  assign PE_8_io_inLinks_1 = Link_14_io_out; // @[CGRA.scala 57:47]
  assign PE_8_io_inLinks_2 = Link_20_io_out; // @[CGRA.scala 67:45]
  assign PE_8_io_run = io_run; // @[CGRA.scala 40:25]
  assign PE_8_io_wen = configwen & configPEcnt == 32'h8; // @[CGRA.scala 37:38]
  assign PE_8_io_waddr = configwaddr; // @[CGRA.scala 38:26]
  assign PE_8_io_wdata = configwen ? io_axistream_s_data : 32'h0; // @[CGRA.scala 159:101 160:17 26:17]
  assign PE_8_io_datamemio_rdata = Datamem_8_io_rdata; // @[CGRA.scala 44:27]
  assign PE_8_io_datamemio_memoptvalid = Datamem_8_io_memoptvalid; // @[CGRA.scala 44:27]
  assign Link_clock = clock;
  assign Link_reset = reset;
  assign Link_io_in_valid = PE_io_outLinks_0_valid; // @[CGRA.scala 56:31]
  assign Link_io_in_bits = PE_io_outLinks_0_bits; // @[CGRA.scala 56:31]
  assign Link_1_clock = clock;
  assign Link_1_reset = reset;
  assign Link_1_io_in_valid = PE_io_outLinks_3_valid; // @[CGRA.scala 66:31]
  assign Link_1_io_in_bits = PE_io_outLinks_3_bits; // @[CGRA.scala 66:31]
  assign Link_2_clock = clock;
  assign Link_2_reset = reset;
  assign Link_2_io_in_valid = PE_1_io_outLinks_0_valid; // @[CGRA.scala 56:31]
  assign Link_2_io_in_bits = PE_1_io_outLinks_0_bits; // @[CGRA.scala 56:31]
  assign Link_3_clock = clock;
  assign Link_3_reset = reset;
  assign Link_3_io_in_valid = PE_1_io_outLinks_3_valid; // @[CGRA.scala 66:31]
  assign Link_3_io_in_bits = PE_1_io_outLinks_3_bits; // @[CGRA.scala 66:31]
  assign Link_4_clock = clock;
  assign Link_4_reset = reset;
  assign Link_4_io_in_valid = PE_1_io_outLinks_2_valid; // @[CGRA.scala 71:31]
  assign Link_4_io_in_bits = PE_1_io_outLinks_2_bits; // @[CGRA.scala 71:31]
  assign Link_5_clock = clock;
  assign Link_5_reset = reset;
  assign Link_5_io_in_valid = PE_2_io_outLinks_0_valid; // @[CGRA.scala 56:31]
  assign Link_5_io_in_bits = PE_2_io_outLinks_0_bits; // @[CGRA.scala 56:31]
  assign Link_6_clock = clock;
  assign Link_6_reset = reset;
  assign Link_6_io_in_valid = PE_2_io_outLinks_2_valid; // @[CGRA.scala 71:31]
  assign Link_6_io_in_bits = PE_2_io_outLinks_2_bits; // @[CGRA.scala 71:31]
  assign Link_7_clock = clock;
  assign Link_7_reset = reset;
  assign Link_7_io_in_valid = PE_3_io_outLinks_0_valid; // @[CGRA.scala 56:31]
  assign Link_7_io_in_bits = PE_3_io_outLinks_0_bits; // @[CGRA.scala 56:31]
  assign Link_8_clock = clock;
  assign Link_8_reset = reset;
  assign Link_8_io_in_valid = PE_3_io_outLinks_1_valid; // @[CGRA.scala 61:31]
  assign Link_8_io_in_bits = PE_3_io_outLinks_1_bits; // @[CGRA.scala 61:31]
  assign Link_9_clock = clock;
  assign Link_9_reset = reset;
  assign Link_9_io_in_valid = PE_3_io_outLinks_3_valid; // @[CGRA.scala 66:31]
  assign Link_9_io_in_bits = PE_3_io_outLinks_3_bits; // @[CGRA.scala 66:31]
  assign Link_10_clock = clock;
  assign Link_10_reset = reset;
  assign Link_10_io_in_valid = PE_4_io_outLinks_0_valid; // @[CGRA.scala 56:31]
  assign Link_10_io_in_bits = PE_4_io_outLinks_0_bits; // @[CGRA.scala 56:31]
  assign Link_11_clock = clock;
  assign Link_11_reset = reset;
  assign Link_11_io_in_valid = PE_4_io_outLinks_1_valid; // @[CGRA.scala 61:31]
  assign Link_11_io_in_bits = PE_4_io_outLinks_1_bits; // @[CGRA.scala 61:31]
  assign Link_12_clock = clock;
  assign Link_12_reset = reset;
  assign Link_12_io_in_valid = PE_4_io_outLinks_3_valid; // @[CGRA.scala 66:31]
  assign Link_12_io_in_bits = PE_4_io_outLinks_3_bits; // @[CGRA.scala 66:31]
  assign Link_13_clock = clock;
  assign Link_13_reset = reset;
  assign Link_13_io_in_valid = PE_4_io_outLinks_2_valid; // @[CGRA.scala 71:31]
  assign Link_13_io_in_bits = PE_4_io_outLinks_2_bits; // @[CGRA.scala 71:31]
  assign Link_14_clock = clock;
  assign Link_14_reset = reset;
  assign Link_14_io_in_valid = PE_5_io_outLinks_0_valid; // @[CGRA.scala 56:31]
  assign Link_14_io_in_bits = PE_5_io_outLinks_0_bits; // @[CGRA.scala 56:31]
  assign Link_15_clock = clock;
  assign Link_15_reset = reset;
  assign Link_15_io_in_valid = PE_5_io_outLinks_1_valid; // @[CGRA.scala 61:31]
  assign Link_15_io_in_bits = PE_5_io_outLinks_1_bits; // @[CGRA.scala 61:31]
  assign Link_16_clock = clock;
  assign Link_16_reset = reset;
  assign Link_16_io_in_valid = PE_5_io_outLinks_2_valid; // @[CGRA.scala 71:31]
  assign Link_16_io_in_bits = PE_5_io_outLinks_2_bits; // @[CGRA.scala 71:31]
  assign Link_17_clock = clock;
  assign Link_17_reset = reset;
  assign Link_17_io_in_valid = PE_6_io_outLinks_1_valid; // @[CGRA.scala 61:31]
  assign Link_17_io_in_bits = PE_6_io_outLinks_1_bits; // @[CGRA.scala 61:31]
  assign Link_18_clock = clock;
  assign Link_18_reset = reset;
  assign Link_18_io_in_valid = PE_6_io_outLinks_3_valid; // @[CGRA.scala 66:31]
  assign Link_18_io_in_bits = PE_6_io_outLinks_3_bits; // @[CGRA.scala 66:31]
  assign Link_19_clock = clock;
  assign Link_19_reset = reset;
  assign Link_19_io_in_valid = PE_7_io_outLinks_1_valid; // @[CGRA.scala 61:31]
  assign Link_19_io_in_bits = PE_7_io_outLinks_1_bits; // @[CGRA.scala 61:31]
  assign Link_20_clock = clock;
  assign Link_20_reset = reset;
  assign Link_20_io_in_valid = PE_7_io_outLinks_3_valid; // @[CGRA.scala 66:31]
  assign Link_20_io_in_bits = PE_7_io_outLinks_3_bits; // @[CGRA.scala 66:31]
  assign Link_21_clock = clock;
  assign Link_21_reset = reset;
  assign Link_21_io_in_valid = PE_7_io_outLinks_2_valid; // @[CGRA.scala 71:31]
  assign Link_21_io_in_bits = PE_7_io_outLinks_2_bits; // @[CGRA.scala 71:31]
  assign Link_22_clock = clock;
  assign Link_22_reset = reset;
  assign Link_22_io_in_valid = PE_8_io_outLinks_1_valid; // @[CGRA.scala 61:31]
  assign Link_22_io_in_bits = PE_8_io_outLinks_1_bits; // @[CGRA.scala 61:31]
  assign Link_23_clock = clock;
  assign Link_23_reset = reset;
  assign Link_23_io_in_valid = PE_8_io_outLinks_2_valid; // @[CGRA.scala 71:31]
  assign Link_23_io_in_bits = PE_8_io_outLinks_2_bits; // @[CGRA.scala 71:31]
  assign Datamem_clock = clock;
  assign Datamem_io_wen = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready ? ctrlregs_2 == 32'h0 :
    PE_io_datamemio_wen; // @[CGRA.scala 45:31]
  assign Datamem_io_waddr = _T_18 ? _T_25 : PE_io_datamemio_waddr; // @[CGRA.scala 46:32]
  assign Datamem_io_wdata = _T_18 ? io_axistream_s_data : PE_io_datamemio_wdata; // @[CGRA.scala 47:32]
  assign Datamem_io_ren = PE_io_datamemio_ren; // @[CGRA.scala 44:27]
  assign Datamem_io_raddr = PE_io_datamemio_raddr; // @[CGRA.scala 44:27]
  assign Datamem_1_clock = clock;
  assign Datamem_1_io_wen = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready ? ctrlregs_2 == 32'h1 :
    PE_1_io_datamemio_wen; // @[CGRA.scala 45:31]
  assign Datamem_1_io_waddr = _T_18 ? _T_25 : PE_1_io_datamemio_waddr; // @[CGRA.scala 46:32]
  assign Datamem_1_io_wdata = _T_18 ? io_axistream_s_data : PE_1_io_datamemio_wdata; // @[CGRA.scala 47:32]
  assign Datamem_1_io_ren = PE_1_io_datamemio_ren; // @[CGRA.scala 44:27]
  assign Datamem_1_io_raddr = PE_1_io_datamemio_raddr; // @[CGRA.scala 44:27]
  assign Datamem_2_clock = clock;
  assign Datamem_2_io_wen = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready ? ctrlregs_2 == 32'h2 :
    PE_2_io_datamemio_wen; // @[CGRA.scala 45:31]
  assign Datamem_2_io_waddr = _T_18 ? _T_25 : PE_2_io_datamemio_waddr; // @[CGRA.scala 46:32]
  assign Datamem_2_io_wdata = _T_18 ? io_axistream_s_data : PE_2_io_datamemio_wdata; // @[CGRA.scala 47:32]
  assign Datamem_2_io_ren = PE_2_io_datamemio_ren; // @[CGRA.scala 44:27]
  assign Datamem_2_io_raddr = PE_2_io_datamemio_raddr; // @[CGRA.scala 44:27]
  assign Datamem_3_clock = clock;
  assign Datamem_3_io_wen = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready ? ctrlregs_2 == 32'h3 :
    PE_3_io_datamemio_wen; // @[CGRA.scala 45:31]
  assign Datamem_3_io_waddr = _T_18 ? _T_25 : PE_3_io_datamemio_waddr; // @[CGRA.scala 46:32]
  assign Datamem_3_io_wdata = _T_18 ? io_axistream_s_data : PE_3_io_datamemio_wdata; // @[CGRA.scala 47:32]
  assign Datamem_3_io_ren = PE_3_io_datamemio_ren; // @[CGRA.scala 44:27]
  assign Datamem_3_io_raddr = PE_3_io_datamemio_raddr; // @[CGRA.scala 44:27]
  assign Datamem_4_clock = clock;
  assign Datamem_4_io_wen = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready ? ctrlregs_2 == 32'h4 :
    PE_4_io_datamemio_wen; // @[CGRA.scala 45:31]
  assign Datamem_4_io_waddr = _T_18 ? _T_25 : PE_4_io_datamemio_waddr; // @[CGRA.scala 46:32]
  assign Datamem_4_io_wdata = _T_18 ? io_axistream_s_data : PE_4_io_datamemio_wdata; // @[CGRA.scala 47:32]
  assign Datamem_4_io_ren = PE_4_io_datamemio_ren; // @[CGRA.scala 44:27]
  assign Datamem_4_io_raddr = PE_4_io_datamemio_raddr; // @[CGRA.scala 44:27]
  assign Datamem_5_clock = clock;
  assign Datamem_5_io_wen = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready ? ctrlregs_2 == 32'h5 :
    PE_5_io_datamemio_wen; // @[CGRA.scala 45:31]
  assign Datamem_5_io_waddr = _T_18 ? _T_25 : PE_5_io_datamemio_waddr; // @[CGRA.scala 46:32]
  assign Datamem_5_io_wdata = _T_18 ? io_axistream_s_data : PE_5_io_datamemio_wdata; // @[CGRA.scala 47:32]
  assign Datamem_5_io_ren = PE_5_io_datamemio_ren; // @[CGRA.scala 44:27]
  assign Datamem_5_io_raddr = PE_5_io_datamemio_raddr; // @[CGRA.scala 44:27]
  assign Datamem_6_clock = clock;
  assign Datamem_6_io_wen = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready ? ctrlregs_2 == 32'h6 :
    PE_6_io_datamemio_wen; // @[CGRA.scala 45:31]
  assign Datamem_6_io_waddr = _T_18 ? _T_25 : PE_6_io_datamemio_waddr; // @[CGRA.scala 46:32]
  assign Datamem_6_io_wdata = _T_18 ? io_axistream_s_data : PE_6_io_datamemio_wdata; // @[CGRA.scala 47:32]
  assign Datamem_6_io_ren = PE_6_io_datamemio_ren; // @[CGRA.scala 44:27]
  assign Datamem_6_io_raddr = PE_6_io_datamemio_raddr; // @[CGRA.scala 44:27]
  assign Datamem_7_clock = clock;
  assign Datamem_7_io_wen = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready ? ctrlregs_2 == 32'h7 :
    PE_7_io_datamemio_wen; // @[CGRA.scala 45:31]
  assign Datamem_7_io_waddr = _T_18 ? _T_25 : PE_7_io_datamemio_waddr; // @[CGRA.scala 46:32]
  assign Datamem_7_io_wdata = _T_18 ? io_axistream_s_data : PE_7_io_datamemio_wdata; // @[CGRA.scala 47:32]
  assign Datamem_7_io_ren = PE_7_io_datamemio_ren; // @[CGRA.scala 44:27]
  assign Datamem_7_io_raddr = PE_7_io_datamemio_raddr; // @[CGRA.scala 44:27]
  assign Datamem_8_clock = clock;
  assign Datamem_8_io_wen = ctrlregs_0 == 32'h2 & io_axistream_s_valid & io_axistream_s_ready ? ctrlregs_2 == 32'h8 :
    PE_8_io_datamemio_wen; // @[CGRA.scala 45:31]
  assign Datamem_8_io_waddr = _T_18 ? _T_25 : PE_8_io_datamemio_waddr; // @[CGRA.scala 46:32]
  assign Datamem_8_io_wdata = _T_18 ? io_axistream_s_data : PE_8_io_datamemio_wdata; // @[CGRA.scala 47:32]
  assign Datamem_8_io_ren = PE_8_io_datamemio_ren; // @[CGRA.scala 44:27]
  assign Datamem_8_io_raddr = PE_8_io_datamemio_raddr; // @[CGRA.scala 44:27]
  always @(posedge clock) begin
    if (reset) begin // @[CGRA.scala 18:27]
      ctrlregs_0 <= 32'h0; // @[CGRA.scala 18:27]
    end else if (ctrlregs_axil_wen) begin // @[CGRA.scala 182:30]
      if (3'h0 == currentAddressw[2:0]) begin // @[CGRA.scala 183:35]
        if (2'h0 == statew) begin // @[CGRA.scala 100:18]
          ctrlregs_0 <= 32'h0; // @[CGRA.scala 91:23]
        end else begin
          ctrlregs_0 <= _GEN_17;
        end
      end else begin
        ctrlregs_0 <= _GEN_81;
      end
    end else begin
      ctrlregs_0 <= _GEN_81;
    end
    if (reset) begin // @[CGRA.scala 18:27]
      ctrlregs_1 <= 32'h0; // @[CGRA.scala 18:27]
    end else if (ctrlregs_axil_wen) begin // @[CGRA.scala 182:30]
      if (3'h1 == currentAddressw[2:0]) begin // @[CGRA.scala 183:35]
        if (2'h0 == statew) begin // @[CGRA.scala 100:18]
          ctrlregs_1 <= 32'h0; // @[CGRA.scala 91:23]
        end else begin
          ctrlregs_1 <= _GEN_17;
        end
      end else begin
        ctrlregs_1 <= _GEN_82;
      end
    end else begin
      ctrlregs_1 <= _GEN_82;
    end
    if (reset) begin // @[CGRA.scala 18:27]
      ctrlregs_2 <= 32'h0; // @[CGRA.scala 18:27]
    end else if (ctrlregs_axil_wen) begin // @[CGRA.scala 182:30]
      if (3'h2 == currentAddressw[2:0]) begin // @[CGRA.scala 183:35]
        if (2'h0 == statew) begin // @[CGRA.scala 100:18]
          ctrlregs_2 <= 32'h0; // @[CGRA.scala 91:23]
        end else begin
          ctrlregs_2 <= _GEN_17;
        end
      end else begin
        ctrlregs_2 <= _GEN_83;
      end
    end else begin
      ctrlregs_2 <= _GEN_83;
    end
    if (reset) begin // @[CGRA.scala 18:27]
      ctrlregs_3 <= 32'h0; // @[CGRA.scala 18:27]
    end else if (ctrlregs_axil_wen) begin // @[CGRA.scala 182:30]
      if (3'h3 == currentAddressw[2:0]) begin // @[CGRA.scala 183:35]
        if (2'h0 == statew) begin // @[CGRA.scala 100:18]
          ctrlregs_3 <= 32'h0; // @[CGRA.scala 91:23]
        end else begin
          ctrlregs_3 <= _GEN_17;
        end
      end else begin
        ctrlregs_3 <= _GEN_84;
      end
    end else begin
      ctrlregs_3 <= _GEN_84;
    end
    if (reset) begin // @[CGRA.scala 18:27]
      ctrlregs_4 <= 32'h0; // @[CGRA.scala 18:27]
    end else if (ctrlregs_axil_wen) begin // @[CGRA.scala 182:30]
      if (3'h4 == currentAddressw[2:0]) begin // @[CGRA.scala 183:35]
        if (2'h0 == statew) begin // @[CGRA.scala 100:18]
          ctrlregs_4 <= 32'h0; // @[CGRA.scala 91:23]
        end else begin
          ctrlregs_4 <= _GEN_17;
        end
      end else begin
        ctrlregs_4 <= _GEN_85;
      end
    end else if (_T_20) begin // @[CGRA.scala 184:46]
      ctrlregs_4 <= _T_134; // @[CGRA.scala 185:21]
    end else begin
      ctrlregs_4 <= _GEN_85;
    end
    if (reset) begin // @[CGRA.scala 22:30]
      configwaddr <= 32'h0; // @[CGRA.scala 22:30]
    end else if (configwen) begin // @[CGRA.scala 159:101]
      if (config_finish) begin // @[CGRA.scala 162:23]
        configwaddr <= 32'h0;
      end else if (configwaddr < 32'h6c) begin // @[CGRA.scala 155:25]
        configwaddr <= _configwaddrnext_T_2;
      end else begin
        configwaddr <= 32'h0;
      end
    end
    if (reset) begin // @[CGRA.scala 23:30]
      configPEcnt <= 32'h0; // @[CGRA.scala 23:30]
    end else if (configwen) begin // @[CGRA.scala 159:101]
      if (_config_finish_T) begin // @[CGRA.scala 163:38]
        if (config_finish) begin // @[CGRA.scala 164:25]
          configPEcnt <= 32'h0;
        end else begin
          configPEcnt <= configPEnext;
        end
      end
    end
    if (reset) begin // @[CGRA.scala 83:23]
      statew <= 2'h0; // @[CGRA.scala 83:23]
    end else if (2'h0 == statew) begin // @[CGRA.scala 100:18]
      if (io_axilite_s_awaddr_valid & io_axilite_s_awaddr_ready) begin // @[CGRA.scala 102:66]
        statew <= 2'h1; // @[CGRA.scala 104:16]
      end
    end else if (2'h1 == statew) begin // @[CGRA.scala 100:18]
      if (io_axilite_s_wdata_valid & io_axilite_s_wdata_ready) begin // @[CGRA.scala 108:65]
        statew <= 2'h2; // @[CGRA.scala 111:16]
      end
    end else if (2'h2 == statew) begin // @[CGRA.scala 100:18]
      statew <= _GEN_12;
    end
    if (reset) begin // @[CGRA.scala 84:23]
      stater <= 2'h0; // @[CGRA.scala 84:23]
    end else if (2'h0 == stater) begin // @[CGRA.scala 125:18]
      if (io_axilite_s_araddr_valid & io_axilite_s_araddr_ready) begin // @[CGRA.scala 127:66]
        stater <= 2'h1; // @[CGRA.scala 129:16]
      end
    end else if (2'h1 == stater) begin // @[CGRA.scala 125:18]
      if (io_axilite_s_rdata_valid & io_axilite_s_rdata_ready) begin // @[CGRA.scala 133:65]
        stater <= 2'h0; // @[CGRA.scala 134:16]
      end
    end
    if (reset) begin // @[CGRA.scala 85:32]
      currentAddressr <= 32'h0; // @[CGRA.scala 85:32]
    end else if (2'h0 == stater) begin // @[CGRA.scala 125:18]
      if (io_axilite_s_araddr_valid & io_axilite_s_araddr_ready) begin // @[CGRA.scala 127:66]
        currentAddressr <= {{2'd0}, _currentAddressr_T_1[31:2]}; // @[CGRA.scala 128:24]
      end
    end
    if (reset) begin // @[CGRA.scala 86:32]
      currentAddressw <= 32'h0; // @[CGRA.scala 86:32]
    end else if (2'h0 == statew) begin // @[CGRA.scala 100:18]
      if (io_axilite_s_awaddr_valid & io_axilite_s_awaddr_ready) begin // @[CGRA.scala 102:66]
        currentAddressw <= {{2'd0}, _currentAddressw_T_1[31:2]}; // @[CGRA.scala 103:24]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ctrlregs_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  ctrlregs_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  ctrlregs_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  ctrlregs_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  ctrlregs_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  configwaddr = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  configPEcnt = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  statew = _RAND_7[1:0];
  _RAND_8 = {1{`RANDOM}};
  stater = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  currentAddressr = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  currentAddressw = _RAND_10[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
