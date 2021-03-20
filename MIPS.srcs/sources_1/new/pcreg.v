`timescale 1ns / 1ps

module register #(parameter init = 32'h0)
              (input clk,
               input rst,
               input ena,
               input [31:0] data_in,
               output reg [31:0] data_out);
    
    always @ (negedge clk, posedge rst) begin
        if (rst) begin
            data_out <= init;
        end
        else if (ena) begin
            data_out <= data_in;
        end
    end
endmodule