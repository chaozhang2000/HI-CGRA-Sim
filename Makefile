C_INC_PATH = $(shell find $(abspath ./) -name "cinc")
C_INC_PATH += $(shell find $(abspath ./cinc) -name "device")

V_INC_PATH = $(shell find $(abspath ./vsrc) -name "vinc") 
TOPNAME = CGRA
VERILATOR = verilator
VERILATOR_CFLAGS += -MMD --build -cc --trace\
				-O3 --x-assign fast --x-initial fast --noassert
CXX = g++
CC = gcc
LD = ld
BUILD_DIR = ./build
OBJ_DIR = $(BUILD_DIR)/obj_dir
DISASM_OBJ = disasm.o
BIN = $(BUILD_DIR)/$(TOPNAME)
ARCHIVE =$(OBJ_DIR)/Vtop__ALL.a 
$(shell mkdir -p $(BUILD_DIR))
#project source
VSRCS = $(shell find $(abspath ./vsrc) -name "*.v")
CSRCS = $(shell find $(abspath ./csrc) -name "*.cc")
CSRCS += $(shell find $(abspath ./csrc) -name "*.cpp")
CSRCS += $(shell find $(abspath ./csrc) -name "*.c")
CINCS = $(shell find $(abspath ./cinc) -name "*.h")
#rules for verilator
C_INCFLAGS = $(addprefix -I, $(C_INC_PATH))
CFLAGS += $(C_INCFLAGS) -fPIE -std=c++14 -DTOP_NAME="\"V$(TOPNAME)\""
CFLAGS += $(shell llvm-config-12 --cxxflags)
LDFLAGS += -lreadline -ldl -lSDL2 -lSDL2_image $(shell llvm-config-12 --libs) 
BIN_NAME ?= ./prog/dummy-riscv64-npc.bin
LOG ?= $(BUILD_DIR)/npc-log.txt
ELF ?=./prog/dummy-riscv64-npc.elf
SO ?=../nemu/build/riscv64-nemu-interpreter-so
BATCH ?= 
ARGS =  
$(BIN) : $(VSRCS) $(CSRCS)
	@rm -rf $(OBJ_DIR)
	$(VERILATOR) $(VERILATOR_CFLAGS) \
     --top-module $(TOPNAME) $^ -I$(V_INC_PATH) \
    $(addprefix -CFLAGS , $(CFLAGS)) $(addprefix -LDFLAGS , $(LDFLAGS)) \
     --Mdir $(OBJ_DIR) --exe -o $(abspath $(BIN)) \
		 -j 30
run:$(BIN)
	@$^ $(ARGS)
	gtkwave waveform.vcd -S ./scripts/wave.tcl
clean: 
	@rm -rf $(BUILD_DIR) 
	@rm -f waveform.vcd
.PHONY: clean
