`timescale 1ns / 1ps

// ʵ���ϼĴ����ѵ�Ȼ�и��򵥵�д����������ֻ�Ǽ������������߼���ҵ����

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
    wire [31:0] D; //ÿ���Ĵ����Ƿ��д
    wire [1023:0] S; 
    decoder532 dec_rd(rd_addr, write_ena && rd_addr, D); //0�żĴ�������д��
    genvar i;
    generate
        for(i = 0; i < 32; i = i + 1)
        begin : regs
            register r(~clk, rst, D[i], rd, S[ {i, 5'b11111} -: 32]); //ʱ��������д��
        end
    endgenerate
    selector102432 sel_rs(S, rs_addr, 1'b1, rs);
    selector102432 sel_rt(S, rt_addr, 1'b1, rt);
endmodule
