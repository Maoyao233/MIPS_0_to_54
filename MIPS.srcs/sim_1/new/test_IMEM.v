`timescale 1ns / 1ps

module test_IMEM(
    );
    reg [10:0] addr;
    wire [31:0] instr;
    IMEM imem(
        .address(addr),
        .instruction(instr)
    );

    initial begin
        addr = 0;
    end

    always begin
        #20 addr = addr + 1;
    end
endmodule
