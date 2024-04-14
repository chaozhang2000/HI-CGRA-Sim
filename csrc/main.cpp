#include <verilated.h>
#include "VCGRA.h"
#include "verilated_vcd_c.h"
#include <iostream>
#include <fstream>


int cycle = 0;
void reset(VCGRA* cgra,VerilatedVcdC* tfp){
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
				cgra->io_axilite_s_awaddr_bits = addr;
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
				cgra->io_axilite_s_araddr_bits = addr;
				cgra->io_axilite_s_araddr_valid = 1;
				cgra->io_axilite_s_rdata_ready = 1;
				CYCLEADD(1)
				cgra->io_axilite_s_araddr_valid = 0;
				CYCLEADD(1)
				cgra->io_axilite_s_rdata_ready = 0;
}
void axistream_in(VCGRA* cgra,VerilatedVcdC* tfp,int* data,int size){
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
void axistream_out(VCGRA* cgra,VerilatedVcdC* tfp,int size){
				for(int i =0 ;i<size;i++){
					cgra->io_axistream_m_ready = 1;
					CYCLEADD(1)
					cgra->io_axistream_m_ready = 0;
				}
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
		writereg(cgra,tfp,4,1235);
		readreg(cgra,tfp,0);
		readreg(cgra,tfp,4);

		//config CGRA
		std::string filename = "/home/zc/HI-CGRA-Flow/HI-CGRA-Sim/bitstream_harware.bin";
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

		char * bitstream = new char[fileSize];
		if(!file.read(bitstream,fileSize)){
			std::cerr << "读取文件内容错误" << std::endl;
		}
    file.close();
    // 打印文件大小
    std::cout << "文件 " << filename << " 的大小为 " << fileSize << " 字节" << std::endl;
		axistream_in(cgra,tfp,(int*)bitstream,fileSize/4);
		CYCLEADD(1)
#undef SIZE
		//load data
		int data1[20] ={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
		int data2[20] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
		int data3[20] ={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
		int data4[20] = {0};
		int* datas[4]; datas[0] = data1; datas[1] = data2; datas[2] = data3; datas[3] = data4;
		writereg(cgra,tfp,0,2);
		for(int i = 0;i<4;i++){
			writereg(cgra,tfp,2<<2,i);//memnum
			writereg(cgra,tfp,3<<2,0);//startaddr
			writereg(cgra,tfp,4<<2,0);//addaddr
			axistream_in(cgra,tfp,datas[i],20);
		}

		//exe
		writereg(cgra,tfp,0,3);
		CYCLEADD(600)



		//read data
		for(int i = 0;i<4;i++){
		writereg(cgra,tfp,2<<2,i);
		writereg(cgra,tfp,3<<2,0);
		writereg(cgra,tfp,4<<2,0);
		writereg(cgra,tfp,5<<2,400);
		writereg(cgra,tfp,0,4);
		axistream_out(cgra,tfp,400);
		}

		CYCLEADD(5)
    // Close waveform file
    tfp->close();

    // Delete instance
    delete cgra;

    return 0;
}
