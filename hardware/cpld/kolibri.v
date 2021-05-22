module kolibri (
    input       MHZ48,      // master clock
    input       nWAIT,      // V9958 wait signal

    output      MHZ12,      // 12 MHz clock output
    output      nQ,         // clock signals for 6309E
    output      nE,

    input       nRES,       // system reset

    inout       [7:0] D,    // data bus
    input       [15:0] A,   // address bus
    output reg  [19:16] MA, // extended address lines
    output wire MA14,
    output wire MA15,

    input       RW,         // R/W from 6309
    output wire nRD,        // to /OE of Flash and RAM
    output wire nWR,        // to /R/W of of Flash and RAM
    output wire nROMCS,     // /CS for Flash
    output wire nRAMCS,     // /CS for RAM

    output wire nCSR,       // V9958 read
    output wire nCSW,       // V9958 write
    output wire nIOEN,      // I/O enable
    output wire nRD245,     // FT245 read
    output wire WR245,      // FT245 write
    output wire nOPL2,      // YM3812
    output wire nRTC,       // RTC 16 bytes
    output wire nCS8742,    // Keyboard and Mouse controller
    output wire nCTRL,      // Gamepad and interrupt controller


    output reg  MOSI,       // SPI
    output reg  SCLK,
    input       MISO,

    output reg  nSD0,       // SD card chip select
    output reg  nSD1,
    output reg  nSPI1,
    output reg  nSPI2,
    output reg  LED0,
    output reg  LED1,
    output reg  TSC,
    
    input       CD0,
    input       CD1,
    input       WP0,
    input       WP1

);


    clock clock_gen(MHZ48, nWAIT, MHZ12, nQ, nE);



    // =======================================================================
    //
    //      I / O   a r e a
    //
    // =======================================================================


    assign nRD     = nE | ~RW;
    assign nWR     = nE |  RW;
    assign nIOEN   = nE | !(A[15:8] == 8'hFE);

    //assign nMMUCS  = nIOEN |     !(A[7:4] == 4'b0000);    // $FE00-$FE0F
    assign nRTC    = nIOEN |       !(A[7:4] == 4'b0001);    // $FE10-$FE1F
    assign nCS8742 = nIOEN |       !(A[7:1] == 7'b0010010); // $FE24-$FE25
    assign nOPL2   = nIOEN |       !(A[7:1] == 7'b0010011); // $FE26-$FE27
    assign nCSR    = nIOEN | ~RW | !(A[7:2] == 6'b001010);  // $FE28-$FE2B
    assign nCSW    = nIOEN |  RW | !(A[7:2] == 6'b001010);  // $FE28-$FE2B
    assign nRD245  = nIOEN | ~RW | !(A[7:0] == 8'h2C);      // $FE2C
    assign WR245   = nIOEN |  RW | !(A[7:0] == 8'h2C);      // $FE2C
    assign nCTRL   = nIOEN |       !(A[7:4] == 4'b0100);    // $FE40-$FE4F



    // =======================================================================
    //
    //      S D - C a r d s
    //
    // =======================================================================


    // SD Card Select Signals
    // $FE30 bit 0: card select drive 0
    // $FE30 bit 1: card select drive 1
    always @(negedge nE or negedge nRES)
    begin
        if (nRES == 0) begin
            nSD0  <= 1;
            nSD1  <= 1;
            nSPI1 <= 1;
            nSPI2 <= 1;
            LED0  <= 0;
            LED1  <= 1;
            TSC   <= 0; 
        end else begin
            if ((A[15:0] == 16'hFE30) && (RW == 0)) 
            begin     // $FE30
                nSD0  <= D[0];
                nSD1  <= D[1];
                nSPI1 <= D[2];
                nSPI2 <= D[3];
                LED0  <= D[4];
                LED1  <= D[5];
                // bit 6 not used
                TSC   <= D[7];
            end
        end
    end


    // SPI Clock
    // any access to $FE2E resets SCLK
    // any access to $FE2F sets   SCLK
    always @(negedge nE or negedge nRES)
    begin
        if (nRES == 0) begin
            SCLK <= 0;                              // SCLK low when in idle
        end else if (A[15:1]==15'b111111100010111) begin
            SCLK <= A[0];
        end
    end


    // SPI MOSI
    always @(negedge nE or negedge nRES)
    begin
        if (nRES == 0) begin
            MOSI <= 1;
        end else if (A[15:0] == 16'hFE31 && RW == 0) begin
            MOSI <= D[7];
        end
    end

    // SPI MISO
    assign D[7] = (A[15:0] == 16'hFE31 && RW == 1 && nE == 0) ? MISO : 1'bz;



    // =======================================================================
    //
    //      M e m o r y   M a n a g e m e n t   U n i t
    //
    // =======================================================================

    assign MA14 = A[14];
    assign MA15 = A[15];
    
    // Memory below $0400 is always common RAM
    // Memory at $FExx is always I/O
    // Memory at $FFxx is always common ROM
    wire mapped;
    assign mapped = A[15:0] >= 16'h0400 && A[15:0] < 16'hFE00;

    // chip select signals for memory chips
    assign nRAMCS = nE |  A[15];             // 512-1024 KB ||  0-32 KB
    assign nROMCS = nE | ~A[15] | ~nIOEN;    //   0- 512 KB || 32-64 KB \ $FExx

    // Mapped address lines
    always @(negedge nE or negedge nRES)
    begin
        if (nRES == 0) begin
            MA[16] <= 0;
            MA[17] <= 0;
            MA[18] <= 0;
            MA[19] <= 0;
        end else if (A[15:0] == 16'hFE31 && RW == 0) begin
            // MA[14} <= D[0];
            // MA[15} <= D[1];
            MA[16] <= D[2];
            MA[17] <= D[3];
            MA[18] <= D[4];
            MA[19] <= D[5];
        end
    end


endmodule


// vim: noai:ts=4:sw=4:et
