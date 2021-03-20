`timescale 1ns / 1ps

module IMEM(
    input [10:0] address,
    output [31:0] instruction
    );

    dist_mem_gen_0 instruction_memory(
        .a(address),
        .spo(instruction)
     );

endmodule
