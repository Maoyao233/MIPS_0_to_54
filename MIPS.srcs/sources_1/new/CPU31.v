`timescale 1ns / 1ps

module CPU31(input clk,
             input ena,
             input rst);
    
    wire [31:0] instr;
    
    wire [5:0] op     = instr[31:26];
    wire [4:0] ins_rs = instr[25:21];
    wire [4:0] ins_rt = instr[20:16];
    wire [4:0] ins_rd = instr[15:11];
    wire [4:0] shamt  = instr[10:6];
    wire [5:0] func   = instr[5:0];
    wire [15:0] immediate = instr[15:0];
    
    wire ADD   = op == 6'b0 && func == 6'b100000;
    wire ADDU  = op == 6'b0 && func == 6'b100001;
    wire SUB   = op == 6'b0 && func == 6'b100010;
    wire SUBU  = op == 6'b0 && func == 6'b100011;
    wire AND   = op == 6'b0 && func == 6'b100100;
    wire OR    = op == 6'b0 && func == 6'b100101;
    wire XOR   = op == 6'b0 && func == 6'b100110;
    wire NOR   = op == 6'b0 && func == 6'b100111;
    wire SLT   = op == 6'b0 && func == 6'b101010;
    wire SLTU  = op == 6'b0 && func == 6'b101011;
    wire SLL   = op == 6'b0 && func == 6'b000000;
    wire SRL   = op == 6'b0 && func == 6'b000010;
    wire SRA   = op == 6'b0 && func == 6'b000011;
    wire SLLV  = op == 6'b0 && func == 6'b000100;
    wire SRLV  = op == 6'b0 && func == 6'b000110;
    wire SRAV  = op == 6'b0 && func == 6'b000111;
    wire JR    = op == 6'b0 && func == 6'b001000;
    wire ADDI  = op == 6'b001000;
    wire ADDIU = op == 6'b001001;
    wire ANDI  = op == 6'b001100;
    wire ORI   = op == 6'b001101;
    wire XORI  = op == 6'b001110;
    wire LW    = op == 6'b100011;
    wire SW    = op == 6'b101011;
    wire BEQ   = op == 6'b000100;
    wire BNE   = op == 6'b000101;
    wire SLTI  = op == 6'b001010;
    wire SLTIU = op == 6'b001011;
    wire LUI   = op == 6'b001111;
    wire J     = op == 6'b000010;
    wire JAL   = op == 6'b000011;

    wire ZF, SF, CF, OF;
    wire [3:0] ALUC;
    wire [31:0] rd, rs, rt, A, B, ALU_out;
    
    wire [31:0] PC,NPC;
    wire [31:0] PC_Res; //指令结束后的新PC
    register #(32'h00400000) pcreg(clk,rst,ena,PC_Res,PC);
        
    wire [31:0] dm_datain,dm_dataout;
    wire [10:0] dm_addr;
    wire dm_ena      = LW || SW;
    wire dm_wena     = SW;
    assign dm_addr   = (ALU_out - 32'h10010000) / 4;
    assign dm_datain = rt;
    
    wire [31:0] im_addr = PC-32'h00400000;

    IMEM imem(im_addr[12:2], instr);
    DMEM dmem(clk, dm_ena, dm_wena, dm_addr, dm_datain, dm_dataout);
    
    ALU alu(.a(A),
    .b(B),
    .aluc(ALUC),
    .r(ALU_out),
    .zero(ZF),
    .carry(CF),
    .negative(SF),
    .overflow(OF));
    
    assign A = (SLL || SRL || SRA) ? shamt : rs;
    assign B = (ADDI || ADDIU || LW || SW || SLTI || SLTIU) ? {{16{immediate[15]}},immediate[15:0]} :
    (ANDI || ORI || XORI || LUI) ? immediate : rt;
    
    assign NPC = PC + 4;
    
    assign ALUC[0] = SUB || SUBU || OR || ORI || NOR || SLT || SLTI || SRL || SRLV || BEQ || BNE;
    assign ALUC[1] = ADD || ADDI || SUB || XOR || XORI || NOR || SLT || SLTI || SLTU || SLTIU || SLL || SLLV;
    assign ALUC[2] = AND || ANDI || OR || XOR || XORI || ORI || NOR || SLL || SLLV || SRL || SRLV || SRA || SRAV;
    assign ALUC[3] = LUI || SLT || SLTI ||SLTU || SLTIU || SRA || SRAV || SLL || SLLV || SRL || SRLV;
    
    wire branch = (BEQ && ZF) || (BNE && !ZF);
    wire [31:0] offset = (branch) ? {{14{immediate[15]}}, immediate[15:0], 2'b0} : 'bz;
    assign PC_Res = (JAL || J) ? {PC[31:28], instr[25:0], 2'b00} :
                            JR ? rs : 
                            branch ? NPC + offset:
                            NPC;
    
    wire rf_wena = !(JR || SW || BEQ || BNE || J);
    
    wire [4:0] rd_addr;

    Regfiles rf(clk, rst, rf_wena, ins_rs, ins_rt, rd_addr, rd, rs, rt);
    
    //包含立即数的指令，写入regfile的地址在rt段
    assign rd_addr = JAL ? 5'h1f :
                (ADDI || ADDIU || ANDI || ORI || XORI || LW || SW || SLTI || SLTIU || LUI) ? ins_rt : ins_rd;
    
    assign rd = JAL ? PC + 4 :
                LW ? dm_dataout : ALU_out;    
endmodule
