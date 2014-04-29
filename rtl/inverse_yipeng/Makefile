TOP=top
INTERFACE=interface
BENCH=bench
DUT=inverse

.PHONY: help

help:
	@echo "The following make targets are supported:" ;\
	echo " indent - automatically indents verilog and c files" ;\
	echo " bench  - builds the testbench";\
	echo " wave   - convert vcd to vpd";\
	echo " clean  - cleans testbench and intermediate files" ;\
	echo " help   - show this information";\

indent:
	emacs --batch *.sv -f verilog-batch-indent
	indent -linux *.c *.h
	rm *~

leda:
	leda -full64 -sverilog -top $(top) *.sv

bench:
	vcs -full64 -sverilog +define+VPD +warn=all +lint=all,noVCDE -notice -PP top.sv -o testbench.exe

wave:
	vcs -vpd2vcd vcdplus.vpd waveform.vcd
	gtkwave waveform.vcd &

clean:
	rm -rf *.vpd csrc *exe *exe.daidir *.exe.vdb *.key *.log *.vcd