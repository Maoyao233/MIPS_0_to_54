`timescale 1ns / 1ps

// 实际上寄存器堆当然有更简单的写法，我这里只是简单沿用了数字逻辑作业而已

module decoder532(
        input [4:0] data_in,
        input ena,
        output [31:0] data_out    
    );
    assign data_out = ena ? (1 << data_in) : 0;
endmodule

module selector102432(
    input [1023:0] iC,
    input [4:0] iS,
    input iEna,
    output [31:0] oZ
    );
    assign oZ = iEna ? iC[ {iS, 5'b11111} -: 32] : 'bz;
endmodule

module Regfiles(
        input clk,
        input rst,
        input write_ena,
        input [4:0] rs_addr,
        input [4:0] rt_addr,
        input [4:0] rd_addr,
        input [31:0] rd,
        output [31:0] rs,
        output [31:0] rt
    );
    wire [31:0] D; //每个寄存器是否可写
    wire [1023:0] S; 
    decoder532 dec_rd(rd_addr, write_ena && rd_addr, D); //0号寄存器不可写入
    genvar i;
    generate
        for(i = 0; i < 32; i = i + 1)
        begin : regs
            register r(~clk, rst, D[i], rd, S[ {i, 5'b11111} -: 32]); //时钟上升沿写入
        end
    endgenerate
    selector102432 sel_rs(S, rs_addr, 1'b1, rs);
    selector102432 sel_rt(S, rt_addr, 1'b1, rt);
endmodule
