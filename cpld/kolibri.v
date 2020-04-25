module kolibri (
    input       MHZ48,      // master clock
    input       nWAIT,      // V9958 wait signal

    output      MHZ24,      // 24 MHz clock output
    output      MHZ12,      // 12 MHz clock output
    output      nQ,         // clock signals for 6309E
    output      nE,

    input       nRES,       // system reset
    output      nNMI,       // non maskable interrupt

    inout       [7:0] D,    // data bus
    input       [15:0] A,   // address bus
    input       [21:17] MA, // extended address lines
    output reg  P0,         // predefined memory map configuration
    output reg  P1,
    output      nSTROBE,    // low during MMU access
    output reg  nMM,        // 1: pass mode, 0: map mode

    input       RW,         // R/W from 6309
    output wire nRD,        // to /OE of Flash and RAM
    output wire nWR,        // to /R/W of of Flash and RAM
    output wire nROMCS,     // /CS for Flash
    output wire nRAMCS,     // /CS for RAM

    output wire nPORT,      //  1 byte
    output wire nCSR,       // V9958 read
    output wire nCSW,       // V9958 write
    output wire nIOEN,      // I/O enable
    output wire nRD245,     // FT245 read
    output wire WR245,      // FT245 write

    output wire nMMUCS,     // 16 bytes
    output wire nOPL2,      // YM3812
    output wire nRTC,       // RTC 16 bytes
    output wire nCS8742,    // Keyboard, Mouse and Gamepad Controller
    output wire nFPUCS,     // 68882 floating point processor


    output reg  nSD0,       // SD card chip select
    output reg  nSD1,

    output reg  MOSI,       // SPI
    output reg  SCLK,
    input       MISO


);


    clock clock_gen(MHZ48, nWAIT, MHZ24, MHZ12, nQ, nE, nSTROBE);

    assign nRD     = nE | ~RW;
    assign nWR     = nE |  RW;
    assign nIOEN   = nE | !(A[15:8] == 8'hFE);

    // Pass Mode
    assign nRAMCS  = nE |  A[15];                           //  0-32 KB
    assign nROMCS  = nE | ~A[15] | ~nIOEN;                  // 32-64 KB \ $FExx

    assign nCSR    = nIOEN | ~RW | !(A[7:2] == 6'b001010);  // $FE28-$FE2B
    assign nCSW    = nIOEN |  RW | !(A[7:2] == 6'b001010);  // $FE28-$FE2B
    assign nRD245  = nIOEN | ~RW | !(A[7:0] == 8'h2C);      // $FE2C
    assign WR245   = nIOEN |  RW | !(A[7:0] == 8'h2C);      // $FE2C
    assign nPORT   = nIOEN | ~RW | !(A[7:0] == 8'h2D);      // $FE2D


    assign nMMUCS  = nIOEN |       !(A[7:4] == 4'b0000);    // $FE00-$FE0F
    assign nRTC    = nIOEN |       !(A[7:4] == 4'h0001);    // $FE10-$FE1F
    assign nCS8742 = nIOEN |       !(A[7:1] == 7'b0010010); // $FE24-$FE25
    assign nOPL2   = nIOEN |       !(A[7:1] == 7'b0010011); // $FE26-$FE27
    assign nFPUCS  = nIOEN |       !(A[7:5] == 3'b010);     // $FE40-$FE5F


    // ===== Static assignments ========================================

    // No MMU yet
    assign nMM = 1;     // 1: pass mode

    assign nNMI = 1;


    // SD Card Select Signals
    // $FE30 bit 0: card select drive 0
    // $FE30 bit 1: card select drive 1
    always @(negedge nE or negedge nRES)
    begin
        if (nRES == 0) begin
            nSD0 <= 1;
            nSD1 <= 1;
        end else if (A[15:0] == 16'hFE30) begin     // $FE30
            nSD0 <= D[0];
            nSD1 <= D[1];
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


    // select predefined memory map configurations $FE20-$FE23
    always @(negedge nE or negedge nRES)
    begin
        if (nRES == 0) begin
            P0 <= 0;
            P1 <= 0;
        end else if (A[15:2]==15'b11111110001000 && RW == 0) begin
            P0 <= A[0];
            P1 <= A[1];
        end
    end

    // enable/disable MMU mapping
    always @(negedge nE or negedge nRES)
    begin
        if (nRES == 0) begin
            nMM <= 1;           // 1: pass mode
        end else if (A[15:0] == 16'hFE32 && RW == 0) begin
            nMM <= D[0];
        end
    end


endmodule


// vim: noai:ts=4:sw=4:et
