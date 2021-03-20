// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Mar 20 23:10:34 2021
// Host        : Cat-Nest running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Courses/ComputerComposition/MIPS_0_to_54/MIPS/MIPS.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
   (a,
    spo);
  input [10:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [10:0]a;
  wire [29:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:27]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \^spo [29];
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26:0] = \^spo [26:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "11" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2048" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[31:30],\^spo }),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18112)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
