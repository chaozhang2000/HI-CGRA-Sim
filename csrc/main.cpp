#include <verilated.h>
#include "VCGRA.h"
#include "verilated_vcd_c.h"
#include <iostream>


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
#define SIZE 1000
		int datas[SIZE] = {};
		for(int i = 0; i<SIZE;i++){
			datas[i] = i;
		}
		axistream_in(cgra,tfp,datas,SIZE);
		CYCLEADD(1)
#undef SIZE
		//load data
		writereg(cgra,tfp,0,2);
		for(int i = 0;i<4;i++){
			writereg(cgra,tfp,2<<2,i);//memnum
			writereg(cgra,tfp,3<<2,0);//startaddr
			writereg(cgra,tfp,4<<2,0);//addaddr
			axistream_in(cgra,tfp,datas,400);
		}
		/*

    // Reset inputs
    cgra->clk = 0;
    cgra->reset = 0;
    cgra->data = 0;
    cgra->eval();
    tfp->dump(0);

    // Run simulation for several clock cycles
    for (int i = 1; i < 9; ++i) {
        // Toggle clock
        cgra->clk = !cgra->clk;

				cgra->data = 1;
        // Evaluate model
        cgra->eval();
        tfp->dump(i);

    }
		*/

    // Close waveform file
    tfp->close();

    // Delete instance
    delete cgra;

    return 0;
}
