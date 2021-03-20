`timescale 1ns / 1ps

module DMEM(
    input clk,
    input ena,
    input wena,
    input [10:0] addr,
    input [31:0] data_in,
    output [31:0] data_out
    );
    reg [31:0] mem [63:0]; //�������ʵ���Ѿ��㹻��̫��Ĵ洢���ɻ��������Ұ�����Դ��һ������
    assign data_out = (ena && !wena) ? mem[addr] : 'bz;
    always @ (negedge clk)
    begin
        if (ena && wena)
        begin
            mem[addr] <= data_in;
        end
    end
endmodule