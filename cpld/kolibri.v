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
    output wire P0,         // predefined memory map configuration
    output wire P1,
    output wire nSTROBE,    // low during MMU access
    output wire nMM,        // 1: pass mode, 0: map mode

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


    output wire nSD0,       // SD card chip select
    output wire nSD1,

    output wire MOSI,       // SPI
    output wire SCLK,
    input       MISO


);


    clock clock_gen(MHZ48, nWAIT, MHZ24, MHZ12, nQ, nE);

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
    assign nFPU    = nIOEN |       !(A[7:5] == 3'b010);     // $FE40-$FE5F


    // ===== Static assignments ========================================

    // No MMU yet
    assign P0 = 0;
    assign P1 = 0;
    assign nSTROBE = 1;
    assign nMM = 1;     // 1: pass mode

    assign nNMI = 1;

    assign nSD0 = 1;
    assign nSD1 = 1;
    assign MOSI = 1;
    assign SCLK = 1;


endmodule


// vim: noai:ts=4:sw=4:et
