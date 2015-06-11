/*
	
	Computer System (1) ------ Final Project
	MIPS 5-Level Pipeline CPU (Advanced)

	Author: 	Xu Yifei	&	Zhang Yiyi
	Stu. ID:	5130309056	&	5132409031
	Class: 		F1324004(ACM2013)
	College:	Zhiyuan College
	University: Shanghai Jiao Tong University

	File type:	Verilog --- Stage TRS
	File name:	Stage 4-5 --- ME->WB Register

	Version:
        0.1     2015/6/11    Version alpha;
		
*/

module reg_idex (clock, reset_0, ans_me, rw_me, wreg_me, m2reg_me, mo_me,
								 ans_wb, rw_wb, wreg_wb, m2reg_wb, mo_wb);

	input	[31:0]	ans_me, mo_me;
	input 	[4:0]	rw_me;
	input	wreg_me, m2reg_me;
	input	clock, reset_0;

	output	[31:0]	ans_wb, mo_wb;
	output 	[4:0]	rw_wb;
	output	wreg_wb, m2reg_wb;

	reg 	[31:0]	ans_wb, mo_wb;
	reg  	[4:0]	rw_wb;
	reg 	wreg_wb, m2reg_wb;

	always @(negedge reset_0 or posedge clock)
		if (reset_0 == 0) begin
			ans_wb <= 0;
			mo_wb <= 0;
			rw_wb <= 0;
			wreg_wb <= 0;
			m2reg_wb <= 0;
		end else begin
			ans_wb <= ans_me;
			mo_wb <= mo_me;
			rw_wb <= rw_me;
			wreg_wb <= wreg_me;
			m2reg_wb <= m2reg_me;
		end

endmodule