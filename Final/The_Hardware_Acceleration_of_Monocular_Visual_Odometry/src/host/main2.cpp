
#define CL_HPP_CL_1_2_DEFAULT_BUILD
#define CL_HPP_TARGET_OPENCL_VERSION 120
#define CL_HPP_MINIMUM_OPENCL_VERSION 120
#define CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY 1
#define CL_USE_DEPRECATED_OPENCL_1_2_APIS
#define MUTE
#define OCL_CHECK(error, call) \
call; \
if (error != CL_SUCCESS) { \
printf("%s:%d Error calling " #call ", error code is: %d\n", __FILE__, __LINE__, error); \
exit(EXIT_FAILURE); \
}
#include <vector>
#include <cstring>
#include <unistd.h>
#include <iostream>
#include <algorithm>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <stdlib.h>
#include <queue>
#include <stack>
#include <list>
#include <cstdio>
#include <sys/time.h>
#include <cstdlib>
#include <string>

#include "xcl2.hpp"
#include "logger.hpp"
#include "matcher.h"
#include "size.hpp"
#include "viso_mono.h"


#ifndef INTERFACE_MEMSIZE
#define INTERFACE_MEMSIZE 500 

#define DUMMY_L 16
using namespace std;

//ref: https://docs.xilinx.com/r/en-US/ug1393-vitis-application-acceleration/Overlapping-Data-Transfers-with-Kernel-Computation
//ref: https://github.com/Xilinx/Vitis_Accel_Examples/blob/master/host/overlap/src/host.cpp

unsigned long diff(const struct timeval *newTime, const struct timeval *oldTime)
{
    return (newTime->tv_sec - oldTime->tv_sec) * 1000000 + (newTime->tv_usec - oldTime->tv_usec);
}

void compute_pose(int iteration_idx, std::vector<cl::Event> &events_read_res, Matcher::p_match* p_matched_res, int32_t *p_matched_res_cnt, VisualOdometryMono &viso, Matrix &pose)
{
    
    //Compute result
#ifdef QUIET
    cout << iteration_idx << " ";
#else
    cout << "Processing: Frame: " << iteration_idx << endl;
#endif  
    events_read_res[iteration_idx].wait();

    if(iteration_idx == 0)
    {
#ifdef MUTE
        cout << endl << endl;
#else
        cout << " ... failed!" << endl << endl;
#endif        
    }
    //STEP 4: GET MATCHES
    std::vector<Matcher::p_match> p_match_vec;
    for(int j = 0; j < p_matched_res_cnt[iteration_idx*DUMMY_L]; j++)
        p_match_vec.push_back(p_matched_res[iteration_idx*POINT_L + j]);
    cout << "finish get_matches " << iteration_idx << ": " << p_matched_res_cnt[iteration_idx*DUMMY_L] << endl;

    //STEP 5: UPDATE MOTION
    bool update_success = viso.updateMotion(p_match_vec);

    if (update_success) {
        // on success, update current pose
        pose = pose * Matrix::inv(viso.getMotion());
    
        // output some statistics
        double num_matches = p_matched_res_cnt[iteration_idx * DUMMY_L];
        double num_inliers = viso.getNumberOfInliers();
        double ratio_inliers = 100.0*num_inliers/num_matches;
#ifdef MUTE
        cout << num_matches << " " << ratio_inliers << endl;
        cout << pose << endl << endl;
#else
        cout << ", Matches: " << num_matches;
        cout << ", Inliers: " << 100.0*num_inliers/num_matches << " %" << ", Current pose: " << endl;
        cout << pose << endl << endl;
#endif
    } else {
#ifdef MUTE
        cout << endl << endl;
#else
        cout << " ... failed!" << endl << endl;
#endif
    }

}

bool image_loading(std::string &dir, uint8_t *Img, unsigned width, unsigned height, unsigned i)
{
    try {
        char binary_name[256]; sprintf(binary_name,"%06d.dat",i);
        string img_binary_name    = dir + "/I1_" + binary_name;

        //load_imag 
        ifstream ifs;
        ifs.open(img_binary_name.c_str(), ifstream::binary | ifstream::in);
        ifs.read((char*) Img+i*width*height, width*height*sizeof(uint8_t));
        ifs.close();
        return true;
    }
    catch (...) {
        cerr << "ERROR: Couldn't read input files!" << endl;
        return false;
    }
}

class ArgParser
{
public:
    ArgParser(int &argc, const char **argv)
    {
        for (int i = 1; i < argc; ++i)
            mTokens.push_back(std::string(argv[i]));
    }
    bool getCmdOption(const std::string option, std::string &value) const
    {
        std::vector<std::string>::const_iterator itr;
        itr = std::find(this->mTokens.begin(), this->mTokens.end(), option);
        if (itr != this->mTokens.end() && ++itr != this->mTokens.end())
        {
            value = *itr;
            return true;
        }
        return false;
    }

private:
    std::vector<std::string> mTokens;
};

void event_cb(cl_event event1, cl_int cmd_status, void* data) {
    cl_int err;
    cl_command_type command;
    cl::Event event(event1, true);
    OCL_CHECK(err, err = event.getInfo(CL_EVENT_COMMAND_TYPE, &command));
    cl_int status;
    OCL_CHECK(err, err = event.getInfo(CL_EVENT_COMMAND_EXECUTION_STATUS, &status));
    const char* command_str;
    const char* status_str;
    switch (command) {
        case CL_COMMAND_READ_BUFFER:
            command_str = "buffer read";
            break;
        case CL_COMMAND_WRITE_BUFFER:
            command_str = "buffer write";
            break;
        case CL_COMMAND_NDRANGE_KERNEL:
            command_str = "kernel";
            break;
        case CL_COMMAND_MAP_BUFFER:
            command_str = "kernel";
            break;
        case CL_COMMAND_COPY_BUFFER:
            command_str = "kernel";
            break;
        case CL_COMMAND_MIGRATE_MEM_OBJECTS:
            command_str = "buffer migrate";
            break;
        default:
            command_str = "unknown";
    }
    switch (status) {
        case CL_QUEUED:
            status_str = "Queued";
            break;
        case CL_SUBMITTED:
            status_str = "Submitted";
            break;
        case CL_RUNNING:
            status_str = "Executing";
            break;
        case CL_COMPLETE:
            status_str = "Completed";
            break;
    }
    printf("[%s]: %s %s\n", reinterpret_cast<char*>(data), status_str, command_str);
    fflush(stdout);
}

// Sets the callback for a particular event
void set_callback(cl::Event event, const char* queue_name) {
    cl_int err;
    OCL_CHECK(err, err = event.setCallback(CL_COMPLETE, event_cb, (void*)queue_name));
}

int main(int argc, const char *argv[])
{
    std::cout << "\n--------------------- Visual Odometry -----------------\n";
    ArgParser parser(argc, argv);

    // cmd parser
    std::string xclbin_path;

#ifndef HLS_TEST
    if (!parser.getCmdOption("-xclbin", xclbin_path))
    {
        std::cout << "ERROR: xclbin path is not set!\n";
        return 1;
    }

#endif
    std::string dir;
    if (!parser.getCmdOption("-dir", dir))
    {
        std::cout << "ERROR: [-dir] dir path is not set!\n";
        return -1;
    }
    std::string golden_file;
    if (!parser.getCmdOption("-g", golden_file))
    {
        std::cout << "ERROR: [-g] golden_file is not set!\n";
        return -1;
    }
    // timing checker
    struct timeval start_time;
#ifndef MUTE
    xf::common::utils_sw::Logger logger(std::cout, std::cerr);
#endif
    gettimeofday(&start_time, 0);

    // platform related operations
    std::vector<cl::Device> devices = xcl::get_xil_devices();
    cl::Device device = devices[0];
    cl_int err;

    // Step 1: Initialize the OpenCL environment
    // Creating Context and Command Queeu for selected Device
    cl::Context context(device, NULL, NULL, NULL, &err);
#ifndef MUTE
    logger.logCreateContext(err);
#endif

    cl::CommandQueue q(context, device, CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE | CL_QUEUE_PROFILING_ENABLE, &err);
#ifndef MUTE
    logger.logCreateCommandQueue(err);
#endif

#ifndef MUTE
    std::string devName = device.getInfo<CL_DEVICE_NAME>();
    printf("Found Device=%s\n", devName.c_str());
#endif

    cl::Program::Binaries xclBins = xcl::import_binary_file(xclbin_path);
    devices.resize(1);
    cl::Program program(context, devices, xclBins, NULL, &err);

#ifndef MUTE
    logger.logCreateProgram(err);
#endif
    cl::Kernel myComputeFeatures(program, "myComputeFeatures", &err);
    cl::Kernel myMatching(program, "myMatching", &err);
    cl::Kernel removeOutliers(program, "removeOutliers", &err);
#ifndef MUTE
    logger.logCreateProgram(err);
    std::cout << "kernel has been created" << std::endl;
#endif

    //Config paras
    VisualOdometryMono::parameters param;
    param.calib.f  = 491.543832; // focal length in pixels
    param.calib.cu = 484.474328; // principal point (u-coordinate) in pixels
    param.calib.cv = 147.888234; // principal point (v-coordinate) in pixels
    param.height   = 1.6;
    param.pitch    = -0.08;
    unsigned numImg = 5; //373;
    unsigned width  = 1024;
    unsigned height = 284;

    VisualOdometryMono viso(param);
    Matrix pose = Matrix::eye(4);
    bool match = true;
    int32_t error = 0;

    //Allocate memory on the host
    //I/O
    uint8_t* Img  = (uint8_t*)malloc(numImg*IMG_SIZE*sizeof(uint8_t));
    Matcher::p_match* p_matched_res= new Matcher::p_match[numImg*POINT_L];
    int32_t *p_matched_res_cnt = new int32_t[numImg*DUMMY_L];

    //Double Buffer
    int32_t* maxc = (int32_t*)malloc(2*MAX_FEATURE_ARRAY_SIZE*sizeof(int32_t));
    int32_t* maxp = (int32_t*)malloc(2*MAX_FEATURE_ARRAY_SIZE*sizeof(int32_t));
    int32_t* maxc_num = (int32_t*)malloc(2*BIN_NUM*sizeof(int32_t));
    int32_t* maxp_num = (int32_t*)malloc(2*BIN_NUM*sizeof(int32_t));   
    Matcher::p_match* p_matched= new Matcher::p_match[2*POINT_L];
    int32_t *p_matched_cnt = new int32_t[2];


    /* uint8_t* Img;
    Matcher::p_match* p_matched_res;
    int32_t *p_matched_res_cnt;

    Double Buffer
    int32_t* maxc;
    int32_t* maxp;
    int32_t* maxc_num;
    int32_t* maxp_num;   
    Matcher::p_match* p_matched;
    int32_t *p_matched_cnt;

    void *ptr=nullptr;

    posix_memalign(&ptr,4096,numImg*IMG_SIZE*sizeof(uint8_t));
    Img = reinterpret_cast<uint8_t*>(ptr);

    posix_memalign(&ptr,4096,numImg*POINT_L*sizeof(Matcher::p_match));
    p_matched_res = reinterpret_cast<Matcher::p_match*>(ptr);

    posix_memalign(&ptr,4096,numImg*DUMMY_L*sizeof(int32_t));
    p_matched_res_cnt = reinterpret_cast<int32_t*>(ptr);

    posix_memalign(&ptr,4096,2*MAX_FEATURE_ARRAY_SIZE*sizeof(int32_t));
    maxc = reinterpret_cast<int32_t*>(ptr);
    posix_memalign(&ptr,4096,2*MAX_FEATURE_ARRAY_SIZE*sizeof(int32_t));
    maxp = reinterpret_cast<int32_t*>(ptr);
    posix_memalign(&ptr,4096,2*BIN_NUM*sizeof(int32_t));
    maxc_num = reinterpret_cast<int32_t*>(ptr);
    posix_memalign(&ptr,4096,2*BIN_NUM*sizeof(int32_t));
    maxp_num = reinterpret_cast<int32_t*>(ptr);
    posix_memalign(&ptr,4096,2*POINT_L*sizeof(Matcher::p_match));
    p_matched = reinterpret_cast<Matcher::p_match*>(ptr);
    posix_memalign(&ptr,4096,2*sizeof(int32_t));
    p_matched_cnt = reinterpret_cast<int32_t*>(ptr);

    std::vector<uint8_t, aligned_allocator<int> > Img(numImg*IMG_SIZE);
    std::vector<Matcher::p_match, aligned_allocator<int> > p_matched_res(numImg*POINT_L);
    std::vector<int32_t, aligned_allocator<int> > p_matched_res_cnt(numImg*DUMMY_L);

    std::vector<int32_t, aligned_allocator<int> > maxc(2*MAX_FEATURE_ARRAY_SIZE);
    std::vector<int32_t, aligned_allocator<int> > maxp(2*MAX_FEATURE_ARRAY_SIZE);
    std::vector<int32_t, aligned_allocator<int> > maxc_num(2*BIN_NUM);
    std::vector<int32_t, aligned_allocator<int> > maxp_num(2*BIN_NUM);
    std::vector<Matcher::p_match, aligned_allocator<int> > p_matched(2*POINT_L);
    std::vector<int32_t, aligned_allocator<int> > p_matched_cnt(2); */

    cout << "Finish allocate memory for the host" <<endl;

    // Get device buffer
    cl::Buffer db_Img[2]; //(context, CL_MEM_ALLOC_HOST_PTR, sizeof(uint8_t) * width * height, NULL);
    cl::Buffer db_p_matched_res[2]; //(context, CL_MEM_ALLOC_HOST_PTR, sizeof(Matcher::p_match) * POINT_L, NULL);
    cl::Buffer db_p_matched_res_cnt[2]; //(context, CL_MEM_ALLOC_HOST_PTR, sizeof(Matcher::p_match) * POINT_L, NULL);
    
    cl::Buffer db_maxp[2]; //(context, CL_MEM_ALLOC_HOST_PTR, sizeof(int32_t) * MAX_FEATURE_ARRAY_SIZE, NULL);
    cl::Buffer db_maxc[2]; //(context, CL_MEM_ALLOC_HOST_PTR, sizeof(int32_t) * MAX_FEATURE_ARRAY_SIZE, NULL);
    cl::Buffer db_maxp_num[2]; //[(context, CL_MEM_ALLOC_HOST_PTR, sizeof(int32_t) * BIN_NUM, NULL);
    cl::Buffer db_maxc_num[2]; //[(context, CL_MEM_ALLOC_HOST_PTR, sizeof(int32_t) * BIN_NUM, NULL);
    
    cl::Buffer db_p_matched_cnt[2];
    cl::Buffer db_p_matched[2]; //(context, CL_MEM_ALLOC_HOST_PTR, sizeof(Matcher::p_match) * POINT_L, NULL);
    

    cout << "Finish allocate memory for device buffer" <<endl;

    // declare events
    std::vector<cl::Event> events_init_DB(numImg);

    std::vector<cl::Event> events_write_Img(numImg);
    std::vector<cl::Event> events_write_move(numImg);
    std::vector<cl::Event> events_write_move2(numImg);

    std::vector<cl::Event> events_read_res(numImg);

    std::vector<cl::Event> events_compute(numImg);
    std::vector<cl::Event> events_match(numImg);
    std::vector<cl::Event> events_remove(numImg);

    //open golden file
    ifstream in(golden_file);

    //read Img
    for(unsigned iteration_idx = 0; iteration_idx < numImg; iteration_idx++)
    {
        image_loading(dir, Img, width, height, iteration_idx);
    }
    cout << "Finish reading Img" <<endl;

    for(unsigned iteration_idx = 0; iteration_idx < numImg; iteration_idx++)
    {
    	//OCL_CHECK(err, err = q.finish());
        if (iteration_idx >= 2) {
            OCL_CHECK(err, err = events_read_res[iteration_idx-2].wait());
            cout << "[Result] p_matched cnt " << iteration_idx-2 << ": " << p_matched_res_cnt[(iteration_idx-2)*DUMMY_L] << endl;
            compute_pose(iteration_idx-2, events_read_res, p_matched_res, p_matched_res_cnt, viso, pose);
        }

        bool flag = iteration_idx % 2;
        cout << "iteration: " << iteration_idx << ", flag: " << flag << endl;
        //creating buffers
        OCL_CHECK(err, db_Img[flag] = cl::Buffer(context, CL_MEM_READ_ONLY | CL_MEM_USE_HOST_PTR, sizeof(uint8_t) * width * height,
                                                   &Img[iteration_idx * width * height], &err));
        OCL_CHECK(err, db_p_matched_res[flag] = cl::Buffer(context, CL_MEM_WRITE_ONLY | CL_MEM_USE_HOST_PTR, sizeof(Matcher::p_match) * POINT_L,
                                                   &p_matched_res[iteration_idx * POINT_L], &err));
        OCL_CHECK(err, db_p_matched_res_cnt[flag]= cl::Buffer(context, CL_MEM_WRITE_ONLY | CL_MEM_USE_HOST_PTR, sizeof(int32_t) * DUMMY_L,
                                                   &p_matched_res_cnt[iteration_idx * DUMMY_L], &err));

        OCL_CHECK(err, db_maxp[flag] = cl::Buffer(context, CL_MEM_READ_WRITE | CL_MEM_USE_HOST_PTR, sizeof(int32_t) * MAX_FEATURE_ARRAY_SIZE,
                                                   &maxp[flag*MAX_FEATURE_ARRAY_SIZE], &err));
        OCL_CHECK(err, db_maxc[flag] = cl::Buffer(context, CL_MEM_READ_WRITE | CL_MEM_USE_HOST_PTR, sizeof(int32_t) * MAX_FEATURE_ARRAY_SIZE,
                                                   &maxc[flag*MAX_FEATURE_ARRAY_SIZE], &err));
        OCL_CHECK(err, db_maxp_num[flag] = cl::Buffer(context, CL_MEM_READ_WRITE | CL_MEM_USE_HOST_PTR, sizeof(int32_t) * BIN_NUM,
                                                   &maxp_num[flag*BIN_NUM], &err));
        OCL_CHECK(err, db_maxc_num[flag] = cl::Buffer(context, CL_MEM_READ_WRITE | CL_MEM_USE_HOST_PTR, sizeof(int32_t) * BIN_NUM,
                                                   &maxc_num[flag*BIN_NUM], &err));
        OCL_CHECK(err, db_p_matched[flag] = cl::Buffer(context, CL_MEM_READ_WRITE | CL_MEM_USE_HOST_PTR, sizeof(Matcher::p_match) * POINT_L,
                                                   &p_matched[flag*POINT_L], &err));
        OCL_CHECK(err, db_p_matched_cnt[flag] = cl::Buffer(context, CL_MEM_READ_WRITE | CL_MEM_USE_HOST_PTR, sizeof(int32_t),
                                                   &p_matched_cnt[flag], &err));


        // Map buffers to kernel arguments, thereby assigning them to specific device memory banks
        OCL_CHECK(err, myComputeFeatures.setArg(0, db_Img[flag]));
        OCL_CHECK(err, myComputeFeatures.setArg(1, db_maxc[flag])); 
        OCL_CHECK(err, myComputeFeatures.setArg(2, db_maxc_num[flag]));

        OCL_CHECK(err, myMatching.setArg(0, db_maxp[flag]));
        OCL_CHECK(err, myMatching.setArg(1, db_maxc[flag]));
        OCL_CHECK(err, myMatching.setArg(2, db_maxp_num[flag]));
        OCL_CHECK(err, myMatching.setArg(3, db_maxc_num[flag]));
        OCL_CHECK(err, myMatching.setArg(4, db_p_matched[flag]));
        OCL_CHECK(err, myMatching.setArg(5, db_p_matched_cnt[flag]));
        OCL_CHECK(err, myMatching.setArg(6, iteration_idx));

        OCL_CHECK(err, removeOutliers.setArg(0, db_p_matched[flag]));
        OCL_CHECK(err, removeOutliers.setArg(1, db_p_matched_cnt[flag]));
        OCL_CHECK(err, removeOutliers.setArg(2, db_p_matched_res[flag]));
        OCL_CHECK(err, removeOutliers.setArg(3, db_p_matched_res_cnt[flag]));

        cout << endl << "Finish set arg" <<endl;

        // List event
        OCL_CHECK(err, q.enqueueMigrateMemObjects({db_maxp[flag], db_maxc[flag], db_maxp_num[flag], db_maxc_num[flag], db_p_matched[flag], db_p_matched_cnt[flag]}, 
                                                    CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED , nullptr, &events_init_DB[iteration_idx]));
        
        set_callback(events_init_DB[iteration_idx], "DB init ");

        if(iteration_idx < 2){
            OCL_CHECK(err, q.enqueueMigrateMemObjects({db_Img[flag]}, 0 , nullptr, &events_write_Img[iteration_idx]));
        }else{
            std::vector<cl::Event> eventList{events_compute[iteration_idx-2]};
            OCL_CHECK(err, q.enqueueMigrateMemObjects({db_Img[flag]}, 0, &eventList, &events_write_Img[iteration_idx]));
        }
        cout << "1. move img to global mem" <<endl;
        set_callback(events_write_Img[iteration_idx], "move img ");

        if(iteration_idx > 0)
        {
            std::vector<cl::Event> eventList2{events_compute[iteration_idx - 1]};
            OCL_CHECK(err, q.enqueueCopyBuffer(db_maxc[!flag], db_maxp[flag], 0, 0, sizeof(int32_t) * MAX_FEATURE_ARRAY_SIZE, &eventList2, &events_write_move[iteration_idx]));     
            std::vector<cl::Event> eventList3{events_compute[iteration_idx - 1]};
            OCL_CHECK(err, q.enqueueCopyBuffer(db_maxc_num[!flag], db_maxp_num[flag], 0, 0, sizeof(int32_t) * BIN_NUM, &eventList3, &events_write_move2[iteration_idx]));     
            set_callback(events_write_move[iteration_idx], " cpy previous feature1 " );
            set_callback(events_write_move2[iteration_idx], " cpy previous feature2 ");
        }
        cout << "2. cpy previous feature" <<endl;
        

        if(iteration_idx > 0){
            std::vector<cl::Event> eventList4 {events_write_Img[iteration_idx], events_write_move[iteration_idx], events_write_move2[iteration_idx], events_init_DB[iteration_idx]};
            OCL_CHECK(err, q.enqueueTask(myComputeFeatures, &eventList4, &events_compute[iteration_idx]));
        }
        else{
            std::vector<cl::Event> eventList5{events_write_Img[iteration_idx], events_init_DB[iteration_idx]};
            OCL_CHECK(err, q.enqueueTask(myComputeFeatures, &eventList5, &events_compute[iteration_idx]));
        }
        cout << "3. compute feature" <<endl;
        set_callback(events_compute[iteration_idx], "compute feature ");


        if(iteration_idx > 0){
        	std::vector<cl::Event> eventList6{events_compute[iteration_idx], events_match[iteration_idx-1]};
        	q.enqueueTask(myMatching, &eventList6, &events_match[iteration_idx]);
        }
        else{
        	std::vector<cl::Event> eventList7{events_compute[iteration_idx]};
        	q.enqueueTask(myMatching, &eventList7, &events_match[iteration_idx]);
        }
        cout << "4. matching" <<endl;
        set_callback(events_match[iteration_idx], "matching ");

        if(iteration_idx > 0){
            std::vector<cl::Event> eventList8{events_match[iteration_idx], events_read_res[iteration_idx-1]};
            OCL_CHECK(err, q.enqueueTask(removeOutliers, &eventList8, &events_remove[iteration_idx]));
        }
        else{
            std::vector<cl::Event> eventList9{events_match[iteration_idx]};
            OCL_CHECK(err, q.enqueueTask(removeOutliers, &eventList9, &events_remove[iteration_idx]));
        }
        cout << "5. removeOutliers" <<endl;
        set_callback(events_remove[iteration_idx], "removeOutliers ");

        if(iteration_idx > 0){
        	std::vector<cl::Event> eventList10{events_remove[iteration_idx], events_read_res[iteration_idx - 1]};
            OCL_CHECK(err, q.enqueueMigrateMemObjects({db_p_matched_res[flag], db_p_matched_res_cnt[flag]}, CL_MIGRATE_MEM_OBJECT_HOST, &eventList10, &events_read_res[iteration_idx]));
        }
        else{
        	std::vector<cl::Event> eventList10{events_remove[iteration_idx]};
            OCL_CHECK(err, q.enqueueMigrateMemObjects({db_p_matched_res[flag], db_p_matched_res_cnt[flag]}, CL_MIGRATE_MEM_OBJECT_HOST, &eventList10, &events_read_res[iteration_idx]));
        }
        cout << "6. cpy output to host mem" <<endl;
        set_callback(events_read_res[iteration_idx], "cpy output ");
    }
    cout << "Finish add events to queue" <<endl;

    compute_pose(numImg - 2, events_read_res, p_matched_res, p_matched_res_cnt, viso, pose);
    compute_pose(numImg - 1, events_read_res, p_matched_res, p_matched_res_cnt, viso, pose);


    // for(unsigned iteration_idx = 0; iteration_idx < numImg; iteration_idx++)
    // {
    // 	events_read_res[iteration_idx].wait();
    //     cout << "[Result] p_matched cnt " << iteration_idx << ": " << p_matched_res_cnt[(iteration_idx)*DUMMY_L] << endl;
    // }
    q.flush();
    q.finish();

    struct timeval end_time;
    gettimeofday(&end_time, 0);
    std::cout << "INFO: Finish kernel execution" << std::endl;
    std::cout << "INFO: Finish E2E execution" << std::endl;

    // Profiling times
    
    
   /*  std::vector<cl::Event> events_init_DB(numImg);

    std::vector<cl::Event> events_write_Img(numImg);
    std::vector<cl::Event> events_write_move(numImg);
    std::vector<cl::Event> events_write_move2(numImg);

    std::vector<cl::Event> events_read_res(numImg);

    std::vector<cl::Event> events_compute(numImg);
    std::vector<cl::Event> events_match(numImg);
    std::vector<cl::Event> events_remove(numImg); */

    unsigned long timeStart, timeEnd;
    unsigned long exec_time0, exec_time1, exec_time2;
    for (int i = 0; i < 1; ++i)
    {
        std::cout << "-------------------------------------------------------" << std::endl;
        events_init_DB[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
        events_init_DB[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
        std::cout << "INFO: init DB from host to device: " << (timeEnd - timeStart) / 1000.0 << " us\n";
        std::cout << "-------------------------------------------------------" << std::endl;

        events_write_Img[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
        events_write_Img[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
        std::cout << "INFO: Write Img host to device: " << (timeEnd - timeStart) / 1000.0 << " us\n";
        std::cout << "-------------------------------------------------------" << std::endl;

        events_write_move[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
        events_write_move[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
        std::cout << "INFO: cpy previous features: " << (timeEnd - timeStart) / 1000.0 << " us\n";
        std::cout << "-------------------------------------------------------" << std::endl;
        
        events_write_move2[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
        events_write_move2[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
        std::cout << "INFO: cpy previous features: " << (timeEnd - timeStart) / 1000.0 << " us\n";
        std::cout << "-------------------------------------------------------" << std::endl;
        
        events_read_res[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
        events_read_res[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
        std::cout << "INFO: Data transfer single result from device to host: " << (timeEnd - timeStart) / 1000.0 << " us\n";
        std::cout << "-------------------------------------------------------" << std::endl;

        events_compute[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
        events_compute[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
        exec_time0 += (timeEnd - timeStart) / 1000.0;
        std::cout << "INFO: Kernel compute" << i + 1 << " execution: " << (timeEnd - timeStart) / 1000.0 << " us\n";
        std::cout << "-------------------------------------------------------" << std::endl;

        events_match[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
        events_match[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
        exec_time1 += (timeEnd - timeStart) / 1000.0;
        std::cout << "INFO: Kernel match" << i + 1 << " execution: " << (timeEnd - timeStart) / 1000.0 << " us\n";
        std::cout << "-------------------------------------------------------" << std::endl;

        events_remove[0].getProfilingInfo(CL_PROFILING_COMMAND_START, &timeStart);
        events_remove[0].getProfilingInfo(CL_PROFILING_COMMAND_END, &timeEnd);
        exec_time2 += (timeEnd - timeStart) / 1000.0;
        std::cout << "INFO: Kernel remove" << i + 1 << " execution: " << (timeEnd - timeStart) / 1000.0 << " us\n";
        std::cout << "-------------------------------------------------------" << std::endl;

    }
    std::cout << "INFO: compute kernel total execution: " << exec_time0 << " us\n";
    std::cout << "-------------------------------------------------------" << std::endl;
    std::cout << "INFO: match kernel total execution: " << exec_time1 << " us\n";
    std::cout << "-------------------------------------------------------" << std::endl;
    std::cout << "INFO: remove kernel total execution: " << exec_time2 << " us\n";
    std::cout << "-------------------------------------------------------" << std::endl;
    unsigned long exec_timeE2E = diff(&end_time, &start_time);
    std::cout << "INFO: FPGA execution time:" << exec_timeE2E << " us\n";
    std::cout << "-------------------------------------------------------" << std::endl;

    // Verify the results
    if(match)
        cout << "------------------------PASS----------------------------" << endl;
    else
        cout << "Error number: " << error << endl;
    
    return 0;
}   
#endif

