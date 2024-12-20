#include <verilated.h>
#include "VCGRA.h"
#include "verilated_vcd_c.h"
#include <iostream>
#include <fstream>
#include <math.h>


#define FFT_LEN 1024
#define LOG2_LEN 10
#define BASEADDR 0xA0010000
#define TIMES 10
#define PI 3.1415926
int cycle = 0;

void reset(VCGRA* cgra,VerilatedVcdC* tfp){
	cgra->io_streamin_0_valid = 0;
	cgra->io_streamin_1_valid = 0;
	cgra->clock = 0;
	cgra->reset = 1;
	cgra->eval();
	tfp->dump(cycle ++);
	cgra->clock = 1;
	cgra->eval();
	cgra->reset = 0;
}
#define CYCLEADD(num) {\
				for(int i=0;i<num;i++){\
				tfp->dump(cycle ++);\
				cgra->clock = 0;\
				cgra->eval();\
				tfp->dump(cycle ++);\
				cgra->clock = 1;\
				cgra->eval();}}
void writereg(VCGRA* cgra,VerilatedVcdC* tfp,int addr,int data){
				cgra->io_axilite_s_awaddr_bits = addr + BASEADDR;
				cgra->io_axilite_s_awaddr_valid = 1;
				cgra->io_axilite_s_wdata_bits = data;
				cgra->io_axilite_s_wdata_valid = 1;
				cgra->io_axilite_s_wstrb = 0xf;
				cgra->io_axilite_s_bresp_ready = 1;
				CYCLEADD(1)
				cgra->io_axilite_s_awaddr_valid = 0;
				CYCLEADD(1)
				cgra->io_axilite_s_wdata_valid = 0;
				CYCLEADD(1)
				cgra->io_axilite_s_bresp_ready = 0;
}
void readreg(VCGRA* cgra,VerilatedVcdC* tfp,int addr){
				cgra->io_axilite_s_araddr_bits = addr + BASEADDR;
				cgra->io_axilite_s_araddr_valid = 1;
				cgra->io_axilite_s_rdata_ready = 1;
				CYCLEADD(1)
				cgra->io_axilite_s_araddr_valid = 0;
				CYCLEADD(1)
				cgra->io_axilite_s_rdata_ready = 0;
}
void axistream_in(VCGRA* cgra,VerilatedVcdC* tfp,long* data,int size){
				for(int i =0 ;i<size;i++){
					cgra->io_axistream_s_valid = 1;
					cgra->io_axistream_s_data = data[i];
					if(i == size-1) cgra->io_axistream_s_last = 1;
					CYCLEADD(1)
					cgra->io_axistream_s_valid = 0;
					cgra->io_axistream_s_data = 0;
					cgra->io_axistream_s_last = 0;
				}
}
void datastream_in(VCGRA* cgra,VerilatedVcdC* tfp,int size){
	for(int i = 0;i < size; i++){
		cgra->io_streamin_0_data = i; 
		cgra->io_streamin_0_valid = 1;
		cgra->io_streamin_1_data = i; 
		cgra->io_streamin_1_valid = 1;
		CYCLEADD(1)
	}
		cgra->io_streamin_0_data = 0; 
		cgra->io_streamin_0_valid = 0;
		cgra->io_streamin_1_data = 0; 
		cgra->io_streamin_1_valid = 0;
		CYCLEADD(1)
}
void config_CGRA(VCGRA* cgra,VerilatedVcdC* tfp,char *bitstream,int bitstream_size){
    printf("start conifg cgra\n");
		writereg(cgra,tfp,0,1);
    printf("change cgra state to config state\n");
		axistream_in(cgra,tfp,(long*)bitstream,bitstream_size/8);
    printf("config cgra finish \n\r");
}
int main(int argc, char** argv) {
    Verilated::commandArgs(argc, argv);

    // Instantiate the module
    VCGRA* cgra = new VCGRA;

    // Enable waveform tracing
    Verilated::traceEverOn(true);
    VerilatedVcdC* tfp = new VerilatedVcdC;
    cgra->trace(tfp,99);
    tfp->open("waveform.vcd");

		reset(cgra,tfp);
		writereg(cgra,tfp,0,1);
		readreg(cgra,tfp,0);

		std::string filename = "/home/zc/HI-CGRA-Flow/HI-CGRA-Sim/bins/naishumul.bin";
    // 打开文件
    std::ifstream file(filename, std::ios::binary|std::ios::ate);
    // 检查文件是否成功打开
    if (!file.is_open()) {
        std::cerr << "无法打开文件 " << filename << std::endl;
        return 1;
    }
    // 定位到文件末尾以获取大小
    file.seekg(0, std::ios::end);
    std::streampos fileSize = file.tellg();

		file.seekg(0,std::ios::beg);

		char * bitstream_fft0 = new char[fileSize];
		if(!file.read(bitstream_fft0,fileSize)){
			std::cerr << "读取文件内容错误" << std::endl;
		}
    file.close();
    // 打印文件大小
    std::cout << "文件 " << filename << " 的大小为 " << fileSize << " 字节" << std::endl;

//fft results
			char bitstream_true[7744] = {0};
			for(int i = 0; i<3872/4;i++){
										((int*)bitstream_true)[i*2] = ((int*)bitstream_fft0)[i];
													((int*)bitstream_true)[i*2+1] = 0;
															}
	config_CGRA(cgra,tfp,bitstream_true,7744);
	CYCLEADD(5000)

 datastream_in(cgra,tfp,40);
	CYCLEADD(10)
 datastream_in(cgra,tfp,60);
	CYCLEADD(10)
 datastream_in(cgra,tfp,200);
	CYCLEADD(5000)

    // Close waveform file
    tfp->close();

    // Delete instance
    delete cgra;

    return 0;
}
