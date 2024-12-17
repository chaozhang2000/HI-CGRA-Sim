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
  wire  Ctrlregs_0_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_0_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_0_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_0_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_0_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_1_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_1_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_1_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_1_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_1_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_2_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_2_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_2_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_2_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_2_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_3_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_3_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_3_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_3_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_3_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_4_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_4_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_4_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_4_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_4_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_5_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_5_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_5_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_5_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_5_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_6_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_6_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_6_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_6_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_6_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_7_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_7_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_7_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_7_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_7_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_8_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_8_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_8_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_8_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_8_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_9_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_9_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_9_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_9_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_9_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_10_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_10_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_10_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_10_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_10_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_11_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_11_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_11_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_11_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_11_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_12_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_12_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_12_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_12_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_12_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_13_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_13_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_13_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_13_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_13_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_14_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_14_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_14_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_14_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_14_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_15_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_15_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_15_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_15_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_15_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_16_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_16_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_16_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_16_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_16_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_17_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_17_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_17_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_17_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_17_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_18_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_18_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_18_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_18_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_18_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_19_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_19_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_19_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_19_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_19_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_20_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_20_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_20_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_20_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_20_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_21_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_21_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_21_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_21_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_21_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_22_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_22_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_22_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_22_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_22_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_23_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_23_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_23_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_23_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_23_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_24_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_24_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_24_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_24_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_24_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_25_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_25_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_25_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_25_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_25_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_26_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_26_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_26_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_26_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_26_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_27_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_27_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_27_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_27_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_27_io_outData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_28_clock; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_28_reset; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_28_io_inData; // @[PEctrlregs.scala 15:59]
  wire  Ctrlregs_28_io_enable; // @[PEctrlregs.scala 15:59]
  wire [31:0] Ctrlregs_28_io_outData; // @[PEctrlregs.scala 15:59]
  Register Ctrlregs_0 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_0_clock),
    .reset(Ctrlregs_0_reset),
    .io_inData(Ctrlregs_0_io_inData),
    .io_enable(Ctrlregs_0_io_enable),
    .io_outData(Ctrlregs_0_io_outData)
  );
  Register Ctrlregs_1 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_1_clock),
    .reset(Ctrlregs_1_reset),
    .io_inData(Ctrlregs_1_io_inData),
    .io_enable(Ctrlregs_1_io_enable),
    .io_outData(Ctrlregs_1_io_outData)
  );
  Register Ctrlregs_2 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_2_clock),
    .reset(Ctrlregs_2_reset),
    .io_inData(Ctrlregs_2_io_inData),
    .io_enable(Ctrlregs_2_io_enable),
    .io_outData(Ctrlregs_2_io_outData)
  );
  Register Ctrlregs_3 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_3_clock),
    .reset(Ctrlregs_3_reset),
    .io_inData(Ctrlregs_3_io_inData),
    .io_enable(Ctrlregs_3_io_enable),
    .io_outData(Ctrlregs_3_io_outData)
  );
  Register Ctrlregs_4 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_4_clock),
    .reset(Ctrlregs_4_reset),
    .io_inData(Ctrlregs_4_io_inData),
    .io_enable(Ctrlregs_4_io_enable),
    .io_outData(Ctrlregs_4_io_outData)
  );
  Register Ctrlregs_5 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_5_clock),
    .reset(Ctrlregs_5_reset),
    .io_inData(Ctrlregs_5_io_inData),
    .io_enable(Ctrlregs_5_io_enable),
    .io_outData(Ctrlregs_5_io_outData)
  );
  Register Ctrlregs_6 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_6_clock),
    .reset(Ctrlregs_6_reset),
    .io_inData(Ctrlregs_6_io_inData),
    .io_enable(Ctrlregs_6_io_enable),
    .io_outData(Ctrlregs_6_io_outData)
  );
  Register Ctrlregs_7 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_7_clock),
    .reset(Ctrlregs_7_reset),
    .io_inData(Ctrlregs_7_io_inData),
    .io_enable(Ctrlregs_7_io_enable),
    .io_outData(Ctrlregs_7_io_outData)
  );
  Register Ctrlregs_8 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_8_clock),
    .reset(Ctrlregs_8_reset),
    .io_inData(Ctrlregs_8_io_inData),
    .io_enable(Ctrlregs_8_io_enable),
    .io_outData(Ctrlregs_8_io_outData)
  );
  Register Ctrlregs_9 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_9_clock),
    .reset(Ctrlregs_9_reset),
    .io_inData(Ctrlregs_9_io_inData),
    .io_enable(Ctrlregs_9_io_enable),
    .io_outData(Ctrlregs_9_io_outData)
  );
  Register Ctrlregs_10 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_10_clock),
    .reset(Ctrlregs_10_reset),
    .io_inData(Ctrlregs_10_io_inData),
    .io_enable(Ctrlregs_10_io_enable),
    .io_outData(Ctrlregs_10_io_outData)
  );
  Register Ctrlregs_11 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_11_clock),
    .reset(Ctrlregs_11_reset),
    .io_inData(Ctrlregs_11_io_inData),
    .io_enable(Ctrlregs_11_io_enable),
    .io_outData(Ctrlregs_11_io_outData)
  );
  Register Ctrlregs_12 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_12_clock),
    .reset(Ctrlregs_12_reset),
    .io_inData(Ctrlregs_12_io_inData),
    .io_enable(Ctrlregs_12_io_enable),
    .io_outData(Ctrlregs_12_io_outData)
  );
  Register Ctrlregs_13 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_13_clock),
    .reset(Ctrlregs_13_reset),
    .io_inData(Ctrlregs_13_io_inData),
    .io_enable(Ctrlregs_13_io_enable),
    .io_outData(Ctrlregs_13_io_outData)
  );
  Register Ctrlregs_14 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_14_clock),
    .reset(Ctrlregs_14_reset),
    .io_inData(Ctrlregs_14_io_inData),
    .io_enable(Ctrlregs_14_io_enable),
    .io_outData(Ctrlregs_14_io_outData)
  );
  Register Ctrlregs_15 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_15_clock),
    .reset(Ctrlregs_15_reset),
    .io_inData(Ctrlregs_15_io_inData),
    .io_enable(Ctrlregs_15_io_enable),
    .io_outData(Ctrlregs_15_io_outData)
  );
  Register Ctrlregs_16 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_16_clock),
    .reset(Ctrlregs_16_reset),
    .io_inData(Ctrlregs_16_io_inData),
    .io_enable(Ctrlregs_16_io_enable),
    .io_outData(Ctrlregs_16_io_outData)
  );
  Register Ctrlregs_17 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_17_clock),
    .reset(Ctrlregs_17_reset),
    .io_inData(Ctrlregs_17_io_inData),
    .io_enable(Ctrlregs_17_io_enable),
    .io_outData(Ctrlregs_17_io_outData)
  );
  Register Ctrlregs_18 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_18_clock),
    .reset(Ctrlregs_18_reset),
    .io_inData(Ctrlregs_18_io_inData),
    .io_enable(Ctrlregs_18_io_enable),
    .io_outData(Ctrlregs_18_io_outData)
  );
  Register Ctrlregs_19 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_19_clock),
    .reset(Ctrlregs_19_reset),
    .io_inData(Ctrlregs_19_io_inData),
    .io_enable(Ctrlregs_19_io_enable),
    .io_outData(Ctrlregs_19_io_outData)
  );
  Register Ctrlregs_20 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_20_clock),
    .reset(Ctrlregs_20_reset),
    .io_inData(Ctrlregs_20_io_inData),
    .io_enable(Ctrlregs_20_io_enable),
    .io_outData(Ctrlregs_20_io_outData)
  );
  Register Ctrlregs_21 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_21_clock),
    .reset(Ctrlregs_21_reset),
    .io_inData(Ctrlregs_21_io_inData),
    .io_enable(Ctrlregs_21_io_enable),
    .io_outData(Ctrlregs_21_io_outData)
  );
  Register Ctrlregs_22 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_22_clock),
    .reset(Ctrlregs_22_reset),
    .io_inData(Ctrlregs_22_io_inData),
    .io_enable(Ctrlregs_22_io_enable),
    .io_outData(Ctrlregs_22_io_outData)
  );
  Register Ctrlregs_23 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_23_clock),
    .reset(Ctrlregs_23_reset),
    .io_inData(Ctrlregs_23_io_inData),
    .io_enable(Ctrlregs_23_io_enable),
    .io_outData(Ctrlregs_23_io_outData)
  );
  Register Ctrlregs_24 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_24_clock),
    .reset(Ctrlregs_24_reset),
    .io_inData(Ctrlregs_24_io_inData),
    .io_enable(Ctrlregs_24_io_enable),
    .io_outData(Ctrlregs_24_io_outData)
  );
  Register Ctrlregs_25 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_25_clock),
    .reset(Ctrlregs_25_reset),
    .io_inData(Ctrlregs_25_io_inData),
    .io_enable(Ctrlregs_25_io_enable),
    .io_outData(Ctrlregs_25_io_outData)
  );
  Register Ctrlregs_26 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_26_clock),
    .reset(Ctrlregs_26_reset),
    .io_inData(Ctrlregs_26_io_inData),
    .io_enable(Ctrlregs_26_io_enable),
    .io_outData(Ctrlregs_26_io_outData)
  );
  Register Ctrlregs_27 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_27_clock),
    .reset(Ctrlregs_27_reset),
    .io_inData(Ctrlregs_27_io_inData),
    .io_enable(Ctrlregs_27_io_enable),
    .io_outData(Ctrlregs_27_io_outData)
  );
  Register Ctrlregs_28 ( // @[PEctrlregs.scala 15:59]
    .clock(Ctrlregs_28_clock),
    .reset(Ctrlregs_28_reset),
    .io_inData(Ctrlregs_28_io_inData),
    .io_enable(Ctrlregs_28_io_enable),
    .io_outData(Ctrlregs_28_io_outData)
  );
  assign io_outData_0 = Ctrlregs_0_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_1 = Ctrlregs_1_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_2 = Ctrlregs_2_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_3 = Ctrlregs_3_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_4 = Ctrlregs_4_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_5 = Ctrlregs_5_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_6 = Ctrlregs_6_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_7 = Ctrlregs_7_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_8 = Ctrlregs_8_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_9 = Ctrlregs_9_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_10 = Ctrlregs_10_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_11 = Ctrlregs_11_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_12 = Ctrlregs_12_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_13 = Ctrlregs_13_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_14 = Ctrlregs_14_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_15 = Ctrlregs_15_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_16 = Ctrlregs_16_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_17 = Ctrlregs_17_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_18 = Ctrlregs_18_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_19 = Ctrlregs_19_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_20 = Ctrlregs_20_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_21 = Ctrlregs_21_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_22 = Ctrlregs_22_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_23 = Ctrlregs_23_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_24 = Ctrlregs_24_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_25 = Ctrlregs_25_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_26 = Ctrlregs_26_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_27 = Ctrlregs_27_io_outData; // @[PEctrlregs.scala 18:19]
  assign io_outData_28 = Ctrlregs_28_io_outData; // @[PEctrlregs.scala 18:19]
  assign Ctrlregs_0_clock = clock;
  assign Ctrlregs_0_reset = reset;
  assign Ctrlregs_0_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_0_io_enable = io_configwen & io_configwaddr == 32'h5c; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_1_clock = clock;
  assign Ctrlregs_1_reset = reset;
  assign Ctrlregs_1_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_1_io_enable = io_configwen & io_configwaddr == 32'h5d; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_2_clock = clock;
  assign Ctrlregs_2_reset = reset;
  assign Ctrlregs_2_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_2_io_enable = io_configwen & io_configwaddr == 32'h5e; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_3_clock = clock;
  assign Ctrlregs_3_reset = reset;
  assign Ctrlregs_3_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_3_io_enable = io_configwen & io_configwaddr == 32'h5f; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_4_clock = clock;
  assign Ctrlregs_4_reset = reset;
  assign Ctrlregs_4_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_4_io_enable = io_configwen & io_configwaddr == 32'h60; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_5_clock = clock;
  assign Ctrlregs_5_reset = reset;
  assign Ctrlregs_5_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_5_io_enable = io_configwen & io_configwaddr == 32'h61; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_6_clock = clock;
  assign Ctrlregs_6_reset = reset;
  assign Ctrlregs_6_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_6_io_enable = io_configwen & io_configwaddr == 32'h62; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_7_clock = clock;
  assign Ctrlregs_7_reset = reset;
  assign Ctrlregs_7_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_7_io_enable = io_configwen & io_configwaddr == 32'h63; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_8_clock = clock;
  assign Ctrlregs_8_reset = reset;
  assign Ctrlregs_8_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_8_io_enable = io_configwen & io_configwaddr == 32'h64; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_9_clock = clock;
  assign Ctrlregs_9_reset = reset;
  assign Ctrlregs_9_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_9_io_enable = io_configwen & io_configwaddr == 32'h65; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_10_clock = clock;
  assign Ctrlregs_10_reset = reset;
  assign Ctrlregs_10_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_10_io_enable = io_configwen & io_configwaddr == 32'h66; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_11_clock = clock;
  assign Ctrlregs_11_reset = reset;
  assign Ctrlregs_11_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_11_io_enable = io_configwen & io_configwaddr == 32'h67; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_12_clock = clock;
  assign Ctrlregs_12_reset = reset;
  assign Ctrlregs_12_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_12_io_enable = io_configwen & io_configwaddr == 32'h68; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_13_clock = clock;
  assign Ctrlregs_13_reset = reset;
  assign Ctrlregs_13_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_13_io_enable = io_configwen & io_configwaddr == 32'h69; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_14_clock = clock;
  assign Ctrlregs_14_reset = reset;
  assign Ctrlregs_14_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_14_io_enable = io_configwen & io_configwaddr == 32'h6a; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_15_clock = clock;
  assign Ctrlregs_15_reset = reset;
  assign Ctrlregs_15_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_15_io_enable = io_configwen & io_configwaddr == 32'h6b; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_16_clock = clock;
  assign Ctrlregs_16_reset = reset;
  assign Ctrlregs_16_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_16_io_enable = io_configwen & io_configwaddr == 32'h6c; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_17_clock = clock;
  assign Ctrlregs_17_reset = reset;
  assign Ctrlregs_17_io_inData = io_configwen ? io_configwdata : 32'h0; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_17_io_enable = io_configwen & io_configwaddr == 32'h6d; // @[PEctrlregs.scala 19:52]
  assign Ctrlregs_18_clock = clock;
  assign Ctrlregs_18_reset = reset;
  assign Ctrlregs_18_io_inData = io_configwen ? io_configwdata : io_inData_18; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_18_io_enable = io_wen_18 | io_configwen & io_configwaddr == 32'h6e; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_19_clock = clock;
  assign Ctrlregs_19_reset = reset;
  assign Ctrlregs_19_io_inData = io_configwen ? io_configwdata : io_inData_19; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_19_io_enable = io_wen_19 | io_configwen & io_configwaddr == 32'h6f; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_20_clock = clock;
  assign Ctrlregs_20_reset = reset;
  assign Ctrlregs_20_io_inData = io_configwen ? io_configwdata : io_inData_20; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_20_io_enable = io_wen_20 | io_configwen & io_configwaddr == 32'h70; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_21_clock = clock;
  assign Ctrlregs_21_reset = reset;
  assign Ctrlregs_21_io_inData = io_configwen ? io_configwdata : io_inData_21; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_21_io_enable = io_wen_21 | io_configwen & io_configwaddr == 32'h71; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_22_clock = clock;
  assign Ctrlregs_22_reset = reset;
  assign Ctrlregs_22_io_inData = io_configwen ? io_configwdata : io_inData_22; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_22_io_enable = io_wen_22 | io_configwen & io_configwaddr == 32'h72; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_23_clock = clock;
  assign Ctrlregs_23_reset = reset;
  assign Ctrlregs_23_io_inData = io_configwen ? io_configwdata : io_inData_23; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_23_io_enable = io_wen_23 | io_configwen & io_configwaddr == 32'h73; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_24_clock = clock;
  assign Ctrlregs_24_reset = reset;
  assign Ctrlregs_24_io_inData = io_configwen ? io_configwdata : io_inData_24; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_24_io_enable = io_wen_24 | io_configwen & io_configwaddr == 32'h74; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_25_clock = clock;
  assign Ctrlregs_25_reset = reset;
  assign Ctrlregs_25_io_inData = io_configwen ? io_configwdata : io_inData_25; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_25_io_enable = io_wen_25 | io_configwen & io_configwaddr == 32'h75; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_26_clock = clock;
  assign Ctrlregs_26_reset = reset;
  assign Ctrlregs_26_io_inData = io_configwen ? io_configwdata : io_inData_26; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_26_io_enable = io_wen_26 | io_configwen & io_configwaddr == 32'h76; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_27_clock = clock;
  assign Ctrlregs_27_reset = reset;
  assign Ctrlregs_27_io_inData = io_configwen ? io_configwdata : io_inData_27; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_27_io_enable = io_wen_27 | io_configwen & io_configwaddr == 32'h77; // @[PEctrlregs.scala 19:36]
  assign Ctrlregs_28_clock = clock;
  assign Ctrlregs_28_reset = reset;
  assign Ctrlregs_28_io_inData = io_configwen ? io_configwdata : io_inData_28; // @[PEctrlregs.scala 17:28]
  assign Ctrlregs_28_io_enable = io_wen_28 | io_configwen & io_configwaddr == 32'h78; // @[PEctrlregs.scala 19:36]
endmodule
module Memutil(
  input         clock,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  input  [31:0] io_raddr,
  output [31:0] io_rdata
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mem [0:9]; // @[Memutil.scala 13:47]
  wire  mem_io_rdata_MPORT_en; // @[Memutil.scala 13:47]
  wire [3:0] mem_io_rdata_MPORT_addr; // @[Memutil.scala 13:47]
  wire [31:0] mem_io_rdata_MPORT_data; // @[Memutil.scala 13:47]
  wire [31:0] mem_MPORT_data; // @[Memutil.scala 13:47]
  wire [3:0] mem_MPORT_addr; // @[Memutil.scala 13:47]
  wire  mem_MPORT_mask; // @[Memutil.scala 13:47]
  wire  mem_MPORT_en; // @[Memutil.scala 13:47]
  reg  mem_io_rdata_MPORT_en_pipe_0;
  reg [3:0] mem_io_rdata_MPORT_addr_pipe_0;
  assign mem_io_rdata_MPORT_en = mem_io_rdata_MPORT_en_pipe_0;
  assign mem_io_rdata_MPORT_addr = mem_io_rdata_MPORT_addr_pipe_0;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_io_rdata_MPORT_data = mem[mem_io_rdata_MPORT_addr]; // @[Memutil.scala 13:47]
  `else
  assign mem_io_rdata_MPORT_data = mem_io_rdata_MPORT_addr >= 4'ha ? _RAND_1[31:0] : mem[mem_io_rdata_MPORT_addr]; // @[Memutil.scala 13:47]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign mem_MPORT_data = io_wdata;
  assign mem_MPORT_addr = io_waddr[3:0];
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_wen;
  assign io_rdata = mem_io_rdata_MPORT_data; // @[Memutil.scala 14:16]
  always @(posedge clock) begin
    if (mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[Memutil.scala 13:47]
    end
    mem_io_rdata_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_io_rdata_MPORT_addr_pipe_0 <= io_raddr[3:0];
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 10; initvar = initvar+1)
    mem[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  mem_io_rdata_MPORT_en_pipe_0 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  mem_io_rdata_MPORT_addr_pipe_0 = _RAND_3[3:0];
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
  input  [31:0] io_inst_1,
  input  [31:0] io_inst_2,
  input  [31:0] io_inst_3,
  input  [31:0] io_inst_4,
  input  [31:0] io_inst_5,
  input  [31:0] io_iicnt,
  input  [31:0] io_iinum,
  input  [31:0] io_startcyclecnt,
  input  [31:0] io_startcyclenum,
  output [3:0]  io_alukey,
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
  output        io_linkneedtosendout_0,
  output        io_linkneedtosendout_1,
  output        io_linkneedtosendout_2,
  output        io_linkneedtosendout_3,
  output        io_fuinstskip,
  output        io_linkinstskip_0,
  output        io_linkinstskip_1,
  output        io_linkinstskip_2,
  output        io_linkinstskip_3,
  output        io_canexe
);
  wire [2:0] linkkey = io_inst_0[22:20]; // @[PEDecode.scala 32:40]
  wire [2:0] linkkey_1 = io_inst_0[25:23]; // @[PEDecode.scala 32:40]
  wire [2:0] linkkey_2 = io_inst_0[28:26]; // @[PEDecode.scala 32:40]
  wire [2:0] linkkey_3 = io_inst_0[31:29]; // @[PEDecode.scala 32:40]
  wire [31:0] _io_fuinstskip_T_2 = io_iinum + io_inst_1; // @[PEDecode.scala 43:79]
  wire [31:0] _io_linkinstskip_0_T_2 = io_iinum + io_inst_2; // @[PEDecode.scala 45:124]
  wire [31:0] _io_linkinstskip_1_T_2 = io_iinum + io_inst_3; // @[PEDecode.scala 45:124]
  wire [31:0] _io_linkinstskip_2_T_2 = io_iinum + io_inst_4; // @[PEDecode.scala 45:124]
  wire [31:0] _io_linkinstskip_3_T_2 = io_iinum + io_inst_5; // @[PEDecode.scala 45:124]
  assign io_alukey = io_inst_0[5:2]; // @[PEDecode.scala 27:37]
  assign io_srckey_0 = io_inst_0[13:10]; // @[PEDecode.scala 28:40]
  assign io_srckey_1 = io_inst_0[18:15]; // @[PEDecode.scala 29:40]
  assign io_linkkey_0 = io_inst_0[22:20]; // @[PEDecode.scala 32:40]
  assign io_linkkey_1 = io_inst_0[25:23]; // @[PEDecode.scala 32:40]
  assign io_linkkey_2 = io_inst_0[28:26]; // @[PEDecode.scala 32:40]
  assign io_linkkey_3 = io_inst_0[31:29]; // @[PEDecode.scala 32:40]
  assign io_useconst_0 = io_inst_0[13:10] == 4'h2; // @[PEDecode.scala 37:102]
  assign io_useconst_1 = io_inst_0[18:15] == 4'h2; // @[PEDecode.scala 38:102]
  assign io_haveshiftconst_0 = io_inst_0[0]; // @[PEDecode.scala 40:48]
  assign io_haveshiftconst_1 = io_inst_0[1]; // @[PEDecode.scala 41:48]
  assign io_linkneedtosendout_0 = linkkey != 3'h0; // @[PEDecode.scala 34:41]
  assign io_linkneedtosendout_1 = linkkey_1 != 3'h0; // @[PEDecode.scala 34:41]
  assign io_linkneedtosendout_2 = linkkey_2 != 3'h0; // @[PEDecode.scala 34:41]
  assign io_linkneedtosendout_3 = linkkey_3 != 3'h0; // @[PEDecode.scala 34:41]
  assign io_fuinstskip = io_iicnt < io_inst_1 | io_iicnt >= _io_fuinstskip_T_2; // @[PEDecode.scala 43:55]
  assign io_linkinstskip_0 = io_iicnt < io_inst_2 | io_iicnt >= _io_linkinstskip_0_T_2; // @[PEDecode.scala 45:100]
  assign io_linkinstskip_1 = io_iicnt < io_inst_3 | io_iicnt >= _io_linkinstskip_1_T_2; // @[PEDecode.scala 45:100]
  assign io_linkinstskip_2 = io_iicnt < io_inst_4 | io_iicnt >= _io_linkinstskip_2_T_2; // @[PEDecode.scala 45:100]
  assign io_linkinstskip_3 = io_iicnt < io_inst_5 | io_iicnt >= _io_linkinstskip_3_T_2; // @[PEDecode.scala 45:100]
  assign io_canexe = io_startcyclecnt >= io_startcyclenum; // @[PEDecode.scala 47:33]
endmodule
module Memutil_6(
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
module GenericMux(
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_6,
  input  [31:0] io_in_7,
  input  [31:0] io_in_8,
  input  [31:0] io_in_9,
  input  [3:0]  io_sel,
  output [31:0] io_out
);
  wire [31:0] _io_out_T_3 = 4'h1 == io_sel ? io_in_1 : 32'h0; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_5 = 4'h2 == io_sel ? io_in_2 : _io_out_T_3; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_7 = 4'h3 == io_sel ? io_in_3 : _io_out_T_5; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_9 = 4'h4 == io_sel ? io_in_4 : _io_out_T_7; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_11 = 4'h5 == io_sel ? io_in_5 : _io_out_T_9; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_13 = 4'h6 == io_sel ? io_in_6 : _io_out_T_11; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_15 = 4'h7 == io_sel ? io_in_7 : _io_out_T_13; // @[Mux.scala 81:58]
  wire [31:0] _io_out_T_17 = 4'h8 == io_sel ? io_in_8 : _io_out_T_15; // @[Mux.scala 81:58]
  assign io_out = 4'h9 == io_sel ? io_in_9 : _io_out_T_17; // @[Mux.scala 81:58]
endmodule
module Muxonehot(
  input  [31:0] io_in_1,
  input  [31:0] io_in_2,
  input  [31:0] io_in_3,
  input  [31:0] io_in_4,
  input  [31:0] io_in_5,
  input  [31:0] io_in_7,
  input  [31:0] io_in_8,
  input  [31:0] io_in_9,
  input  [31:0] io_in_10,
  input  [31:0] io_in_11,
  input         io_sel_1,
  input         io_sel_2,
  input         io_sel_3,
  input         io_sel_4,
  input         io_sel_5,
  input         io_sel_6,
  input         io_sel_7,
  input         io_sel_8,
  input         io_sel_9,
  input         io_sel_10,
  output [31:0] io_out
);
  wire [31:0] _io_out_T_12 = io_sel_10 ? io_in_10 : io_in_11; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_13 = io_sel_9 ? io_in_9 : _io_out_T_12; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_14 = io_sel_8 ? io_in_8 : _io_out_T_13; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_15 = io_sel_7 ? io_in_7 : _io_out_T_14; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_16 = io_sel_6 ? 32'h0 : _io_out_T_15; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_17 = io_sel_5 ? io_in_5 : _io_out_T_16; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_18 = io_sel_4 ? io_in_4 : _io_out_T_17; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_19 = io_sel_3 ? io_in_3 : _io_out_T_18; // @[Mux.scala 47:70]
  wire [31:0] _io_out_T_20 = io_sel_2 ? io_in_2 : _io_out_T_19; // @[Mux.scala 47:70]
  assign io_out = io_sel_1 ? io_in_1 : _io_out_T_20; // @[Mux.scala 47:70]
endmodule
module Fu(
  input  [3:0]  io_fn,
  input  [31:0] io_src1,
  input  [31:0] io_src2,
  output        io_result_valid,
  output [31:0] io_result_bits,
  output        io_datamemio_ren,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
);
  wire [31:0] outmux_io_in_1; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_2; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_3; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_4; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_5; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_7; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_8; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_9; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_11; // @[Fu.scala 66:22]
  wire  outmux_io_sel_1; // @[Fu.scala 66:22]
  wire  outmux_io_sel_2; // @[Fu.scala 66:22]
  wire  outmux_io_sel_3; // @[Fu.scala 66:22]
  wire  outmux_io_sel_4; // @[Fu.scala 66:22]
  wire  outmux_io_sel_5; // @[Fu.scala 66:22]
  wire  outmux_io_sel_6; // @[Fu.scala 66:22]
  wire  outmux_io_sel_7; // @[Fu.scala 66:22]
  wire  outmux_io_sel_8; // @[Fu.scala 66:22]
  wire  outmux_io_sel_9; // @[Fu.scala 66:22]
  wire  outmux_io_sel_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_out; // @[Fu.scala 66:22]
  wire [31:0] src1 = io_src1; // @[Fu.scala 59:22]
  wire [31:0] src2 = io_src2; // @[Fu.scala 60:22]
  wire  result_valid_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  wire [31:0] _result_1_T_3 = $signed(io_src1) + $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  wire [15:0] _result_2_T_1 = src1[15:0]; // @[Fu.scala 82:41]
  wire [15:0] _result_2_T_3 = src2[15:0]; // @[Fu.scala 82:59]
  wire [31:0] _result_2_T_5 = $signed(_result_2_T_1) * $signed(_result_2_T_3); // @[Fu.scala 82:67]
  wire  result_valid_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  wire  result_valid_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  wire [31:0] _result_7_T_2 = $signed(io_src1) | $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  wire  result_valid_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  wire [31:0] _result_9_T_3 = $signed(io_src1) - $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
  wire [31:0] _result_10_T_2 = $signed(io_src1) & $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  wire [62:0] _GEN_0 = {{31{src1[31]}},src1}; // @[Fu.scala 100:35]
  wire [62:0] _result_4_T_2 = $signed(_GEN_0) << src2[4:0]; // @[Fu.scala 100:49]
  wire [62:0] _GEN_15 = result_valid_4 ? _result_4_T_2 : 63'h0; // @[Fu.scala 100:26 99:41 63:46]
  wire  result_valid_11 = io_fn == 4'hb; // @[Fu.scala 106:14]
  wire [31:0] _result_11_T_2 = $signed(io_src1) >>> src2[4:0]; // @[Fu.scala 107:59]
  wire  _result_valid_5_T = io_datamemio_peidfm == 3'h0; // @[Fu.scala 118:84]
  wire  result_valid_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h0; // @[Fu.scala 118:60]
  Muxonehot outmux ( // @[Fu.scala 66:22]
    .io_in_1(outmux_io_in_1),
    .io_in_2(outmux_io_in_2),
    .io_in_3(outmux_io_in_3),
    .io_in_4(outmux_io_in_4),
    .io_in_5(outmux_io_in_5),
    .io_in_7(outmux_io_in_7),
    .io_in_8(outmux_io_in_8),
    .io_in_9(outmux_io_in_9),
    .io_in_10(outmux_io_in_10),
    .io_in_11(outmux_io_in_11),
    .io_sel_1(outmux_io_sel_1),
    .io_sel_2(outmux_io_sel_2),
    .io_sel_3(outmux_io_sel_3),
    .io_sel_4(outmux_io_sel_4),
    .io_sel_5(outmux_io_sel_5),
    .io_sel_6(outmux_io_sel_6),
    .io_sel_7(outmux_io_sel_7),
    .io_sel_8(outmux_io_sel_8),
    .io_sel_9(outmux_io_sel_9),
    .io_sel_10(outmux_io_sel_10),
    .io_out(outmux_io_out)
  );
  assign io_result_valid = result_valid_1 | result_valid_2 | result_valid_3 | result_valid_4 | result_valid_5 |
    result_valid_5 | result_valid_7 | result_valid_8 | result_valid_9 | result_valid_10 | result_valid_11; // @[Fu.scala 132:43]
  assign io_result_bits = outmux_io_out; // @[Fu.scala 131:18]
  assign io_datamemio_ren = io_fn == 4'h4; // @[Fu.scala 113:14]
  assign outmux_io_in_1 = result_valid_1 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_2 = result_valid_2 ? _result_2_T_5 : 32'h0; // @[Fu.scala 80:52 82:23 63:46]
  assign outmux_io_in_3 = result_valid_3 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_4 = _GEN_15[31:0]; // @[Fu.scala 61:19]
  assign outmux_io_in_5 = io_datamemio_rdata; // @[Fu.scala 61:19 117:27]
  assign outmux_io_in_7 = result_valid_7 ? _result_7_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_8 = result_valid_8 ? io_src1 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_9 = result_valid_9 ? _result_9_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_10 = result_valid_10 ? _result_10_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_11 = result_valid_11 ? _result_11_T_2 : 32'h0; // @[Fu.scala 106:42 107:27 63:46]
  assign outmux_io_sel_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  assign outmux_io_sel_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  assign outmux_io_sel_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  assign outmux_io_sel_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  assign outmux_io_sel_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h0; // @[Fu.scala 118:60]
  assign outmux_io_sel_6 = io_datamemio_memoptvalid & _result_valid_5_T; // @[Fu.scala 127:61]
  assign outmux_io_sel_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  assign outmux_io_sel_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  assign outmux_io_sel_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  assign outmux_io_sel_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
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
  input  [31:0] io_inLinks_1,
  input  [31:0] io_inLinks_2,
  output        io_outLinks_0_valid,
  output [31:0] io_outLinks_0_bits,
  output        io_outLinks_3_valid,
  output [31:0] io_outLinks_3_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_ren,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
`endif // RANDOMIZE_REG_INIT
  wire  PEctrlregs_clock; // @[PE.scala 19:26]
  wire  PEctrlregs_reset; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 19:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 19:26]
  wire  Fureg_clock; // @[PE.scala 20:21]
  wire  Fureg_reset; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 20:21]
  wire  Fureg_io_enable; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 20:21]
  wire  Instmems_0_clock; // @[PE.scala 22:11]
  wire  Instmems_0_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_1_clock; // @[PE.scala 22:11]
  wire  Instmems_1_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_2_clock; // @[PE.scala 22:11]
  wire  Instmems_2_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_3_clock; // @[PE.scala 22:11]
  wire  Instmems_3_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_4_clock; // @[PE.scala 22:11]
  wire  Instmems_4_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_5_clock; // @[PE.scala 22:11]
  wire  Instmems_5_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 22:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_1; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_alukey; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_3; // @[PE.scala 24:23]
  wire  Decoder_io_fuinstskip; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 24:23]
  wire  Decoder_io_canexe; // @[PE.scala 24:23]
  wire  Constmems_0_clock; // @[PE.scala 26:11]
  wire  Constmems_0_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 26:11]
  wire  Constmems_1_clock; // @[PE.scala 26:11]
  wire  Constmems_1_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 26:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 29:11]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 31:48]
  wire [3:0] Alu_io_fn; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 32:19]
  wire  Alu_io_result_valid; // @[PE.scala 32:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 32:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 32:19]
  wire [2:0] Alu_io_datamemio_peidfm; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 32:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 33:24]
  wire  _T = ~io_run; // @[PE.scala 55:48]
  reg [3:0] reg_; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_0; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_0; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_2; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_3; // @[Pipeline.scala 27:22]
  reg  reg_4_0; // @[Pipeline.scala 27:22]
  reg  reg_4_1; // @[Pipeline.scala 27:22]
  reg  reg_5_0; // @[Pipeline.scala 27:22]
  reg  reg_5_3; // @[Pipeline.scala 27:22]
  reg  reg_6; // @[Pipeline.scala 27:22]
  reg  reg_7_0; // @[Pipeline.scala 27:22]
  reg  reg_7_3; // @[Pipeline.scala 27:22]
  reg  reg_8; // @[Pipeline.scala 27:22]
  reg [31:0] reg_9; // @[Pipeline.scala 27:22]
  reg [31:0] reg_10; // @[Pipeline.scala 27:22]
  reg [31:0] reg_11; // @[Pipeline.scala 27:22]
  reg [31:0] reg_12; // @[Pipeline.scala 27:22]
  reg [31:0] reg_13; // @[Pipeline.scala 27:22]
  reg [31:0] reg_14; // @[Pipeline.scala 27:22]
  reg [31:0] reg_15; // @[Pipeline.scala 27:22]
  reg [31:0] reg_16; // @[Pipeline.scala 27:22]
  wire [31:0] _T_18 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_23 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_24 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_26 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_31 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_32 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_34 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_39 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_40 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_42 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_47 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_48 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_50 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_55 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_56 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  wire  _T_59 = PEctrlregs_io_outData_19 == _T_18; // @[PE.scala 84:58]
  wire [31:0] _T_61 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 84:100]
  wire  _T_65 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 85:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 88:51]
  wire  _Kinit_T_16 = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(
    PEctrlregs_io_outData_17) : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 88:8]
  wire  Jchange = _Kinit_T_16 & _T_59; // @[PE.scala 88:162]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 92:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 88:51]
  wire  _Jinit_T_16 = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(
    PEctrlregs_io_outData_16) : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 88:8]
  wire  Ichange = _Jinit_T_16 & Jchange; // @[PE.scala 88:162]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 96:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 88:51]
  wire  _Iinit_T_16 = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(
    PEctrlregs_io_outData_15) : $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 88:8]
  wire  Iinit = _Iinit_T_16 & Ichange; // @[PE.scala 88:162]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 100:55]
  wire [31:0] _T_68 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 102:125]
  wire  regscanupdatestate = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  wire  canupdatestatepipe = reg_8 & io_run & reg_16 == 32'h0; // @[PE.scala 104:48]
  wire  _T_70 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  wire  _T_71 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  wire  _T_72 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  wire  _T_73 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(reg_14); // @[PE.scala 182:95]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(reg_15); // @[PE.scala 183:95]
  PEctrlregs PEctrlregs ( // @[PE.scala 19:26]
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
  Register Fureg ( // @[PE.scala 20:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 22:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 22:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 22:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 22:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 22:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 22:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 24:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_1(Decoder_io_inst_1),
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
    .io_linkneedtosendout_0(Decoder_io_linkneedtosendout_0),
    .io_linkneedtosendout_1(Decoder_io_linkneedtosendout_1),
    .io_linkneedtosendout_2(Decoder_io_linkneedtosendout_2),
    .io_linkneedtosendout_3(Decoder_io_linkneedtosendout_3),
    .io_fuinstskip(Decoder_io_fuinstskip),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil_6 Constmems_0 ( // @[PE.scala 26:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil_6 Constmems_1 ( // @[PE.scala 26:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil_6 Shiftconstmems_0 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil_6 Shiftconstmems_1 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_in_9(Srcmuxs_0_io_in_9),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_in_9(Srcmuxs_1_io_in_9),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu Alu ( // @[PE.scala 32:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_peidfm(Alu_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 33:24]
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
  assign io_outLinks_0_valid = canupdatestatepipe & reg_5_0 & ~reg_7_0; // @[PE.scala 194:65]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 193:15]
  assign io_outLinks_3_valid = canupdatestatepipe & reg_5_3 & ~reg_7_3; // @[PE.scala 194:65]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 193:15]
  assign io_finish = reg_16[0]; // @[PE.scala 209:27]
  assign io_datamemio_ren = Alu_io_datamemio_ren & canupdatestatepipe & ~reg_6; // @[PE.scala 206:65]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_68 : PEctrlregs_io_outData_18
    ; // @[PE.scala 102:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_18 ? _T_61 : PEctrlregs_io_outData_20; // @[PE.scala 84:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 92:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 96:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 100:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_65}; // @[PE.scala 148:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 149:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_21 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  assign PEctrlregs_io_wen_22 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  assign PEctrlregs_io_wen_23 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  assign PEctrlregs_io_wen_24 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  assign PEctrlregs_io_wen_25 = regscanupdatestate & _T_59; // @[PE.scala 112:47]
  assign PEctrlregs_io_wen_26 = regscanupdatestate & Jchange; // @[PE.scala 113:47]
  assign PEctrlregs_io_wen_27 = regscanupdatestate & Ichange; // @[PE.scala 114:47]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 123:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 122:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 124:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 118:19]
  assign Fureg_io_enable = canupdatestatepipe & Alu_io_result_valid; // @[PE.scala 119:41]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'ha; // @[PE.scala 134:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 133:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_0_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'ha & io_waddr < 32'h14; // @[PE.scala 134:82]
  assign Instmems_1_io_waddr = io_waddr - 32'ha; // @[PE.scala 133:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_1_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h14 & io_waddr < 32'h1e; // @[PE.scala 134:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h14; // @[PE.scala 133:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_2_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h1e & io_waddr < 32'h28; // @[PE.scala 134:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h1e; // @[PE.scala 133:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_3_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h32; // @[PE.scala 134:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h28; // @[PE.scala 133:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_4_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h32 & io_waddr < 32'h3c; // @[PE.scala 134:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h32; // @[PE.scala 133:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_5_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_1 = Instmems_1_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 140:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 141:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 142:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 143:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h3c & io_waddr < 32'h44; // @[PE.scala 157:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h3c; // @[PE.scala 156:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_0_io_raddr = _T_70 ? _T_32 : PEctrlregs_io_outData_21; // @[PE.scala 153:27]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h44 & io_waddr < 32'h4c; // @[PE.scala 157:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h44; // @[PE.scala 156:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_1_io_raddr = _T_71 ? _T_40 : PEctrlregs_io_outData_22; // @[PE.scala 154:27]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h4c & io_waddr < 32'h54; // @[PE.scala 166:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h4c; // @[PE.scala 165:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_0_io_raddr = _T_72 ? _T_48 : PEctrlregs_io_outData_23; // @[PE.scala 162:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h54 & io_waddr < 32'h5c; // @[PE.scala 166:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h54; // @[PE.scala 165:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_1_io_raddr = _T_73 ? _T_56 : PEctrlregs_io_outData_24; // @[PE.scala 163:35]
  assign Srcmuxs_0_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_0_io_in_2 = reg_12; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_3 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_1; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_6 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_sel = reg_1_0; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_1_io_in_2 = reg_13; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_3 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_1; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_6 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_sel = reg_1_1; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Alu_io_fn = reg_; // @[PE.scala 39:23 Pipeline.scala 33:11]
  assign Alu_io_src1 = reg_4_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 182:19]
  assign Alu_io_src2 = reg_4_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 183:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 205:16]
  assign Alu_io_datamemio_peidfm = io_datamemio_peidfm; // @[PE.scala 205:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 205:16]
  assign Crossbar_io_in_1 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 188:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 188:68]
  assign Crossbar_io_in_4 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 189:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 190:20]
  assign Crossbar_io_select_0 = reg_2_0; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_1 = reg_2_1; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_2 = reg_2_2; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_3 = reg_2_3; // @[PE.scala 41:25 Pipeline.scala 33:11]
  always @(posedge clock) begin
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_ <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_ <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_ <= Decoder_io_alukey; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_0 <= Decoder_io_srckey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_1 <= Decoder_io_srckey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_0 <= Decoder_io_linkkey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_1 <= Decoder_io_linkkey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_2 <= Decoder_io_linkkey_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_3 <= Decoder_io_linkkey_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_0 <= Decoder_io_haveshiftconst_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_1 <= Decoder_io_haveshiftconst_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_0 <= Decoder_io_linkneedtosendout_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_3 <= Decoder_io_linkneedtosendout_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_6 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_6 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_6 <= Decoder_io_fuinstskip; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_0 <= Decoder_io_linkinstskip_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_3 <= Decoder_io_linkinstskip_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_8 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_8 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_8 <= Decoder_io_canexe; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_9 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_9 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_9 <= PEctrlregs_io_outData_25; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_10 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_10 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_10 <= PEctrlregs_io_outData_26; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_11 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_11 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_11 <= PEctrlregs_io_outData_27; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_12 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_12 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_12 <= Constmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_13 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_13 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_13 <= Constmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_14 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_14 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_14 <= Shiftconstmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_15 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_15 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_15 <= Shiftconstmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_16 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_16 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_16 <= PEctrlregs_io_outData_28; // @[Pipeline.scala 31:9]
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
  reg_ = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  reg_1_0 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  reg_1_1 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  reg_2_0 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reg_2_1 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reg_2_2 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  reg_2_3 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  reg_4_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  reg_5_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_5_3 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_6 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_7_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_7_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_8 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  reg_9 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  reg_10 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  reg_11 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  reg_12 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  reg_13 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  reg_14 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_15 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_16 = _RAND_22[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Fu_1(
  input  [3:0]  io_fn,
  input  [31:0] io_src1,
  input  [31:0] io_src2,
  output        io_result_valid,
  output [31:0] io_result_bits,
  output        io_datamemio_ren,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
);
  wire [31:0] outmux_io_in_1; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_2; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_3; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_4; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_5; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_7; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_8; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_9; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_11; // @[Fu.scala 66:22]
  wire  outmux_io_sel_1; // @[Fu.scala 66:22]
  wire  outmux_io_sel_2; // @[Fu.scala 66:22]
  wire  outmux_io_sel_3; // @[Fu.scala 66:22]
  wire  outmux_io_sel_4; // @[Fu.scala 66:22]
  wire  outmux_io_sel_5; // @[Fu.scala 66:22]
  wire  outmux_io_sel_6; // @[Fu.scala 66:22]
  wire  outmux_io_sel_7; // @[Fu.scala 66:22]
  wire  outmux_io_sel_8; // @[Fu.scala 66:22]
  wire  outmux_io_sel_9; // @[Fu.scala 66:22]
  wire  outmux_io_sel_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_out; // @[Fu.scala 66:22]
  wire [31:0] src1 = io_src1; // @[Fu.scala 59:22]
  wire [31:0] src2 = io_src2; // @[Fu.scala 60:22]
  wire  result_valid_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  wire [31:0] _result_1_T_3 = $signed(io_src1) + $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  wire [15:0] _result_2_T_1 = src1[15:0]; // @[Fu.scala 82:41]
  wire [15:0] _result_2_T_3 = src2[15:0]; // @[Fu.scala 82:59]
  wire [31:0] _result_2_T_5 = $signed(_result_2_T_1) * $signed(_result_2_T_3); // @[Fu.scala 82:67]
  wire  result_valid_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  wire  result_valid_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  wire [31:0] _result_7_T_2 = $signed(io_src1) | $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  wire  result_valid_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  wire [31:0] _result_9_T_3 = $signed(io_src1) - $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
  wire [31:0] _result_10_T_2 = $signed(io_src1) & $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  wire [62:0] _GEN_0 = {{31{src1[31]}},src1}; // @[Fu.scala 100:35]
  wire [62:0] _result_4_T_2 = $signed(_GEN_0) << src2[4:0]; // @[Fu.scala 100:49]
  wire [62:0] _GEN_15 = result_valid_4 ? _result_4_T_2 : 63'h0; // @[Fu.scala 100:26 99:41 63:46]
  wire  result_valid_11 = io_fn == 4'hb; // @[Fu.scala 106:14]
  wire [31:0] _result_11_T_2 = $signed(io_src1) >>> src2[4:0]; // @[Fu.scala 107:59]
  wire  _result_valid_5_T = io_datamemio_peidfm == 3'h1; // @[Fu.scala 118:84]
  wire  result_valid_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h1; // @[Fu.scala 118:60]
  Muxonehot outmux ( // @[Fu.scala 66:22]
    .io_in_1(outmux_io_in_1),
    .io_in_2(outmux_io_in_2),
    .io_in_3(outmux_io_in_3),
    .io_in_4(outmux_io_in_4),
    .io_in_5(outmux_io_in_5),
    .io_in_7(outmux_io_in_7),
    .io_in_8(outmux_io_in_8),
    .io_in_9(outmux_io_in_9),
    .io_in_10(outmux_io_in_10),
    .io_in_11(outmux_io_in_11),
    .io_sel_1(outmux_io_sel_1),
    .io_sel_2(outmux_io_sel_2),
    .io_sel_3(outmux_io_sel_3),
    .io_sel_4(outmux_io_sel_4),
    .io_sel_5(outmux_io_sel_5),
    .io_sel_6(outmux_io_sel_6),
    .io_sel_7(outmux_io_sel_7),
    .io_sel_8(outmux_io_sel_8),
    .io_sel_9(outmux_io_sel_9),
    .io_sel_10(outmux_io_sel_10),
    .io_out(outmux_io_out)
  );
  assign io_result_valid = result_valid_1 | result_valid_2 | result_valid_3 | result_valid_4 | result_valid_5 |
    result_valid_5 | result_valid_7 | result_valid_8 | result_valid_9 | result_valid_10 | result_valid_11; // @[Fu.scala 132:43]
  assign io_result_bits = outmux_io_out; // @[Fu.scala 131:18]
  assign io_datamemio_ren = io_fn == 4'h4; // @[Fu.scala 113:14]
  assign outmux_io_in_1 = result_valid_1 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_2 = result_valid_2 ? _result_2_T_5 : 32'h0; // @[Fu.scala 80:52 82:23 63:46]
  assign outmux_io_in_3 = result_valid_3 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_4 = _GEN_15[31:0]; // @[Fu.scala 61:19]
  assign outmux_io_in_5 = io_datamemio_rdata; // @[Fu.scala 61:19 117:27]
  assign outmux_io_in_7 = result_valid_7 ? _result_7_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_8 = result_valid_8 ? io_src1 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_9 = result_valid_9 ? _result_9_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_10 = result_valid_10 ? _result_10_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_11 = result_valid_11 ? _result_11_T_2 : 32'h0; // @[Fu.scala 106:42 107:27 63:46]
  assign outmux_io_sel_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  assign outmux_io_sel_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  assign outmux_io_sel_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  assign outmux_io_sel_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  assign outmux_io_sel_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h1; // @[Fu.scala 118:60]
  assign outmux_io_sel_6 = io_datamemio_memoptvalid & _result_valid_5_T; // @[Fu.scala 127:61]
  assign outmux_io_sel_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  assign outmux_io_sel_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  assign outmux_io_sel_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  assign outmux_io_sel_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
endmodule
module PE_1(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_1,
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
  output        io_datamemio_ren,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
`endif // RANDOMIZE_REG_INIT
  wire  PEctrlregs_clock; // @[PE.scala 19:26]
  wire  PEctrlregs_reset; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 19:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 19:26]
  wire  Fureg_clock; // @[PE.scala 20:21]
  wire  Fureg_reset; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 20:21]
  wire  Fureg_io_enable; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 20:21]
  wire  Instmems_0_clock; // @[PE.scala 22:11]
  wire  Instmems_0_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_1_clock; // @[PE.scala 22:11]
  wire  Instmems_1_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_2_clock; // @[PE.scala 22:11]
  wire  Instmems_2_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_3_clock; // @[PE.scala 22:11]
  wire  Instmems_3_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_4_clock; // @[PE.scala 22:11]
  wire  Instmems_4_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_5_clock; // @[PE.scala 22:11]
  wire  Instmems_5_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 22:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_1; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_alukey; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_3; // @[PE.scala 24:23]
  wire  Decoder_io_fuinstskip; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 24:23]
  wire  Decoder_io_canexe; // @[PE.scala 24:23]
  wire  Constmems_0_clock; // @[PE.scala 26:11]
  wire  Constmems_0_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 26:11]
  wire  Constmems_1_clock; // @[PE.scala 26:11]
  wire  Constmems_1_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 26:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 29:11]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 31:48]
  wire [3:0] Alu_io_fn; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 32:19]
  wire  Alu_io_result_valid; // @[PE.scala 32:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 32:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 32:19]
  wire [2:0] Alu_io_datamemio_peidfm; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 32:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 33:24]
  wire  _T = ~io_run; // @[PE.scala 55:48]
  reg [3:0] reg_; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_0; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_0; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_2; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_3; // @[Pipeline.scala 27:22]
  reg  reg_4_0; // @[Pipeline.scala 27:22]
  reg  reg_4_1; // @[Pipeline.scala 27:22]
  reg  reg_5_0; // @[Pipeline.scala 27:22]
  reg  reg_5_2; // @[Pipeline.scala 27:22]
  reg  reg_5_3; // @[Pipeline.scala 27:22]
  reg  reg_6; // @[Pipeline.scala 27:22]
  reg  reg_7_0; // @[Pipeline.scala 27:22]
  reg  reg_7_2; // @[Pipeline.scala 27:22]
  reg  reg_7_3; // @[Pipeline.scala 27:22]
  reg  reg_8; // @[Pipeline.scala 27:22]
  reg [31:0] reg_9; // @[Pipeline.scala 27:22]
  reg [31:0] reg_10; // @[Pipeline.scala 27:22]
  reg [31:0] reg_11; // @[Pipeline.scala 27:22]
  reg [31:0] reg_12; // @[Pipeline.scala 27:22]
  reg [31:0] reg_13; // @[Pipeline.scala 27:22]
  reg [31:0] reg_14; // @[Pipeline.scala 27:22]
  reg [31:0] reg_15; // @[Pipeline.scala 27:22]
  reg [31:0] reg_16; // @[Pipeline.scala 27:22]
  wire [31:0] _T_18 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_23 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_24 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_26 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_31 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_32 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_34 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_39 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_40 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_42 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_47 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_48 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_50 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_55 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_56 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  wire  _T_59 = PEctrlregs_io_outData_19 == _T_18; // @[PE.scala 84:58]
  wire [31:0] _T_61 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 84:100]
  wire  _T_65 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 85:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 88:51]
  wire  _Kinit_T_16 = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(
    PEctrlregs_io_outData_17) : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 88:8]
  wire  Jchange = _Kinit_T_16 & _T_59; // @[PE.scala 88:162]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 92:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 88:51]
  wire  _Jinit_T_16 = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(
    PEctrlregs_io_outData_16) : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 88:8]
  wire  Ichange = _Jinit_T_16 & Jchange; // @[PE.scala 88:162]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 96:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 88:51]
  wire  _Iinit_T_16 = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(
    PEctrlregs_io_outData_15) : $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 88:8]
  wire  Iinit = _Iinit_T_16 & Ichange; // @[PE.scala 88:162]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 100:55]
  wire [31:0] _T_68 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 102:125]
  wire  regscanupdatestate = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  wire  canupdatestatepipe = reg_8 & io_run & reg_16 == 32'h0; // @[PE.scala 104:48]
  wire  _T_70 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  wire  _T_71 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  wire  _T_72 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  wire  _T_73 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(reg_14); // @[PE.scala 182:95]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(reg_15); // @[PE.scala 183:95]
  PEctrlregs PEctrlregs ( // @[PE.scala 19:26]
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
  Register Fureg ( // @[PE.scala 20:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 22:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 22:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 22:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 22:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 22:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 22:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 24:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_1(Decoder_io_inst_1),
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
    .io_linkneedtosendout_0(Decoder_io_linkneedtosendout_0),
    .io_linkneedtosendout_1(Decoder_io_linkneedtosendout_1),
    .io_linkneedtosendout_2(Decoder_io_linkneedtosendout_2),
    .io_linkneedtosendout_3(Decoder_io_linkneedtosendout_3),
    .io_fuinstskip(Decoder_io_fuinstskip),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil_6 Constmems_0 ( // @[PE.scala 26:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil_6 Constmems_1 ( // @[PE.scala 26:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil_6 Shiftconstmems_0 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil_6 Shiftconstmems_1 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_in_9(Srcmuxs_0_io_in_9),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_in_9(Srcmuxs_1_io_in_9),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu_1 Alu ( // @[PE.scala 32:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_peidfm(Alu_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 33:24]
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
  assign io_outLinks_0_valid = canupdatestatepipe & reg_5_0 & ~reg_7_0; // @[PE.scala 194:65]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 193:15]
  assign io_outLinks_2_valid = canupdatestatepipe & reg_5_2 & ~reg_7_2; // @[PE.scala 194:65]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 193:15]
  assign io_outLinks_3_valid = canupdatestatepipe & reg_5_3 & ~reg_7_3; // @[PE.scala 194:65]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 193:15]
  assign io_finish = reg_16[0]; // @[PE.scala 209:27]
  assign io_datamemio_ren = Alu_io_datamemio_ren & canupdatestatepipe & ~reg_6; // @[PE.scala 206:65]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_68 : PEctrlregs_io_outData_18
    ; // @[PE.scala 102:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_18 ? _T_61 : PEctrlregs_io_outData_20; // @[PE.scala 84:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 92:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 96:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 100:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_65}; // @[PE.scala 148:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 149:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_21 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  assign PEctrlregs_io_wen_22 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  assign PEctrlregs_io_wen_23 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  assign PEctrlregs_io_wen_24 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  assign PEctrlregs_io_wen_25 = regscanupdatestate & _T_59; // @[PE.scala 112:47]
  assign PEctrlregs_io_wen_26 = regscanupdatestate & Jchange; // @[PE.scala 113:47]
  assign PEctrlregs_io_wen_27 = regscanupdatestate & Ichange; // @[PE.scala 114:47]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 123:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 122:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 124:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 118:19]
  assign Fureg_io_enable = canupdatestatepipe & Alu_io_result_valid; // @[PE.scala 119:41]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'ha; // @[PE.scala 134:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 133:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_0_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'ha & io_waddr < 32'h14; // @[PE.scala 134:82]
  assign Instmems_1_io_waddr = io_waddr - 32'ha; // @[PE.scala 133:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_1_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h14 & io_waddr < 32'h1e; // @[PE.scala 134:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h14; // @[PE.scala 133:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_2_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h1e & io_waddr < 32'h28; // @[PE.scala 134:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h1e; // @[PE.scala 133:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_3_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h32; // @[PE.scala 134:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h28; // @[PE.scala 133:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_4_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h32 & io_waddr < 32'h3c; // @[PE.scala 134:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h32; // @[PE.scala 133:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_5_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_1 = Instmems_1_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 140:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 141:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 142:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 143:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h3c & io_waddr < 32'h44; // @[PE.scala 157:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h3c; // @[PE.scala 156:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_0_io_raddr = _T_70 ? _T_32 : PEctrlregs_io_outData_21; // @[PE.scala 153:27]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h44 & io_waddr < 32'h4c; // @[PE.scala 157:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h44; // @[PE.scala 156:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_1_io_raddr = _T_71 ? _T_40 : PEctrlregs_io_outData_22; // @[PE.scala 154:27]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h4c & io_waddr < 32'h54; // @[PE.scala 166:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h4c; // @[PE.scala 165:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_0_io_raddr = _T_72 ? _T_48 : PEctrlregs_io_outData_23; // @[PE.scala 162:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h54 & io_waddr < 32'h5c; // @[PE.scala 166:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h54; // @[PE.scala 165:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_1_io_raddr = _T_73 ? _T_56 : PEctrlregs_io_outData_24; // @[PE.scala 163:35]
  assign Srcmuxs_0_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_0_io_in_2 = reg_12; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_3 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_1; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_sel = reg_1_0; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_1_io_in_2 = reg_13; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_3 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_1; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_sel = reg_1_1; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Alu_io_fn = reg_; // @[PE.scala 39:23 Pipeline.scala 33:11]
  assign Alu_io_src1 = reg_4_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 182:19]
  assign Alu_io_src2 = reg_4_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 183:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 205:16]
  assign Alu_io_datamemio_peidfm = io_datamemio_peidfm; // @[PE.scala 205:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 205:16]
  assign Crossbar_io_in_1 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 188:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 188:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 188:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 189:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 190:20]
  assign Crossbar_io_select_0 = reg_2_0; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_1 = reg_2_1; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_2 = reg_2_2; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_3 = reg_2_3; // @[PE.scala 41:25 Pipeline.scala 33:11]
  always @(posedge clock) begin
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_ <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_ <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_ <= Decoder_io_alukey; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_0 <= Decoder_io_srckey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_1 <= Decoder_io_srckey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_0 <= Decoder_io_linkkey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_1 <= Decoder_io_linkkey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_2 <= Decoder_io_linkkey_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_3 <= Decoder_io_linkkey_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_0 <= Decoder_io_haveshiftconst_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_1 <= Decoder_io_haveshiftconst_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_0 <= Decoder_io_linkneedtosendout_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_2 <= Decoder_io_linkneedtosendout_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_3 <= Decoder_io_linkneedtosendout_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_6 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_6 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_6 <= Decoder_io_fuinstskip; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_0 <= Decoder_io_linkinstskip_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_2 <= Decoder_io_linkinstskip_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_3 <= Decoder_io_linkinstskip_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_8 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_8 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_8 <= Decoder_io_canexe; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_9 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_9 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_9 <= PEctrlregs_io_outData_25; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_10 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_10 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_10 <= PEctrlregs_io_outData_26; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_11 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_11 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_11 <= PEctrlregs_io_outData_27; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_12 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_12 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_12 <= Constmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_13 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_13 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_13 <= Constmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_14 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_14 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_14 <= Shiftconstmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_15 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_15 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_15 <= Shiftconstmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_16 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_16 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_16 <= PEctrlregs_io_outData_28; // @[Pipeline.scala 31:9]
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
  reg_ = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  reg_1_0 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  reg_1_1 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  reg_2_0 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reg_2_1 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reg_2_2 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  reg_2_3 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  reg_4_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  reg_5_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_5_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_5_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_6 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_7_0 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_7_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  reg_7_3 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  reg_8 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  reg_9 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  reg_10 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  reg_11 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  reg_12 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_13 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_14 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  reg_15 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  reg_16 = _RAND_24[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Fu_2(
  input  [3:0]  io_fn,
  input  [31:0] io_src1,
  input  [31:0] io_src2,
  output        io_result_valid,
  output [31:0] io_result_bits,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
);
  wire [31:0] outmux_io_in_1; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_2; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_3; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_4; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_5; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_7; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_8; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_9; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_11; // @[Fu.scala 66:22]
  wire  outmux_io_sel_1; // @[Fu.scala 66:22]
  wire  outmux_io_sel_2; // @[Fu.scala 66:22]
  wire  outmux_io_sel_3; // @[Fu.scala 66:22]
  wire  outmux_io_sel_4; // @[Fu.scala 66:22]
  wire  outmux_io_sel_5; // @[Fu.scala 66:22]
  wire  outmux_io_sel_6; // @[Fu.scala 66:22]
  wire  outmux_io_sel_7; // @[Fu.scala 66:22]
  wire  outmux_io_sel_8; // @[Fu.scala 66:22]
  wire  outmux_io_sel_9; // @[Fu.scala 66:22]
  wire  outmux_io_sel_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_out; // @[Fu.scala 66:22]
  wire [31:0] src1 = io_src1; // @[Fu.scala 59:22]
  wire [31:0] src2 = io_src2; // @[Fu.scala 60:22]
  wire  result_valid_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  wire [31:0] _result_1_T_3 = $signed(io_src1) + $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  wire [15:0] _result_2_T_1 = src1[15:0]; // @[Fu.scala 82:41]
  wire [15:0] _result_2_T_3 = src2[15:0]; // @[Fu.scala 82:59]
  wire [31:0] _result_2_T_5 = $signed(_result_2_T_1) * $signed(_result_2_T_3); // @[Fu.scala 82:67]
  wire  result_valid_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  wire  result_valid_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  wire [31:0] _result_7_T_2 = $signed(io_src1) | $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  wire  result_valid_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  wire [31:0] _result_9_T_3 = $signed(io_src1) - $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
  wire [31:0] _result_10_T_2 = $signed(io_src1) & $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  wire [62:0] _GEN_0 = {{31{src1[31]}},src1}; // @[Fu.scala 100:35]
  wire [62:0] _result_4_T_2 = $signed(_GEN_0) << src2[4:0]; // @[Fu.scala 100:49]
  wire [62:0] _GEN_15 = result_valid_4 ? _result_4_T_2 : 63'h0; // @[Fu.scala 100:26 99:41 63:46]
  wire  result_valid_11 = io_fn == 4'hb; // @[Fu.scala 106:14]
  wire [31:0] _result_11_T_2 = $signed(io_src1) >>> src2[4:0]; // @[Fu.scala 107:59]
  wire  _result_valid_5_T = io_datamemio_peidfm == 3'h2; // @[Fu.scala 118:84]
  wire  result_valid_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h2; // @[Fu.scala 118:60]
  Muxonehot outmux ( // @[Fu.scala 66:22]
    .io_in_1(outmux_io_in_1),
    .io_in_2(outmux_io_in_2),
    .io_in_3(outmux_io_in_3),
    .io_in_4(outmux_io_in_4),
    .io_in_5(outmux_io_in_5),
    .io_in_7(outmux_io_in_7),
    .io_in_8(outmux_io_in_8),
    .io_in_9(outmux_io_in_9),
    .io_in_10(outmux_io_in_10),
    .io_in_11(outmux_io_in_11),
    .io_sel_1(outmux_io_sel_1),
    .io_sel_2(outmux_io_sel_2),
    .io_sel_3(outmux_io_sel_3),
    .io_sel_4(outmux_io_sel_4),
    .io_sel_5(outmux_io_sel_5),
    .io_sel_6(outmux_io_sel_6),
    .io_sel_7(outmux_io_sel_7),
    .io_sel_8(outmux_io_sel_8),
    .io_sel_9(outmux_io_sel_9),
    .io_sel_10(outmux_io_sel_10),
    .io_out(outmux_io_out)
  );
  assign io_result_valid = result_valid_1 | result_valid_2 | result_valid_3 | result_valid_4 | result_valid_5 |
    result_valid_5 | result_valid_7 | result_valid_8 | result_valid_9 | result_valid_10 | result_valid_11; // @[Fu.scala 132:43]
  assign io_result_bits = outmux_io_out; // @[Fu.scala 131:18]
  assign outmux_io_in_1 = result_valid_1 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_2 = result_valid_2 ? _result_2_T_5 : 32'h0; // @[Fu.scala 80:52 82:23 63:46]
  assign outmux_io_in_3 = result_valid_3 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_4 = _GEN_15[31:0]; // @[Fu.scala 61:19]
  assign outmux_io_in_5 = io_datamemio_rdata; // @[Fu.scala 61:19 117:27]
  assign outmux_io_in_7 = result_valid_7 ? _result_7_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_8 = result_valid_8 ? io_src1 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_9 = result_valid_9 ? _result_9_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_10 = result_valid_10 ? _result_10_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_11 = result_valid_11 ? _result_11_T_2 : 32'h0; // @[Fu.scala 106:42 107:27 63:46]
  assign outmux_io_sel_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  assign outmux_io_sel_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  assign outmux_io_sel_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  assign outmux_io_sel_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  assign outmux_io_sel_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h2; // @[Fu.scala 118:60]
  assign outmux_io_sel_6 = io_datamemio_memoptvalid & _result_valid_5_T; // @[Fu.scala 127:61]
  assign outmux_io_sel_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  assign outmux_io_sel_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  assign outmux_io_sel_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  assign outmux_io_sel_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
endmodule
module PE_2(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_1,
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
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  wire  PEctrlregs_clock; // @[PE.scala 19:26]
  wire  PEctrlregs_reset; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 19:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 19:26]
  wire  Fureg_clock; // @[PE.scala 20:21]
  wire  Fureg_reset; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 20:21]
  wire  Fureg_io_enable; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 20:21]
  wire  Instmems_0_clock; // @[PE.scala 22:11]
  wire  Instmems_0_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_1_clock; // @[PE.scala 22:11]
  wire  Instmems_1_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_2_clock; // @[PE.scala 22:11]
  wire  Instmems_2_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_3_clock; // @[PE.scala 22:11]
  wire  Instmems_3_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_4_clock; // @[PE.scala 22:11]
  wire  Instmems_4_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_5_clock; // @[PE.scala 22:11]
  wire  Instmems_5_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 22:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_1; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_alukey; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_3; // @[PE.scala 24:23]
  wire  Decoder_io_fuinstskip; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 24:23]
  wire  Decoder_io_canexe; // @[PE.scala 24:23]
  wire  Constmems_0_clock; // @[PE.scala 26:11]
  wire  Constmems_0_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 26:11]
  wire  Constmems_1_clock; // @[PE.scala 26:11]
  wire  Constmems_1_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 26:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 29:11]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 31:48]
  wire [3:0] Alu_io_fn; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 32:19]
  wire  Alu_io_result_valid; // @[PE.scala 32:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 32:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 32:19]
  wire [2:0] Alu_io_datamemio_peidfm; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 32:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 33:24]
  wire  _T = ~io_run; // @[PE.scala 55:48]
  reg [3:0] reg_; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_0; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_0; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_2; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_3; // @[Pipeline.scala 27:22]
  reg  reg_4_0; // @[Pipeline.scala 27:22]
  reg  reg_4_1; // @[Pipeline.scala 27:22]
  reg  reg_5_0; // @[Pipeline.scala 27:22]
  reg  reg_5_2; // @[Pipeline.scala 27:22]
  reg  reg_5_3; // @[Pipeline.scala 27:22]
  reg  reg_7_0; // @[Pipeline.scala 27:22]
  reg  reg_7_2; // @[Pipeline.scala 27:22]
  reg  reg_7_3; // @[Pipeline.scala 27:22]
  reg  reg_8; // @[Pipeline.scala 27:22]
  reg [31:0] reg_9; // @[Pipeline.scala 27:22]
  reg [31:0] reg_10; // @[Pipeline.scala 27:22]
  reg [31:0] reg_11; // @[Pipeline.scala 27:22]
  reg [31:0] reg_12; // @[Pipeline.scala 27:22]
  reg [31:0] reg_13; // @[Pipeline.scala 27:22]
  reg [31:0] reg_14; // @[Pipeline.scala 27:22]
  reg [31:0] reg_15; // @[Pipeline.scala 27:22]
  reg [31:0] reg_16; // @[Pipeline.scala 27:22]
  wire [31:0] _T_18 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_23 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_24 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_26 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_31 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_32 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_34 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_39 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_40 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_42 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_47 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_48 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_50 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_55 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_56 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  wire  _T_59 = PEctrlregs_io_outData_19 == _T_18; // @[PE.scala 84:58]
  wire [31:0] _T_61 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 84:100]
  wire  _T_65 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 85:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 88:51]
  wire  _Kinit_T_16 = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(
    PEctrlregs_io_outData_17) : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 88:8]
  wire  Jchange = _Kinit_T_16 & _T_59; // @[PE.scala 88:162]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 92:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 88:51]
  wire  _Jinit_T_16 = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(
    PEctrlregs_io_outData_16) : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 88:8]
  wire  Ichange = _Jinit_T_16 & Jchange; // @[PE.scala 88:162]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 96:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 88:51]
  wire  _Iinit_T_16 = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(
    PEctrlregs_io_outData_15) : $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 88:8]
  wire  Iinit = _Iinit_T_16 & Ichange; // @[PE.scala 88:162]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 100:55]
  wire [31:0] _T_68 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 102:125]
  wire  regscanupdatestate = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  wire  canupdatestatepipe = reg_8 & io_run & reg_16 == 32'h0; // @[PE.scala 104:48]
  wire  _T_70 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  wire  _T_71 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  wire  _T_72 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  wire  _T_73 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(reg_14); // @[PE.scala 182:95]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(reg_15); // @[PE.scala 183:95]
  PEctrlregs PEctrlregs ( // @[PE.scala 19:26]
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
  Register Fureg ( // @[PE.scala 20:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 22:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 22:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 22:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 22:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 22:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 22:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 24:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_1(Decoder_io_inst_1),
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
    .io_linkneedtosendout_0(Decoder_io_linkneedtosendout_0),
    .io_linkneedtosendout_1(Decoder_io_linkneedtosendout_1),
    .io_linkneedtosendout_2(Decoder_io_linkneedtosendout_2),
    .io_linkneedtosendout_3(Decoder_io_linkneedtosendout_3),
    .io_fuinstskip(Decoder_io_fuinstskip),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil_6 Constmems_0 ( // @[PE.scala 26:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil_6 Constmems_1 ( // @[PE.scala 26:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil_6 Shiftconstmems_0 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil_6 Shiftconstmems_1 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_in_9(Srcmuxs_0_io_in_9),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_in_9(Srcmuxs_1_io_in_9),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu_2 Alu ( // @[PE.scala 32:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_peidfm(Alu_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 33:24]
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
  assign io_outLinks_0_valid = canupdatestatepipe & reg_5_0 & ~reg_7_0; // @[PE.scala 194:65]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 193:15]
  assign io_outLinks_2_valid = canupdatestatepipe & reg_5_2 & ~reg_7_2; // @[PE.scala 194:65]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 193:15]
  assign io_outLinks_3_valid = canupdatestatepipe & reg_5_3 & ~reg_7_3; // @[PE.scala 194:65]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 193:15]
  assign io_finish = reg_16[0]; // @[PE.scala 209:27]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_68 : PEctrlregs_io_outData_18
    ; // @[PE.scala 102:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_18 ? _T_61 : PEctrlregs_io_outData_20; // @[PE.scala 84:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 92:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 96:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 100:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_65}; // @[PE.scala 148:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 149:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_21 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  assign PEctrlregs_io_wen_22 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  assign PEctrlregs_io_wen_23 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  assign PEctrlregs_io_wen_24 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  assign PEctrlregs_io_wen_25 = regscanupdatestate & _T_59; // @[PE.scala 112:47]
  assign PEctrlregs_io_wen_26 = regscanupdatestate & Jchange; // @[PE.scala 113:47]
  assign PEctrlregs_io_wen_27 = regscanupdatestate & Ichange; // @[PE.scala 114:47]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 123:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 122:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 124:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 118:19]
  assign Fureg_io_enable = canupdatestatepipe & Alu_io_result_valid; // @[PE.scala 119:41]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'ha; // @[PE.scala 134:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 133:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_0_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'ha & io_waddr < 32'h14; // @[PE.scala 134:82]
  assign Instmems_1_io_waddr = io_waddr - 32'ha; // @[PE.scala 133:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_1_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h14 & io_waddr < 32'h1e; // @[PE.scala 134:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h14; // @[PE.scala 133:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_2_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h1e & io_waddr < 32'h28; // @[PE.scala 134:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h1e; // @[PE.scala 133:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_3_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h32; // @[PE.scala 134:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h28; // @[PE.scala 133:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_4_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h32 & io_waddr < 32'h3c; // @[PE.scala 134:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h32; // @[PE.scala 133:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_5_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_1 = Instmems_1_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 140:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 141:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 142:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 143:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h3c & io_waddr < 32'h44; // @[PE.scala 157:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h3c; // @[PE.scala 156:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_0_io_raddr = _T_70 ? _T_32 : PEctrlregs_io_outData_21; // @[PE.scala 153:27]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h44 & io_waddr < 32'h4c; // @[PE.scala 157:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h44; // @[PE.scala 156:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_1_io_raddr = _T_71 ? _T_40 : PEctrlregs_io_outData_22; // @[PE.scala 154:27]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h4c & io_waddr < 32'h54; // @[PE.scala 166:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h4c; // @[PE.scala 165:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_0_io_raddr = _T_72 ? _T_48 : PEctrlregs_io_outData_23; // @[PE.scala 162:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h54 & io_waddr < 32'h5c; // @[PE.scala 166:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h54; // @[PE.scala 165:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_1_io_raddr = _T_73 ? _T_56 : PEctrlregs_io_outData_24; // @[PE.scala 163:35]
  assign Srcmuxs_0_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_0_io_in_2 = reg_12; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_3 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_1; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_sel = reg_1_0; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_1_io_in_2 = reg_13; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_3 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_1; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_sel = reg_1_1; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Alu_io_fn = reg_; // @[PE.scala 39:23 Pipeline.scala 33:11]
  assign Alu_io_src1 = reg_4_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 182:19]
  assign Alu_io_src2 = reg_4_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 183:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 205:16]
  assign Alu_io_datamemio_peidfm = io_datamemio_peidfm; // @[PE.scala 205:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 205:16]
  assign Crossbar_io_in_1 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 188:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 188:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 188:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 189:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 190:20]
  assign Crossbar_io_select_0 = reg_2_0; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_1 = reg_2_1; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_2 = reg_2_2; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_3 = reg_2_3; // @[PE.scala 41:25 Pipeline.scala 33:11]
  always @(posedge clock) begin
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_ <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_ <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_ <= Decoder_io_alukey; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_0 <= Decoder_io_srckey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_1 <= Decoder_io_srckey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_0 <= Decoder_io_linkkey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_1 <= Decoder_io_linkkey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_2 <= Decoder_io_linkkey_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_3 <= Decoder_io_linkkey_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_0 <= Decoder_io_haveshiftconst_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_1 <= Decoder_io_haveshiftconst_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_0 <= Decoder_io_linkneedtosendout_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_2 <= Decoder_io_linkneedtosendout_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_3 <= Decoder_io_linkneedtosendout_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_0 <= Decoder_io_linkinstskip_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_2 <= Decoder_io_linkinstskip_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_3 <= Decoder_io_linkinstskip_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_8 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_8 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_8 <= Decoder_io_canexe; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_9 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_9 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_9 <= PEctrlregs_io_outData_25; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_10 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_10 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_10 <= PEctrlregs_io_outData_26; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_11 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_11 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_11 <= PEctrlregs_io_outData_27; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_12 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_12 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_12 <= Constmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_13 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_13 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_13 <= Constmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_14 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_14 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_14 <= Shiftconstmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_15 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_15 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_15 <= Shiftconstmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_16 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_16 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_16 <= PEctrlregs_io_outData_28; // @[Pipeline.scala 31:9]
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
  reg_ = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  reg_1_0 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  reg_1_1 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  reg_2_0 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reg_2_1 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reg_2_2 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  reg_2_3 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  reg_4_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  reg_5_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_5_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_5_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_7_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_7_2 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_7_3 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  reg_8 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  reg_9 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  reg_10 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  reg_11 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  reg_12 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  reg_13 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_14 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_15 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  reg_16 = _RAND_23[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Fu_3(
  input  [3:0]  io_fn,
  input  [31:0] io_src1,
  input  [31:0] io_src2,
  output        io_result_valid,
  output [31:0] io_result_bits,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_wdata,
  input  [2:0]  io_datamemio_peidfm
);
  wire [31:0] outmux_io_in_1; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_2; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_3; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_4; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_5; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_7; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_8; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_9; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_11; // @[Fu.scala 66:22]
  wire  outmux_io_sel_1; // @[Fu.scala 66:22]
  wire  outmux_io_sel_2; // @[Fu.scala 66:22]
  wire  outmux_io_sel_3; // @[Fu.scala 66:22]
  wire  outmux_io_sel_4; // @[Fu.scala 66:22]
  wire  outmux_io_sel_5; // @[Fu.scala 66:22]
  wire  outmux_io_sel_6; // @[Fu.scala 66:22]
  wire  outmux_io_sel_7; // @[Fu.scala 66:22]
  wire  outmux_io_sel_8; // @[Fu.scala 66:22]
  wire  outmux_io_sel_9; // @[Fu.scala 66:22]
  wire  outmux_io_sel_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_out; // @[Fu.scala 66:22]
  wire [31:0] src1 = io_src1; // @[Fu.scala 59:22]
  wire [31:0] src2 = io_src2; // @[Fu.scala 60:22]
  wire  result_valid_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  wire [31:0] _result_1_T_3 = $signed(io_src1) + $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  wire [15:0] _result_2_T_1 = src1[15:0]; // @[Fu.scala 82:41]
  wire [15:0] _result_2_T_3 = src2[15:0]; // @[Fu.scala 82:59]
  wire [31:0] _result_2_T_5 = $signed(_result_2_T_1) * $signed(_result_2_T_3); // @[Fu.scala 82:67]
  wire  result_valid_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  wire  result_valid_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  wire [31:0] _result_7_T_2 = $signed(io_src1) | $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  wire  result_valid_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  wire [31:0] _result_9_T_3 = $signed(io_src1) - $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
  wire [31:0] _result_10_T_2 = $signed(io_src1) & $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  wire [62:0] _GEN_0 = {{31{src1[31]}},src1}; // @[Fu.scala 100:35]
  wire [62:0] _result_4_T_2 = $signed(_GEN_0) << src2[4:0]; // @[Fu.scala 100:49]
  wire [62:0] _GEN_15 = result_valid_4 ? _result_4_T_2 : 63'h0; // @[Fu.scala 100:26 99:41 63:46]
  wire  result_valid_11 = io_fn == 4'hb; // @[Fu.scala 106:14]
  wire [31:0] _result_11_T_2 = $signed(io_src1) >>> src2[4:0]; // @[Fu.scala 107:59]
  wire  result_valid_5 = io_datamemio_peidfm == 3'h3; // @[Fu.scala 118:84]
  Muxonehot outmux ( // @[Fu.scala 66:22]
    .io_in_1(outmux_io_in_1),
    .io_in_2(outmux_io_in_2),
    .io_in_3(outmux_io_in_3),
    .io_in_4(outmux_io_in_4),
    .io_in_5(outmux_io_in_5),
    .io_in_7(outmux_io_in_7),
    .io_in_8(outmux_io_in_8),
    .io_in_9(outmux_io_in_9),
    .io_in_10(outmux_io_in_10),
    .io_in_11(outmux_io_in_11),
    .io_sel_1(outmux_io_sel_1),
    .io_sel_2(outmux_io_sel_2),
    .io_sel_3(outmux_io_sel_3),
    .io_sel_4(outmux_io_sel_4),
    .io_sel_5(outmux_io_sel_5),
    .io_sel_6(outmux_io_sel_6),
    .io_sel_7(outmux_io_sel_7),
    .io_sel_8(outmux_io_sel_8),
    .io_sel_9(outmux_io_sel_9),
    .io_sel_10(outmux_io_sel_10),
    .io_out(outmux_io_out)
  );
  assign io_result_valid = result_valid_1 | result_valid_2 | result_valid_3 | result_valid_4 | result_valid_5 |
    result_valid_5 | result_valid_7 | result_valid_8 | result_valid_9 | result_valid_10 | result_valid_11; // @[Fu.scala 132:43]
  assign io_result_bits = outmux_io_out; // @[Fu.scala 131:18]
  assign io_datamemio_wen = io_fn == 4'h5; // @[Fu.scala 122:14]
  assign io_datamemio_wdata = io_fn == 4'h5 ? io_src1 : 32'h0; // @[Fu.scala 122:43 124:25 55:21]
  assign outmux_io_in_1 = result_valid_1 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_2 = result_valid_2 ? _result_2_T_5 : 32'h0; // @[Fu.scala 80:52 82:23 63:46]
  assign outmux_io_in_3 = result_valid_3 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_4 = _GEN_15[31:0]; // @[Fu.scala 61:19]
  assign outmux_io_in_5 = 32'h0; // @[Fu.scala 61:19 117:27]
  assign outmux_io_in_7 = result_valid_7 ? _result_7_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_8 = result_valid_8 ? io_src1 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_9 = result_valid_9 ? _result_9_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_10 = result_valid_10 ? _result_10_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_11 = result_valid_11 ? _result_11_T_2 : 32'h0; // @[Fu.scala 106:42 107:27 63:46]
  assign outmux_io_sel_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  assign outmux_io_sel_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  assign outmux_io_sel_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  assign outmux_io_sel_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  assign outmux_io_sel_5 = io_datamemio_peidfm == 3'h3; // @[Fu.scala 118:84]
  assign outmux_io_sel_6 = io_datamemio_peidfm == 3'h3; // @[Fu.scala 127:85]
  assign outmux_io_sel_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  assign outmux_io_sel_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  assign outmux_io_sel_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  assign outmux_io_sel_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
endmodule
module PE_3(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_1,
  input  [31:0] io_inLinks_3,
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
  output [31:0] io_datamemio_wdata,
  input  [2:0]  io_datamemio_peidfm
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
`endif // RANDOMIZE_REG_INIT
  wire  PEctrlregs_clock; // @[PE.scala 19:26]
  wire  PEctrlregs_reset; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 19:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 19:26]
  wire  Fureg_clock; // @[PE.scala 20:21]
  wire  Fureg_reset; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 20:21]
  wire  Fureg_io_enable; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 20:21]
  wire  Instmems_0_clock; // @[PE.scala 22:11]
  wire  Instmems_0_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_1_clock; // @[PE.scala 22:11]
  wire  Instmems_1_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_2_clock; // @[PE.scala 22:11]
  wire  Instmems_2_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_3_clock; // @[PE.scala 22:11]
  wire  Instmems_3_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_4_clock; // @[PE.scala 22:11]
  wire  Instmems_4_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_5_clock; // @[PE.scala 22:11]
  wire  Instmems_5_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 22:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_1; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_alukey; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_3; // @[PE.scala 24:23]
  wire  Decoder_io_fuinstskip; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 24:23]
  wire  Decoder_io_canexe; // @[PE.scala 24:23]
  wire  Constmems_0_clock; // @[PE.scala 26:11]
  wire  Constmems_0_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 26:11]
  wire  Constmems_1_clock; // @[PE.scala 26:11]
  wire  Constmems_1_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 26:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 29:11]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 31:48]
  wire [3:0] Alu_io_fn; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 32:19]
  wire  Alu_io_result_valid; // @[PE.scala 32:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 32:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 32:19]
  wire [2:0] Alu_io_datamemio_peidfm; // @[PE.scala 32:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 33:24]
  wire  _T = ~io_run; // @[PE.scala 55:48]
  reg [3:0] reg_; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_0; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_0; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_2; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_3; // @[Pipeline.scala 27:22]
  reg  reg_4_0; // @[Pipeline.scala 27:22]
  reg  reg_4_1; // @[Pipeline.scala 27:22]
  reg  reg_5_0; // @[Pipeline.scala 27:22]
  reg  reg_5_2; // @[Pipeline.scala 27:22]
  reg  reg_6; // @[Pipeline.scala 27:22]
  reg  reg_7_0; // @[Pipeline.scala 27:22]
  reg  reg_7_2; // @[Pipeline.scala 27:22]
  reg  reg_8; // @[Pipeline.scala 27:22]
  reg [31:0] reg_9; // @[Pipeline.scala 27:22]
  reg [31:0] reg_10; // @[Pipeline.scala 27:22]
  reg [31:0] reg_11; // @[Pipeline.scala 27:22]
  reg [31:0] reg_12; // @[Pipeline.scala 27:22]
  reg [31:0] reg_13; // @[Pipeline.scala 27:22]
  reg [31:0] reg_14; // @[Pipeline.scala 27:22]
  reg [31:0] reg_15; // @[Pipeline.scala 27:22]
  reg [31:0] reg_16; // @[Pipeline.scala 27:22]
  wire [31:0] _T_18 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_23 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_24 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_26 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_31 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_32 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_34 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_39 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_40 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_42 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_47 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_48 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_50 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_55 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_56 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  wire  _T_59 = PEctrlregs_io_outData_19 == _T_18; // @[PE.scala 84:58]
  wire [31:0] _T_61 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 84:100]
  wire  _T_65 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 85:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 88:51]
  wire  _Kinit_T_16 = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(
    PEctrlregs_io_outData_17) : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 88:8]
  wire  Jchange = _Kinit_T_16 & _T_59; // @[PE.scala 88:162]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 92:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 88:51]
  wire  _Jinit_T_16 = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(
    PEctrlregs_io_outData_16) : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 88:8]
  wire  Ichange = _Jinit_T_16 & Jchange; // @[PE.scala 88:162]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 96:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 88:51]
  wire  _Iinit_T_16 = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(
    PEctrlregs_io_outData_15) : $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 88:8]
  wire  Iinit = _Iinit_T_16 & Ichange; // @[PE.scala 88:162]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 100:55]
  wire [31:0] _T_68 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 102:125]
  wire  regscanupdatestate = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  wire  canupdatestatepipe = reg_8 & io_run & reg_16 == 32'h0; // @[PE.scala 104:48]
  wire  _T_70 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  wire  _T_71 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  wire  _T_72 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  wire  _T_73 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(reg_14); // @[PE.scala 182:95]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(reg_15); // @[PE.scala 183:95]
  wire  _io_datamemio_ren_T_1 = ~reg_6; // @[PE.scala 206:68]
  PEctrlregs PEctrlregs ( // @[PE.scala 19:26]
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
  Register Fureg ( // @[PE.scala 20:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 22:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 22:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 22:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 22:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 22:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 22:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 24:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_1(Decoder_io_inst_1),
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
    .io_linkneedtosendout_0(Decoder_io_linkneedtosendout_0),
    .io_linkneedtosendout_1(Decoder_io_linkneedtosendout_1),
    .io_linkneedtosendout_2(Decoder_io_linkneedtosendout_2),
    .io_linkneedtosendout_3(Decoder_io_linkneedtosendout_3),
    .io_fuinstskip(Decoder_io_fuinstskip),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil_6 Constmems_0 ( // @[PE.scala 26:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil_6 Constmems_1 ( // @[PE.scala 26:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil_6 Shiftconstmems_0 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil_6 Shiftconstmems_1 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_in_9(Srcmuxs_0_io_in_9),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_in_9(Srcmuxs_1_io_in_9),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu_3 Alu ( // @[PE.scala 32:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_peidfm(Alu_io_datamemio_peidfm)
  );
  Crossbar Crossbar ( // @[PE.scala 33:24]
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
  assign io_outLinks_0_valid = canupdatestatepipe & reg_5_0 & ~reg_7_0; // @[PE.scala 194:65]
  assign io_outLinks_0_bits = Crossbar_io_out_0; // @[PE.scala 193:15]
  assign io_outLinks_2_valid = canupdatestatepipe & reg_5_2 & ~reg_7_2; // @[PE.scala 194:65]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 193:15]
  assign io_finish = reg_16[0]; // @[PE.scala 209:27]
  assign io_datamemio_wen = Alu_io_datamemio_wen & canupdatestatepipe & _io_datamemio_ren_T_1; // @[PE.scala 207:65]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 205:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_68 : PEctrlregs_io_outData_18
    ; // @[PE.scala 102:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_18 ? _T_61 : PEctrlregs_io_outData_20; // @[PE.scala 84:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 92:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 96:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 100:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_65}; // @[PE.scala 148:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 149:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_21 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  assign PEctrlregs_io_wen_22 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  assign PEctrlregs_io_wen_23 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  assign PEctrlregs_io_wen_24 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  assign PEctrlregs_io_wen_25 = regscanupdatestate & _T_59; // @[PE.scala 112:47]
  assign PEctrlregs_io_wen_26 = regscanupdatestate & Jchange; // @[PE.scala 113:47]
  assign PEctrlregs_io_wen_27 = regscanupdatestate & Ichange; // @[PE.scala 114:47]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 123:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 122:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 124:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 118:19]
  assign Fureg_io_enable = canupdatestatepipe & Alu_io_result_valid; // @[PE.scala 119:41]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'ha; // @[PE.scala 134:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 133:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_0_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'ha & io_waddr < 32'h14; // @[PE.scala 134:82]
  assign Instmems_1_io_waddr = io_waddr - 32'ha; // @[PE.scala 133:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_1_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h14 & io_waddr < 32'h1e; // @[PE.scala 134:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h14; // @[PE.scala 133:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_2_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h1e & io_waddr < 32'h28; // @[PE.scala 134:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h1e; // @[PE.scala 133:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_3_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h32; // @[PE.scala 134:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h28; // @[PE.scala 133:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_4_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h32 & io_waddr < 32'h3c; // @[PE.scala 134:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h32; // @[PE.scala 133:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_5_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_1 = Instmems_1_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 140:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 141:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 142:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 143:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h3c & io_waddr < 32'h44; // @[PE.scala 157:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h3c; // @[PE.scala 156:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_0_io_raddr = _T_70 ? _T_32 : PEctrlregs_io_outData_21; // @[PE.scala 153:27]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h44 & io_waddr < 32'h4c; // @[PE.scala 157:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h44; // @[PE.scala 156:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_1_io_raddr = _T_71 ? _T_40 : PEctrlregs_io_outData_22; // @[PE.scala 154:27]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h4c & io_waddr < 32'h54; // @[PE.scala 166:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h4c; // @[PE.scala 165:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_0_io_raddr = _T_72 ? _T_48 : PEctrlregs_io_outData_23; // @[PE.scala 162:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h54 & io_waddr < 32'h5c; // @[PE.scala 166:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h54; // @[PE.scala 165:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_1_io_raddr = _T_73 ? _T_56 : PEctrlregs_io_outData_24; // @[PE.scala 163:35]
  assign Srcmuxs_0_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_0_io_in_2 = reg_12; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_3 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_4 = io_inLinks_1; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_5 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_sel = reg_1_0; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_1_io_in_2 = reg_13; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_3 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_4 = io_inLinks_1; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_5 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_sel = reg_1_1; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Alu_io_fn = reg_; // @[PE.scala 39:23 Pipeline.scala 33:11]
  assign Alu_io_src1 = reg_4_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 182:19]
  assign Alu_io_src2 = reg_4_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 183:19]
  assign Alu_io_datamemio_peidfm = io_datamemio_peidfm; // @[PE.scala 205:16]
  assign Crossbar_io_in_1 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_2 = io_inLinks_1; // @[PE.scala 188:68]
  assign Crossbar_io_in_3 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 188:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 189:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 190:20]
  assign Crossbar_io_select_0 = reg_2_0; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_1 = reg_2_1; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_2 = reg_2_2; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_3 = reg_2_3; // @[PE.scala 41:25 Pipeline.scala 33:11]
  always @(posedge clock) begin
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_ <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_ <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_ <= Decoder_io_alukey; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_0 <= Decoder_io_srckey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_1 <= Decoder_io_srckey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_0 <= Decoder_io_linkkey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_1 <= Decoder_io_linkkey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_2 <= Decoder_io_linkkey_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_3 <= Decoder_io_linkkey_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_0 <= Decoder_io_haveshiftconst_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_1 <= Decoder_io_haveshiftconst_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_0 <= Decoder_io_linkneedtosendout_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_2 <= Decoder_io_linkneedtosendout_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_6 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_6 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_6 <= Decoder_io_fuinstskip; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_0 <= Decoder_io_linkinstskip_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_2 <= Decoder_io_linkinstskip_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_8 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_8 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_8 <= Decoder_io_canexe; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_9 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_9 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_9 <= PEctrlregs_io_outData_25; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_10 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_10 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_10 <= PEctrlregs_io_outData_26; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_11 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_11 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_11 <= PEctrlregs_io_outData_27; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_12 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_12 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_12 <= Constmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_13 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_13 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_13 <= Constmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_14 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_14 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_14 <= Shiftconstmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_15 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_15 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_15 <= Shiftconstmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_16 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_16 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_16 <= PEctrlregs_io_outData_28; // @[Pipeline.scala 31:9]
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
  reg_ = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  reg_1_0 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  reg_1_1 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  reg_2_0 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reg_2_1 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reg_2_2 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  reg_2_3 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  reg_4_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  reg_5_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_5_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_6 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_7_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_7_2 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_8 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  reg_9 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  reg_10 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  reg_11 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  reg_12 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  reg_13 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  reg_14 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_15 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_16 = _RAND_22[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Fu_4(
  input  [3:0]  io_fn,
  input  [31:0] io_src1,
  input  [31:0] io_src2,
  output        io_result_valid,
  output [31:0] io_result_bits,
  output        io_datamemio_ren,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
);
  wire [31:0] outmux_io_in_1; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_2; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_3; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_4; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_5; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_7; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_8; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_9; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_11; // @[Fu.scala 66:22]
  wire  outmux_io_sel_1; // @[Fu.scala 66:22]
  wire  outmux_io_sel_2; // @[Fu.scala 66:22]
  wire  outmux_io_sel_3; // @[Fu.scala 66:22]
  wire  outmux_io_sel_4; // @[Fu.scala 66:22]
  wire  outmux_io_sel_5; // @[Fu.scala 66:22]
  wire  outmux_io_sel_6; // @[Fu.scala 66:22]
  wire  outmux_io_sel_7; // @[Fu.scala 66:22]
  wire  outmux_io_sel_8; // @[Fu.scala 66:22]
  wire  outmux_io_sel_9; // @[Fu.scala 66:22]
  wire  outmux_io_sel_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_out; // @[Fu.scala 66:22]
  wire [31:0] src1 = io_src1; // @[Fu.scala 59:22]
  wire [31:0] src2 = io_src2; // @[Fu.scala 60:22]
  wire  result_valid_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  wire [31:0] _result_1_T_3 = $signed(io_src1) + $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  wire [15:0] _result_2_T_1 = src1[15:0]; // @[Fu.scala 82:41]
  wire [15:0] _result_2_T_3 = src2[15:0]; // @[Fu.scala 82:59]
  wire [31:0] _result_2_T_5 = $signed(_result_2_T_1) * $signed(_result_2_T_3); // @[Fu.scala 82:67]
  wire  result_valid_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  wire  result_valid_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  wire [31:0] _result_7_T_2 = $signed(io_src1) | $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  wire  result_valid_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  wire [31:0] _result_9_T_3 = $signed(io_src1) - $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
  wire [31:0] _result_10_T_2 = $signed(io_src1) & $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  wire [62:0] _GEN_0 = {{31{src1[31]}},src1}; // @[Fu.scala 100:35]
  wire [62:0] _result_4_T_2 = $signed(_GEN_0) << src2[4:0]; // @[Fu.scala 100:49]
  wire [62:0] _GEN_15 = result_valid_4 ? _result_4_T_2 : 63'h0; // @[Fu.scala 100:26 99:41 63:46]
  wire  result_valid_11 = io_fn == 4'hb; // @[Fu.scala 106:14]
  wire [31:0] _result_11_T_2 = $signed(io_src1) >>> src2[4:0]; // @[Fu.scala 107:59]
  wire  _result_valid_5_T = io_datamemio_peidfm == 3'h4; // @[Fu.scala 118:84]
  wire  result_valid_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h4; // @[Fu.scala 118:60]
  Muxonehot outmux ( // @[Fu.scala 66:22]
    .io_in_1(outmux_io_in_1),
    .io_in_2(outmux_io_in_2),
    .io_in_3(outmux_io_in_3),
    .io_in_4(outmux_io_in_4),
    .io_in_5(outmux_io_in_5),
    .io_in_7(outmux_io_in_7),
    .io_in_8(outmux_io_in_8),
    .io_in_9(outmux_io_in_9),
    .io_in_10(outmux_io_in_10),
    .io_in_11(outmux_io_in_11),
    .io_sel_1(outmux_io_sel_1),
    .io_sel_2(outmux_io_sel_2),
    .io_sel_3(outmux_io_sel_3),
    .io_sel_4(outmux_io_sel_4),
    .io_sel_5(outmux_io_sel_5),
    .io_sel_6(outmux_io_sel_6),
    .io_sel_7(outmux_io_sel_7),
    .io_sel_8(outmux_io_sel_8),
    .io_sel_9(outmux_io_sel_9),
    .io_sel_10(outmux_io_sel_10),
    .io_out(outmux_io_out)
  );
  assign io_result_valid = result_valid_1 | result_valid_2 | result_valid_3 | result_valid_4 | result_valid_5 |
    result_valid_5 | result_valid_7 | result_valid_8 | result_valid_9 | result_valid_10 | result_valid_11; // @[Fu.scala 132:43]
  assign io_result_bits = outmux_io_out; // @[Fu.scala 131:18]
  assign io_datamemio_ren = io_fn == 4'h4; // @[Fu.scala 113:14]
  assign outmux_io_in_1 = result_valid_1 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_2 = result_valid_2 ? _result_2_T_5 : 32'h0; // @[Fu.scala 80:52 82:23 63:46]
  assign outmux_io_in_3 = result_valid_3 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_4 = _GEN_15[31:0]; // @[Fu.scala 61:19]
  assign outmux_io_in_5 = io_datamemio_rdata; // @[Fu.scala 61:19 117:27]
  assign outmux_io_in_7 = result_valid_7 ? _result_7_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_8 = result_valid_8 ? io_src1 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_9 = result_valid_9 ? _result_9_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_10 = result_valid_10 ? _result_10_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_11 = result_valid_11 ? _result_11_T_2 : 32'h0; // @[Fu.scala 106:42 107:27 63:46]
  assign outmux_io_sel_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  assign outmux_io_sel_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  assign outmux_io_sel_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  assign outmux_io_sel_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  assign outmux_io_sel_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h4; // @[Fu.scala 118:60]
  assign outmux_io_sel_6 = io_datamemio_memoptvalid & _result_valid_5_T; // @[Fu.scala 127:61]
  assign outmux_io_sel_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  assign outmux_io_sel_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  assign outmux_io_sel_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  assign outmux_io_sel_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
endmodule
module PE_4(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
  input  [31:0] io_inLinks_2,
  output        io_outLinks_1_valid,
  output [31:0] io_outLinks_1_bits,
  output        io_outLinks_3_valid,
  output [31:0] io_outLinks_3_bits,
  input         io_run,
  input         io_wen,
  input  [31:0] io_waddr,
  input  [31:0] io_wdata,
  output        io_finish,
  output        io_datamemio_ren,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
`endif // RANDOMIZE_REG_INIT
  wire  PEctrlregs_clock; // @[PE.scala 19:26]
  wire  PEctrlregs_reset; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 19:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 19:26]
  wire  Fureg_clock; // @[PE.scala 20:21]
  wire  Fureg_reset; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 20:21]
  wire  Fureg_io_enable; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 20:21]
  wire  Instmems_0_clock; // @[PE.scala 22:11]
  wire  Instmems_0_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_1_clock; // @[PE.scala 22:11]
  wire  Instmems_1_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_2_clock; // @[PE.scala 22:11]
  wire  Instmems_2_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_3_clock; // @[PE.scala 22:11]
  wire  Instmems_3_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_4_clock; // @[PE.scala 22:11]
  wire  Instmems_4_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_5_clock; // @[PE.scala 22:11]
  wire  Instmems_5_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 22:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_1; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_alukey; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_3; // @[PE.scala 24:23]
  wire  Decoder_io_fuinstskip; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 24:23]
  wire  Decoder_io_canexe; // @[PE.scala 24:23]
  wire  Constmems_0_clock; // @[PE.scala 26:11]
  wire  Constmems_0_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 26:11]
  wire  Constmems_1_clock; // @[PE.scala 26:11]
  wire  Constmems_1_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 26:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 29:11]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 31:48]
  wire [3:0] Alu_io_fn; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 32:19]
  wire  Alu_io_result_valid; // @[PE.scala 32:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 32:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 32:19]
  wire [2:0] Alu_io_datamemio_peidfm; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 32:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 33:24]
  wire  _T = ~io_run; // @[PE.scala 55:48]
  reg [3:0] reg_; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_0; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_0; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_2; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_3; // @[Pipeline.scala 27:22]
  reg  reg_4_0; // @[Pipeline.scala 27:22]
  reg  reg_4_1; // @[Pipeline.scala 27:22]
  reg  reg_5_1; // @[Pipeline.scala 27:22]
  reg  reg_5_3; // @[Pipeline.scala 27:22]
  reg  reg_6; // @[Pipeline.scala 27:22]
  reg  reg_7_1; // @[Pipeline.scala 27:22]
  reg  reg_7_3; // @[Pipeline.scala 27:22]
  reg  reg_8; // @[Pipeline.scala 27:22]
  reg [31:0] reg_9; // @[Pipeline.scala 27:22]
  reg [31:0] reg_10; // @[Pipeline.scala 27:22]
  reg [31:0] reg_11; // @[Pipeline.scala 27:22]
  reg [31:0] reg_12; // @[Pipeline.scala 27:22]
  reg [31:0] reg_13; // @[Pipeline.scala 27:22]
  reg [31:0] reg_14; // @[Pipeline.scala 27:22]
  reg [31:0] reg_15; // @[Pipeline.scala 27:22]
  reg [31:0] reg_16; // @[Pipeline.scala 27:22]
  wire [31:0] _T_18 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_23 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_24 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_26 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_31 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_32 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_34 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_39 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_40 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_42 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_47 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_48 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_50 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_55 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_56 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  wire  _T_59 = PEctrlregs_io_outData_19 == _T_18; // @[PE.scala 84:58]
  wire [31:0] _T_61 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 84:100]
  wire  _T_65 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 85:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 88:51]
  wire  _Kinit_T_16 = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(
    PEctrlregs_io_outData_17) : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 88:8]
  wire  Jchange = _Kinit_T_16 & _T_59; // @[PE.scala 88:162]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 92:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 88:51]
  wire  _Jinit_T_16 = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(
    PEctrlregs_io_outData_16) : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 88:8]
  wire  Ichange = _Jinit_T_16 & Jchange; // @[PE.scala 88:162]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 96:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 88:51]
  wire  _Iinit_T_16 = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(
    PEctrlregs_io_outData_15) : $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 88:8]
  wire  Iinit = _Iinit_T_16 & Ichange; // @[PE.scala 88:162]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 100:55]
  wire [31:0] _T_68 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 102:125]
  wire  regscanupdatestate = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  wire  canupdatestatepipe = reg_8 & io_run & reg_16 == 32'h0; // @[PE.scala 104:48]
  wire  _T_70 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  wire  _T_71 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  wire  _T_72 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  wire  _T_73 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(reg_14); // @[PE.scala 182:95]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(reg_15); // @[PE.scala 183:95]
  PEctrlregs PEctrlregs ( // @[PE.scala 19:26]
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
  Register Fureg ( // @[PE.scala 20:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 22:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 22:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 22:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 22:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 22:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 22:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 24:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_1(Decoder_io_inst_1),
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
    .io_linkneedtosendout_0(Decoder_io_linkneedtosendout_0),
    .io_linkneedtosendout_1(Decoder_io_linkneedtosendout_1),
    .io_linkneedtosendout_2(Decoder_io_linkneedtosendout_2),
    .io_linkneedtosendout_3(Decoder_io_linkneedtosendout_3),
    .io_fuinstskip(Decoder_io_fuinstskip),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil_6 Constmems_0 ( // @[PE.scala 26:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil_6 Constmems_1 ( // @[PE.scala 26:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil_6 Shiftconstmems_0 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil_6 Shiftconstmems_1 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_in_9(Srcmuxs_0_io_in_9),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_in_9(Srcmuxs_1_io_in_9),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu_4 Alu ( // @[PE.scala 32:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_peidfm(Alu_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 33:24]
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
  assign io_outLinks_1_valid = canupdatestatepipe & reg_5_1 & ~reg_7_1; // @[PE.scala 194:65]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 193:15]
  assign io_outLinks_3_valid = canupdatestatepipe & reg_5_3 & ~reg_7_3; // @[PE.scala 194:65]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 193:15]
  assign io_finish = reg_16[0]; // @[PE.scala 209:27]
  assign io_datamemio_ren = Alu_io_datamemio_ren & canupdatestatepipe & ~reg_6; // @[PE.scala 206:65]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_68 : PEctrlregs_io_outData_18
    ; // @[PE.scala 102:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_18 ? _T_61 : PEctrlregs_io_outData_20; // @[PE.scala 84:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 92:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 96:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 100:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_65}; // @[PE.scala 148:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 149:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_21 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  assign PEctrlregs_io_wen_22 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  assign PEctrlregs_io_wen_23 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  assign PEctrlregs_io_wen_24 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  assign PEctrlregs_io_wen_25 = regscanupdatestate & _T_59; // @[PE.scala 112:47]
  assign PEctrlregs_io_wen_26 = regscanupdatestate & Jchange; // @[PE.scala 113:47]
  assign PEctrlregs_io_wen_27 = regscanupdatestate & Ichange; // @[PE.scala 114:47]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 123:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 122:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 124:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 118:19]
  assign Fureg_io_enable = canupdatestatepipe & Alu_io_result_valid; // @[PE.scala 119:41]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'ha; // @[PE.scala 134:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 133:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_0_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'ha & io_waddr < 32'h14; // @[PE.scala 134:82]
  assign Instmems_1_io_waddr = io_waddr - 32'ha; // @[PE.scala 133:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_1_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h14 & io_waddr < 32'h1e; // @[PE.scala 134:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h14; // @[PE.scala 133:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_2_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h1e & io_waddr < 32'h28; // @[PE.scala 134:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h1e; // @[PE.scala 133:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_3_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h32; // @[PE.scala 134:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h28; // @[PE.scala 133:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_4_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h32 & io_waddr < 32'h3c; // @[PE.scala 134:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h32; // @[PE.scala 133:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_5_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_1 = Instmems_1_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 140:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 141:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 142:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 143:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h3c & io_waddr < 32'h44; // @[PE.scala 157:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h3c; // @[PE.scala 156:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_0_io_raddr = _T_70 ? _T_32 : PEctrlregs_io_outData_21; // @[PE.scala 153:27]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h44 & io_waddr < 32'h4c; // @[PE.scala 157:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h44; // @[PE.scala 156:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_1_io_raddr = _T_71 ? _T_40 : PEctrlregs_io_outData_22; // @[PE.scala 154:27]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h4c & io_waddr < 32'h54; // @[PE.scala 166:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h4c; // @[PE.scala 165:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_0_io_raddr = _T_72 ? _T_48 : PEctrlregs_io_outData_23; // @[PE.scala 162:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h54 & io_waddr < 32'h5c; // @[PE.scala 166:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h54; // @[PE.scala 165:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_1_io_raddr = _T_73 ? _T_56 : PEctrlregs_io_outData_24; // @[PE.scala 163:35]
  assign Srcmuxs_0_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_0_io_in_2 = reg_12; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_3 = io_inLinks_0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_4 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_6 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_sel = reg_1_0; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_1_io_in_2 = reg_13; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_3 = io_inLinks_0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_4 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_6 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_sel = reg_1_1; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Alu_io_fn = reg_; // @[PE.scala 39:23 Pipeline.scala 33:11]
  assign Alu_io_src1 = reg_4_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 182:19]
  assign Alu_io_src2 = reg_4_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 183:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 205:16]
  assign Alu_io_datamemio_peidfm = io_datamemio_peidfm; // @[PE.scala 205:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 205:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 188:68]
  assign Crossbar_io_in_2 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 188:68]
  assign Crossbar_io_in_4 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 189:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 190:20]
  assign Crossbar_io_select_0 = reg_2_0; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_1 = reg_2_1; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_2 = reg_2_2; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_3 = reg_2_3; // @[PE.scala 41:25 Pipeline.scala 33:11]
  always @(posedge clock) begin
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_ <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_ <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_ <= Decoder_io_alukey; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_0 <= Decoder_io_srckey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_1 <= Decoder_io_srckey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_0 <= Decoder_io_linkkey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_1 <= Decoder_io_linkkey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_2 <= Decoder_io_linkkey_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_3 <= Decoder_io_linkkey_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_0 <= Decoder_io_haveshiftconst_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_1 <= Decoder_io_haveshiftconst_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_1 <= Decoder_io_linkneedtosendout_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_3 <= Decoder_io_linkneedtosendout_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_6 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_6 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_6 <= Decoder_io_fuinstskip; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_1 <= Decoder_io_linkinstskip_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_3 <= Decoder_io_linkinstskip_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_8 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_8 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_8 <= Decoder_io_canexe; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_9 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_9 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_9 <= PEctrlregs_io_outData_25; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_10 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_10 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_10 <= PEctrlregs_io_outData_26; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_11 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_11 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_11 <= PEctrlregs_io_outData_27; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_12 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_12 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_12 <= Constmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_13 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_13 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_13 <= Constmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_14 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_14 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_14 <= Shiftconstmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_15 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_15 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_15 <= Shiftconstmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_16 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_16 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_16 <= PEctrlregs_io_outData_28; // @[Pipeline.scala 31:9]
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
  reg_ = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  reg_1_0 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  reg_1_1 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  reg_2_0 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reg_2_1 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reg_2_2 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  reg_2_3 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  reg_4_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  reg_5_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_5_3 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_6 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_7_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_7_3 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_8 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  reg_9 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  reg_10 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  reg_11 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  reg_12 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  reg_13 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  reg_14 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_15 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_16 = _RAND_22[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Fu_5(
  input  [3:0]  io_fn,
  input  [31:0] io_src1,
  input  [31:0] io_src2,
  output        io_result_valid,
  output [31:0] io_result_bits,
  output        io_datamemio_ren,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
);
  wire [31:0] outmux_io_in_1; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_2; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_3; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_4; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_5; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_7; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_8; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_9; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_11; // @[Fu.scala 66:22]
  wire  outmux_io_sel_1; // @[Fu.scala 66:22]
  wire  outmux_io_sel_2; // @[Fu.scala 66:22]
  wire  outmux_io_sel_3; // @[Fu.scala 66:22]
  wire  outmux_io_sel_4; // @[Fu.scala 66:22]
  wire  outmux_io_sel_5; // @[Fu.scala 66:22]
  wire  outmux_io_sel_6; // @[Fu.scala 66:22]
  wire  outmux_io_sel_7; // @[Fu.scala 66:22]
  wire  outmux_io_sel_8; // @[Fu.scala 66:22]
  wire  outmux_io_sel_9; // @[Fu.scala 66:22]
  wire  outmux_io_sel_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_out; // @[Fu.scala 66:22]
  wire [31:0] src1 = io_src1; // @[Fu.scala 59:22]
  wire [31:0] src2 = io_src2; // @[Fu.scala 60:22]
  wire  result_valid_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  wire [31:0] _result_1_T_3 = $signed(io_src1) + $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  wire [15:0] _result_2_T_1 = src1[15:0]; // @[Fu.scala 82:41]
  wire [15:0] _result_2_T_3 = src2[15:0]; // @[Fu.scala 82:59]
  wire [31:0] _result_2_T_5 = $signed(_result_2_T_1) * $signed(_result_2_T_3); // @[Fu.scala 82:67]
  wire  result_valid_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  wire  result_valid_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  wire [31:0] _result_7_T_2 = $signed(io_src1) | $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  wire  result_valid_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  wire [31:0] _result_9_T_3 = $signed(io_src1) - $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
  wire [31:0] _result_10_T_2 = $signed(io_src1) & $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  wire [62:0] _GEN_0 = {{31{src1[31]}},src1}; // @[Fu.scala 100:35]
  wire [62:0] _result_4_T_2 = $signed(_GEN_0) << src2[4:0]; // @[Fu.scala 100:49]
  wire [62:0] _GEN_15 = result_valid_4 ? _result_4_T_2 : 63'h0; // @[Fu.scala 100:26 99:41 63:46]
  wire  result_valid_11 = io_fn == 4'hb; // @[Fu.scala 106:14]
  wire [31:0] _result_11_T_2 = $signed(io_src1) >>> src2[4:0]; // @[Fu.scala 107:59]
  wire  _result_valid_5_T = io_datamemio_peidfm == 3'h5; // @[Fu.scala 118:84]
  wire  result_valid_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h5; // @[Fu.scala 118:60]
  Muxonehot outmux ( // @[Fu.scala 66:22]
    .io_in_1(outmux_io_in_1),
    .io_in_2(outmux_io_in_2),
    .io_in_3(outmux_io_in_3),
    .io_in_4(outmux_io_in_4),
    .io_in_5(outmux_io_in_5),
    .io_in_7(outmux_io_in_7),
    .io_in_8(outmux_io_in_8),
    .io_in_9(outmux_io_in_9),
    .io_in_10(outmux_io_in_10),
    .io_in_11(outmux_io_in_11),
    .io_sel_1(outmux_io_sel_1),
    .io_sel_2(outmux_io_sel_2),
    .io_sel_3(outmux_io_sel_3),
    .io_sel_4(outmux_io_sel_4),
    .io_sel_5(outmux_io_sel_5),
    .io_sel_6(outmux_io_sel_6),
    .io_sel_7(outmux_io_sel_7),
    .io_sel_8(outmux_io_sel_8),
    .io_sel_9(outmux_io_sel_9),
    .io_sel_10(outmux_io_sel_10),
    .io_out(outmux_io_out)
  );
  assign io_result_valid = result_valid_1 | result_valid_2 | result_valid_3 | result_valid_4 | result_valid_5 |
    result_valid_5 | result_valid_7 | result_valid_8 | result_valid_9 | result_valid_10 | result_valid_11; // @[Fu.scala 132:43]
  assign io_result_bits = outmux_io_out; // @[Fu.scala 131:18]
  assign io_datamemio_ren = io_fn == 4'h4; // @[Fu.scala 113:14]
  assign outmux_io_in_1 = result_valid_1 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_2 = result_valid_2 ? _result_2_T_5 : 32'h0; // @[Fu.scala 80:52 82:23 63:46]
  assign outmux_io_in_3 = result_valid_3 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_4 = _GEN_15[31:0]; // @[Fu.scala 61:19]
  assign outmux_io_in_5 = io_datamemio_rdata; // @[Fu.scala 61:19 117:27]
  assign outmux_io_in_7 = result_valid_7 ? _result_7_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_8 = result_valid_8 ? io_src1 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_9 = result_valid_9 ? _result_9_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_10 = result_valid_10 ? _result_10_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_11 = result_valid_11 ? _result_11_T_2 : 32'h0; // @[Fu.scala 106:42 107:27 63:46]
  assign outmux_io_sel_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  assign outmux_io_sel_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  assign outmux_io_sel_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  assign outmux_io_sel_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  assign outmux_io_sel_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h5; // @[Fu.scala 118:60]
  assign outmux_io_sel_6 = io_datamemio_memoptvalid & _result_valid_5_T; // @[Fu.scala 127:61]
  assign outmux_io_sel_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  assign outmux_io_sel_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  assign outmux_io_sel_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  assign outmux_io_sel_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
endmodule
module PE_5(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
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
  output        io_datamemio_ren,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
`endif // RANDOMIZE_REG_INIT
  wire  PEctrlregs_clock; // @[PE.scala 19:26]
  wire  PEctrlregs_reset; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 19:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 19:26]
  wire  Fureg_clock; // @[PE.scala 20:21]
  wire  Fureg_reset; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 20:21]
  wire  Fureg_io_enable; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 20:21]
  wire  Instmems_0_clock; // @[PE.scala 22:11]
  wire  Instmems_0_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_1_clock; // @[PE.scala 22:11]
  wire  Instmems_1_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_2_clock; // @[PE.scala 22:11]
  wire  Instmems_2_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_3_clock; // @[PE.scala 22:11]
  wire  Instmems_3_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_4_clock; // @[PE.scala 22:11]
  wire  Instmems_4_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_5_clock; // @[PE.scala 22:11]
  wire  Instmems_5_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 22:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_1; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_alukey; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_3; // @[PE.scala 24:23]
  wire  Decoder_io_fuinstskip; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 24:23]
  wire  Decoder_io_canexe; // @[PE.scala 24:23]
  wire  Constmems_0_clock; // @[PE.scala 26:11]
  wire  Constmems_0_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 26:11]
  wire  Constmems_1_clock; // @[PE.scala 26:11]
  wire  Constmems_1_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 26:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 29:11]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 31:48]
  wire [3:0] Alu_io_fn; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 32:19]
  wire  Alu_io_result_valid; // @[PE.scala 32:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_ren; // @[PE.scala 32:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 32:19]
  wire [2:0] Alu_io_datamemio_peidfm; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 32:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 33:24]
  wire  _T = ~io_run; // @[PE.scala 55:48]
  reg [3:0] reg_; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_0; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_0; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_2; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_3; // @[Pipeline.scala 27:22]
  reg  reg_4_0; // @[Pipeline.scala 27:22]
  reg  reg_4_1; // @[Pipeline.scala 27:22]
  reg  reg_5_1; // @[Pipeline.scala 27:22]
  reg  reg_5_2; // @[Pipeline.scala 27:22]
  reg  reg_5_3; // @[Pipeline.scala 27:22]
  reg  reg_6; // @[Pipeline.scala 27:22]
  reg  reg_7_1; // @[Pipeline.scala 27:22]
  reg  reg_7_2; // @[Pipeline.scala 27:22]
  reg  reg_7_3; // @[Pipeline.scala 27:22]
  reg  reg_8; // @[Pipeline.scala 27:22]
  reg [31:0] reg_9; // @[Pipeline.scala 27:22]
  reg [31:0] reg_10; // @[Pipeline.scala 27:22]
  reg [31:0] reg_11; // @[Pipeline.scala 27:22]
  reg [31:0] reg_12; // @[Pipeline.scala 27:22]
  reg [31:0] reg_13; // @[Pipeline.scala 27:22]
  reg [31:0] reg_14; // @[Pipeline.scala 27:22]
  reg [31:0] reg_15; // @[Pipeline.scala 27:22]
  reg [31:0] reg_16; // @[Pipeline.scala 27:22]
  wire [31:0] _T_18 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_23 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_24 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_26 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_31 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_32 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_34 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_39 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_40 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_42 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_47 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_48 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_50 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_55 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_56 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  wire  _T_59 = PEctrlregs_io_outData_19 == _T_18; // @[PE.scala 84:58]
  wire [31:0] _T_61 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 84:100]
  wire  _T_65 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 85:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 88:51]
  wire  _Kinit_T_16 = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(
    PEctrlregs_io_outData_17) : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 88:8]
  wire  Jchange = _Kinit_T_16 & _T_59; // @[PE.scala 88:162]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 92:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 88:51]
  wire  _Jinit_T_16 = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(
    PEctrlregs_io_outData_16) : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 88:8]
  wire  Ichange = _Jinit_T_16 & Jchange; // @[PE.scala 88:162]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 96:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 88:51]
  wire  _Iinit_T_16 = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(
    PEctrlregs_io_outData_15) : $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 88:8]
  wire  Iinit = _Iinit_T_16 & Ichange; // @[PE.scala 88:162]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 100:55]
  wire [31:0] _T_68 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 102:125]
  wire  regscanupdatestate = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  wire  canupdatestatepipe = reg_8 & io_run & reg_16 == 32'h0; // @[PE.scala 104:48]
  wire  _T_70 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  wire  _T_71 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  wire  _T_72 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  wire  _T_73 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(reg_14); // @[PE.scala 182:95]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(reg_15); // @[PE.scala 183:95]
  PEctrlregs PEctrlregs ( // @[PE.scala 19:26]
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
  Register Fureg ( // @[PE.scala 20:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 22:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 22:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 22:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 22:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 22:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 22:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 24:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_1(Decoder_io_inst_1),
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
    .io_linkneedtosendout_0(Decoder_io_linkneedtosendout_0),
    .io_linkneedtosendout_1(Decoder_io_linkneedtosendout_1),
    .io_linkneedtosendout_2(Decoder_io_linkneedtosendout_2),
    .io_linkneedtosendout_3(Decoder_io_linkneedtosendout_3),
    .io_fuinstskip(Decoder_io_fuinstskip),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil_6 Constmems_0 ( // @[PE.scala 26:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil_6 Constmems_1 ( // @[PE.scala 26:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil_6 Shiftconstmems_0 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil_6 Shiftconstmems_1 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_in_9(Srcmuxs_0_io_in_9),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_in_9(Srcmuxs_1_io_in_9),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu_5 Alu ( // @[PE.scala 32:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_ren(Alu_io_datamemio_ren),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_peidfm(Alu_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 33:24]
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
  assign io_outLinks_1_valid = canupdatestatepipe & reg_5_1 & ~reg_7_1; // @[PE.scala 194:65]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 193:15]
  assign io_outLinks_2_valid = canupdatestatepipe & reg_5_2 & ~reg_7_2; // @[PE.scala 194:65]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 193:15]
  assign io_outLinks_3_valid = canupdatestatepipe & reg_5_3 & ~reg_7_3; // @[PE.scala 194:65]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 193:15]
  assign io_finish = reg_16[0]; // @[PE.scala 209:27]
  assign io_datamemio_ren = Alu_io_datamemio_ren & canupdatestatepipe & ~reg_6; // @[PE.scala 206:65]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_68 : PEctrlregs_io_outData_18
    ; // @[PE.scala 102:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_18 ? _T_61 : PEctrlregs_io_outData_20; // @[PE.scala 84:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 92:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 96:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 100:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_65}; // @[PE.scala 148:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 149:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_21 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  assign PEctrlregs_io_wen_22 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  assign PEctrlregs_io_wen_23 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  assign PEctrlregs_io_wen_24 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  assign PEctrlregs_io_wen_25 = regscanupdatestate & _T_59; // @[PE.scala 112:47]
  assign PEctrlregs_io_wen_26 = regscanupdatestate & Jchange; // @[PE.scala 113:47]
  assign PEctrlregs_io_wen_27 = regscanupdatestate & Ichange; // @[PE.scala 114:47]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 123:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 122:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 124:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 118:19]
  assign Fureg_io_enable = canupdatestatepipe & Alu_io_result_valid; // @[PE.scala 119:41]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'ha; // @[PE.scala 134:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 133:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_0_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'ha & io_waddr < 32'h14; // @[PE.scala 134:82]
  assign Instmems_1_io_waddr = io_waddr - 32'ha; // @[PE.scala 133:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_1_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h14 & io_waddr < 32'h1e; // @[PE.scala 134:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h14; // @[PE.scala 133:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_2_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h1e & io_waddr < 32'h28; // @[PE.scala 134:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h1e; // @[PE.scala 133:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_3_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h32; // @[PE.scala 134:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h28; // @[PE.scala 133:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_4_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h32 & io_waddr < 32'h3c; // @[PE.scala 134:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h32; // @[PE.scala 133:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_5_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_1 = Instmems_1_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 140:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 141:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 142:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 143:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h3c & io_waddr < 32'h44; // @[PE.scala 157:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h3c; // @[PE.scala 156:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_0_io_raddr = _T_70 ? _T_32 : PEctrlregs_io_outData_21; // @[PE.scala 153:27]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h44 & io_waddr < 32'h4c; // @[PE.scala 157:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h44; // @[PE.scala 156:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_1_io_raddr = _T_71 ? _T_40 : PEctrlregs_io_outData_22; // @[PE.scala 154:27]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h4c & io_waddr < 32'h54; // @[PE.scala 166:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h4c; // @[PE.scala 165:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_0_io_raddr = _T_72 ? _T_48 : PEctrlregs_io_outData_23; // @[PE.scala 162:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h54 & io_waddr < 32'h5c; // @[PE.scala 166:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h54; // @[PE.scala 165:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_1_io_raddr = _T_73 ? _T_56 : PEctrlregs_io_outData_24; // @[PE.scala 163:35]
  assign Srcmuxs_0_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_0_io_in_2 = reg_12; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_3 = io_inLinks_0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_4 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_sel = reg_1_0; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_1_io_in_2 = reg_13; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_3 = io_inLinks_0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_4 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_sel = reg_1_1; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Alu_io_fn = reg_; // @[PE.scala 39:23 Pipeline.scala 33:11]
  assign Alu_io_src1 = reg_4_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 182:19]
  assign Alu_io_src2 = reg_4_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 183:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 205:16]
  assign Alu_io_datamemio_peidfm = io_datamemio_peidfm; // @[PE.scala 205:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 205:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 188:68]
  assign Crossbar_io_in_2 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 188:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 188:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 189:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 190:20]
  assign Crossbar_io_select_0 = reg_2_0; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_1 = reg_2_1; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_2 = reg_2_2; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_3 = reg_2_3; // @[PE.scala 41:25 Pipeline.scala 33:11]
  always @(posedge clock) begin
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_ <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_ <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_ <= Decoder_io_alukey; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_0 <= Decoder_io_srckey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_1 <= Decoder_io_srckey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_0 <= Decoder_io_linkkey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_1 <= Decoder_io_linkkey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_2 <= Decoder_io_linkkey_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_3 <= Decoder_io_linkkey_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_0 <= Decoder_io_haveshiftconst_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_1 <= Decoder_io_haveshiftconst_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_1 <= Decoder_io_linkneedtosendout_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_2 <= Decoder_io_linkneedtosendout_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_3 <= Decoder_io_linkneedtosendout_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_6 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_6 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_6 <= Decoder_io_fuinstskip; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_1 <= Decoder_io_linkinstskip_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_2 <= Decoder_io_linkinstskip_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_3 <= Decoder_io_linkinstskip_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_8 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_8 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_8 <= Decoder_io_canexe; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_9 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_9 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_9 <= PEctrlregs_io_outData_25; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_10 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_10 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_10 <= PEctrlregs_io_outData_26; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_11 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_11 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_11 <= PEctrlregs_io_outData_27; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_12 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_12 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_12 <= Constmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_13 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_13 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_13 <= Constmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_14 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_14 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_14 <= Shiftconstmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_15 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_15 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_15 <= Shiftconstmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_16 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_16 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_16 <= PEctrlregs_io_outData_28; // @[Pipeline.scala 31:9]
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
  reg_ = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  reg_1_0 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  reg_1_1 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  reg_2_0 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reg_2_1 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reg_2_2 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  reg_2_3 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  reg_4_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  reg_5_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_5_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_5_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_6 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_7_1 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_7_2 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  reg_7_3 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  reg_8 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  reg_9 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  reg_10 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  reg_11 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  reg_12 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_13 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_14 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  reg_15 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  reg_16 = _RAND_24[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Fu_6(
  input  [3:0]  io_fn,
  input  [31:0] io_src1,
  input  [31:0] io_src2,
  output        io_result_valid,
  output [31:0] io_result_bits,
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
);
  wire [31:0] outmux_io_in_1; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_2; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_3; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_4; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_5; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_7; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_8; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_9; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_11; // @[Fu.scala 66:22]
  wire  outmux_io_sel_1; // @[Fu.scala 66:22]
  wire  outmux_io_sel_2; // @[Fu.scala 66:22]
  wire  outmux_io_sel_3; // @[Fu.scala 66:22]
  wire  outmux_io_sel_4; // @[Fu.scala 66:22]
  wire  outmux_io_sel_5; // @[Fu.scala 66:22]
  wire  outmux_io_sel_6; // @[Fu.scala 66:22]
  wire  outmux_io_sel_7; // @[Fu.scala 66:22]
  wire  outmux_io_sel_8; // @[Fu.scala 66:22]
  wire  outmux_io_sel_9; // @[Fu.scala 66:22]
  wire  outmux_io_sel_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_out; // @[Fu.scala 66:22]
  wire [31:0] src1 = io_src1; // @[Fu.scala 59:22]
  wire [31:0] src2 = io_src2; // @[Fu.scala 60:22]
  wire  result_valid_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  wire [31:0] _result_1_T_3 = $signed(io_src1) + $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  wire [15:0] _result_2_T_1 = src1[15:0]; // @[Fu.scala 82:41]
  wire [15:0] _result_2_T_3 = src2[15:0]; // @[Fu.scala 82:59]
  wire [31:0] _result_2_T_5 = $signed(_result_2_T_1) * $signed(_result_2_T_3); // @[Fu.scala 82:67]
  wire  result_valid_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  wire  result_valid_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  wire [31:0] _result_7_T_2 = $signed(io_src1) | $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  wire  result_valid_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  wire [31:0] _result_9_T_3 = $signed(io_src1) - $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
  wire [31:0] _result_10_T_2 = $signed(io_src1) & $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  wire [62:0] _GEN_0 = {{31{src1[31]}},src1}; // @[Fu.scala 100:35]
  wire [62:0] _result_4_T_2 = $signed(_GEN_0) << src2[4:0]; // @[Fu.scala 100:49]
  wire [62:0] _GEN_15 = result_valid_4 ? _result_4_T_2 : 63'h0; // @[Fu.scala 100:26 99:41 63:46]
  wire  result_valid_11 = io_fn == 4'hb; // @[Fu.scala 106:14]
  wire [31:0] _result_11_T_2 = $signed(io_src1) >>> src2[4:0]; // @[Fu.scala 107:59]
  wire  _result_valid_5_T = io_datamemio_peidfm == 3'h6; // @[Fu.scala 118:84]
  wire  result_valid_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h6; // @[Fu.scala 118:60]
  Muxonehot outmux ( // @[Fu.scala 66:22]
    .io_in_1(outmux_io_in_1),
    .io_in_2(outmux_io_in_2),
    .io_in_3(outmux_io_in_3),
    .io_in_4(outmux_io_in_4),
    .io_in_5(outmux_io_in_5),
    .io_in_7(outmux_io_in_7),
    .io_in_8(outmux_io_in_8),
    .io_in_9(outmux_io_in_9),
    .io_in_10(outmux_io_in_10),
    .io_in_11(outmux_io_in_11),
    .io_sel_1(outmux_io_sel_1),
    .io_sel_2(outmux_io_sel_2),
    .io_sel_3(outmux_io_sel_3),
    .io_sel_4(outmux_io_sel_4),
    .io_sel_5(outmux_io_sel_5),
    .io_sel_6(outmux_io_sel_6),
    .io_sel_7(outmux_io_sel_7),
    .io_sel_8(outmux_io_sel_8),
    .io_sel_9(outmux_io_sel_9),
    .io_sel_10(outmux_io_sel_10),
    .io_out(outmux_io_out)
  );
  assign io_result_valid = result_valid_1 | result_valid_2 | result_valid_3 | result_valid_4 | result_valid_5 |
    result_valid_5 | result_valid_7 | result_valid_8 | result_valid_9 | result_valid_10 | result_valid_11; // @[Fu.scala 132:43]
  assign io_result_bits = outmux_io_out; // @[Fu.scala 131:18]
  assign outmux_io_in_1 = result_valid_1 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_2 = result_valid_2 ? _result_2_T_5 : 32'h0; // @[Fu.scala 80:52 82:23 63:46]
  assign outmux_io_in_3 = result_valid_3 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_4 = _GEN_15[31:0]; // @[Fu.scala 61:19]
  assign outmux_io_in_5 = io_datamemio_rdata; // @[Fu.scala 61:19 117:27]
  assign outmux_io_in_7 = result_valid_7 ? _result_7_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_8 = result_valid_8 ? io_src1 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_9 = result_valid_9 ? _result_9_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_10 = result_valid_10 ? _result_10_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_11 = result_valid_11 ? _result_11_T_2 : 32'h0; // @[Fu.scala 106:42 107:27 63:46]
  assign outmux_io_sel_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  assign outmux_io_sel_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  assign outmux_io_sel_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  assign outmux_io_sel_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  assign outmux_io_sel_5 = io_datamemio_memoptvalid & io_datamemio_peidfm == 3'h6; // @[Fu.scala 118:60]
  assign outmux_io_sel_6 = io_datamemio_memoptvalid & _result_valid_5_T; // @[Fu.scala 127:61]
  assign outmux_io_sel_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  assign outmux_io_sel_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  assign outmux_io_sel_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  assign outmux_io_sel_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
endmodule
module PE_6(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
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
  input  [31:0] io_datamemio_rdata,
  input  [2:0]  io_datamemio_peidfm,
  input         io_datamemio_memoptvalid
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  wire  PEctrlregs_clock; // @[PE.scala 19:26]
  wire  PEctrlregs_reset; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 19:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 19:26]
  wire  Fureg_clock; // @[PE.scala 20:21]
  wire  Fureg_reset; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 20:21]
  wire  Fureg_io_enable; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 20:21]
  wire  Instmems_0_clock; // @[PE.scala 22:11]
  wire  Instmems_0_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_1_clock; // @[PE.scala 22:11]
  wire  Instmems_1_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_2_clock; // @[PE.scala 22:11]
  wire  Instmems_2_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_3_clock; // @[PE.scala 22:11]
  wire  Instmems_3_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_4_clock; // @[PE.scala 22:11]
  wire  Instmems_4_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_5_clock; // @[PE.scala 22:11]
  wire  Instmems_5_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 22:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_1; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_alukey; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_3; // @[PE.scala 24:23]
  wire  Decoder_io_fuinstskip; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 24:23]
  wire  Decoder_io_canexe; // @[PE.scala 24:23]
  wire  Constmems_0_clock; // @[PE.scala 26:11]
  wire  Constmems_0_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 26:11]
  wire  Constmems_1_clock; // @[PE.scala 26:11]
  wire  Constmems_1_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 26:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 29:11]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 31:48]
  wire [3:0] Alu_io_fn; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 32:19]
  wire  Alu_io_result_valid; // @[PE.scala 32:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 32:19]
  wire [31:0] Alu_io_datamemio_rdata; // @[PE.scala 32:19]
  wire [2:0] Alu_io_datamemio_peidfm; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_memoptvalid; // @[PE.scala 32:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 33:24]
  wire  _T = ~io_run; // @[PE.scala 55:48]
  reg [3:0] reg_; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_0; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_0; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_2; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_3; // @[Pipeline.scala 27:22]
  reg  reg_4_0; // @[Pipeline.scala 27:22]
  reg  reg_4_1; // @[Pipeline.scala 27:22]
  reg  reg_5_1; // @[Pipeline.scala 27:22]
  reg  reg_5_2; // @[Pipeline.scala 27:22]
  reg  reg_5_3; // @[Pipeline.scala 27:22]
  reg  reg_7_1; // @[Pipeline.scala 27:22]
  reg  reg_7_2; // @[Pipeline.scala 27:22]
  reg  reg_7_3; // @[Pipeline.scala 27:22]
  reg  reg_8; // @[Pipeline.scala 27:22]
  reg [31:0] reg_9; // @[Pipeline.scala 27:22]
  reg [31:0] reg_10; // @[Pipeline.scala 27:22]
  reg [31:0] reg_11; // @[Pipeline.scala 27:22]
  reg [31:0] reg_12; // @[Pipeline.scala 27:22]
  reg [31:0] reg_13; // @[Pipeline.scala 27:22]
  reg [31:0] reg_14; // @[Pipeline.scala 27:22]
  reg [31:0] reg_15; // @[Pipeline.scala 27:22]
  reg [31:0] reg_16; // @[Pipeline.scala 27:22]
  wire [31:0] _T_18 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_23 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_24 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_26 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_31 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_32 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_34 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_39 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_40 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_42 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_47 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_48 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_50 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_55 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_56 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  wire  _T_59 = PEctrlregs_io_outData_19 == _T_18; // @[PE.scala 84:58]
  wire [31:0] _T_61 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 84:100]
  wire  _T_65 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 85:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 88:51]
  wire  _Kinit_T_16 = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(
    PEctrlregs_io_outData_17) : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 88:8]
  wire  Jchange = _Kinit_T_16 & _T_59; // @[PE.scala 88:162]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 92:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 88:51]
  wire  _Jinit_T_16 = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(
    PEctrlregs_io_outData_16) : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 88:8]
  wire  Ichange = _Jinit_T_16 & Jchange; // @[PE.scala 88:162]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 96:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 88:51]
  wire  _Iinit_T_16 = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(
    PEctrlregs_io_outData_15) : $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 88:8]
  wire  Iinit = _Iinit_T_16 & Ichange; // @[PE.scala 88:162]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 100:55]
  wire [31:0] _T_68 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 102:125]
  wire  regscanupdatestate = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  wire  canupdatestatepipe = reg_8 & io_run & reg_16 == 32'h0; // @[PE.scala 104:48]
  wire  _T_70 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  wire  _T_71 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  wire  _T_72 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  wire  _T_73 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(reg_14); // @[PE.scala 182:95]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(reg_15); // @[PE.scala 183:95]
  PEctrlregs PEctrlregs ( // @[PE.scala 19:26]
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
  Register Fureg ( // @[PE.scala 20:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 22:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 22:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 22:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 22:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 22:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 22:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 24:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_1(Decoder_io_inst_1),
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
    .io_linkneedtosendout_0(Decoder_io_linkneedtosendout_0),
    .io_linkneedtosendout_1(Decoder_io_linkneedtosendout_1),
    .io_linkneedtosendout_2(Decoder_io_linkneedtosendout_2),
    .io_linkneedtosendout_3(Decoder_io_linkneedtosendout_3),
    .io_fuinstskip(Decoder_io_fuinstskip),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil_6 Constmems_0 ( // @[PE.scala 26:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil_6 Constmems_1 ( // @[PE.scala 26:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil_6 Shiftconstmems_0 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil_6 Shiftconstmems_1 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_in_9(Srcmuxs_0_io_in_9),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_in_9(Srcmuxs_1_io_in_9),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu_6 Alu ( // @[PE.scala 32:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_rdata(Alu_io_datamemio_rdata),
    .io_datamemio_peidfm(Alu_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(Alu_io_datamemio_memoptvalid)
  );
  Crossbar Crossbar ( // @[PE.scala 33:24]
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
  assign io_outLinks_1_valid = canupdatestatepipe & reg_5_1 & ~reg_7_1; // @[PE.scala 194:65]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 193:15]
  assign io_outLinks_2_valid = canupdatestatepipe & reg_5_2 & ~reg_7_2; // @[PE.scala 194:65]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 193:15]
  assign io_outLinks_3_valid = canupdatestatepipe & reg_5_3 & ~reg_7_3; // @[PE.scala 194:65]
  assign io_outLinks_3_bits = Crossbar_io_out_3; // @[PE.scala 193:15]
  assign io_finish = reg_16[0]; // @[PE.scala 209:27]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_68 : PEctrlregs_io_outData_18
    ; // @[PE.scala 102:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_18 ? _T_61 : PEctrlregs_io_outData_20; // @[PE.scala 84:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 92:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 96:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 100:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_65}; // @[PE.scala 148:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 149:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_21 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  assign PEctrlregs_io_wen_22 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  assign PEctrlregs_io_wen_23 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  assign PEctrlregs_io_wen_24 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  assign PEctrlregs_io_wen_25 = regscanupdatestate & _T_59; // @[PE.scala 112:47]
  assign PEctrlregs_io_wen_26 = regscanupdatestate & Jchange; // @[PE.scala 113:47]
  assign PEctrlregs_io_wen_27 = regscanupdatestate & Ichange; // @[PE.scala 114:47]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 123:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 122:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 124:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 118:19]
  assign Fureg_io_enable = canupdatestatepipe & Alu_io_result_valid; // @[PE.scala 119:41]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'ha; // @[PE.scala 134:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 133:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_0_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'ha & io_waddr < 32'h14; // @[PE.scala 134:82]
  assign Instmems_1_io_waddr = io_waddr - 32'ha; // @[PE.scala 133:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_1_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h14 & io_waddr < 32'h1e; // @[PE.scala 134:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h14; // @[PE.scala 133:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_2_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h1e & io_waddr < 32'h28; // @[PE.scala 134:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h1e; // @[PE.scala 133:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_3_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h32; // @[PE.scala 134:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h28; // @[PE.scala 133:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_4_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h32 & io_waddr < 32'h3c; // @[PE.scala 134:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h32; // @[PE.scala 133:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_5_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_1 = Instmems_1_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 140:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 141:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 142:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 143:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h3c & io_waddr < 32'h44; // @[PE.scala 157:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h3c; // @[PE.scala 156:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_0_io_raddr = _T_70 ? _T_32 : PEctrlregs_io_outData_21; // @[PE.scala 153:27]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h44 & io_waddr < 32'h4c; // @[PE.scala 157:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h44; // @[PE.scala 156:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_1_io_raddr = _T_71 ? _T_40 : PEctrlregs_io_outData_22; // @[PE.scala 154:27]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h4c & io_waddr < 32'h54; // @[PE.scala 166:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h4c; // @[PE.scala 165:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_0_io_raddr = _T_72 ? _T_48 : PEctrlregs_io_outData_23; // @[PE.scala 162:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h54 & io_waddr < 32'h5c; // @[PE.scala 166:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h54; // @[PE.scala 165:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_1_io_raddr = _T_73 ? _T_56 : PEctrlregs_io_outData_24; // @[PE.scala 163:35]
  assign Srcmuxs_0_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_0_io_in_2 = reg_12; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_3 = io_inLinks_0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_4 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_sel = reg_1_0; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_1_io_in_2 = reg_13; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_3 = io_inLinks_0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_4 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_5 = io_inLinks_2; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_sel = reg_1_1; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Alu_io_fn = reg_; // @[PE.scala 39:23 Pipeline.scala 33:11]
  assign Alu_io_src1 = reg_4_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 182:19]
  assign Alu_io_src2 = reg_4_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 183:19]
  assign Alu_io_datamemio_rdata = io_datamemio_rdata; // @[PE.scala 205:16]
  assign Alu_io_datamemio_peidfm = io_datamemio_peidfm; // @[PE.scala 205:16]
  assign Alu_io_datamemio_memoptvalid = io_datamemio_memoptvalid; // @[PE.scala 205:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 188:68]
  assign Crossbar_io_in_2 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_3 = io_inLinks_2; // @[PE.scala 188:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 188:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 189:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 190:20]
  assign Crossbar_io_select_0 = reg_2_0; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_1 = reg_2_1; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_2 = reg_2_2; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_3 = reg_2_3; // @[PE.scala 41:25 Pipeline.scala 33:11]
  always @(posedge clock) begin
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_ <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_ <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_ <= Decoder_io_alukey; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_0 <= Decoder_io_srckey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_1 <= Decoder_io_srckey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_0 <= Decoder_io_linkkey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_1 <= Decoder_io_linkkey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_2 <= Decoder_io_linkkey_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_3 <= Decoder_io_linkkey_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_0 <= Decoder_io_haveshiftconst_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_1 <= Decoder_io_haveshiftconst_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_1 <= Decoder_io_linkneedtosendout_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_2 <= Decoder_io_linkneedtosendout_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_3 <= Decoder_io_linkneedtosendout_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_1 <= Decoder_io_linkinstskip_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_2 <= Decoder_io_linkinstskip_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_3 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_3 <= Decoder_io_linkinstskip_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_8 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_8 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_8 <= Decoder_io_canexe; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_9 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_9 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_9 <= PEctrlregs_io_outData_25; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_10 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_10 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_10 <= PEctrlregs_io_outData_26; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_11 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_11 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_11 <= PEctrlregs_io_outData_27; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_12 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_12 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_12 <= Constmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_13 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_13 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_13 <= Constmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_14 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_14 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_14 <= Shiftconstmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_15 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_15 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_15 <= Shiftconstmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_16 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_16 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_16 <= PEctrlregs_io_outData_28; // @[Pipeline.scala 31:9]
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
  reg_ = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  reg_1_0 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  reg_1_1 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  reg_2_0 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reg_2_1 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reg_2_2 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  reg_2_3 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  reg_4_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  reg_5_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_5_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_5_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_7_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_7_2 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_7_3 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  reg_8 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  reg_9 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  reg_10 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  reg_11 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  reg_12 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  reg_13 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_14 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_15 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  reg_16 = _RAND_23[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Fu_7(
  input  [3:0]  io_fn,
  input  [31:0] io_src1,
  input  [31:0] io_src2,
  output        io_result_valid,
  output [31:0] io_result_bits,
  output        io_datamemio_wen,
  output [31:0] io_datamemio_wdata,
  input  [2:0]  io_datamemio_peidfm
);
  wire [31:0] outmux_io_in_1; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_2; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_3; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_4; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_5; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_7; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_8; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_9; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_in_11; // @[Fu.scala 66:22]
  wire  outmux_io_sel_1; // @[Fu.scala 66:22]
  wire  outmux_io_sel_2; // @[Fu.scala 66:22]
  wire  outmux_io_sel_3; // @[Fu.scala 66:22]
  wire  outmux_io_sel_4; // @[Fu.scala 66:22]
  wire  outmux_io_sel_5; // @[Fu.scala 66:22]
  wire  outmux_io_sel_6; // @[Fu.scala 66:22]
  wire  outmux_io_sel_7; // @[Fu.scala 66:22]
  wire  outmux_io_sel_8; // @[Fu.scala 66:22]
  wire  outmux_io_sel_9; // @[Fu.scala 66:22]
  wire  outmux_io_sel_10; // @[Fu.scala 66:22]
  wire [31:0] outmux_io_out; // @[Fu.scala 66:22]
  wire [31:0] src1 = io_src1; // @[Fu.scala 59:22]
  wire [31:0] src2 = io_src2; // @[Fu.scala 60:22]
  wire  result_valid_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  wire [31:0] _result_1_T_3 = $signed(io_src1) + $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  wire [15:0] _result_2_T_1 = src1[15:0]; // @[Fu.scala 82:41]
  wire [15:0] _result_2_T_3 = src2[15:0]; // @[Fu.scala 82:59]
  wire [31:0] _result_2_T_5 = $signed(_result_2_T_1) * $signed(_result_2_T_3); // @[Fu.scala 82:67]
  wire  result_valid_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  wire  result_valid_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  wire [31:0] _result_7_T_2 = $signed(io_src1) | $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  wire  result_valid_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  wire [31:0] _result_9_T_3 = $signed(io_src1) - $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
  wire [31:0] _result_10_T_2 = $signed(io_src1) & $signed(io_src2); // @[Fu.scala 84:41]
  wire  result_valid_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  wire [62:0] _GEN_0 = {{31{src1[31]}},src1}; // @[Fu.scala 100:35]
  wire [62:0] _result_4_T_2 = $signed(_GEN_0) << src2[4:0]; // @[Fu.scala 100:49]
  wire [62:0] _GEN_15 = result_valid_4 ? _result_4_T_2 : 63'h0; // @[Fu.scala 100:26 99:41 63:46]
  wire  result_valid_11 = io_fn == 4'hb; // @[Fu.scala 106:14]
  wire [31:0] _result_11_T_2 = $signed(io_src1) >>> src2[4:0]; // @[Fu.scala 107:59]
  wire  result_valid_5 = io_datamemio_peidfm == 3'h7; // @[Fu.scala 118:84]
  Muxonehot outmux ( // @[Fu.scala 66:22]
    .io_in_1(outmux_io_in_1),
    .io_in_2(outmux_io_in_2),
    .io_in_3(outmux_io_in_3),
    .io_in_4(outmux_io_in_4),
    .io_in_5(outmux_io_in_5),
    .io_in_7(outmux_io_in_7),
    .io_in_8(outmux_io_in_8),
    .io_in_9(outmux_io_in_9),
    .io_in_10(outmux_io_in_10),
    .io_in_11(outmux_io_in_11),
    .io_sel_1(outmux_io_sel_1),
    .io_sel_2(outmux_io_sel_2),
    .io_sel_3(outmux_io_sel_3),
    .io_sel_4(outmux_io_sel_4),
    .io_sel_5(outmux_io_sel_5),
    .io_sel_6(outmux_io_sel_6),
    .io_sel_7(outmux_io_sel_7),
    .io_sel_8(outmux_io_sel_8),
    .io_sel_9(outmux_io_sel_9),
    .io_sel_10(outmux_io_sel_10),
    .io_out(outmux_io_out)
  );
  assign io_result_valid = result_valid_1 | result_valid_2 | result_valid_3 | result_valid_4 | result_valid_5 |
    result_valid_5 | result_valid_7 | result_valid_8 | result_valid_9 | result_valid_10 | result_valid_11; // @[Fu.scala 132:43]
  assign io_result_bits = outmux_io_out; // @[Fu.scala 131:18]
  assign io_datamemio_wen = io_fn == 4'h5; // @[Fu.scala 122:14]
  assign io_datamemio_wdata = io_fn == 4'h5 ? io_src1 : 32'h0; // @[Fu.scala 122:43 124:25 55:21]
  assign outmux_io_in_1 = result_valid_1 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_2 = result_valid_2 ? _result_2_T_5 : 32'h0; // @[Fu.scala 80:52 82:23 63:46]
  assign outmux_io_in_3 = result_valid_3 ? _result_1_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_4 = _GEN_15[31:0]; // @[Fu.scala 61:19]
  assign outmux_io_in_5 = 32'h0; // @[Fu.scala 61:19 117:27]
  assign outmux_io_in_7 = result_valid_7 ? _result_7_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_8 = result_valid_8 ? io_src1 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_9 = result_valid_9 ? _result_9_T_3 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_10 = result_valid_10 ? _result_10_T_2 : 32'h0; // @[Fu.scala 80:52 84:23 63:46]
  assign outmux_io_in_11 = result_valid_11 ? _result_11_T_2 : 32'h0; // @[Fu.scala 106:42 107:27 63:46]
  assign outmux_io_sel_1 = io_fn == 4'h2; // @[Fu.scala 80:14]
  assign outmux_io_sel_2 = io_fn == 4'h1; // @[Fu.scala 80:14]
  assign outmux_io_sel_3 = io_fn == 4'h3; // @[Fu.scala 80:14]
  assign outmux_io_sel_4 = io_fn == 4'h6; // @[Fu.scala 99:14]
  assign outmux_io_sel_5 = io_datamemio_peidfm == 3'h7; // @[Fu.scala 118:84]
  assign outmux_io_sel_6 = io_datamemio_peidfm == 3'h7; // @[Fu.scala 127:85]
  assign outmux_io_sel_7 = io_fn == 4'h7; // @[Fu.scala 80:14]
  assign outmux_io_sel_8 = io_fn == 4'h8; // @[Fu.scala 80:14]
  assign outmux_io_sel_9 = io_fn == 4'ha; // @[Fu.scala 80:14]
  assign outmux_io_sel_10 = io_fn == 4'h9; // @[Fu.scala 80:14]
endmodule
module PE_7(
  input         clock,
  input         reset,
  input  [31:0] io_inLinks_0,
  input  [31:0] io_inLinks_3,
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
  output [31:0] io_datamemio_wdata,
  input  [2:0]  io_datamemio_peidfm
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
`endif // RANDOMIZE_REG_INIT
  wire  PEctrlregs_clock; // @[PE.scala 19:26]
  wire  PEctrlregs_reset; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_inData_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_0; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_1; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_2; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_3; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_4; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_5; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_6; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_7; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_8; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_9; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_10; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_11; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_12; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_13; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_14; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_15; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_16; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_17; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_18; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_19; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_20; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_21; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_22; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_23; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_24; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_25; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_26; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_27; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_outData_28; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_18; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_19; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_20; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_21; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_22; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_23; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_24; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_25; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_26; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_27; // @[PE.scala 19:26]
  wire  PEctrlregs_io_wen_28; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwaddr; // @[PE.scala 19:26]
  wire  PEctrlregs_io_configwen; // @[PE.scala 19:26]
  wire [31:0] PEctrlregs_io_configwdata; // @[PE.scala 19:26]
  wire  Fureg_clock; // @[PE.scala 20:21]
  wire  Fureg_reset; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_inData; // @[PE.scala 20:21]
  wire  Fureg_io_enable; // @[PE.scala 20:21]
  wire [31:0] Fureg_io_outData; // @[PE.scala 20:21]
  wire  Instmems_0_clock; // @[PE.scala 22:11]
  wire  Instmems_0_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_0_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_1_clock; // @[PE.scala 22:11]
  wire  Instmems_1_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_1_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_2_clock; // @[PE.scala 22:11]
  wire  Instmems_2_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_2_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_3_clock; // @[PE.scala 22:11]
  wire  Instmems_3_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_3_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_4_clock; // @[PE.scala 22:11]
  wire  Instmems_4_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_4_io_rdata; // @[PE.scala 22:11]
  wire  Instmems_5_clock; // @[PE.scala 22:11]
  wire  Instmems_5_io_wen; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_waddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_wdata; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_raddr; // @[PE.scala 22:11]
  wire [31:0] Instmems_5_io_rdata; // @[PE.scala 22:11]
  wire [31:0] Decoder_io_inst_0; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_1; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_2; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_3; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_4; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_inst_5; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iicnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_iinum; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclecnt; // @[PE.scala 24:23]
  wire [31:0] Decoder_io_startcyclenum; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_alukey; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_0; // @[PE.scala 24:23]
  wire [3:0] Decoder_io_srckey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_0; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_1; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_2; // @[PE.scala 24:23]
  wire [2:0] Decoder_io_linkkey_3; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_useconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_0; // @[PE.scala 24:23]
  wire  Decoder_io_haveshiftconst_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkneedtosendout_3; // @[PE.scala 24:23]
  wire  Decoder_io_fuinstskip; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_0; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_1; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_2; // @[PE.scala 24:23]
  wire  Decoder_io_linkinstskip_3; // @[PE.scala 24:23]
  wire  Decoder_io_canexe; // @[PE.scala 24:23]
  wire  Constmems_0_clock; // @[PE.scala 26:11]
  wire  Constmems_0_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_0_io_rdata; // @[PE.scala 26:11]
  wire  Constmems_1_clock; // @[PE.scala 26:11]
  wire  Constmems_1_io_wen; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_waddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_wdata; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_raddr; // @[PE.scala 26:11]
  wire [31:0] Constmems_1_io_rdata; // @[PE.scala 26:11]
  wire  Shiftconstmems_0_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_0_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_0_io_rdata; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_clock; // @[PE.scala 29:11]
  wire  Shiftconstmems_1_io_wen; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_waddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_wdata; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_raddr; // @[PE.scala 29:11]
  wire [31:0] Shiftconstmems_1_io_rdata; // @[PE.scala 29:11]
  wire [31:0] Srcmuxs_0_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_0_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_0_io_out; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_1; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_2; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_3; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_4; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_5; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_6; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_7; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_8; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_in_9; // @[PE.scala 31:48]
  wire [3:0] Srcmuxs_1_io_sel; // @[PE.scala 31:48]
  wire [31:0] Srcmuxs_1_io_out; // @[PE.scala 31:48]
  wire [3:0] Alu_io_fn; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src1; // @[PE.scala 32:19]
  wire [31:0] Alu_io_src2; // @[PE.scala 32:19]
  wire  Alu_io_result_valid; // @[PE.scala 32:19]
  wire [31:0] Alu_io_result_bits; // @[PE.scala 32:19]
  wire  Alu_io_datamemio_wen; // @[PE.scala 32:19]
  wire [31:0] Alu_io_datamemio_wdata; // @[PE.scala 32:19]
  wire [2:0] Alu_io_datamemio_peidfm; // @[PE.scala 32:19]
  wire [31:0] Crossbar_io_in_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_4; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_5; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_in_6; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_0; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_1; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_2; // @[PE.scala 33:24]
  wire [2:0] Crossbar_io_select_3; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_0; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_1; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_2; // @[PE.scala 33:24]
  wire [31:0] Crossbar_io_out_3; // @[PE.scala 33:24]
  wire  _T = ~io_run; // @[PE.scala 55:48]
  reg [3:0] reg_; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_0; // @[Pipeline.scala 27:22]
  reg [3:0] reg_1_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_0; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_1; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_2; // @[Pipeline.scala 27:22]
  reg [2:0] reg_2_3; // @[Pipeline.scala 27:22]
  reg  reg_4_0; // @[Pipeline.scala 27:22]
  reg  reg_4_1; // @[Pipeline.scala 27:22]
  reg  reg_5_1; // @[Pipeline.scala 27:22]
  reg  reg_5_2; // @[Pipeline.scala 27:22]
  reg  reg_6; // @[Pipeline.scala 27:22]
  reg  reg_7_1; // @[Pipeline.scala 27:22]
  reg  reg_7_2; // @[Pipeline.scala 27:22]
  reg  reg_8; // @[Pipeline.scala 27:22]
  reg [31:0] reg_9; // @[Pipeline.scala 27:22]
  reg [31:0] reg_10; // @[Pipeline.scala 27:22]
  reg [31:0] reg_11; // @[Pipeline.scala 27:22]
  reg [31:0] reg_12; // @[Pipeline.scala 27:22]
  reg [31:0] reg_13; // @[Pipeline.scala 27:22]
  reg [31:0] reg_14; // @[Pipeline.scala 27:22]
  reg [31:0] reg_15; // @[Pipeline.scala 27:22]
  reg [31:0] reg_16; // @[Pipeline.scala 27:22]
  wire [31:0] _T_18 = PEctrlregs_io_outData_0 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_23 = PEctrlregs_io_outData_19 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_24 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_26 = PEctrlregs_io_outData_5 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_31 = PEctrlregs_io_outData_21 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_32 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_34 = PEctrlregs_io_outData_6 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_39 = PEctrlregs_io_outData_22 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_40 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_42 = PEctrlregs_io_outData_7 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_47 = PEctrlregs_io_outData_23 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_48 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  wire [31:0] _T_50 = PEctrlregs_io_outData_8 - 32'h1; // @[PE.scala 78:41]
  wire [31:0] _T_55 = PEctrlregs_io_outData_24 + 32'h1; // @[PE.scala 78:77]
  wire [31:0] _T_56 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  wire  _T_59 = PEctrlregs_io_outData_19 == _T_18; // @[PE.scala 84:58]
  wire [31:0] _T_61 = PEctrlregs_io_outData_20 + 32'h1; // @[PE.scala 84:100]
  wire  _T_65 = PEctrlregs_io_outData_20 == PEctrlregs_io_outData_4 & PEctrlregs_io_outData_19 ==
    PEctrlregs_io_outData_3; // @[PE.scala 85:83]
  wire [31:0] _Kinit_T_6 = $signed(PEctrlregs_io_outData_25) + $signed(PEctrlregs_io_outData_14); // @[PE.scala 88:51]
  wire  _Kinit_T_16 = $signed(PEctrlregs_io_outData_14) > 32'sh0 ? $signed(_Kinit_T_6) >= $signed(
    PEctrlregs_io_outData_17) : $signed(_Kinit_T_6) <= $signed(PEctrlregs_io_outData_17); // @[PE.scala 88:8]
  wire  Jchange = _Kinit_T_16 & _T_59; // @[PE.scala 88:162]
  wire [31:0] _Knew_T_1 = PEctrlregs_io_outData_25 + PEctrlregs_io_outData_14; // @[PE.scala 92:55]
  wire [31:0] _Jinit_T_6 = $signed(PEctrlregs_io_outData_26) + $signed(PEctrlregs_io_outData_13); // @[PE.scala 88:51]
  wire  _Jinit_T_16 = $signed(PEctrlregs_io_outData_13) > 32'sh0 ? $signed(_Jinit_T_6) >= $signed(
    PEctrlregs_io_outData_16) : $signed(_Jinit_T_6) <= $signed(PEctrlregs_io_outData_16); // @[PE.scala 88:8]
  wire  Ichange = _Jinit_T_16 & Jchange; // @[PE.scala 88:162]
  wire [31:0] _Jnew_T_1 = PEctrlregs_io_outData_26 + PEctrlregs_io_outData_13; // @[PE.scala 96:55]
  wire [31:0] _Iinit_T_6 = $signed(PEctrlregs_io_outData_27) + $signed(PEctrlregs_io_outData_12); // @[PE.scala 88:51]
  wire  _Iinit_T_16 = $signed(PEctrlregs_io_outData_12) > 32'sh0 ? $signed(_Iinit_T_6) >= $signed(
    PEctrlregs_io_outData_15) : $signed(_Iinit_T_6) <= $signed(PEctrlregs_io_outData_15); // @[PE.scala 88:8]
  wire  Iinit = _Iinit_T_16 & Ichange; // @[PE.scala 88:162]
  wire [31:0] _Inew_T_1 = PEctrlregs_io_outData_27 + PEctrlregs_io_outData_12; // @[PE.scala 100:55]
  wire [31:0] _T_68 = PEctrlregs_io_outData_18 + 32'h1; // @[PE.scala 102:125]
  wire  regscanupdatestate = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  wire  canupdatestatepipe = reg_8 & io_run & reg_16 == 32'h0; // @[PE.scala 104:48]
  wire  _T_70 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  wire  _T_71 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  wire  _T_72 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  wire  _T_73 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  wire [31:0] _Alu_io_src1_T_5 = $signed(Srcmuxs_0_io_out) + $signed(reg_14); // @[PE.scala 182:95]
  wire [31:0] _Alu_io_src2_T_5 = $signed(Srcmuxs_1_io_out) + $signed(reg_15); // @[PE.scala 183:95]
  wire  _io_datamemio_ren_T_1 = ~reg_6; // @[PE.scala 206:68]
  PEctrlregs PEctrlregs ( // @[PE.scala 19:26]
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
  Register Fureg ( // @[PE.scala 20:21]
    .clock(Fureg_clock),
    .reset(Fureg_reset),
    .io_inData(Fureg_io_inData),
    .io_enable(Fureg_io_enable),
    .io_outData(Fureg_io_outData)
  );
  Memutil Instmems_0 ( // @[PE.scala 22:11]
    .clock(Instmems_0_clock),
    .io_wen(Instmems_0_io_wen),
    .io_waddr(Instmems_0_io_waddr),
    .io_wdata(Instmems_0_io_wdata),
    .io_raddr(Instmems_0_io_raddr),
    .io_rdata(Instmems_0_io_rdata)
  );
  Memutil Instmems_1 ( // @[PE.scala 22:11]
    .clock(Instmems_1_clock),
    .io_wen(Instmems_1_io_wen),
    .io_waddr(Instmems_1_io_waddr),
    .io_wdata(Instmems_1_io_wdata),
    .io_raddr(Instmems_1_io_raddr),
    .io_rdata(Instmems_1_io_rdata)
  );
  Memutil Instmems_2 ( // @[PE.scala 22:11]
    .clock(Instmems_2_clock),
    .io_wen(Instmems_2_io_wen),
    .io_waddr(Instmems_2_io_waddr),
    .io_wdata(Instmems_2_io_wdata),
    .io_raddr(Instmems_2_io_raddr),
    .io_rdata(Instmems_2_io_rdata)
  );
  Memutil Instmems_3 ( // @[PE.scala 22:11]
    .clock(Instmems_3_clock),
    .io_wen(Instmems_3_io_wen),
    .io_waddr(Instmems_3_io_waddr),
    .io_wdata(Instmems_3_io_wdata),
    .io_raddr(Instmems_3_io_raddr),
    .io_rdata(Instmems_3_io_rdata)
  );
  Memutil Instmems_4 ( // @[PE.scala 22:11]
    .clock(Instmems_4_clock),
    .io_wen(Instmems_4_io_wen),
    .io_waddr(Instmems_4_io_waddr),
    .io_wdata(Instmems_4_io_wdata),
    .io_raddr(Instmems_4_io_raddr),
    .io_rdata(Instmems_4_io_rdata)
  );
  Memutil Instmems_5 ( // @[PE.scala 22:11]
    .clock(Instmems_5_clock),
    .io_wen(Instmems_5_io_wen),
    .io_waddr(Instmems_5_io_waddr),
    .io_wdata(Instmems_5_io_wdata),
    .io_raddr(Instmems_5_io_raddr),
    .io_rdata(Instmems_5_io_rdata)
  );
  PEDecode Decoder ( // @[PE.scala 24:23]
    .io_inst_0(Decoder_io_inst_0),
    .io_inst_1(Decoder_io_inst_1),
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
    .io_linkneedtosendout_0(Decoder_io_linkneedtosendout_0),
    .io_linkneedtosendout_1(Decoder_io_linkneedtosendout_1),
    .io_linkneedtosendout_2(Decoder_io_linkneedtosendout_2),
    .io_linkneedtosendout_3(Decoder_io_linkneedtosendout_3),
    .io_fuinstskip(Decoder_io_fuinstskip),
    .io_linkinstskip_0(Decoder_io_linkinstskip_0),
    .io_linkinstskip_1(Decoder_io_linkinstskip_1),
    .io_linkinstskip_2(Decoder_io_linkinstskip_2),
    .io_linkinstskip_3(Decoder_io_linkinstskip_3),
    .io_canexe(Decoder_io_canexe)
  );
  Memutil_6 Constmems_0 ( // @[PE.scala 26:11]
    .clock(Constmems_0_clock),
    .io_wen(Constmems_0_io_wen),
    .io_waddr(Constmems_0_io_waddr),
    .io_wdata(Constmems_0_io_wdata),
    .io_raddr(Constmems_0_io_raddr),
    .io_rdata(Constmems_0_io_rdata)
  );
  Memutil_6 Constmems_1 ( // @[PE.scala 26:11]
    .clock(Constmems_1_clock),
    .io_wen(Constmems_1_io_wen),
    .io_waddr(Constmems_1_io_waddr),
    .io_wdata(Constmems_1_io_wdata),
    .io_raddr(Constmems_1_io_raddr),
    .io_rdata(Constmems_1_io_rdata)
  );
  Memutil_6 Shiftconstmems_0 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_0_clock),
    .io_wen(Shiftconstmems_0_io_wen),
    .io_waddr(Shiftconstmems_0_io_waddr),
    .io_wdata(Shiftconstmems_0_io_wdata),
    .io_raddr(Shiftconstmems_0_io_raddr),
    .io_rdata(Shiftconstmems_0_io_rdata)
  );
  Memutil_6 Shiftconstmems_1 ( // @[PE.scala 29:11]
    .clock(Shiftconstmems_1_clock),
    .io_wen(Shiftconstmems_1_io_wen),
    .io_waddr(Shiftconstmems_1_io_waddr),
    .io_wdata(Shiftconstmems_1_io_wdata),
    .io_raddr(Shiftconstmems_1_io_raddr),
    .io_rdata(Shiftconstmems_1_io_rdata)
  );
  GenericMux Srcmuxs_0 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_0_io_in_1),
    .io_in_2(Srcmuxs_0_io_in_2),
    .io_in_3(Srcmuxs_0_io_in_3),
    .io_in_4(Srcmuxs_0_io_in_4),
    .io_in_5(Srcmuxs_0_io_in_5),
    .io_in_6(Srcmuxs_0_io_in_6),
    .io_in_7(Srcmuxs_0_io_in_7),
    .io_in_8(Srcmuxs_0_io_in_8),
    .io_in_9(Srcmuxs_0_io_in_9),
    .io_sel(Srcmuxs_0_io_sel),
    .io_out(Srcmuxs_0_io_out)
  );
  GenericMux Srcmuxs_1 ( // @[PE.scala 31:48]
    .io_in_1(Srcmuxs_1_io_in_1),
    .io_in_2(Srcmuxs_1_io_in_2),
    .io_in_3(Srcmuxs_1_io_in_3),
    .io_in_4(Srcmuxs_1_io_in_4),
    .io_in_5(Srcmuxs_1_io_in_5),
    .io_in_6(Srcmuxs_1_io_in_6),
    .io_in_7(Srcmuxs_1_io_in_7),
    .io_in_8(Srcmuxs_1_io_in_8),
    .io_in_9(Srcmuxs_1_io_in_9),
    .io_sel(Srcmuxs_1_io_sel),
    .io_out(Srcmuxs_1_io_out)
  );
  Fu_7 Alu ( // @[PE.scala 32:19]
    .io_fn(Alu_io_fn),
    .io_src1(Alu_io_src1),
    .io_src2(Alu_io_src2),
    .io_result_valid(Alu_io_result_valid),
    .io_result_bits(Alu_io_result_bits),
    .io_datamemio_wen(Alu_io_datamemio_wen),
    .io_datamemio_wdata(Alu_io_datamemio_wdata),
    .io_datamemio_peidfm(Alu_io_datamemio_peidfm)
  );
  Crossbar Crossbar ( // @[PE.scala 33:24]
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
  assign io_outLinks_1_valid = canupdatestatepipe & reg_5_1 & ~reg_7_1; // @[PE.scala 194:65]
  assign io_outLinks_1_bits = Crossbar_io_out_1; // @[PE.scala 193:15]
  assign io_outLinks_2_valid = canupdatestatepipe & reg_5_2 & ~reg_7_2; // @[PE.scala 194:65]
  assign io_outLinks_2_bits = Crossbar_io_out_2; // @[PE.scala 193:15]
  assign io_finish = reg_16[0]; // @[PE.scala 209:27]
  assign io_datamemio_wen = Alu_io_datamemio_wen & canupdatestatepipe & _io_datamemio_ren_T_1; // @[PE.scala 207:65]
  assign io_datamemio_wdata = Alu_io_datamemio_wdata; // @[PE.scala 205:16]
  assign PEctrlregs_clock = clock;
  assign PEctrlregs_reset = reset;
  assign PEctrlregs_io_inData_18 = PEctrlregs_io_outData_18 < PEctrlregs_io_outData_2 ? _T_68 : PEctrlregs_io_outData_18
    ; // @[PE.scala 102:46]
  assign PEctrlregs_io_inData_19 = PEctrlregs_io_outData_19 < _T_18 & PEctrlregs_io_outData_0 > 32'h0 ? _T_23 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_20 = PEctrlregs_io_outData_19 == _T_18 ? _T_61 : PEctrlregs_io_outData_20; // @[PE.scala 84:38]
  assign PEctrlregs_io_inData_21 = PEctrlregs_io_outData_21 < _T_26 & PEctrlregs_io_outData_5 > 32'h0 ? _T_31 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_22 = PEctrlregs_io_outData_22 < _T_34 & PEctrlregs_io_outData_6 > 32'h0 ? _T_39 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_23 = PEctrlregs_io_outData_23 < _T_42 & PEctrlregs_io_outData_7 > 32'h0 ? _T_47 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_24 = PEctrlregs_io_outData_24 < _T_50 & PEctrlregs_io_outData_8 > 32'h0 ? _T_55 : 32'h0; // @[PE.scala 78:16]
  assign PEctrlregs_io_inData_25 = Jchange ? PEctrlregs_io_outData_11 : _Knew_T_1; // @[PE.scala 92:17]
  assign PEctrlregs_io_inData_26 = Ichange ? PEctrlregs_io_outData_10 : _Jnew_T_1; // @[PE.scala 96:17]
  assign PEctrlregs_io_inData_27 = Iinit ? PEctrlregs_io_outData_9 : _Inew_T_1; // @[PE.scala 100:17]
  assign PEctrlregs_io_inData_28 = {{31'd0}, _T_65}; // @[PE.scala 148:34]
  assign PEctrlregs_io_wen_18 = io_run; // @[PE.scala 149:31]
  assign PEctrlregs_io_wen_19 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_20 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_wen_21 = regscanupdatestate & Decoder_io_useconst_0; // @[PE.scala 106:55]
  assign PEctrlregs_io_wen_22 = regscanupdatestate & Decoder_io_useconst_1; // @[PE.scala 107:55]
  assign PEctrlregs_io_wen_23 = regscanupdatestate & Decoder_io_haveshiftconst_0; // @[PE.scala 108:60]
  assign PEctrlregs_io_wen_24 = regscanupdatestate & Decoder_io_haveshiftconst_1; // @[PE.scala 109:61]
  assign PEctrlregs_io_wen_25 = regscanupdatestate & _T_59; // @[PE.scala 112:47]
  assign PEctrlregs_io_wen_26 = regscanupdatestate & Jchange; // @[PE.scala 113:47]
  assign PEctrlregs_io_wen_27 = regscanupdatestate & Ichange; // @[PE.scala 114:47]
  assign PEctrlregs_io_wen_28 = Decoder_io_canexe & io_run & PEctrlregs_io_outData_28 == 32'h0; // @[PE.scala 103:54]
  assign PEctrlregs_io_configwaddr = io_waddr; // @[PE.scala 123:29]
  assign PEctrlregs_io_configwen = io_wen; // @[PE.scala 122:27]
  assign PEctrlregs_io_configwdata = io_wdata; // @[PE.scala 124:29]
  assign Fureg_clock = clock;
  assign Fureg_reset = reset;
  assign Fureg_io_inData = Alu_io_result_bits; // @[PE.scala 118:19]
  assign Fureg_io_enable = canupdatestatepipe & Alu_io_result_valid; // @[PE.scala 119:41]
  assign Instmems_0_clock = clock;
  assign Instmems_0_io_wen = io_wen & io_waddr < 32'ha; // @[PE.scala 134:82]
  assign Instmems_0_io_waddr = io_waddr - 32'h0; // @[PE.scala 133:36]
  assign Instmems_0_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_0_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_1_clock = clock;
  assign Instmems_1_io_wen = io_wen & io_waddr >= 32'ha & io_waddr < 32'h14; // @[PE.scala 134:82]
  assign Instmems_1_io_waddr = io_waddr - 32'ha; // @[PE.scala 133:36]
  assign Instmems_1_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_1_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_2_clock = clock;
  assign Instmems_2_io_wen = io_wen & io_waddr >= 32'h14 & io_waddr < 32'h1e; // @[PE.scala 134:82]
  assign Instmems_2_io_waddr = io_waddr - 32'h14; // @[PE.scala 133:36]
  assign Instmems_2_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_2_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_3_clock = clock;
  assign Instmems_3_io_wen = io_wen & io_waddr >= 32'h1e & io_waddr < 32'h28; // @[PE.scala 134:82]
  assign Instmems_3_io_waddr = io_waddr - 32'h1e; // @[PE.scala 133:36]
  assign Instmems_3_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_3_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_4_clock = clock;
  assign Instmems_4_io_wen = io_wen & io_waddr >= 32'h28 & io_waddr < 32'h32; // @[PE.scala 134:82]
  assign Instmems_4_io_waddr = io_waddr - 32'h28; // @[PE.scala 133:36]
  assign Instmems_4_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_4_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Instmems_5_clock = clock;
  assign Instmems_5_io_wen = io_wen & io_waddr >= 32'h32 & io_waddr < 32'h3c; // @[PE.scala 134:82]
  assign Instmems_5_io_waddr = io_waddr - 32'h32; // @[PE.scala 133:36]
  assign Instmems_5_io_wdata = io_wdata; // @[PE.scala 135:24]
  assign Instmems_5_io_raddr = regscanupdatestate ? _T_24 : PEctrlregs_io_outData_19; // @[PE.scala 131:36]
  assign Decoder_io_inst_0 = Instmems_0_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_1 = Instmems_1_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_2 = Instmems_2_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_3 = Instmems_3_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_4 = Instmems_4_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_inst_5 = Instmems_5_io_rdata; // @[PE.scala 139:78]
  assign Decoder_io_iicnt = PEctrlregs_io_outData_20; // @[PE.scala 140:20]
  assign Decoder_io_iinum = PEctrlregs_io_outData_1; // @[PE.scala 141:20]
  assign Decoder_io_startcyclecnt = PEctrlregs_io_outData_18; // @[PE.scala 142:27]
  assign Decoder_io_startcyclenum = PEctrlregs_io_outData_2; // @[PE.scala 143:27]
  assign Constmems_0_clock = clock;
  assign Constmems_0_io_wen = io_wen & io_waddr >= 32'h3c & io_waddr < 32'h44; // @[PE.scala 157:85]
  assign Constmems_0_io_waddr = io_waddr - 32'h3c; // @[PE.scala 156:37]
  assign Constmems_0_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_0_io_raddr = _T_70 ? _T_32 : PEctrlregs_io_outData_21; // @[PE.scala 153:27]
  assign Constmems_1_clock = clock;
  assign Constmems_1_io_wen = io_wen & io_waddr >= 32'h44 & io_waddr < 32'h4c; // @[PE.scala 157:85]
  assign Constmems_1_io_waddr = io_waddr - 32'h44; // @[PE.scala 156:37]
  assign Constmems_1_io_wdata = io_wdata; // @[PE.scala 158:25]
  assign Constmems_1_io_raddr = _T_71 ? _T_40 : PEctrlregs_io_outData_22; // @[PE.scala 154:27]
  assign Shiftconstmems_0_clock = clock;
  assign Shiftconstmems_0_io_wen = io_wen & io_waddr >= 32'h4c & io_waddr < 32'h54; // @[PE.scala 166:100]
  assign Shiftconstmems_0_io_waddr = io_waddr - 32'h4c; // @[PE.scala 165:42]
  assign Shiftconstmems_0_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_0_io_raddr = _T_72 ? _T_48 : PEctrlregs_io_outData_23; // @[PE.scala 162:35]
  assign Shiftconstmems_1_clock = clock;
  assign Shiftconstmems_1_io_wen = io_wen & io_waddr >= 32'h54 & io_waddr < 32'h5c; // @[PE.scala 166:100]
  assign Shiftconstmems_1_io_waddr = io_waddr - 32'h54; // @[PE.scala 165:42]
  assign Shiftconstmems_1_io_wdata = io_wdata; // @[PE.scala 167:30]
  assign Shiftconstmems_1_io_raddr = _T_73 ? _T_56 : PEctrlregs_io_outData_24; // @[PE.scala 163:35]
  assign Srcmuxs_0_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_0_io_in_2 = reg_12; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_3 = io_inLinks_0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_4 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_5 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_0_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_0_io_sel = reg_1_0; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_1 = Fureg_io_outData; // @[PE.scala 173:20]
  assign Srcmuxs_1_io_in_2 = reg_13; // @[PE.scala 51:23 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_3 = io_inLinks_0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_4 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_5 = 32'h0; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_6 = io_inLinks_3; // @[PE.scala 175:68]
  assign Srcmuxs_1_io_in_7 = reg_9; // @[PE.scala 48:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_8 = reg_10; // @[PE.scala 49:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_in_9 = reg_11; // @[PE.scala 50:19 Pipeline.scala 33:11]
  assign Srcmuxs_1_io_sel = reg_1_1; // @[PE.scala 40:24 Pipeline.scala 33:11]
  assign Alu_io_fn = reg_; // @[PE.scala 39:23 Pipeline.scala 33:11]
  assign Alu_io_src1 = reg_4_0 ? _Alu_io_src1_T_5 : Srcmuxs_0_io_out; // @[PE.scala 182:19]
  assign Alu_io_src2 = reg_4_1 ? _Alu_io_src2_T_5 : Srcmuxs_1_io_out; // @[PE.scala 183:19]
  assign Alu_io_datamemio_peidfm = io_datamemio_peidfm; // @[PE.scala 205:16]
  assign Crossbar_io_in_1 = io_inLinks_0; // @[PE.scala 188:68]
  assign Crossbar_io_in_2 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_3 = 32'h0; // @[PE.scala 188:68]
  assign Crossbar_io_in_4 = io_inLinks_3; // @[PE.scala 188:68]
  assign Crossbar_io_in_5 = Alu_io_result_bits; // @[PE.scala 189:20]
  assign Crossbar_io_in_6 = Fureg_io_outData; // @[PE.scala 190:20]
  assign Crossbar_io_select_0 = reg_2_0; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_1 = reg_2_1; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_2 = reg_2_2; // @[PE.scala 41:25 Pipeline.scala 33:11]
  assign Crossbar_io_select_3 = reg_2_3; // @[PE.scala 41:25 Pipeline.scala 33:11]
  always @(posedge clock) begin
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_ <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_ <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_ <= Decoder_io_alukey; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_0 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_0 <= Decoder_io_srckey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_1_1 <= 4'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1_1 <= Decoder_io_srckey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_0 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_0 <= Decoder_io_linkkey_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_1 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_1 <= Decoder_io_linkkey_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_2 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_2 <= Decoder_io_linkkey_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_2_3 <= 3'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2_3 <= Decoder_io_linkkey_3; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_0 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_0 <= Decoder_io_haveshiftconst_0; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_4_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_4_1 <= Decoder_io_haveshiftconst_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_1 <= Decoder_io_linkneedtosendout_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_5_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_5_2 <= Decoder_io_linkneedtosendout_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_6 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_6 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_6 <= Decoder_io_fuinstskip; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_1 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_1 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_1 <= Decoder_io_linkinstskip_1; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_7_2 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_7_2 <= Decoder_io_linkinstskip_2; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_8 <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_8 <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_8 <= Decoder_io_canexe; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_9 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_9 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_9 <= PEctrlregs_io_outData_25; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_10 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_10 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_10 <= PEctrlregs_io_outData_26; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_11 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_11 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_11 <= PEctrlregs_io_outData_27; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_12 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_12 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_12 <= Constmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_13 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_13 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_13 <= Constmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_14 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_14 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_14 <= Shiftconstmems_0_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_15 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_15 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_15 <= Shiftconstmems_1_io_rdata; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_16 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T) begin // @[Pipeline.scala 28:18]
      reg_16 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_16 <= PEctrlregs_io_outData_28; // @[Pipeline.scala 31:9]
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
  reg_ = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  reg_1_0 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  reg_1_1 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  reg_2_0 = _RAND_3[2:0];
  _RAND_4 = {1{`RANDOM}};
  reg_2_1 = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  reg_2_2 = _RAND_5[2:0];
  _RAND_6 = {1{`RANDOM}};
  reg_2_3 = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  reg_4_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  reg_4_1 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  reg_5_1 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  reg_5_2 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_6 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  reg_7_1 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  reg_7_2 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  reg_8 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  reg_9 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  reg_10 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  reg_11 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  reg_12 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  reg_13 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  reg_14 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  reg_15 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  reg_16 = _RAND_22[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
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
module CGRA(
  input         clock,
  input         reset,
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
  input         io_axistream_s_last,
  input         io_streamin_0_valid,
  input  [31:0] io_streamin_0_data,
  input         io_streamin_1_valid,
  input  [31:0] io_streamin_1_data,
  output        io_streamout_0_valid,
  output [31:0] io_streamout_0_data
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
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  wire  PE_clock; // @[CGRA.scala 26:62]
  wire  PE_reset; // @[CGRA.scala 26:62]
  wire [31:0] PE_io_inLinks_1; // @[CGRA.scala 26:62]
  wire [31:0] PE_io_inLinks_2; // @[CGRA.scala 26:62]
  wire  PE_io_outLinks_0_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_io_outLinks_0_bits; // @[CGRA.scala 26:62]
  wire  PE_io_outLinks_3_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_io_outLinks_3_bits; // @[CGRA.scala 26:62]
  wire  PE_io_run; // @[CGRA.scala 26:62]
  wire  PE_io_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_io_waddr; // @[CGRA.scala 26:62]
  wire [31:0] PE_io_wdata; // @[CGRA.scala 26:62]
  wire  PE_io_finish; // @[CGRA.scala 26:62]
  wire  PE_io_datamemio_ren; // @[CGRA.scala 26:62]
  wire [31:0] PE_io_datamemio_rdata; // @[CGRA.scala 26:62]
  wire [2:0] PE_io_datamemio_peidfm; // @[CGRA.scala 26:62]
  wire  PE_io_datamemio_memoptvalid; // @[CGRA.scala 26:62]
  wire  PE_1_clock; // @[CGRA.scala 26:62]
  wire  PE_1_reset; // @[CGRA.scala 26:62]
  wire [31:0] PE_1_io_inLinks_1; // @[CGRA.scala 26:62]
  wire [31:0] PE_1_io_inLinks_2; // @[CGRA.scala 26:62]
  wire [31:0] PE_1_io_inLinks_3; // @[CGRA.scala 26:62]
  wire  PE_1_io_outLinks_0_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_1_io_outLinks_0_bits; // @[CGRA.scala 26:62]
  wire  PE_1_io_outLinks_2_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_1_io_outLinks_2_bits; // @[CGRA.scala 26:62]
  wire  PE_1_io_outLinks_3_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_1_io_outLinks_3_bits; // @[CGRA.scala 26:62]
  wire  PE_1_io_run; // @[CGRA.scala 26:62]
  wire  PE_1_io_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_1_io_waddr; // @[CGRA.scala 26:62]
  wire [31:0] PE_1_io_wdata; // @[CGRA.scala 26:62]
  wire  PE_1_io_finish; // @[CGRA.scala 26:62]
  wire  PE_1_io_datamemio_ren; // @[CGRA.scala 26:62]
  wire [31:0] PE_1_io_datamemio_rdata; // @[CGRA.scala 26:62]
  wire [2:0] PE_1_io_datamemio_peidfm; // @[CGRA.scala 26:62]
  wire  PE_1_io_datamemio_memoptvalid; // @[CGRA.scala 26:62]
  wire  PE_2_clock; // @[CGRA.scala 26:62]
  wire  PE_2_reset; // @[CGRA.scala 26:62]
  wire [31:0] PE_2_io_inLinks_1; // @[CGRA.scala 26:62]
  wire [31:0] PE_2_io_inLinks_2; // @[CGRA.scala 26:62]
  wire [31:0] PE_2_io_inLinks_3; // @[CGRA.scala 26:62]
  wire  PE_2_io_outLinks_0_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_2_io_outLinks_0_bits; // @[CGRA.scala 26:62]
  wire  PE_2_io_outLinks_2_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_2_io_outLinks_2_bits; // @[CGRA.scala 26:62]
  wire  PE_2_io_outLinks_3_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_2_io_outLinks_3_bits; // @[CGRA.scala 26:62]
  wire  PE_2_io_run; // @[CGRA.scala 26:62]
  wire  PE_2_io_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_2_io_waddr; // @[CGRA.scala 26:62]
  wire [31:0] PE_2_io_wdata; // @[CGRA.scala 26:62]
  wire  PE_2_io_finish; // @[CGRA.scala 26:62]
  wire [31:0] PE_2_io_datamemio_rdata; // @[CGRA.scala 26:62]
  wire [2:0] PE_2_io_datamemio_peidfm; // @[CGRA.scala 26:62]
  wire  PE_2_io_datamemio_memoptvalid; // @[CGRA.scala 26:62]
  wire  PE_3_clock; // @[CGRA.scala 26:62]
  wire  PE_3_reset; // @[CGRA.scala 26:62]
  wire [31:0] PE_3_io_inLinks_1; // @[CGRA.scala 26:62]
  wire [31:0] PE_3_io_inLinks_3; // @[CGRA.scala 26:62]
  wire  PE_3_io_outLinks_0_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_3_io_outLinks_0_bits; // @[CGRA.scala 26:62]
  wire  PE_3_io_outLinks_2_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_3_io_outLinks_2_bits; // @[CGRA.scala 26:62]
  wire  PE_3_io_run; // @[CGRA.scala 26:62]
  wire  PE_3_io_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_3_io_waddr; // @[CGRA.scala 26:62]
  wire [31:0] PE_3_io_wdata; // @[CGRA.scala 26:62]
  wire  PE_3_io_finish; // @[CGRA.scala 26:62]
  wire  PE_3_io_datamemio_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_3_io_datamemio_wdata; // @[CGRA.scala 26:62]
  wire [2:0] PE_3_io_datamemio_peidfm; // @[CGRA.scala 26:62]
  wire  PE_4_clock; // @[CGRA.scala 26:62]
  wire  PE_4_reset; // @[CGRA.scala 26:62]
  wire [31:0] PE_4_io_inLinks_0; // @[CGRA.scala 26:62]
  wire [31:0] PE_4_io_inLinks_2; // @[CGRA.scala 26:62]
  wire  PE_4_io_outLinks_1_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_4_io_outLinks_1_bits; // @[CGRA.scala 26:62]
  wire  PE_4_io_outLinks_3_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_4_io_outLinks_3_bits; // @[CGRA.scala 26:62]
  wire  PE_4_io_run; // @[CGRA.scala 26:62]
  wire  PE_4_io_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_4_io_waddr; // @[CGRA.scala 26:62]
  wire [31:0] PE_4_io_wdata; // @[CGRA.scala 26:62]
  wire  PE_4_io_finish; // @[CGRA.scala 26:62]
  wire  PE_4_io_datamemio_ren; // @[CGRA.scala 26:62]
  wire [31:0] PE_4_io_datamemio_rdata; // @[CGRA.scala 26:62]
  wire [2:0] PE_4_io_datamemio_peidfm; // @[CGRA.scala 26:62]
  wire  PE_4_io_datamemio_memoptvalid; // @[CGRA.scala 26:62]
  wire  PE_5_clock; // @[CGRA.scala 26:62]
  wire  PE_5_reset; // @[CGRA.scala 26:62]
  wire [31:0] PE_5_io_inLinks_0; // @[CGRA.scala 26:62]
  wire [31:0] PE_5_io_inLinks_2; // @[CGRA.scala 26:62]
  wire [31:0] PE_5_io_inLinks_3; // @[CGRA.scala 26:62]
  wire  PE_5_io_outLinks_1_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_5_io_outLinks_1_bits; // @[CGRA.scala 26:62]
  wire  PE_5_io_outLinks_2_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_5_io_outLinks_2_bits; // @[CGRA.scala 26:62]
  wire  PE_5_io_outLinks_3_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_5_io_outLinks_3_bits; // @[CGRA.scala 26:62]
  wire  PE_5_io_run; // @[CGRA.scala 26:62]
  wire  PE_5_io_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_5_io_waddr; // @[CGRA.scala 26:62]
  wire [31:0] PE_5_io_wdata; // @[CGRA.scala 26:62]
  wire  PE_5_io_finish; // @[CGRA.scala 26:62]
  wire  PE_5_io_datamemio_ren; // @[CGRA.scala 26:62]
  wire [31:0] PE_5_io_datamemio_rdata; // @[CGRA.scala 26:62]
  wire [2:0] PE_5_io_datamemio_peidfm; // @[CGRA.scala 26:62]
  wire  PE_5_io_datamemio_memoptvalid; // @[CGRA.scala 26:62]
  wire  PE_6_clock; // @[CGRA.scala 26:62]
  wire  PE_6_reset; // @[CGRA.scala 26:62]
  wire [31:0] PE_6_io_inLinks_0; // @[CGRA.scala 26:62]
  wire [31:0] PE_6_io_inLinks_2; // @[CGRA.scala 26:62]
  wire [31:0] PE_6_io_inLinks_3; // @[CGRA.scala 26:62]
  wire  PE_6_io_outLinks_1_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_6_io_outLinks_1_bits; // @[CGRA.scala 26:62]
  wire  PE_6_io_outLinks_2_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_6_io_outLinks_2_bits; // @[CGRA.scala 26:62]
  wire  PE_6_io_outLinks_3_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_6_io_outLinks_3_bits; // @[CGRA.scala 26:62]
  wire  PE_6_io_run; // @[CGRA.scala 26:62]
  wire  PE_6_io_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_6_io_waddr; // @[CGRA.scala 26:62]
  wire [31:0] PE_6_io_wdata; // @[CGRA.scala 26:62]
  wire  PE_6_io_finish; // @[CGRA.scala 26:62]
  wire [31:0] PE_6_io_datamemio_rdata; // @[CGRA.scala 26:62]
  wire [2:0] PE_6_io_datamemio_peidfm; // @[CGRA.scala 26:62]
  wire  PE_6_io_datamemio_memoptvalid; // @[CGRA.scala 26:62]
  wire  PE_7_clock; // @[CGRA.scala 26:62]
  wire  PE_7_reset; // @[CGRA.scala 26:62]
  wire [31:0] PE_7_io_inLinks_0; // @[CGRA.scala 26:62]
  wire [31:0] PE_7_io_inLinks_3; // @[CGRA.scala 26:62]
  wire  PE_7_io_outLinks_1_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_7_io_outLinks_1_bits; // @[CGRA.scala 26:62]
  wire  PE_7_io_outLinks_2_valid; // @[CGRA.scala 26:62]
  wire [31:0] PE_7_io_outLinks_2_bits; // @[CGRA.scala 26:62]
  wire  PE_7_io_run; // @[CGRA.scala 26:62]
  wire  PE_7_io_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_7_io_waddr; // @[CGRA.scala 26:62]
  wire [31:0] PE_7_io_wdata; // @[CGRA.scala 26:62]
  wire  PE_7_io_finish; // @[CGRA.scala 26:62]
  wire  PE_7_io_datamemio_wen; // @[CGRA.scala 26:62]
  wire [31:0] PE_7_io_datamemio_wdata; // @[CGRA.scala 26:62]
  wire [2:0] PE_7_io_datamemio_peidfm; // @[CGRA.scala 26:62]
  wire  Link_clock; // @[CGRA.scala 27:89]
  wire  Link_reset; // @[CGRA.scala 27:89]
  wire  Link_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_io_out; // @[CGRA.scala 27:89]
  wire  Link_1_clock; // @[CGRA.scala 27:89]
  wire  Link_1_reset; // @[CGRA.scala 27:89]
  wire  Link_1_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_1_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_1_io_out; // @[CGRA.scala 27:89]
  wire  Link_2_clock; // @[CGRA.scala 27:89]
  wire  Link_2_reset; // @[CGRA.scala 27:89]
  wire  Link_2_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_2_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_2_io_out; // @[CGRA.scala 27:89]
  wire  Link_3_clock; // @[CGRA.scala 27:89]
  wire  Link_3_reset; // @[CGRA.scala 27:89]
  wire  Link_3_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_3_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_3_io_out; // @[CGRA.scala 27:89]
  wire  Link_4_clock; // @[CGRA.scala 27:89]
  wire  Link_4_reset; // @[CGRA.scala 27:89]
  wire  Link_4_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_4_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_4_io_out; // @[CGRA.scala 27:89]
  wire  Link_5_clock; // @[CGRA.scala 27:89]
  wire  Link_5_reset; // @[CGRA.scala 27:89]
  wire  Link_5_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_5_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_5_io_out; // @[CGRA.scala 27:89]
  wire  Link_6_clock; // @[CGRA.scala 27:89]
  wire  Link_6_reset; // @[CGRA.scala 27:89]
  wire  Link_6_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_6_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_6_io_out; // @[CGRA.scala 27:89]
  wire  Link_7_clock; // @[CGRA.scala 27:89]
  wire  Link_7_reset; // @[CGRA.scala 27:89]
  wire  Link_7_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_7_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_7_io_out; // @[CGRA.scala 27:89]
  wire  Link_8_clock; // @[CGRA.scala 27:89]
  wire  Link_8_reset; // @[CGRA.scala 27:89]
  wire  Link_8_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_8_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_8_io_out; // @[CGRA.scala 27:89]
  wire  Link_9_clock; // @[CGRA.scala 27:89]
  wire  Link_9_reset; // @[CGRA.scala 27:89]
  wire  Link_9_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_9_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_9_io_out; // @[CGRA.scala 27:89]
  wire  Link_10_clock; // @[CGRA.scala 27:89]
  wire  Link_10_reset; // @[CGRA.scala 27:89]
  wire  Link_10_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_10_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_10_io_out; // @[CGRA.scala 27:89]
  wire  Link_11_clock; // @[CGRA.scala 27:89]
  wire  Link_11_reset; // @[CGRA.scala 27:89]
  wire  Link_11_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_11_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_11_io_out; // @[CGRA.scala 27:89]
  wire  Link_12_clock; // @[CGRA.scala 27:89]
  wire  Link_12_reset; // @[CGRA.scala 27:89]
  wire  Link_12_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_12_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_12_io_out; // @[CGRA.scala 27:89]
  wire  Link_13_clock; // @[CGRA.scala 27:89]
  wire  Link_13_reset; // @[CGRA.scala 27:89]
  wire  Link_13_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_13_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_13_io_out; // @[CGRA.scala 27:89]
  wire  Link_14_clock; // @[CGRA.scala 27:89]
  wire  Link_14_reset; // @[CGRA.scala 27:89]
  wire  Link_14_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_14_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_14_io_out; // @[CGRA.scala 27:89]
  wire  Link_15_clock; // @[CGRA.scala 27:89]
  wire  Link_15_reset; // @[CGRA.scala 27:89]
  wire  Link_15_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_15_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_15_io_out; // @[CGRA.scala 27:89]
  wire  Link_16_clock; // @[CGRA.scala 27:89]
  wire  Link_16_reset; // @[CGRA.scala 27:89]
  wire  Link_16_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_16_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_16_io_out; // @[CGRA.scala 27:89]
  wire  Link_17_clock; // @[CGRA.scala 27:89]
  wire  Link_17_reset; // @[CGRA.scala 27:89]
  wire  Link_17_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_17_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_17_io_out; // @[CGRA.scala 27:89]
  wire  Link_18_clock; // @[CGRA.scala 27:89]
  wire  Link_18_reset; // @[CGRA.scala 27:89]
  wire  Link_18_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_18_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_18_io_out; // @[CGRA.scala 27:89]
  wire  Link_19_clock; // @[CGRA.scala 27:89]
  wire  Link_19_reset; // @[CGRA.scala 27:89]
  wire  Link_19_io_in_valid; // @[CGRA.scala 27:89]
  wire [31:0] Link_19_io_in_bits; // @[CGRA.scala 27:89]
  wire [31:0] Link_19_io_out; // @[CGRA.scala 27:89]
  reg [31:0] ctrlregs_0; // @[CGRA.scala 31:27]
  reg [31:0] ctrlregs_1; // @[CGRA.scala 31:27]
  reg [31:0] ctrlregs_2; // @[CGRA.scala 31:27]
  reg [31:0] ctrlregs_3; // @[CGRA.scala 31:27]
  reg [31:0] ctrlregs_4; // @[CGRA.scala 31:27]
  reg [31:0] ctrlregs_5; // @[CGRA.scala 31:27]
  reg [31:0] ctrlregs_6; // @[CGRA.scala 31:27]
  reg [31:0] configwaddr; // @[CGRA.scala 35:30]
  reg [31:0] configPEcnt; // @[CGRA.scala 36:30]
  reg [31:0] currentAddressw; // @[CGRA.scala 57:34]
  wire  _configonepe_T = ctrlregs_0 == 32'h1; // @[CGRA.scala 217:43]
  wire  configonepe = ctrlregs_0 == 32'h1 & io_axistream_s_valid & io_axistream_s_ready; // @[CGRA.scala 217:87]
  reg  reg_; // @[Pipeline.scala 27:22]
  wire  configwen = configonepe | reg_; // @[CGRA.scala 223:20 225:15]
  reg [31:0] reg_2; // @[Pipeline.scala 27:22]
  wire [31:0] _T_4 = reg_2 + 32'h5c; // @[CGRA.scala 61:68]
  wire  _T_6 = ctrlregs_0 == 32'h3; // @[CGRA.scala 63:53]
  wire  _T_49 = configPEcnt == 32'h7; // @[CGRA.scala 60:83]
  reg [31:0] dataindelay1; // @[CGRA.scala 69:33]
  reg [31:0] dataindelay2; // @[CGRA.scala 70:33]
  reg [31:0] dataindelay3; // @[CGRA.scala 71:33]
  reg [31:0] dataindelay4; // @[CGRA.scala 72:33]
  reg  validindelay1; // @[CGRA.scala 77:34]
  reg  validindelay2; // @[CGRA.scala 78:34]
  reg  validindelay3; // @[CGRA.scala 79:34]
  reg  validindelay4; // @[CGRA.scala 80:34]
  wire [2:0] _peid2m_T = PE_1_io_datamemio_ren ? 3'h1 : 3'h2; // @[Mux.scala 47:70]
  reg [31:0] dataindelay1_1; // @[CGRA.scala 69:33]
  reg [31:0] dataindelay2_1; // @[CGRA.scala 70:33]
  reg [31:0] dataindelay3_1; // @[CGRA.scala 71:33]
  reg [31:0] dataindelay4_1; // @[CGRA.scala 72:33]
  reg  validindelay1_1; // @[CGRA.scala 77:34]
  reg  validindelay2_1; // @[CGRA.scala 78:34]
  reg  validindelay3_1; // @[CGRA.scala 79:34]
  reg  validindelay4_1; // @[CGRA.scala 80:34]
  wire [2:0] _peid2m_T_2 = PE_5_io_datamemio_ren ? 3'h5 : 3'h6; // @[Mux.scala 47:70]
  wire  cgrafinish = PE_io_finish & PE_1_io_finish & PE_2_io_finish & PE_3_io_finish & PE_4_io_finish & PE_5_io_finish
     & PE_6_io_finish & PE_7_io_finish; // @[CGRA.scala 134:49]
  reg [1:0] statew; // @[CGRA.scala 139:23]
  reg [1:0] stater; // @[CGRA.scala 140:23]
  reg [31:0] currentAddressr; // @[CGRA.scala 141:32]
  wire [7:0] _mask_T_2 = io_axilite_s_wstrb[3] ? 8'hff : 8'h0; // @[Bitwise.scala 77:12]
  wire [7:0] _mask_T_5 = io_axilite_s_wstrb[2] ? 8'hff : 8'h0; // @[Bitwise.scala 77:12]
  wire [7:0] _mask_T_8 = io_axilite_s_wstrb[1] ? 8'hff : 8'h0; // @[Bitwise.scala 77:12]
  wire [7:0] _mask_T_11 = io_axilite_s_wstrb[0] ? 8'hff : 8'h0; // @[Bitwise.scala 77:12]
  wire [31:0] mask = {_mask_T_2,_mask_T_5,_mask_T_8,_mask_T_11}; // @[Cat.scala 33:92]
  wire [31:0] _currentAddressw_T_1 = io_axilite_s_awaddr_bits - 32'ha0010000; // @[CGRA.scala 158:52]
  wire  _T_59 = io_axilite_s_wdata_valid & io_axilite_s_wdata_ready; // @[CGRA.scala 163:36]
  wire [31:0] _ctrlregs_axil_wdata_T_1 = ~mask; // @[CGRA.scala 165:61]
  wire [31:0] _GEN_3 = 3'h1 == currentAddressw[2:0] ? ctrlregs_1 : ctrlregs_0; // @[CGRA.scala 165:{58,58}]
  wire [31:0] _GEN_4 = 3'h2 == currentAddressw[2:0] ? ctrlregs_2 : _GEN_3; // @[CGRA.scala 165:{58,58}]
  wire [31:0] _GEN_5 = 3'h3 == currentAddressw[2:0] ? ctrlregs_3 : _GEN_4; // @[CGRA.scala 165:{58,58}]
  wire [31:0] _GEN_6 = 3'h4 == currentAddressw[2:0] ? ctrlregs_4 : _GEN_5; // @[CGRA.scala 165:{58,58}]
  wire [31:0] _GEN_7 = 3'h5 == currentAddressw[2:0] ? ctrlregs_5 : _GEN_6; // @[CGRA.scala 165:{58,58}]
  wire [31:0] _GEN_8 = 3'h6 == currentAddressw[2:0] ? ctrlregs_6 : _GEN_7; // @[CGRA.scala 165:{58,58}]
  wire [31:0] _ctrlregs_axil_wdata_T_2 = _GEN_8 & _ctrlregs_axil_wdata_T_1; // @[CGRA.scala 165:58]
  wire [31:0] _ctrlregs_axil_wdata_T_3 = io_axilite_s_wdata_bits & mask; // @[CGRA.scala 165:95]
  wire [31:0] _ctrlregs_axil_wdata_T_4 = _ctrlregs_axil_wdata_T_2 | _ctrlregs_axil_wdata_T_3; // @[CGRA.scala 165:69]
  wire [31:0] _GEN_10 = io_axilite_s_wdata_valid & io_axilite_s_wdata_ready ? _ctrlregs_axil_wdata_T_4 : 32'h0; // @[CGRA.scala 146:23 163:65 165:29]
  wire [1:0] _GEN_14 = io_axilite_s_bresp_ready ? 2'h0 : statew; // @[CGRA.scala 170:38 173:16 139:23]
  wire [31:0] _GEN_19 = 2'h1 == statew ? _GEN_10 : 32'h0; // @[CGRA.scala 155:18 146:23]
  wire  _GEN_21 = 2'h1 == statew ? 1'h0 : 2'h2 == statew & io_axilite_s_bresp_ready; // @[CGRA.scala 155:18 148:28]
  wire  ctrlregs_axil_wen = 2'h0 == statew ? 1'h0 : 2'h1 == statew & _T_59; // @[CGRA.scala 155:18 145:20]
  wire [31:0] ctrlregs_axil_wdata = 2'h0 == statew ? 32'h0 : _GEN_19; // @[CGRA.scala 155:18 146:23]
  wire  _io_axilite_s_rdata_valid_T = stater == 2'h1; // @[CGRA.scala 179:37]
  wire [31:0] _currentAddressr_T_1 = io_axilite_s_araddr_bits - 32'ha0010000; // @[CGRA.scala 183:52]
  wire [31:0] _GEN_36 = 3'h1 == currentAddressr[2:0] ? ctrlregs_1 : ctrlregs_0; // @[CGRA.scala 193:{33,33}]
  wire [31:0] _GEN_37 = 3'h2 == currentAddressr[2:0] ? ctrlregs_2 : _GEN_36; // @[CGRA.scala 193:{33,33}]
  wire [31:0] _GEN_38 = 3'h3 == currentAddressr[2:0] ? ctrlregs_3 : _GEN_37; // @[CGRA.scala 193:{33,33}]
  wire [31:0] _GEN_39 = 3'h4 == currentAddressr[2:0] ? ctrlregs_4 : _GEN_38; // @[CGRA.scala 193:{33,33}]
  wire [31:0] _GEN_40 = 3'h5 == currentAddressr[2:0] ? ctrlregs_5 : _GEN_39; // @[CGRA.scala 193:{33,33}]
  wire [31:0] _GEN_41 = 3'h6 == currentAddressr[2:0] ? ctrlregs_6 : _GEN_40; // @[CGRA.scala 193:{33,33}]
  wire  _config_finish_T = configwaddr == 32'h78; // @[CGRA.scala 214:33]
  wire  config_finish = configwaddr == 32'h78 & _T_49; // @[CGRA.scala 214:51]
  wire  _T_72 = io_streamin_0_valid & io_streamin_1_valid; // @[CGRA.scala 206:47]
  wire [31:0] _GEN_42 = io_streamin_0_valid & io_streamin_1_valid ? 32'h3 : ctrlregs_0; // @[CGRA.scala 202:13 206:52 207:15]
  wire [31:0] statenext = _configonepe_T & config_finish | _T_6 & cgrafinish ? 32'h0 : _GEN_42; // @[CGRA.scala 204:152 205:15]
  wire [31:0] _configwaddrnext_T_2 = configwaddr + 32'h1; // @[CGRA.scala 212:64]
  wire [31:0] _configPEnext_T_2 = configPEcnt + 32'h1; // @[CGRA.scala 213:75]
  wire [31:0] configPEnext = configPEcnt < 32'h7 ? _configPEnext_T_2 : 32'h0; // @[CGRA.scala 213:22]
  wire  configallpe = _configonepe_T & ctrlregs_axil_wen & (currentAddressw >= 32'h9 & currentAddressw <= 32'h11 |
    currentAddressw >= 32'h19 & currentAddressw <= 32'h1b); // @[CGRA.scala 218:84]
  wire  _T_73 = ctrlregs_0 != 32'h1; // @[CGRA.scala 220:71]
  reg [31:0] reg_1; // @[Pipeline.scala 27:22]
  wire [31:0] _GEN_48 = reg_ ? reg_1 : 32'h0; // @[CGRA.scala 230:30 231:17 236:17]
  wire  _T_80 = config_finish | cgrafinish | _T_72; // @[CGRA.scala 249:68]
  wire  _T_82 = ctrlregs_axil_wen & ~configallpe; // @[CGRA.scala 254:30]
  wire [31:0] _GEN_56 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_0; // @[CGRA.scala 255:{35,35} 31:27]
  wire [31:0] _GEN_57 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_1; // @[CGRA.scala 255:{35,35} 31:27]
  wire [31:0] _GEN_58 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_2; // @[CGRA.scala 255:{35,35} 31:27]
  wire [31:0] _GEN_59 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_3; // @[CGRA.scala 255:{35,35} 31:27]
  wire [31:0] _GEN_60 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_4; // @[CGRA.scala 255:{35,35} 31:27]
  wire [31:0] _GEN_61 = 3'h5 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_5; // @[CGRA.scala 255:{35,35} 31:27]
  wire [31:0] _GEN_62 = 3'h6 == currentAddressw[2:0] ? ctrlregs_axil_wdata : ctrlregs_6; // @[CGRA.scala 255:{35,35} 31:27]
  wire [31:0] _GEN_63 = _T_80 ? statenext : ctrlregs_0; // @[CGRA.scala 256:46 257:21 31:27]
  wire [31:0] _GEN_64 = ctrlregs_axil_wen & ~configallpe ? _GEN_56 : _GEN_63; // @[CGRA.scala 254:48]
  wire [31:0] _GEN_65 = ctrlregs_axil_wen & ~configallpe ? _GEN_57 : ctrlregs_1; // @[CGRA.scala 254:48 31:27]
  wire [31:0] _GEN_66 = ctrlregs_axil_wen & ~configallpe ? _GEN_58 : ctrlregs_2; // @[CGRA.scala 254:48 31:27]
  wire [31:0] _GEN_67 = ctrlregs_axil_wen & ~configallpe ? _GEN_59 : ctrlregs_3; // @[CGRA.scala 254:48 31:27]
  wire [31:0] _GEN_68 = ctrlregs_axil_wen & ~configallpe ? _GEN_60 : ctrlregs_4; // @[CGRA.scala 254:48 31:27]
  wire [31:0] _GEN_69 = ctrlregs_axil_wen & ~configallpe ? _GEN_61 : ctrlregs_5; // @[CGRA.scala 254:48 31:27]
  wire [31:0] _GEN_70 = ctrlregs_axil_wen & ~configallpe ? _GEN_62 : ctrlregs_6; // @[CGRA.scala 254:48 31:27]
  wire [31:0] _GEN_71 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_64; // @[CGRA.scala 255:{35,35}]
  wire [31:0] _GEN_72 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_65; // @[CGRA.scala 255:{35,35}]
  wire [31:0] _GEN_73 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_66; // @[CGRA.scala 255:{35,35}]
  wire [31:0] _GEN_74 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_67; // @[CGRA.scala 255:{35,35}]
  wire [31:0] _GEN_75 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_68; // @[CGRA.scala 255:{35,35}]
  wire [31:0] _GEN_76 = 3'h5 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_69; // @[CGRA.scala 255:{35,35}]
  wire [31:0] _GEN_77 = 3'h6 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_70; // @[CGRA.scala 255:{35,35}]
  wire [31:0] _GEN_78 = cgrafinish ? {{31'd0}, cgrafinish} : _GEN_65; // @[CGRA.scala 256:46 257:21]
  wire [31:0] _GEN_79 = ctrlregs_axil_wen & ~configallpe ? _GEN_71 : _GEN_64; // @[CGRA.scala 254:48]
  wire [31:0] _GEN_80 = ctrlregs_axil_wen & ~configallpe ? _GEN_72 : _GEN_78; // @[CGRA.scala 254:48]
  wire [31:0] _GEN_81 = ctrlregs_axil_wen & ~configallpe ? _GEN_73 : _GEN_66; // @[CGRA.scala 254:48]
  wire [31:0] _GEN_82 = ctrlregs_axil_wen & ~configallpe ? _GEN_74 : _GEN_67; // @[CGRA.scala 254:48]
  wire [31:0] _GEN_83 = ctrlregs_axil_wen & ~configallpe ? _GEN_75 : _GEN_68; // @[CGRA.scala 254:48]
  wire [31:0] _GEN_84 = ctrlregs_axil_wen & ~configallpe ? _GEN_76 : _GEN_69; // @[CGRA.scala 254:48]
  wire [31:0] _GEN_85 = ctrlregs_axil_wen & ~configallpe ? _GEN_77 : _GEN_70; // @[CGRA.scala 254:48]
  wire [31:0] _GEN_86 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_79; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_87 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_80; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_88 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_81; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_89 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_82; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_90 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_83; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_91 = 3'h5 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_84; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_92 = 3'h6 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_85; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_93 = _T_82 ? _GEN_86 : _GEN_79; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_94 = _T_82 ? _GEN_87 : _GEN_80; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_95 = _T_82 ? _GEN_88 : _GEN_81; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_96 = _T_82 ? _GEN_89 : _GEN_82; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_97 = _T_82 ? _GEN_90 : _GEN_83; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_98 = _T_82 ? _GEN_91 : _GEN_84; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_99 = _T_82 ? _GEN_92 : _GEN_85; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_100 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_93; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_101 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_94; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_102 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_95; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_103 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_96; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_104 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_97; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_105 = 3'h5 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_98; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_106 = 3'h6 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_99; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_107 = _T_82 ? _GEN_100 : _GEN_93; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_108 = _T_82 ? _GEN_101 : _GEN_94; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_109 = _T_82 ? _GEN_102 : _GEN_95; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_110 = _T_82 ? _GEN_103 : _GEN_96; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_111 = _T_82 ? _GEN_104 : _GEN_97; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_112 = _T_82 ? _GEN_105 : _GEN_98; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_113 = _T_82 ? _GEN_106 : _GEN_99; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_114 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_107; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_115 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_108; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_116 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_109; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_117 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_110; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_118 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_111; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_119 = 3'h5 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_112; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_120 = 3'h6 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_113; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_121 = _T_82 ? _GEN_114 : _GEN_107; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_122 = _T_82 ? _GEN_115 : _GEN_108; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_123 = _T_82 ? _GEN_116 : _GEN_109; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_124 = _T_82 ? _GEN_117 : _GEN_110; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_125 = _T_82 ? _GEN_118 : _GEN_111; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_126 = _T_82 ? _GEN_119 : _GEN_112; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_127 = _T_82 ? _GEN_120 : _GEN_113; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_128 = 3'h0 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_121; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_129 = 3'h1 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_122; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_130 = 3'h2 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_123; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_131 = 3'h3 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_124; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_132 = 3'h4 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_125; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_133 = 3'h5 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_126; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_134 = 3'h6 == currentAddressw[2:0] ? ctrlregs_axil_wdata : _GEN_127; // @[CGRA.scala 261:{35,35}]
  wire [31:0] _GEN_135 = _T_82 ? _GEN_128 : _GEN_121; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_136 = _T_82 ? _GEN_129 : _GEN_122; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_137 = _T_82 ? _GEN_130 : _GEN_123; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_138 = _T_82 ? _GEN_131 : _GEN_124; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_139 = _T_82 ? _GEN_132 : _GEN_125; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_140 = _T_82 ? _GEN_133 : _GEN_126; // @[CGRA.scala 260:48]
  wire [31:0] _GEN_141 = _T_82 ? _GEN_134 : _GEN_127; // @[CGRA.scala 260:48]
  PE PE ( // @[CGRA.scala 26:62]
    .clock(PE_clock),
    .reset(PE_reset),
    .io_inLinks_1(PE_io_inLinks_1),
    .io_inLinks_2(PE_io_inLinks_2),
    .io_outLinks_0_valid(PE_io_outLinks_0_valid),
    .io_outLinks_0_bits(PE_io_outLinks_0_bits),
    .io_outLinks_3_valid(PE_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_io_outLinks_3_bits),
    .io_run(PE_io_run),
    .io_wen(PE_io_wen),
    .io_waddr(PE_io_waddr),
    .io_wdata(PE_io_wdata),
    .io_finish(PE_io_finish),
    .io_datamemio_ren(PE_io_datamemio_ren),
    .io_datamemio_rdata(PE_io_datamemio_rdata),
    .io_datamemio_peidfm(PE_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(PE_io_datamemio_memoptvalid)
  );
  PE_1 PE_1 ( // @[CGRA.scala 26:62]
    .clock(PE_1_clock),
    .reset(PE_1_reset),
    .io_inLinks_1(PE_1_io_inLinks_1),
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
    .io_datamemio_ren(PE_1_io_datamemio_ren),
    .io_datamemio_rdata(PE_1_io_datamemio_rdata),
    .io_datamemio_peidfm(PE_1_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(PE_1_io_datamemio_memoptvalid)
  );
  PE_2 PE_2 ( // @[CGRA.scala 26:62]
    .clock(PE_2_clock),
    .reset(PE_2_reset),
    .io_inLinks_1(PE_2_io_inLinks_1),
    .io_inLinks_2(PE_2_io_inLinks_2),
    .io_inLinks_3(PE_2_io_inLinks_3),
    .io_outLinks_0_valid(PE_2_io_outLinks_0_valid),
    .io_outLinks_0_bits(PE_2_io_outLinks_0_bits),
    .io_outLinks_2_valid(PE_2_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_2_io_outLinks_2_bits),
    .io_outLinks_3_valid(PE_2_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_2_io_outLinks_3_bits),
    .io_run(PE_2_io_run),
    .io_wen(PE_2_io_wen),
    .io_waddr(PE_2_io_waddr),
    .io_wdata(PE_2_io_wdata),
    .io_finish(PE_2_io_finish),
    .io_datamemio_rdata(PE_2_io_datamemio_rdata),
    .io_datamemio_peidfm(PE_2_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(PE_2_io_datamemio_memoptvalid)
  );
  PE_3 PE_3 ( // @[CGRA.scala 26:62]
    .clock(PE_3_clock),
    .reset(PE_3_reset),
    .io_inLinks_1(PE_3_io_inLinks_1),
    .io_inLinks_3(PE_3_io_inLinks_3),
    .io_outLinks_0_valid(PE_3_io_outLinks_0_valid),
    .io_outLinks_0_bits(PE_3_io_outLinks_0_bits),
    .io_outLinks_2_valid(PE_3_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_3_io_outLinks_2_bits),
    .io_run(PE_3_io_run),
    .io_wen(PE_3_io_wen),
    .io_waddr(PE_3_io_waddr),
    .io_wdata(PE_3_io_wdata),
    .io_finish(PE_3_io_finish),
    .io_datamemio_wen(PE_3_io_datamemio_wen),
    .io_datamemio_wdata(PE_3_io_datamemio_wdata),
    .io_datamemio_peidfm(PE_3_io_datamemio_peidfm)
  );
  PE_4 PE_4 ( // @[CGRA.scala 26:62]
    .clock(PE_4_clock),
    .reset(PE_4_reset),
    .io_inLinks_0(PE_4_io_inLinks_0),
    .io_inLinks_2(PE_4_io_inLinks_2),
    .io_outLinks_1_valid(PE_4_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_4_io_outLinks_1_bits),
    .io_outLinks_3_valid(PE_4_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_4_io_outLinks_3_bits),
    .io_run(PE_4_io_run),
    .io_wen(PE_4_io_wen),
    .io_waddr(PE_4_io_waddr),
    .io_wdata(PE_4_io_wdata),
    .io_finish(PE_4_io_finish),
    .io_datamemio_ren(PE_4_io_datamemio_ren),
    .io_datamemio_rdata(PE_4_io_datamemio_rdata),
    .io_datamemio_peidfm(PE_4_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(PE_4_io_datamemio_memoptvalid)
  );
  PE_5 PE_5 ( // @[CGRA.scala 26:62]
    .clock(PE_5_clock),
    .reset(PE_5_reset),
    .io_inLinks_0(PE_5_io_inLinks_0),
    .io_inLinks_2(PE_5_io_inLinks_2),
    .io_inLinks_3(PE_5_io_inLinks_3),
    .io_outLinks_1_valid(PE_5_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_5_io_outLinks_1_bits),
    .io_outLinks_2_valid(PE_5_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_5_io_outLinks_2_bits),
    .io_outLinks_3_valid(PE_5_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_5_io_outLinks_3_bits),
    .io_run(PE_5_io_run),
    .io_wen(PE_5_io_wen),
    .io_waddr(PE_5_io_waddr),
    .io_wdata(PE_5_io_wdata),
    .io_finish(PE_5_io_finish),
    .io_datamemio_ren(PE_5_io_datamemio_ren),
    .io_datamemio_rdata(PE_5_io_datamemio_rdata),
    .io_datamemio_peidfm(PE_5_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(PE_5_io_datamemio_memoptvalid)
  );
  PE_6 PE_6 ( // @[CGRA.scala 26:62]
    .clock(PE_6_clock),
    .reset(PE_6_reset),
    .io_inLinks_0(PE_6_io_inLinks_0),
    .io_inLinks_2(PE_6_io_inLinks_2),
    .io_inLinks_3(PE_6_io_inLinks_3),
    .io_outLinks_1_valid(PE_6_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_6_io_outLinks_1_bits),
    .io_outLinks_2_valid(PE_6_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_6_io_outLinks_2_bits),
    .io_outLinks_3_valid(PE_6_io_outLinks_3_valid),
    .io_outLinks_3_bits(PE_6_io_outLinks_3_bits),
    .io_run(PE_6_io_run),
    .io_wen(PE_6_io_wen),
    .io_waddr(PE_6_io_waddr),
    .io_wdata(PE_6_io_wdata),
    .io_finish(PE_6_io_finish),
    .io_datamemio_rdata(PE_6_io_datamemio_rdata),
    .io_datamemio_peidfm(PE_6_io_datamemio_peidfm),
    .io_datamemio_memoptvalid(PE_6_io_datamemio_memoptvalid)
  );
  PE_7 PE_7 ( // @[CGRA.scala 26:62]
    .clock(PE_7_clock),
    .reset(PE_7_reset),
    .io_inLinks_0(PE_7_io_inLinks_0),
    .io_inLinks_3(PE_7_io_inLinks_3),
    .io_outLinks_1_valid(PE_7_io_outLinks_1_valid),
    .io_outLinks_1_bits(PE_7_io_outLinks_1_bits),
    .io_outLinks_2_valid(PE_7_io_outLinks_2_valid),
    .io_outLinks_2_bits(PE_7_io_outLinks_2_bits),
    .io_run(PE_7_io_run),
    .io_wen(PE_7_io_wen),
    .io_waddr(PE_7_io_waddr),
    .io_wdata(PE_7_io_wdata),
    .io_finish(PE_7_io_finish),
    .io_datamemio_wen(PE_7_io_datamemio_wen),
    .io_datamemio_wdata(PE_7_io_datamemio_wdata),
    .io_datamemio_peidfm(PE_7_io_datamemio_peidfm)
  );
  Link Link ( // @[CGRA.scala 27:89]
    .clock(Link_clock),
    .reset(Link_reset),
    .io_in_valid(Link_io_in_valid),
    .io_in_bits(Link_io_in_bits),
    .io_out(Link_io_out)
  );
  Link Link_1 ( // @[CGRA.scala 27:89]
    .clock(Link_1_clock),
    .reset(Link_1_reset),
    .io_in_valid(Link_1_io_in_valid),
    .io_in_bits(Link_1_io_in_bits),
    .io_out(Link_1_io_out)
  );
  Link Link_2 ( // @[CGRA.scala 27:89]
    .clock(Link_2_clock),
    .reset(Link_2_reset),
    .io_in_valid(Link_2_io_in_valid),
    .io_in_bits(Link_2_io_in_bits),
    .io_out(Link_2_io_out)
  );
  Link Link_3 ( // @[CGRA.scala 27:89]
    .clock(Link_3_clock),
    .reset(Link_3_reset),
    .io_in_valid(Link_3_io_in_valid),
    .io_in_bits(Link_3_io_in_bits),
    .io_out(Link_3_io_out)
  );
  Link Link_4 ( // @[CGRA.scala 27:89]
    .clock(Link_4_clock),
    .reset(Link_4_reset),
    .io_in_valid(Link_4_io_in_valid),
    .io_in_bits(Link_4_io_in_bits),
    .io_out(Link_4_io_out)
  );
  Link Link_5 ( // @[CGRA.scala 27:89]
    .clock(Link_5_clock),
    .reset(Link_5_reset),
    .io_in_valid(Link_5_io_in_valid),
    .io_in_bits(Link_5_io_in_bits),
    .io_out(Link_5_io_out)
  );
  Link Link_6 ( // @[CGRA.scala 27:89]
    .clock(Link_6_clock),
    .reset(Link_6_reset),
    .io_in_valid(Link_6_io_in_valid),
    .io_in_bits(Link_6_io_in_bits),
    .io_out(Link_6_io_out)
  );
  Link Link_7 ( // @[CGRA.scala 27:89]
    .clock(Link_7_clock),
    .reset(Link_7_reset),
    .io_in_valid(Link_7_io_in_valid),
    .io_in_bits(Link_7_io_in_bits),
    .io_out(Link_7_io_out)
  );
  Link Link_8 ( // @[CGRA.scala 27:89]
    .clock(Link_8_clock),
    .reset(Link_8_reset),
    .io_in_valid(Link_8_io_in_valid),
    .io_in_bits(Link_8_io_in_bits),
    .io_out(Link_8_io_out)
  );
  Link Link_9 ( // @[CGRA.scala 27:89]
    .clock(Link_9_clock),
    .reset(Link_9_reset),
    .io_in_valid(Link_9_io_in_valid),
    .io_in_bits(Link_9_io_in_bits),
    .io_out(Link_9_io_out)
  );
  Link Link_10 ( // @[CGRA.scala 27:89]
    .clock(Link_10_clock),
    .reset(Link_10_reset),
    .io_in_valid(Link_10_io_in_valid),
    .io_in_bits(Link_10_io_in_bits),
    .io_out(Link_10_io_out)
  );
  Link Link_11 ( // @[CGRA.scala 27:89]
    .clock(Link_11_clock),
    .reset(Link_11_reset),
    .io_in_valid(Link_11_io_in_valid),
    .io_in_bits(Link_11_io_in_bits),
    .io_out(Link_11_io_out)
  );
  Link Link_12 ( // @[CGRA.scala 27:89]
    .clock(Link_12_clock),
    .reset(Link_12_reset),
    .io_in_valid(Link_12_io_in_valid),
    .io_in_bits(Link_12_io_in_bits),
    .io_out(Link_12_io_out)
  );
  Link Link_13 ( // @[CGRA.scala 27:89]
    .clock(Link_13_clock),
    .reset(Link_13_reset),
    .io_in_valid(Link_13_io_in_valid),
    .io_in_bits(Link_13_io_in_bits),
    .io_out(Link_13_io_out)
  );
  Link Link_14 ( // @[CGRA.scala 27:89]
    .clock(Link_14_clock),
    .reset(Link_14_reset),
    .io_in_valid(Link_14_io_in_valid),
    .io_in_bits(Link_14_io_in_bits),
    .io_out(Link_14_io_out)
  );
  Link Link_15 ( // @[CGRA.scala 27:89]
    .clock(Link_15_clock),
    .reset(Link_15_reset),
    .io_in_valid(Link_15_io_in_valid),
    .io_in_bits(Link_15_io_in_bits),
    .io_out(Link_15_io_out)
  );
  Link Link_16 ( // @[CGRA.scala 27:89]
    .clock(Link_16_clock),
    .reset(Link_16_reset),
    .io_in_valid(Link_16_io_in_valid),
    .io_in_bits(Link_16_io_in_bits),
    .io_out(Link_16_io_out)
  );
  Link Link_17 ( // @[CGRA.scala 27:89]
    .clock(Link_17_clock),
    .reset(Link_17_reset),
    .io_in_valid(Link_17_io_in_valid),
    .io_in_bits(Link_17_io_in_bits),
    .io_out(Link_17_io_out)
  );
  Link Link_18 ( // @[CGRA.scala 27:89]
    .clock(Link_18_clock),
    .reset(Link_18_reset),
    .io_in_valid(Link_18_io_in_valid),
    .io_in_bits(Link_18_io_in_bits),
    .io_out(Link_18_io_out)
  );
  Link Link_19 ( // @[CGRA.scala 27:89]
    .clock(Link_19_clock),
    .reset(Link_19_reset),
    .io_in_valid(Link_19_io_in_valid),
    .io_in_bits(Link_19_io_in_bits),
    .io_out(Link_19_io_out)
  );
  assign io_finish = ctrlregs_1[0]; // @[CGRA.scala 136:14]
  assign io_axilite_s_araddr_ready = stater == 2'h0; // @[CGRA.scala 178:40]
  assign io_axilite_s_rdata_valid = stater == 2'h1; // @[CGRA.scala 179:37]
  assign io_axilite_s_rdata_bits = _io_axilite_s_rdata_valid_T & io_axilite_s_rdata_valid & io_axilite_s_rdata_ready ?
    _GEN_41 : 32'h0; // @[CGRA.scala 193:33]
  assign io_axilite_s_rresp = 2'h0; // @[CGRA.scala 195:22]
  assign io_axilite_s_awaddr_ready = statew == 2'h0; // @[CGRA.scala 151:40]
  assign io_axilite_s_wdata_ready = statew == 2'h1; // @[CGRA.scala 152:39]
  assign io_axilite_s_bresp_valid = 2'h0 == statew ? 1'h0 : _GEN_21; // @[CGRA.scala 155:18 148:28]
  assign io_axilite_s_bresp_bits = 2'h0;
  assign io_axistream_s_ready = 32'h1 == ctrlregs_0 | 32'h2 == ctrlregs_0; // @[CGRA.scala 215:71]
  assign io_streamout_0_valid = PE_3_io_datamemio_wen | PE_7_io_datamemio_wen; // @[CGRA.scala 103:102]
  assign io_streamout_0_data = PE_3_io_datamemio_wen ? PE_3_io_datamemio_wdata : PE_7_io_datamemio_wdata; // @[Mux.scala 47:70]
  assign PE_clock = clock;
  assign PE_reset = reset;
  assign PE_io_inLinks_1 = Link_10_io_out; // @[CGRA.scala 118:47]
  assign PE_io_inLinks_2 = Link_4_io_out; // @[CGRA.scala 128:45]
  assign PE_io_run = ctrlregs_0 == 32'h3; // @[CGRA.scala 63:53]
  assign PE_io_wen = reg_ ? configwen : configwen & configPEcnt == 32'h0; // @[CGRA.scala 60:31]
  assign PE_io_waddr = reg_ ? _T_4 : configwaddr; // @[CGRA.scala 61:31]
  assign PE_io_wdata = configonepe ? io_axistream_s_data : _GEN_48; // @[CGRA.scala 223:20 224:17]
  assign PE_io_datamemio_rdata = dataindelay4; // @[CGRA.scala 88:38]
  assign PE_io_datamemio_peidfm = PE_io_datamemio_ren ? 3'h0 : _peid2m_T; // @[Mux.scala 47:70]
  assign PE_io_datamemio_memoptvalid = validindelay4; // @[CGRA.scala 90:44]
  assign PE_1_clock = clock;
  assign PE_1_reset = reset;
  assign PE_1_io_inLinks_1 = Link_12_io_out; // @[CGRA.scala 118:47]
  assign PE_1_io_inLinks_2 = Link_7_io_out; // @[CGRA.scala 128:45]
  assign PE_1_io_inLinks_3 = Link_1_io_out; // @[CGRA.scala 123:45]
  assign PE_1_io_run = ctrlregs_0 == 32'h3; // @[CGRA.scala 63:53]
  assign PE_1_io_wen = reg_ ? configwen : configwen & configPEcnt == 32'h1; // @[CGRA.scala 60:31]
  assign PE_1_io_waddr = reg_ ? _T_4 : configwaddr; // @[CGRA.scala 61:31]
  assign PE_1_io_wdata = configonepe ? io_axistream_s_data : _GEN_48; // @[CGRA.scala 223:20 224:17]
  assign PE_1_io_datamemio_rdata = dataindelay4; // @[CGRA.scala 88:38]
  assign PE_1_io_datamemio_peidfm = PE_io_datamemio_ren ? 3'h0 : _peid2m_T; // @[Mux.scala 47:70]
  assign PE_1_io_datamemio_memoptvalid = validindelay4; // @[CGRA.scala 90:44]
  assign PE_2_clock = clock;
  assign PE_2_reset = reset;
  assign PE_2_io_inLinks_1 = Link_15_io_out; // @[CGRA.scala 118:47]
  assign PE_2_io_inLinks_2 = Link_9_io_out; // @[CGRA.scala 128:45]
  assign PE_2_io_inLinks_3 = Link_3_io_out; // @[CGRA.scala 123:45]
  assign PE_2_io_run = ctrlregs_0 == 32'h3; // @[CGRA.scala 63:53]
  assign PE_2_io_wen = reg_ ? configwen : configwen & configPEcnt == 32'h2; // @[CGRA.scala 60:31]
  assign PE_2_io_waddr = reg_ ? _T_4 : configwaddr; // @[CGRA.scala 61:31]
  assign PE_2_io_wdata = configonepe ? io_axistream_s_data : _GEN_48; // @[CGRA.scala 223:20 224:17]
  assign PE_2_io_datamemio_rdata = dataindelay4; // @[CGRA.scala 88:38]
  assign PE_2_io_datamemio_peidfm = PE_io_datamemio_ren ? 3'h0 : _peid2m_T; // @[Mux.scala 47:70]
  assign PE_2_io_datamemio_memoptvalid = validindelay4; // @[CGRA.scala 90:44]
  assign PE_3_clock = clock;
  assign PE_3_reset = reset;
  assign PE_3_io_inLinks_1 = Link_18_io_out; // @[CGRA.scala 118:47]
  assign PE_3_io_inLinks_3 = Link_6_io_out; // @[CGRA.scala 123:45]
  assign PE_3_io_run = ctrlregs_0 == 32'h3; // @[CGRA.scala 63:53]
  assign PE_3_io_wen = reg_ ? configwen : configwen & configPEcnt == 32'h3; // @[CGRA.scala 60:31]
  assign PE_3_io_waddr = reg_ ? _T_4 : configwaddr; // @[CGRA.scala 61:31]
  assign PE_3_io_wdata = configonepe ? io_axistream_s_data : _GEN_48; // @[CGRA.scala 223:20 224:17]
  assign PE_3_io_datamemio_peidfm = PE_3_io_datamemio_wen ? 3'h3 : 3'h7; // @[Mux.scala 47:70]
  assign PE_4_clock = clock;
  assign PE_4_reset = reset;
  assign PE_4_io_inLinks_0 = Link_io_out; // @[CGRA.scala 113:47]
  assign PE_4_io_inLinks_2 = Link_14_io_out; // @[CGRA.scala 128:45]
  assign PE_4_io_run = ctrlregs_0 == 32'h3; // @[CGRA.scala 63:53]
  assign PE_4_io_wen = reg_ ? configwen : configwen & configPEcnt == 32'h4; // @[CGRA.scala 60:31]
  assign PE_4_io_waddr = reg_ ? _T_4 : configwaddr; // @[CGRA.scala 61:31]
  assign PE_4_io_wdata = configonepe ? io_axistream_s_data : _GEN_48; // @[CGRA.scala 223:20 224:17]
  assign PE_4_io_datamemio_rdata = dataindelay4_1; // @[CGRA.scala 88:38]
  assign PE_4_io_datamemio_peidfm = PE_4_io_datamemio_ren ? 3'h4 : _peid2m_T_2; // @[Mux.scala 47:70]
  assign PE_4_io_datamemio_memoptvalid = validindelay4_1; // @[CGRA.scala 90:44]
  assign PE_5_clock = clock;
  assign PE_5_reset = reset;
  assign PE_5_io_inLinks_0 = Link_2_io_out; // @[CGRA.scala 113:47]
  assign PE_5_io_inLinks_2 = Link_17_io_out; // @[CGRA.scala 128:45]
  assign PE_5_io_inLinks_3 = Link_11_io_out; // @[CGRA.scala 123:45]
  assign PE_5_io_run = ctrlregs_0 == 32'h3; // @[CGRA.scala 63:53]
  assign PE_5_io_wen = reg_ ? configwen : configwen & configPEcnt == 32'h5; // @[CGRA.scala 60:31]
  assign PE_5_io_waddr = reg_ ? _T_4 : configwaddr; // @[CGRA.scala 61:31]
  assign PE_5_io_wdata = configonepe ? io_axistream_s_data : _GEN_48; // @[CGRA.scala 223:20 224:17]
  assign PE_5_io_datamemio_rdata = dataindelay4_1; // @[CGRA.scala 88:38]
  assign PE_5_io_datamemio_peidfm = PE_4_io_datamemio_ren ? 3'h4 : _peid2m_T_2; // @[Mux.scala 47:70]
  assign PE_5_io_datamemio_memoptvalid = validindelay4_1; // @[CGRA.scala 90:44]
  assign PE_6_clock = clock;
  assign PE_6_reset = reset;
  assign PE_6_io_inLinks_0 = Link_5_io_out; // @[CGRA.scala 113:47]
  assign PE_6_io_inLinks_2 = Link_19_io_out; // @[CGRA.scala 128:45]
  assign PE_6_io_inLinks_3 = Link_13_io_out; // @[CGRA.scala 123:45]
  assign PE_6_io_run = ctrlregs_0 == 32'h3; // @[CGRA.scala 63:53]
  assign PE_6_io_wen = reg_ ? configwen : configwen & configPEcnt == 32'h6; // @[CGRA.scala 60:31]
  assign PE_6_io_waddr = reg_ ? _T_4 : configwaddr; // @[CGRA.scala 61:31]
  assign PE_6_io_wdata = configonepe ? io_axistream_s_data : _GEN_48; // @[CGRA.scala 223:20 224:17]
  assign PE_6_io_datamemio_rdata = dataindelay4_1; // @[CGRA.scala 88:38]
  assign PE_6_io_datamemio_peidfm = PE_4_io_datamemio_ren ? 3'h4 : _peid2m_T_2; // @[Mux.scala 47:70]
  assign PE_6_io_datamemio_memoptvalid = validindelay4_1; // @[CGRA.scala 90:44]
  assign PE_7_clock = clock;
  assign PE_7_reset = reset;
  assign PE_7_io_inLinks_0 = Link_8_io_out; // @[CGRA.scala 113:47]
  assign PE_7_io_inLinks_3 = Link_16_io_out; // @[CGRA.scala 123:45]
  assign PE_7_io_run = ctrlregs_0 == 32'h3; // @[CGRA.scala 63:53]
  assign PE_7_io_wen = reg_ ? configwen : configwen & configPEcnt == 32'h7; // @[CGRA.scala 60:31]
  assign PE_7_io_waddr = reg_ ? _T_4 : configwaddr; // @[CGRA.scala 61:31]
  assign PE_7_io_wdata = configonepe ? io_axistream_s_data : _GEN_48; // @[CGRA.scala 223:20 224:17]
  assign PE_7_io_datamemio_peidfm = PE_3_io_datamemio_wen ? 3'h3 : 3'h7; // @[Mux.scala 47:70]
  assign Link_clock = clock;
  assign Link_reset = reset;
  assign Link_io_in_valid = PE_io_outLinks_0_valid; // @[CGRA.scala 112:31]
  assign Link_io_in_bits = PE_io_outLinks_0_bits; // @[CGRA.scala 112:31]
  assign Link_1_clock = clock;
  assign Link_1_reset = reset;
  assign Link_1_io_in_valid = PE_io_outLinks_3_valid; // @[CGRA.scala 122:31]
  assign Link_1_io_in_bits = PE_io_outLinks_3_bits; // @[CGRA.scala 122:31]
  assign Link_2_clock = clock;
  assign Link_2_reset = reset;
  assign Link_2_io_in_valid = PE_1_io_outLinks_0_valid; // @[CGRA.scala 112:31]
  assign Link_2_io_in_bits = PE_1_io_outLinks_0_bits; // @[CGRA.scala 112:31]
  assign Link_3_clock = clock;
  assign Link_3_reset = reset;
  assign Link_3_io_in_valid = PE_1_io_outLinks_3_valid; // @[CGRA.scala 122:31]
  assign Link_3_io_in_bits = PE_1_io_outLinks_3_bits; // @[CGRA.scala 122:31]
  assign Link_4_clock = clock;
  assign Link_4_reset = reset;
  assign Link_4_io_in_valid = PE_1_io_outLinks_2_valid; // @[CGRA.scala 127:31]
  assign Link_4_io_in_bits = PE_1_io_outLinks_2_bits; // @[CGRA.scala 127:31]
  assign Link_5_clock = clock;
  assign Link_5_reset = reset;
  assign Link_5_io_in_valid = PE_2_io_outLinks_0_valid; // @[CGRA.scala 112:31]
  assign Link_5_io_in_bits = PE_2_io_outLinks_0_bits; // @[CGRA.scala 112:31]
  assign Link_6_clock = clock;
  assign Link_6_reset = reset;
  assign Link_6_io_in_valid = PE_2_io_outLinks_3_valid; // @[CGRA.scala 122:31]
  assign Link_6_io_in_bits = PE_2_io_outLinks_3_bits; // @[CGRA.scala 122:31]
  assign Link_7_clock = clock;
  assign Link_7_reset = reset;
  assign Link_7_io_in_valid = PE_2_io_outLinks_2_valid; // @[CGRA.scala 127:31]
  assign Link_7_io_in_bits = PE_2_io_outLinks_2_bits; // @[CGRA.scala 127:31]
  assign Link_8_clock = clock;
  assign Link_8_reset = reset;
  assign Link_8_io_in_valid = PE_3_io_outLinks_0_valid; // @[CGRA.scala 112:31]
  assign Link_8_io_in_bits = PE_3_io_outLinks_0_bits; // @[CGRA.scala 112:31]
  assign Link_9_clock = clock;
  assign Link_9_reset = reset;
  assign Link_9_io_in_valid = PE_3_io_outLinks_2_valid; // @[CGRA.scala 127:31]
  assign Link_9_io_in_bits = PE_3_io_outLinks_2_bits; // @[CGRA.scala 127:31]
  assign Link_10_clock = clock;
  assign Link_10_reset = reset;
  assign Link_10_io_in_valid = PE_4_io_outLinks_1_valid; // @[CGRA.scala 117:31]
  assign Link_10_io_in_bits = PE_4_io_outLinks_1_bits; // @[CGRA.scala 117:31]
  assign Link_11_clock = clock;
  assign Link_11_reset = reset;
  assign Link_11_io_in_valid = PE_4_io_outLinks_3_valid; // @[CGRA.scala 122:31]
  assign Link_11_io_in_bits = PE_4_io_outLinks_3_bits; // @[CGRA.scala 122:31]
  assign Link_12_clock = clock;
  assign Link_12_reset = reset;
  assign Link_12_io_in_valid = PE_5_io_outLinks_1_valid; // @[CGRA.scala 117:31]
  assign Link_12_io_in_bits = PE_5_io_outLinks_1_bits; // @[CGRA.scala 117:31]
  assign Link_13_clock = clock;
  assign Link_13_reset = reset;
  assign Link_13_io_in_valid = PE_5_io_outLinks_3_valid; // @[CGRA.scala 122:31]
  assign Link_13_io_in_bits = PE_5_io_outLinks_3_bits; // @[CGRA.scala 122:31]
  assign Link_14_clock = clock;
  assign Link_14_reset = reset;
  assign Link_14_io_in_valid = PE_5_io_outLinks_2_valid; // @[CGRA.scala 127:31]
  assign Link_14_io_in_bits = PE_5_io_outLinks_2_bits; // @[CGRA.scala 127:31]
  assign Link_15_clock = clock;
  assign Link_15_reset = reset;
  assign Link_15_io_in_valid = PE_6_io_outLinks_1_valid; // @[CGRA.scala 117:31]
  assign Link_15_io_in_bits = PE_6_io_outLinks_1_bits; // @[CGRA.scala 117:31]
  assign Link_16_clock = clock;
  assign Link_16_reset = reset;
  assign Link_16_io_in_valid = PE_6_io_outLinks_3_valid; // @[CGRA.scala 122:31]
  assign Link_16_io_in_bits = PE_6_io_outLinks_3_bits; // @[CGRA.scala 122:31]
  assign Link_17_clock = clock;
  assign Link_17_reset = reset;
  assign Link_17_io_in_valid = PE_6_io_outLinks_2_valid; // @[CGRA.scala 127:31]
  assign Link_17_io_in_bits = PE_6_io_outLinks_2_bits; // @[CGRA.scala 127:31]
  assign Link_18_clock = clock;
  assign Link_18_reset = reset;
  assign Link_18_io_in_valid = PE_7_io_outLinks_1_valid; // @[CGRA.scala 117:31]
  assign Link_18_io_in_bits = PE_7_io_outLinks_1_bits; // @[CGRA.scala 117:31]
  assign Link_19_clock = clock;
  assign Link_19_reset = reset;
  assign Link_19_io_in_valid = PE_7_io_outLinks_2_valid; // @[CGRA.scala 127:31]
  assign Link_19_io_in_bits = PE_7_io_outLinks_2_bits; // @[CGRA.scala 127:31]
  always @(posedge clock) begin
    if (reset) begin // @[CGRA.scala 31:27]
      ctrlregs_0 <= 32'h0; // @[CGRA.scala 31:27]
    end else if (_T_82) begin // @[CGRA.scala 260:48]
      if (3'h0 == currentAddressw[2:0]) begin // @[CGRA.scala 261:35]
        if (2'h0 == statew) begin // @[CGRA.scala 155:18]
          ctrlregs_0 <= 32'h0; // @[CGRA.scala 146:23]
        end else begin
          ctrlregs_0 <= _GEN_19;
        end
      end else begin
        ctrlregs_0 <= _GEN_135;
      end
    end else begin
      ctrlregs_0 <= _GEN_135;
    end
    if (reset) begin // @[CGRA.scala 31:27]
      ctrlregs_1 <= 32'h0; // @[CGRA.scala 31:27]
    end else if (_T_82) begin // @[CGRA.scala 260:48]
      if (3'h1 == currentAddressw[2:0]) begin // @[CGRA.scala 261:35]
        if (2'h0 == statew) begin // @[CGRA.scala 155:18]
          ctrlregs_1 <= 32'h0; // @[CGRA.scala 146:23]
        end else begin
          ctrlregs_1 <= _GEN_19;
        end
      end else begin
        ctrlregs_1 <= _GEN_136;
      end
    end else begin
      ctrlregs_1 <= _GEN_136;
    end
    if (reset) begin // @[CGRA.scala 31:27]
      ctrlregs_2 <= 32'h0; // @[CGRA.scala 31:27]
    end else if (_T_82) begin // @[CGRA.scala 260:48]
      if (3'h2 == currentAddressw[2:0]) begin // @[CGRA.scala 261:35]
        if (2'h0 == statew) begin // @[CGRA.scala 155:18]
          ctrlregs_2 <= 32'h0; // @[CGRA.scala 146:23]
        end else begin
          ctrlregs_2 <= _GEN_19;
        end
      end else begin
        ctrlregs_2 <= _GEN_137;
      end
    end else begin
      ctrlregs_2 <= _GEN_137;
    end
    if (reset) begin // @[CGRA.scala 31:27]
      ctrlregs_3 <= 32'h0; // @[CGRA.scala 31:27]
    end else if (_T_82) begin // @[CGRA.scala 260:48]
      if (3'h3 == currentAddressw[2:0]) begin // @[CGRA.scala 261:35]
        if (2'h0 == statew) begin // @[CGRA.scala 155:18]
          ctrlregs_3 <= 32'h0; // @[CGRA.scala 146:23]
        end else begin
          ctrlregs_3 <= _GEN_19;
        end
      end else begin
        ctrlregs_3 <= _GEN_138;
      end
    end else begin
      ctrlregs_3 <= _GEN_138;
    end
    if (reset) begin // @[CGRA.scala 31:27]
      ctrlregs_4 <= 32'h0; // @[CGRA.scala 31:27]
    end else if (_T_82) begin // @[CGRA.scala 260:48]
      if (3'h4 == currentAddressw[2:0]) begin // @[CGRA.scala 261:35]
        if (2'h0 == statew) begin // @[CGRA.scala 155:18]
          ctrlregs_4 <= 32'h0; // @[CGRA.scala 146:23]
        end else begin
          ctrlregs_4 <= _GEN_19;
        end
      end else begin
        ctrlregs_4 <= _GEN_139;
      end
    end else begin
      ctrlregs_4 <= _GEN_139;
    end
    if (reset) begin // @[CGRA.scala 31:27]
      ctrlregs_5 <= 32'h0; // @[CGRA.scala 31:27]
    end else if (_T_82) begin // @[CGRA.scala 260:48]
      if (3'h5 == currentAddressw[2:0]) begin // @[CGRA.scala 261:35]
        if (2'h0 == statew) begin // @[CGRA.scala 155:18]
          ctrlregs_5 <= 32'h0; // @[CGRA.scala 146:23]
        end else begin
          ctrlregs_5 <= _GEN_19;
        end
      end else begin
        ctrlregs_5 <= _GEN_140;
      end
    end else begin
      ctrlregs_5 <= _GEN_140;
    end
    if (reset) begin // @[CGRA.scala 31:27]
      ctrlregs_6 <= 32'h0; // @[CGRA.scala 31:27]
    end else if (_T_82) begin // @[CGRA.scala 260:48]
      if (3'h6 == currentAddressw[2:0]) begin // @[CGRA.scala 261:35]
        if (2'h0 == statew) begin // @[CGRA.scala 155:18]
          ctrlregs_6 <= 32'h0; // @[CGRA.scala 146:23]
        end else begin
          ctrlregs_6 <= _GEN_19;
        end
      end else begin
        ctrlregs_6 <= _GEN_141;
      end
    end else begin
      ctrlregs_6 <= _GEN_141;
    end
    if (reset) begin // @[CGRA.scala 35:30]
      configwaddr <= 32'h0; // @[CGRA.scala 35:30]
    end else if (configonepe) begin // @[CGRA.scala 223:20]
      if (config_finish) begin // @[CGRA.scala 226:23]
        configwaddr <= 32'h0;
      end else if (configwaddr < 32'h78) begin // @[CGRA.scala 212:25]
        configwaddr <= _configwaddrnext_T_2;
      end else begin
        configwaddr <= 32'h0;
      end
    end else if (!(reg_)) begin // @[CGRA.scala 230:30]
      configwaddr <= 32'h0; // @[CGRA.scala 238:17]
    end
    if (reset) begin // @[CGRA.scala 36:30]
      configPEcnt <= 32'h0; // @[CGRA.scala 36:30]
    end else if (configonepe) begin // @[CGRA.scala 223:20]
      if (_config_finish_T) begin // @[CGRA.scala 227:38]
        if (config_finish) begin // @[CGRA.scala 228:25]
          configPEcnt <= 32'h0;
        end else begin
          configPEcnt <= configPEnext;
        end
      end
    end
    if (reset) begin // @[CGRA.scala 57:34]
      currentAddressw <= 32'h0; // @[CGRA.scala 57:34]
    end else if (2'h0 == statew) begin // @[CGRA.scala 155:18]
      if (io_axilite_s_awaddr_valid & io_axilite_s_awaddr_ready) begin // @[CGRA.scala 157:66]
        currentAddressw <= {{2'd0}, _currentAddressw_T_1[31:2]}; // @[CGRA.scala 158:24]
      end
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_ <= 1'h0; // @[Pipeline.scala 27:22]
    end else if (_T_73) begin // @[Pipeline.scala 28:18]
      reg_ <= 1'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_ <= configallpe; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_2 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T_73) begin // @[Pipeline.scala 28:18]
      reg_2 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_2 <= currentAddressw; // @[Pipeline.scala 31:9]
    end
    if (reset) begin // @[CGRA.scala 69:33]
      dataindelay1 <= 32'h0; // @[CGRA.scala 69:33]
    end else begin
      dataindelay1 <= io_streamin_0_data; // @[CGRA.scala 73:20]
    end
    if (reset) begin // @[CGRA.scala 70:33]
      dataindelay2 <= 32'h0; // @[CGRA.scala 70:33]
    end else begin
      dataindelay2 <= dataindelay1; // @[CGRA.scala 74:20]
    end
    if (reset) begin // @[CGRA.scala 71:33]
      dataindelay3 <= 32'h0; // @[CGRA.scala 71:33]
    end else begin
      dataindelay3 <= dataindelay2; // @[CGRA.scala 75:20]
    end
    if (reset) begin // @[CGRA.scala 72:33]
      dataindelay4 <= 32'h0; // @[CGRA.scala 72:33]
    end else begin
      dataindelay4 <= dataindelay3; // @[CGRA.scala 76:20]
    end
    if (reset) begin // @[CGRA.scala 77:34]
      validindelay1 <= 1'h0; // @[CGRA.scala 77:34]
    end else begin
      validindelay1 <= io_streamin_0_valid; // @[CGRA.scala 81:21]
    end
    if (reset) begin // @[CGRA.scala 78:34]
      validindelay2 <= 1'h0; // @[CGRA.scala 78:34]
    end else begin
      validindelay2 <= validindelay1; // @[CGRA.scala 82:21]
    end
    if (reset) begin // @[CGRA.scala 79:34]
      validindelay3 <= 1'h0; // @[CGRA.scala 79:34]
    end else begin
      validindelay3 <= validindelay2; // @[CGRA.scala 83:21]
    end
    if (reset) begin // @[CGRA.scala 80:34]
      validindelay4 <= 1'h0; // @[CGRA.scala 80:34]
    end else begin
      validindelay4 <= validindelay3; // @[CGRA.scala 84:21]
    end
    if (reset) begin // @[CGRA.scala 69:33]
      dataindelay1_1 <= 32'h0; // @[CGRA.scala 69:33]
    end else begin
      dataindelay1_1 <= io_streamin_1_data; // @[CGRA.scala 73:20]
    end
    if (reset) begin // @[CGRA.scala 70:33]
      dataindelay2_1 <= 32'h0; // @[CGRA.scala 70:33]
    end else begin
      dataindelay2_1 <= dataindelay1_1; // @[CGRA.scala 74:20]
    end
    if (reset) begin // @[CGRA.scala 71:33]
      dataindelay3_1 <= 32'h0; // @[CGRA.scala 71:33]
    end else begin
      dataindelay3_1 <= dataindelay2_1; // @[CGRA.scala 75:20]
    end
    if (reset) begin // @[CGRA.scala 72:33]
      dataindelay4_1 <= 32'h0; // @[CGRA.scala 72:33]
    end else begin
      dataindelay4_1 <= dataindelay3_1; // @[CGRA.scala 76:20]
    end
    if (reset) begin // @[CGRA.scala 77:34]
      validindelay1_1 <= 1'h0; // @[CGRA.scala 77:34]
    end else begin
      validindelay1_1 <= io_streamin_1_valid; // @[CGRA.scala 81:21]
    end
    if (reset) begin // @[CGRA.scala 78:34]
      validindelay2_1 <= 1'h0; // @[CGRA.scala 78:34]
    end else begin
      validindelay2_1 <= validindelay1_1; // @[CGRA.scala 82:21]
    end
    if (reset) begin // @[CGRA.scala 79:34]
      validindelay3_1 <= 1'h0; // @[CGRA.scala 79:34]
    end else begin
      validindelay3_1 <= validindelay2_1; // @[CGRA.scala 83:21]
    end
    if (reset) begin // @[CGRA.scala 80:34]
      validindelay4_1 <= 1'h0; // @[CGRA.scala 80:34]
    end else begin
      validindelay4_1 <= validindelay3_1; // @[CGRA.scala 84:21]
    end
    if (reset) begin // @[CGRA.scala 139:23]
      statew <= 2'h0; // @[CGRA.scala 139:23]
    end else if (2'h0 == statew) begin // @[CGRA.scala 155:18]
      if (io_axilite_s_awaddr_valid & io_axilite_s_awaddr_ready) begin // @[CGRA.scala 157:66]
        statew <= 2'h1; // @[CGRA.scala 159:16]
      end
    end else if (2'h1 == statew) begin // @[CGRA.scala 155:18]
      if (io_axilite_s_wdata_valid & io_axilite_s_wdata_ready) begin // @[CGRA.scala 163:65]
        statew <= 2'h2; // @[CGRA.scala 166:16]
      end
    end else if (2'h2 == statew) begin // @[CGRA.scala 155:18]
      statew <= _GEN_14;
    end
    if (reset) begin // @[CGRA.scala 140:23]
      stater <= 2'h0; // @[CGRA.scala 140:23]
    end else if (2'h0 == stater) begin // @[CGRA.scala 180:18]
      if (io_axilite_s_araddr_valid & io_axilite_s_araddr_ready) begin // @[CGRA.scala 182:66]
        stater <= 2'h1; // @[CGRA.scala 184:16]
      end
    end else if (2'h1 == stater) begin // @[CGRA.scala 180:18]
      if (io_axilite_s_rdata_valid & io_axilite_s_rdata_ready) begin // @[CGRA.scala 188:65]
        stater <= 2'h0; // @[CGRA.scala 189:16]
      end
    end
    if (reset) begin // @[CGRA.scala 141:32]
      currentAddressr <= 32'h0; // @[CGRA.scala 141:32]
    end else if (2'h0 == stater) begin // @[CGRA.scala 180:18]
      if (io_axilite_s_araddr_valid & io_axilite_s_araddr_ready) begin // @[CGRA.scala 182:66]
        currentAddressr <= {{2'd0}, _currentAddressr_T_1[31:2]}; // @[CGRA.scala 183:24]
      end
    end
    if (reset) begin // @[Pipeline.scala 27:22]
      reg_1 <= 32'h0; // @[Pipeline.scala 27:22]
    end else if (_T_73) begin // @[Pipeline.scala 28:18]
      reg_1 <= 32'h0; // @[Pipeline.scala 29:9]
    end else begin
      reg_1 <= _ctrlregs_axil_wdata_T_3; // @[Pipeline.scala 31:9]
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
  ctrlregs_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  ctrlregs_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  configwaddr = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  configPEcnt = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  currentAddressw = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  reg_ = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  reg_2 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  dataindelay1 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  dataindelay2 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  dataindelay3 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  dataindelay4 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  validindelay1 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  validindelay2 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  validindelay3 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  validindelay4 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  dataindelay1_1 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  dataindelay2_1 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  dataindelay3_1 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  dataindelay4_1 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  validindelay1_1 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  validindelay2_1 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  validindelay3_1 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  validindelay4_1 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  statew = _RAND_28[1:0];
  _RAND_29 = {1{`RANDOM}};
  stater = _RAND_29[1:0];
  _RAND_30 = {1{`RANDOM}};
  currentAddressr = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  reg_1 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
