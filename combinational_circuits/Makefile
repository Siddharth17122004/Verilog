# ====== TOOLS ======
IVERILOG = iverilog
VVP = vvp

# ====== DIRECTORIES ======
SRC_DIR = src
TB_DIR  = tb
SIM_DIR = sim

# ====== FILE SELECTION ======
# usage: make run file=full_adder
SRC = $(SRC_DIR)/$(file).v
TB  = $(TB_DIR)/tb_$(file).v
OUT = $(SIM_DIR)/$(file).vvp

# ====== DEFAULT ======
all:
	@echo "Usage: make run file=<circuit_name>"

# ====== RUN SIMULATION ======
run:
	@mkdir -p $(SIM_DIR)
	$(IVERILOG) -o $(OUT) $(SRC) $(TB)
	$(VVP) $(OUT)

# ====== CLEAN ======
clean:
	rm -f $(SIM_DIR)/*.vvp $(SIM_DIR)/*.vcd

# ====== GIT PUSH ======
push:
	git add .
	git commit -m "$(m)"
	git push
