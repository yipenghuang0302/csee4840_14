TOP=top
INTERFACE=interface
BENCH=bench
DUT=sincos

.PHONY: help

help:
	@echo "The following make targets are supported:" ;\
	echo " indent - automatically indents verilog and c files" ;\
	echo " bench  - builds the testbench";\
	echo " wave   - convert vcd to vpd";\
	echo " clean  - cleans testbench and intermediate files" ;\
	echo " help   - show this information";\

leda:
	leda -full64 -sverilog -top $(top) *.sv

bench:
	vcs -full64 -PP -sverilog -j6 -cm line+cond +define+SV +define+VPD +warn=all,noOBSV2G +lint=all,noVCDE,noOUDPE -notice -v2k_generate -l $(DUT)_vcs.log top.sv -o testbench.exe

wave:
	vcs -vpd2vcd vcdplus.vpd waveform.vcd
	gtkwave waveform.vcd &

clean:
	rm -rf *.vpd csrc *exe *exe.daidir *.exe.vdb *.key *.log *.vcd