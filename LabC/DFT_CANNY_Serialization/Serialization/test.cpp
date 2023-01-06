#include <string>
#include <fstream>
#include <iostream>
#include "top.hpp"

using namespace std;
int main() {
    const char* input_filename = "mix.obj";
    const char* golden_filename = "mix_data.arrow";

    // read in golden
    ifstream goldenfile(golden_filename, ios::binary);
    if (!goldenfile) {
        std::cout << "ERROR: golden file open failed." << std::endl;
        return 1;
    }

    goldenfile.seekg(0, goldenfile.end);
    int golden_sz = goldenfile.tellg();
    goldenfile.seekg(0, goldenfile.beg);

    char* golden_buff = new char[golden_sz];
    goldenfile.read(golden_buff, golden_sz);
    if (goldenfile) {
        std::cout << "INFO: golden file " << golden_sz << " bytes read successfully." << std::endl;
    } else {
        std::cout << "ERROR: golden read failed." << std::endl;
        delete[] golden_buff;
        return 1;
    }

//    goldenfile.close();

    // read in input
    ifstream inputfile(input_filename, ios::in | ios::binary);
    if (!inputfile) {
        std::cout << "ERROR: input file open failed." << std::endl;
        delete[] golden_buff;
        return 1;
    }

    inputfile.seekg(0, inputfile.end);
    int input_sz = inputfile.tellg();
    inputfile.seekg(0, inputfile.beg);

    char* input_buff = new char[SRC_INTERFACE_SZ];
    if (input_buff == NULL) {
    	std::cout << "ERROR: allocation failed." << std::endl;
    	delete[] golden_buff;
    	return -1;
    }
    inputfile.read(input_buff, input_sz);
    if (inputfile) {
        std::cout << "INFO: input file " << input_sz << " bytes read successfully." << std::endl;
    } else {
        std::cout << "ERROR: input read failed." << std::endl;
        delete[] golden_buff;
        delete[] input_buff;
        return 1;
    }
//    inputfile.close();

    // allocate output buff
    char* output_buff = new char[DST_INTERFACE_SZ];
    if (output_buff == NULL) {
		std::cout << "ERROR: allocation failed." << std::endl;
		delete[] golden_buff;
        delete[] input_buff;
		return -1;
	}
    // dut
    std::cout << "INFO: dut running ... " << std::flush;
    dut(input_buff, input_sz, output_buff);
    std::cout << "Done" << std::endl;

    ofstream ofs("out.arrow", ios::binary);
    ofs.write(output_buff, golden_sz);

    // result check
    std::cout << "INFO: result check running..." << std::endl;
    int err = 0;
    for (int i = 0; i < golden_sz; ++i) {
        if (golden_buff[i] != output_buff[i]) {
            err++;
        }
    }

    if (err == 0) {
        std::cout << "INFO: ========= Test PASS ========" << std::endl;

    } else {
        std::cout << "INFO: ========= Test FAIL ========" << std::endl;
    }
    delete[] golden_buff;
    delete[] input_buff;
    delete[] output_buff;
    return err;
}
