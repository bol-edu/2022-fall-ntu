#include <string>
#include <fstream>
#include <iostream>
#include "top.hpp"

using namespace std;
int main() {
    const char* input_filename = "var.obj";
    const char* golden_filename = "var_data.arrow";

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

    goldenfile.close();

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

    char* input_buff = new char[input_sz];
    inputfile.read(input_buff, input_sz);
    if (inputfile) {
        std::cout << "INFO: input file " << input_sz << " bytes read successfully." << std::endl;
    } else {
        std::cout << "ERROR: input read failed." << std::endl;
        delete[] golden_buff;
        delete[] input_buff;
        return 1;
    }
    inputfile.close();

    // allocate output buff
    char* output_buff = new char[DST_INTERFACE_SZ];

    // dut
    std::cout << "INFO: dut running..." << std::endl;
    dut(input_buff, input_sz, output_buff);

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
