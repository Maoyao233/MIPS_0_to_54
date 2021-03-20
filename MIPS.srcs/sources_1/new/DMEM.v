`timescale 1ns / 1ps

module DMEM(
    input clk,
    input ena,
    input wena,
    input [10:0] addr,
    input [31:0] data_in,
    output [31:0] data_out
    );
    reg [31:0] mem [63:0]; //对于这个实验已经足够大，太大的存储生成会慢，并且板子资源不一定够用
    assign data_out = (ena && !wena) ? mem[addr] : 'bz;
    always @ (negedge clk)
    begin
        if (ena && wena)
        begin
            mem[addr] <= data_in;
        end
    end
endmodule