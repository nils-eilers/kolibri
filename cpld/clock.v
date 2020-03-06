module clock (
	input MHZ48,			// master clock
	input nWAIT,			// V9958 wait signal

	output reg MHZ12,		// 12 MHz clock output
	output reg nQ,			// inverted clock signals for 6309E
	output reg nE
	);


	// ===== Clock Generation ========================================

	// nE and nQ are inverted by an external logic gate 74HCT04 to
	// ensure the required voltage levels needed by the CPU

	// nWAIT is used to stretch the memory access cycle. If a memory
	// (or here: the Video Controller) is slow, it can pull nWAIT low.
    // Q may flip to low, then stay low, E will stay high as long as
	// nWAIT stays low.

	// Uncomment this line to test the clock generation without
	// V9958 and/or memory decoder:
	// assign nWAIT = 1;

	initial
	begin
		MHZ24 = 1'b0;
		MHZ12 = 1'b0;
		nQ = 1'b1;
		nE = 1'b0;
		toggle_E = 1'b1;
	end

	reg MHZ24;
	reg toggle_E;

	always @ (posedge MHZ48)
	begin
		MHZ24 <= ~MHZ24;
	end

	always @ (posedge MHZ24)
	begin
		MHZ12 <= ~MHZ12;
	end
	
    always @ (posedge MHZ12)
	begin
		if (toggle_E)
			if (nE & ~nQ) nE <= 1'b0;
			else nE <= 1'b1 & nWAIT;
		else
			if (nQ) nQ <= ~nWAIT;
			else nQ <= 1'b1;
        toggle_E <= ~toggle_E;
	end

endmodule

// vim: noai:ts=4:sw=4
