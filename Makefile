# paths
CMACH     ?= $(CMACH_BIN)/cmach

# sources
SRC      := src/main.mach
BIN_DIR  := out/bin
OBJ_DIR  := out/obj
EXE      := $(BIN_DIR)/seive

.PHONY: all run clean print

all: $(EXE)

$(EXE): | $(BIN_DIR)
	@echo exe = $@
# 	this is a bit hacky, but only because cmach is currently stupid
	@$(CMACH) build $(SRC) -I src -M seive=src --obj-dir=$(OBJ_DIR) --dep-dir=$(OBJ_DIR) --emit-ir --emit-asm --emit-ast -o $@

$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

run: $(EXE)
	@$(EXE)

clean:
	rm -rf out
