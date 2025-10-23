# paths
CMACH     ?= $(CMACH_BIN)/cmach

# dirs
OUT_DIR := out
BIN_DIR := $(OUT_DIR)/bin
OBJ_DIR := $(OUT_DIR)/obj

# sources
SRC      := src/main.mach
OBJ      := $(OBJ_DIR)/main.o
EXE      := $(BIN_DIR)/seive

.PHONY: all run clean print

all: $(EXE)

$(EXE): $(OBJ) | $(BIN_DIR)
	@echo exe = $@
	@OBJS="$$(find $(OBJ_DIR) -type f -name '*.o' -print 2>/dev/null)"; cc -nostartfiles -nostdlib -no-pie -o $@ $$OBJS

$(OBJ): $(SRC) | $(OBJ_DIR)
	@$(CMACH) build $< --emit-obj --no-link -o $@

$(BIN_DIR):
	@mkdir -p $(BIN_DIR)

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

run: $(EXE)
	@$(EXE)

clean:
	rm -rf $(OUT_DIR)

print:
	@echo cmach = $(CMACH)
	@echo exe   = $(EXE)
