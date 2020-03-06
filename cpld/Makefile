all: clock.vvp

clock.vvp: clock.v clock_tb.v
	iverilog -o $@ $^
	vvp $@

clean:
	rm -f clock.vvp clock.vcd
