module cpld2 (
    output      nIRQ,
    output      nFIRQ,
    output      nNMI,

    input       nEXTINT,
    input       nRXF,
    input       nAINT,
    input       OBF,
    input       nIBF,
    input       STDP,
    input       TXE,
    input       nVINT,

    output reg  nPCLK,
    output reg  nLTCH,
    input       nPD0,
    input       nPD1,

    input       nCS,
    input       E,
    input       RW,
    input       nRES,
    inout       [7:0] D,    // data bus
    input       [3:1] A,    // address bus
    input       BS,
    input       BA
);

    assign nIRQ = (nEXTINT & nVINT & nAINT) ? 1'bZ : 1'b0;
    assign nFIRQ = 1'bZ;
    assign nNMI = 1'bZ;


    always @(posedge E or negedge nRES)
    begin
        if (nRES == 0) begin
            nPCLK  <= 1'b1;
        end else begin
            nPCLK <= 1'b1;
        end
    end

    always @(posedge E or negedge nRES)
    begin
        if (nRES == 0) begin
            nLTCH  <= 1'b1;
        end else begin
            nLTCH <= 1'b1;
        end
    end


endmodule


// vim: noai:ts=4:sw=4:et
