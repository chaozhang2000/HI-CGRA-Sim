#add_wave -signal /CGRA/clock -color read
set axilite [list CGRA.io_axilite_s_awaddr_bits\
				CGRA.io_axilite_s_awaddr_valid\
				CGRA.io_axilite_s_awaddr_ready\
				CGRA.io_axilite_s_wdata_bits\
				CGRA.io_axilite_s_wdata_valid\
				CGRA.io_axilite_s_wdata_ready\
				CGRA.io_axilite_s_bresp_valid\
				CGRA.io_axilite_s_bresp_ready\
				]
set filter [list CGRA.clock \
	CGRA.ctrlregs_0 \
	CGRA.config_finish\
	CGRA.ctrlregs_0\
	CGRA.ctrlregs_1\
	CGRA.ctrlregs_2\
	CGRA.ctrlregs_3\
	CGRA.ctrlregs_4\
	]
gtkwave::addSignalsFromList $filter 
gtkwave::addSignalsFromList $axilite
