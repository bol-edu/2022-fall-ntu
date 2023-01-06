#include <iostream>
#include <vector>
#include <pfn.hpp>
#include <utils.hpp>

int main(int argc, char* argv[]) {

    char pfn_input_vector[] = "pfn_input.bin";
    char pfn_expected_output_vector[] = "pfn_output.bin";

    std::vector<float> pfn_out_expected;
    std::vector<float> pfn_in_data;
    std::vector<float> pfn_out_data;

    char pfn_weights[] = "weights.bin";
    char pfn_bn_mean[] = "mean.bin";
    char pfn_bn_var[] = "var.bin";
    char pfn_bn_gamma[] = "gamma.bin";
    char pfn_bn_beta[] = "beta.bin";
    
    //TODO: Read these params from the proto!
    constexpr int pfn_in_height = 12000;
    constexpr int pfn_in_width = 100;
    constexpr int pfn_in_channel = 9;

    constexpr int pfn_out_height = 12000;
    constexpr int pfn_out_width = 1;
    constexpr int pfn_out_channel = 64;
    size_t data_size = 1;

    // Calculate size of pfn input vector
    data_size = 1;
    data_size *= pfn_in_width;
    data_size *= pfn_in_height;
    data_size *= pfn_in_channel;
    pfn_in_data.resize(data_size);

    // Calculate size of pfn output vector
    data_size = 1;
    data_size *= pfn_out_width;
    data_size *= pfn_out_height;
    data_size *= pfn_out_channel;
    pfn_out_data.resize(data_size);
    pfn_out_expected.resize(data_size);

    load_vector(pfn_input_vector, pfn_in_data);
    load_vector(pfn_expected_output_vector, pfn_out_expected);

    std::cout << "pfn in " << pfn_in_data.size() << std::endl;
    std::cout << "input first elem " << pfn_in_data[0] << std::endl;
    std::cout << "pfn out " << pfn_out_expected.size() << std::endl;

    auto pfn = PFN(
        pfn_weights,
        pfn_bn_mean,
        pfn_bn_var,
        pfn_bn_gamma,
        pfn_bn_beta,
        pfn_in_width,
        pfn_in_height,
        pfn_in_channel,
        pfn_out_width,
        pfn_out_height,
        pfn_out_channel
    );

    pfn.execute(
        pfn_in_data,
        pfn_out_data
    );

    float max_error = 0.0;
    float current_error = 0.0;
    float mean_error = 0.0;

    for (size_t i=0; i<pfn_out_expected.size(); i++) {
        current_error = abs(float(pfn_out_data[i]) - float(pfn_out_expected[i]));
        mean_error += current_error;
        if (current_error > max_error){
            max_error = current_error;
        }
    }

    mean_error /= pfn_out_expected.size();

    // std::cout << 1 / (duration_seconds / reps) << " FPS" << std::endl; //TODO: Maybe measure FPS as well?
    std::cout << "Max error: " << max_error << std::endl;
    std::cout << "Mean error: " << mean_error << std::endl;

    return 0;
}
