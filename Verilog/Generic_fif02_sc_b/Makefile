all: sim

##########################################################################
#
# DUT and Test Bench Sources
#
##########################################################################
DUT_SRC_DIR = .
TB_SRC_DIR = .

_TARGETS_ = $(DUT_SRC_DIR)/generic_fifo_sc_b.v $(DUT_SRC_DIR)/generic_dpram.v
_TB_ = $(TB_SRC_DIR)/test_bench_top.v

##########################################################################
#
# Misc Variables
#
##########################################################################
FILES = $(_TARGETS_) $(_TB_)
OUTPUT = sim_output
VCD_FILE = waves.vcd

##########################################################################
#
# Make Targets
#
##########################################################################
ss:
	gtkwave $(VCD_FILE) &

simw:
	iverilog -o $(OUTPUT) $(FILES) && vvp $(OUTPUT)

sim:
	iverilog -o $(OUTPUT) $(FILES) && vvp $(OUTPUT) > simulation.log

gatew:
	gtkwave $(VCD_FILE) &

gate:
	iverilog -o gate_output $(FILES) && vvp gate_output

clean:
	rm -f $(OUTPUT) gate_output simulation.log $(VCD_FILE)

