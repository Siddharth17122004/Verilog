# ===== TOOLS =====
IVERILOG = iverilog
VVP = vvp

# ===== DIRECTORIES (RELATIVE ONLY) =====
SRC_DIR = src
TB_DIR  = tb
SIM_DIR = sim

# ===== FILE SELECTION =====
# usage: make run file=singleport_ram
SRC = $(SRC_DIR)/$(file).v
TB  = $(TB_DIR)/tb_$(file).v
OUT = $(SIM_DIR)/$(file).vvp

# ===== DEFAULT =====
all:
	@echo "Usage: make run file=<module_name>"

# ===== RUN =====
run:
	@if [ -z "$(file)" ]; then \
		echo "ERROR: provide file=<module_name>"; exit 1; \
	fi
	@mkdir -p $(SIM_DIR)
	$(IVERILOG) -o $(OUT) $(SRC) $(TB)
	$(VVP) $(OUT)

# ===== CLEAN =====
clean:
	rm -rf $(SIM_DIR)/*.vvp $(SIM_DIR)/*.vcd

# ===== GIT PUSH =====
push:
	@if [ -z "$(m)" ]; then \
		echo "ERROR: commit message required → make push m='message'"; exit 1; \
	fi
	git add .
	git commit -m "$(m)"
	git push
