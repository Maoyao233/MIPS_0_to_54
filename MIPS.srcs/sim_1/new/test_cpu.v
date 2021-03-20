`timescale 100ps / 1ps

module test_cpu();
    
    reg clk, rst;
    
    CPU31 uut(
        clk,
        1'b1,
        rst
    );
    
    reg [31:0] cnt;
    
    integer file_open;
    initial begin
        file_open = $fopen("output.txt", "w");
        $fclose(file_open);
        clk       = 1'b0;
        rst       = 1'b1;
        #15 rst = 1'b0;
        cnt     = 0;
        
    end
    
    always begin
        #20 clk = !clk;
    end
    
    /*
    * MARS的result.txt中，显示的是每个周期的PC、instr以及该指令执行完毕后的寄存器值，因此我们输出结果的时钟沿应当与PC更新一致
    * 例如，我的程序中，PC在下降沿更新，此处就是negedge clk
    */
    always @(negedge clk) begin
        cnt <= cnt + 1;
        //由于要和MARS完全一致，因此在程序执行完后应当停下输出
        //所给出的测试文件中，除了开头，不会出现空指令，因此这里判定只有指令非空时输出
        if (cnt == 0 || uut.instr) begin 
            file_open = $fopen("output.txt", "a");
            $fdisplay(file_open, "pc: %h",uut.PC);
            $fdisplay(file_open, "instr: %h",uut.instr);
            $fdisplay(file_open, "regfile0: %h", uut.rf.regs[0].r.data_out);
            $fdisplay(file_open, "regfile1: %h", uut.rf.regs[1].r.data_out);
            $fdisplay(file_open, "regfile2: %h", uut.rf.regs[2].r.data_out);
            $fdisplay(file_open, "regfile3: %h", uut.rf.regs[3].r.data_out);
            $fdisplay(file_open, "regfile4: %h", uut.rf.regs[4].r.data_out);
            $fdisplay(file_open, "regfile5: %h", uut.rf.regs[5].r.data_out);
            $fdisplay(file_open, "regfile6: %h", uut.rf.regs[6].r.data_out);
            $fdisplay(file_open, "regfile7: %h", uut.rf.regs[7].r.data_out);
            $fdisplay(file_open, "regfile8: %h", uut.rf.regs[8].r.data_out);
            $fdisplay(file_open, "regfile9: %h", uut.rf.regs[9].r.data_out);
            $fdisplay(file_open, "regfile10: %h", uut.rf.regs[10].r.data_out);
            $fdisplay(file_open, "regfile11: %h", uut.rf.regs[11].r.data_out);
            $fdisplay(file_open, "regfile12: %h", uut.rf.regs[12].r.data_out);
            $fdisplay(file_open, "regfile13: %h", uut.rf.regs[13].r.data_out);
            $fdisplay(file_open, "regfile14: %h", uut.rf.regs[14].r.data_out);
            $fdisplay(file_open, "regfile15: %h", uut.rf.regs[15].r.data_out);
            $fdisplay(file_open, "regfile16: %h", uut.rf.regs[16].r.data_out);
            $fdisplay(file_open, "regfile17: %h", uut.rf.regs[17].r.data_out);
            $fdisplay(file_open, "regfile18: %h", uut.rf.regs[18].r.data_out);
            $fdisplay(file_open, "regfile19: %h", uut.rf.regs[19].r.data_out);
            $fdisplay(file_open, "regfile20: %h", uut.rf.regs[20].r.data_out);
            $fdisplay(file_open, "regfile21: %h", uut.rf.regs[21].r.data_out);
            $fdisplay(file_open, "regfile22: %h", uut.rf.regs[22].r.data_out);
            $fdisplay(file_open, "regfile23: %h", uut.rf.regs[23].r.data_out);
            $fdisplay(file_open, "regfile24: %h", uut.rf.regs[24].r.data_out);
            $fdisplay(file_open, "regfile25: %h", uut.rf.regs[25].r.data_out);
            $fdisplay(file_open, "regfile26: %h", uut.rf.regs[26].r.data_out);
            $fdisplay(file_open, "regfile27: %h", uut.rf.regs[27].r.data_out);
            $fdisplay(file_open, "regfile28: %h", uut.rf.regs[28].r.data_out);
            $fdisplay(file_open, "regfile29: %h", uut.rf.regs[29].r.data_out);
            $fdisplay(file_open, "regfile30: %h", uut.rf.regs[30].r.data_out);
            $fdisplay(file_open, "regfile31: %h", uut.rf.regs[31].r.data_out);
            $fclose(file_open);
        end
    end
    
endmodule
