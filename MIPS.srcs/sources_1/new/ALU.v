`timescale 1ns / 1ps
/*
    parameter ADDU = 4'b0000;
    parameter SUBU = 4'b0001;
    parameter ADD = 4'b0010;
    parameter SUB = 4'b0011;
    parameter AND = 4'b0100;
    parameter OR = 4'b0101;
    parameter XOR = 4'b0110;
    parameter NOR = 4'b0111;
    parameter LUI = 4'b100x;
    parameter SLT = 4'b1011;
    parameter SLTU = 4'b1010;
    parameter SRA = 4'b1100;
    parameter SLL = 4'b111x;
    parameter SRL = 4'b1101;
   */ 
    
module ALU(
        input [31:0] a,
        input [31:0] b,
        input [3:0] aluc,
        output [31:0] r,
        output reg zero,
        output reg carry,
        output reg negative,
        output reg overflow
    );

    assign r = aluc==4'b0000 || aluc==4'b0010 ? a + b :
               aluc==4'b0001 || aluc==4'b0011 ? a - b :
               aluc==4'b0100 ? (a & b) :
               aluc==4'b0101 ? (a | b) :
               aluc==4'b0110 ? (a ^ b) :
               aluc==4'b0111 ? ~(a | b) :
               aluc==4'b1000||aluc==4'b1001 ? {b[15:0],16'b0} :
               aluc==4'b1011 ? ($signed(a) < $signed(b)) :
               aluc==4'b1010 ? a < b :
               aluc==4'b1100 ? $signed($signed(b) >>> a) :
               aluc==4'b1110 || aluc==4'b1111 ? b << a :
               aluc==4'b1101 ? b >> a:
               32'hzzzz;
               
    initial
    begin
        carry = 0;
        negative = 0;
        overflow = 0;
        zero = 0;
    end
    
    always @ (*)
    begin
        zero <= r==0;

        if (aluc == 4'b0000 && (a > r || b > r ) || aluc == 4'b0001 && a < b
            || aluc == 4'b1010 && a < b) begin
            carry <= 1;
        end
        else if ((aluc==4'b1100||aluc==4'b1101)&&a[3:0]>0) begin //”““∆
            carry <= b[a[3:0]-1];
        end
        else if((aluc==4'b1110||aluc==4'b1111)&&a[3:0]>0) begin //◊Û“∆
            carry <= b[32-a[3:0]];
        end
        else begin
            carry <= carry;
        end
        

        if (aluc == 4'b0010 && $signed(a) > 0 && $signed(b)>0 && $signed(r) < 0 || aluc == 4'b0011 && $signed(a) < 0 && $signed(b) > 0 && $signed(r) > 0)
        begin
            overflow <= 1;
        end
        else begin
            overflow <= overflow;
        end

        if(aluc==4'b1011) begin
            negative <= r[0];
        end
        else begin
            negative <= r[31];
        end
    end
endmodule
