module clock (
    input MHZ48,            // master clock
    input nWAIT,            // V9958 wait signal

    output MHZ12,           // 12 MHz clock output
    output reg nQ,          // inverted clock signals for 6309E
    output nE
    );


    // ===== Clock Generation ========================================

    // nE and nQ are inverted by an external logic gate 74HCT04 to
    // ensure the required voltage levels needed by the CPU

    reg [1:0] counter12;                    // 24 MHz and 12 MHz counter
    reg [1:0] counter3;                     // 3 MHz counter

    initial begin                           // required only for simulation
        counter12 = 2'b00;
        counter3  = 2'b00;
        nQ = 1'b0;
    end

    //assign MHZ24 = counter12[0];            // 24 MHz output
    assign MHZ12 = counter12[1];            // 12 MHz output
    assign nE = counter3[1];                // nE = 3 MHz

    always @ (posedge MHZ48)
    begin
        counter12 <= counter12 + 1'b1;      // count 24 MHz and 12 MHz
    end

    always @ (posedge MHZ12)                // count 3 MHz
    begin
        if (nWAIT || nE == 1 || nQ == 0)    // stop only if nWait = 0 and nE = 1 / nQ = 0
            counter3 <= counter3 + 1'b1;
    end

    always @ (posedge counter3[0])          // set nQ with 90 degrees offset to nE
    begin
        if (counter3[0] == counter3[1])
            nQ <= 1'b1;
        else
            nQ <= 1'b0;
    end


endmodule
