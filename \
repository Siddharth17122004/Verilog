# ====== TOOLS ======
IVERILOG = iverilog
VVP = vvp
EDITOR = gvim

# ====== DIRECTORIES ======
SRC_DIR = src
TB_DIR  = tb
SIM_DIR = sim

# ====== FILE SELECTION ======
SRC = $(SRC_DIR)/$(file).v
TB  = $(TB_DIR)/tb_$(file).v
OUT = $(SIM_DIR)/$(file).vvp

all:
	@echo "Usage: make run file=<name>"

run:
	@mkdir -p $(SIM_DIR)
	$(IVERILOG) -o $(OUT) $(SRC) $(TB)
	$(VVP) $(OUT)

edit:
	$(EDITOR) $(SRC) $(TB)

clean:
	rm -f $(SIM_DIR)/*.vvp $(SIM_DIR)/*.vcd

push:
	git add .
	git commit -m "$(m)"
	git push
