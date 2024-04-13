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
gtkwave::addSignalsFromList $cgraregs
gtkwave::addSignalsFromList $axilites
gtkwave::addSignalsFromList $axistreams
gtkwave::addSignalsFromList $axistreamm
