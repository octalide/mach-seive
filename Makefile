CMACH   ?= cmach
STD_DIR ?= $(MACH_STD)

PROJECT  := seive

SRC      := src/main.mach
BIN_DIR  := out/bin
OBJ_DIR  := out/obj
EXE      := $(BIN_DIR)/$(PROJECT)

.PHONY: all run clean print

all: $(EXE)

# this is a bit hacky and explicit, but only because cmach is currently stupid
$(EXE): | $(BIN_DIR) $(OBJ_DIR)
	@$(CMACH) build $(SRC) -I src -M $(PROJECT)=src -I $(STD_DIR) -M std=$(STD_DIR) --obj-dir=$(OBJ_DIR) --dep-dir=$(OBJ_DIR) --emit-ir --emit-asm --emit-ast -o $@

$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

run: $(EXE)
	@$(EXE)

clean:
	rm -rf out
