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
void config_CGRA(VCGRA* cgra,VerilatedVcdC* tfp,char *bitstream,int bitstream_size){
    printf("start conifg cgra\n");
		writereg(cgra,tfp,0,1);
    printf("change cgra state to config state\n");
		axistream_in(cgra,tfp,(int*)bitstream,bitstream_size/4);
    printf("config cgra finish \n\r");
}
void load_data_to_Datamem(VCGRA* cgra,VerilatedVcdC* tfp,int* data, int memID,int startaddr,int size){

	writereg(cgra,tfp,0,2);
	printf("change cgra state to load_data state\n");
	writereg(cgra,tfp,2<<2,memID);
	writereg(cgra,tfp,3<<2,startaddr);
	writereg(cgra,tfp,4<<2,0);
	axistream_in(cgra,tfp,data,size/4);
}
void read_result_from_Datamem(VCGRA* cgra,VerilatedVcdC* tfp,int memID,int startaddr,int size){
	writereg(cgra,tfp,2<<2,memID);
	writereg(cgra,tfp,3<<2,startaddr);
	writereg(cgra,tfp,4<<2,0);
	writereg(cgra,tfp,5<<2,size/4);
	writereg(cgra,tfp,0,4);
	axistream_out(cgra,tfp,size/4);
}
void rotation_factor(int *r,int N,int n,int k)       //旋转因子
{
    *r = (int)(cos(2* PI * n * k /N)*pow(2,TIMES));
    *(r+1) =(int)(- sin(2* PI * n * k /N)*pow(2,TIMES));
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

		std::string filename = "/home/zc/HI-CGRA-Flow/HI-CGRA-Sim/bins/fft1024_0.bin";
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
		//config CGRA
		filename = "/home/zc/HI-CGRA-Flow/HI-CGRA-Sim/bins/fft1024_1.bin";
    // 打开文件
    std::ifstream file1(filename, std::ios::binary|std::ios::ate);
    // 检查文件是否成功打开
    if (!file1.is_open()) {
        std::cerr << "无法打开文件 " << filename << std::endl;
        return 1;
    }
    // 定位到文件末尾以获取大小
    file1.seekg(0, std::ios::end);
    fileSize = file1.tellg();

		file1.seekg(0,std::ios::beg);

		char * bitstream_fft1 = new char[fileSize];
		if(!file1.read(bitstream_fft1,fileSize)){
			std::cerr << "读取文件内容错误" << std::endl;
		}
    file1.close();
    // 打印文件大小
    std::cout << "文件 " << filename << " 的大小为 " << fileSize << " 字节" << std::endl;
		writereg(cgra,tfp,0,1);
		CYCLEADD(1)

int butterfly_i[FFT_LEN*2] = {1024,0,-1024,0,1024,0,-1024,0,1024,0,-1024,0,1024,0,-1024,0};
int butterfly_o[FFT_LEN*2] = {0};
int w[FFT_LEN] = {1024,0,724,-724,0,-1023,-724,-724,0,0,0,0,0,0,0,0};
int m[LOG2_LEN] = {2};
    for(int i=1;i<LOG2_LEN;i++){
    	m[i] = m[i-1] << 1;
    }
		for(int i = 0; i<FFT_LEN/2; i++){
    	rotation_factor(&(w[i*2]),FFT_LEN,1,i);
		}

//fft results
int* datas[4];//four datamems
int fft_result_cgra[FFT_LEN*2] = {0};
       char* bitstream_fft;
       int fftlen = FFT_LEN;
       int log2len = LOG2_LEN;
       for(int lay = 0; lay< log2len;lay++){
    	   bitstream_fft = (lay %2 == 0) ? bitstream_fft0 : bitstream_fft1;
				config_CGRA(cgra,tfp,bitstream_fft,7744);
           int m1 = 1 << (lay + 1);
    	   	writereg(cgra,tfp,0,1);
           writereg(cgra,tfp,17<<2,m1/2);
           writereg(cgra,tfp,13<<2,m1);
           writereg(cgra,tfp,25<<2,0);
           writereg(cgra,tfp,26<<2,0);
            /*load fft data to cgra*/
    	   if(lay == 0){
            datas[0] = butterfly_i; datas[1] = butterfly_o; datas[2] = w; datas[3] = m;
            writereg(cgra,tfp,0,2);
            load_data_to_Datamem(cgra,tfp,datas[0], 0, 0, 2*fftlen*4);
            load_data_to_Datamem(cgra,tfp,datas[2], 2, 0, 1*fftlen*4);
            load_data_to_Datamem(cgra,tfp,datas[3], 3, 0, 1*log2len*4);
    	   }else{
    		   load_data_to_Datamem(cgra,tfp,&(datas[3][lay]), 3, 0, 1*4);
    	   }
            /*fft0 exe*/
            writereg(cgra,tfp,1<<2,0);
            writereg(cgra,tfp,0,3);
						CYCLEADD(5000)
       }

		//read data
		for(int i = 0;i<4;i++){
			read_result_from_Datamem(cgra,tfp,i,0,1024*2);
		}

		CYCLEADD(5)
    // Close waveform file
    tfp->close();

    // Delete instance
    delete cgra;

    return 0;
}
