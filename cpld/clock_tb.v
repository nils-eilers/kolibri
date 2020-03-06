`timescale 1ns/100ps

module clock_tb;
    output reg MHZ48;
    output reg nWAIT;

    input wire MHZ12;
    input wire nQ;
    input wire nE;

    wire Q;
    wire E;
    assign Q = ~nQ;
    assign E = ~nE;

    clock clock_tb(MHZ48, nWAIT, MHZ12, nQ, nE);

    always
    #10.41666666 MHZ48 = ~MHZ48;

    initial
    begin
       $dumpfile ("clock.vcd");
       $dumpvars(0,clock_tb);
       // $monitor($time, " MHZ48= %b, MHZ12=%b, nQ=%b nE=%d", MHZ48, MHZ12, nQ, nE);

       MHZ48 = 1'b0;
       nWAIT = 1'b1;

       #880  nWAIT = 1'b0; #1000 nWAIT = 1'b1;
       #1100 nWAIT = 1'b0; #800  nWAIT = 1'b1;

       #2800 $finish;
    end

endmodule

// vim: noai:ts=4:sw=4
