#add_wave -signal /CGRA/clock -color read
set axilites [list CGRA.io_axilite_s_awaddr_bits\
				CGRA.io_axilite_s_awaddr_valid\
				CGRA.io_axilite_s_awaddr_ready\
				CGRA.io_axilite_s_wdata_bits\
				CGRA.io_axilite_s_wdata_valid\
				CGRA.io_axilite_s_wdata_ready\
				CGRA.io_axilite_s_bresp_valid\
				CGRA.io_axilite_s_bresp_ready\
				]
set axistreams [list CGRA.io_axistream_s_data\
				CGRA.io_axistream_s_valid\
				CGRA.io_axistream_s_ready\
				CGRA.io_axistream_s_last\
				]
set axistreamm [list CGRA.io_axistream_m_data\
				CGRA.io_axistream_m_valid\
				CGRA.io_axistream_m_ready\
				CGRA.io_axistream_m_last\
				]
set cgraregs [list CGRA.clock \
	CGRA.config_finish\
	CGRA.ctrlregs_0\
	CGRA.ctrlregs_1\
	CGRA.ctrlregs_2\
	CGRA.ctrlregs_3\
	CGRA.ctrlregs_4\
	CGRA.ctrlregs_5\
	]
set PE0Decode [list \
	CGRA.PE.Decoder.io_inst_0\
	CGRA.PE.Decoder.io_alukey\
	CGRA.PE.Decoder.io_srckey_0\
	CGRA.PE.Decoder.io_srckey_1\
	CGRA.PE.Decoder.io_linkkey_0\
	CGRA.PE.Decoder.io_linkkey_1\
	CGRA.PE.Decoder.io_linkkey_2\
	CGRA.PE.Decoder.io_linkkey_3\
	CGRA.PE.Decoder.io_canexe\
				]
set PE0Fu [list \
	CGRA.PE.Alu.io_src1\
	CGRA.PE.Alu.io_src2\
	CGRA.PE.Alu.io_result_bits
				]
set PE1Decode [list \
	CGRA.PE_1.Decoder.io_inst_0\
	CGRA.PE_1.Decoder.io_alukey\
	CGRA.PE_1.Decoder.io_srckey_0\
	CGRA.PE_1.Decoder.io_srckey_1\
	CGRA.PE_1.Decoder.io_linkkey_0\
	CGRA.PE_1.Decoder.io_linkkey_1\
	CGRA.PE_1.Decoder.io_linkkey_2\
	CGRA.PE_1.Decoder.io_linkkey_3\
	CGRA.PE_1.Decoder.io_canexe\
				]
set PE1Fu [list \
	CGRA.PE_1.Alu.io_src1\
	CGRA.PE_1.Alu.io_src2\
	CGRA.PE_1.Alu.io_result_bits
				]
set PE3Decode [list \
	CGRA.PE_3.Decoder.io_inst_0\
	CGRA.PE_3.Decoder.io_alukey\
	CGRA.PE_3.Decoder.io_srckey_0\
	CGRA.PE_3.Decoder.io_srckey_1\
	CGRA.PE_3.Decoder.io_linkkey_0\
	CGRA.PE_3.Decoder.io_linkkey_1\
	CGRA.PE_3.Decoder.io_linkkey_2\
	CGRA.PE_3.Decoder.io_linkkey_3\
	CGRA.PE_3.Decoder.io_canexe\
				]
set PE3Fu [list \
	CGRA.PE_3.Alu.io_src1\
	CGRA.PE_3.Alu.io_src2\
	CGRA.PE_3.Alu.io_result_bits
				]
set PE15Decode [list \
	CGRA.PE_15.Decoder.io_inst_0\
	CGRA.PE_15.Decoder.io_alukey\
	CGRA.PE_15.Decoder.io_srckey_0\
	CGRA.PE_15.Decoder.io_srckey_1\
	CGRA.PE_15.Decoder.io_linkkey_0\
	CGRA.PE_15.Decoder.io_linkkey_1\
	CGRA.PE_15.Decoder.io_linkkey_2\
	CGRA.PE_15.Decoder.io_linkkey_3\
	CGRA.PE_15.Decoder.io_canexe\
				]
set PE15Fu [list \
	CGRA.PE_15.Alu.io_src1\
	CGRA.PE_15.Alu.io_src2\
	CGRA.PE_15.Alu.io_result_bits
				]
set PE14Decode [list \
	CGRA.PE_14.Decoder.io_inst_0\
	CGRA.PE_14.Decoder.io_alukey\
	CGRA.PE_14.Decoder.io_srckey_0\
	CGRA.PE_14.Decoder.io_srckey_1\
	CGRA.PE_14.Decoder.io_linkkey_0\
	CGRA.PE_14.Decoder.io_linkkey_1\
	CGRA.PE_14.Decoder.io_linkkey_2\
	CGRA.PE_14.Decoder.io_linkkey_3\
	CGRA.PE_14.Decoder.io_canexe\
				]
set PE14Fu [list \
	CGRA.PE_14.Alu.io_src1\
	CGRA.PE_14.Alu.io_src2\
	CGRA.PE_14.Alu.io_result_bits
				]
set PE13Decode [list \
	CGRA.PE_13.Decoder.io_inst_0\
	CGRA.PE_13.Decoder.io_alukey\
	CGRA.PE_13.Decoder.io_srckey_0\
	CGRA.PE_13.Decoder.io_srckey_1\
	CGRA.PE_13.Decoder.io_linkkey_0\
	CGRA.PE_13.Decoder.io_linkkey_1\
	CGRA.PE_13.Decoder.io_linkkey_2\
	CGRA.PE_13.Decoder.io_linkkey_3\
	CGRA.PE_13.Decoder.io_canexe\
				]
set PE13Fu [list \
	CGRA.PE_13.Alu.io_src1\
	CGRA.PE_13.Alu.io_src2\
	CGRA.PE_13.Alu.io_result_bits
				]
set PE12Decode [list \
	CGRA.PE_12.Decoder.io_inst_0\
	CGRA.PE_12.Decoder.io_alukey\
	CGRA.PE_12.Decoder.io_srckey_0\
	CGRA.PE_12.Decoder.io_srckey_1\
	CGRA.PE_12.Decoder.io_linkkey_0\
	CGRA.PE_12.Decoder.io_linkkey_1\
	CGRA.PE_12.Decoder.io_linkkey_2\
	CGRA.PE_12.Decoder.io_linkkey_3\
	CGRA.PE_12.Decoder.io_canexe\
				]
set PE12Fu [list \
	CGRA.PE_12.Alu.io_src1\
	CGRA.PE_12.Alu.io_src2\
	CGRA.PE_12.Alu.io_result_bits
				]
set PE8Decode [list \
	CGRA.PE_8.Decoder.io_inst_0\
	CGRA.PE_8.Decoder.io_alukey\
	CGRA.PE_8.Decoder.io_srckey_0\
	CGRA.PE_8.Decoder.io_srckey_1\
	CGRA.PE_8.Decoder.io_linkkey_0\
	CGRA.PE_8.Decoder.io_linkkey_1\
	CGRA.PE_8.Decoder.io_linkkey_2\
	CGRA.PE_8.Decoder.io_linkkey_3\
	CGRA.PE_8.Decoder.io_canexe\
				]
set PE8Fu [list \
	CGRA.PE_8.Alu.io_src1\
	CGRA.PE_8.Alu.io_src2\
	CGRA.PE_8.Alu.io_result_bits
				]
set PE4Decode [list \
	CGRA.PE_4.Decoder.io_inst_0\
	CGRA.PE_4.Decoder.io_alukey\
	CGRA.PE_4.Decoder.io_srckey_0\
	CGRA.PE_4.Decoder.io_srckey_1\
	CGRA.PE_4.Decoder.io_linkkey_0\
	CGRA.PE_4.Decoder.io_linkkey_1\
	CGRA.PE_4.Decoder.io_linkkey_2\
	CGRA.PE_4.Decoder.io_linkkey_3\
	CGRA.PE_4.Decoder.io_canexe\
				]
set PE4Fu [list \
	CGRA.PE_4.Alu.io_src1\
	CGRA.PE_4.Alu.io_src2\
	CGRA.PE_4.Alu.io_result_bits
				]
gtkwave::addSignalsFromList $cgraregs
gtkwave::addSignalsFromList $axilites
gtkwave::addSignalsFromList $axistreams
gtkwave::addSignalsFromList $axistreamm
