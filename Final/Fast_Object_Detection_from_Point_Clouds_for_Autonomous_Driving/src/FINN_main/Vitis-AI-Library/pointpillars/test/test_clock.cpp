#include <iostream>
#include <fstream>
#include <vector>

char fclk_freq_file[] = "/sys/devices/platform/fclk0/set_rate";
// char fclk_freq_file[] = "/home/root/fclk.txt";

static int read_freq()
{
    int ret;
    std::ifstream myfile;
    myfile.open(fclk_freq_file);
    myfile >> ret;
    myfile.close();
    return ret;
}

static void write_freq(int freq)
{
    std::ofstream myfile;
    myfile.open(fclk_freq_file);
    myfile << freq ;
    myfile.close();
}

int main(void) {

    int freq_start = 212000000;
    int freq_end   = 220000000;
    // int freq_end = freq_start + 3;

    std::vector<int> allowable_freqs;
    
    for (int freq_cur=freq_start; freq_cur < freq_end; freq_cur++) {
        write_freq(freq_cur);
        if (read_freq() == freq_cur) {
            allowable_freqs.emplace_back(freq_cur);
        }
        if (freq_cur % 10000 == 0) {
            std::cout << freq_cur << std::endl;
        }
    }
    std::cout << "allowable clocks" << std::endl;
    for (size_t i=0; i < allowable_freqs.size(); i++) {
        std::cout << allowable_freqs[i] << std::endl;
    }


    return 0;
}