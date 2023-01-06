# Introduction
Object Detection is widely applied in many areas of computer vision, including security, automatic vehicle systems, traffic monitoring, inventory management, and so on.

# Folder structure

```
README.md
build/                  # build scripts – bitstream generation
docs/                   # Documentation files – ppt, pdf, md
images/                 # images for README.md
src/                    # all source code, include kernel & host - code, cpp, hpp, other include files
    baseline/           # baseline code
    finn/               # finn model training code
    host/               # host code
    nms/                # nms sw & hls code
impl_result/            # bitstream (.bit, .hwh) & Vivado IPs
    bitstream_finn/     # generated XwXa bitstream & driver.py for finn only
    bitstream_finn_nms/ # generated & modified 4w4a bitstream & driver.py for stitched finn and nms (failed)
    finn_ip/            # for Vivado IP flow
    nms_ip/             # for Vivado IP flow
LICENSE
```


# How to Stitch NMS/FINN IPs on Vivado

Create Project
<img src="./images/1.png">
Choose Board
<img src="./images/2.png">
Add IP finn
<img src="./images/3.png">
<img src="./images/4.png">
<img src="./images/5.png">
Add IP nms
<img src="./images/6.png">
<img src="./images/7.png">
Create Block Design
<img src="./images/8.png">
Add ZYNQ
<img src="./images/9.png">
Add DMA
<img src="./images/10.png">
Add NMS
<img src="./images/11.png">
Add FINN
<img src="./images/12.png">
Add DWC
<img src="./images/13.png">
Add DWC
<img src="./images/14.png">
Run Block Automation
<img src="./images/15.png">
Configure ZYNQ PS
<img src="./images/16.png">
Configure DMA
<img src="./images/17.png">
Run Connection Automation
<img src="./images/18.png">
<img src="./images/19.png">
Manually Connect & Run Connection Automation
<img src="./images/20.png">
Configure first DWC
<img src="./images/21.png">
Configure second DWC
<img src="./images/22.png">
Create HDL Wrapper
<img src="./images/23.png">
Generate Bitstream
<img src="./images/24.png">




# Build Setup
Step 1. Training Model  
execute
```shell
python bnn_pynq_train.py --network CNV_XWXA
```
under src/finn/Model_training

Step 2.  Export Model  
execute
```shell
python bnn_pynq_train.py --evaluate --network CNV_XWXA --resume ./experiments/CNV_XWXA/checkpoints/best.tar
```
under src/finn/Model_training, best.onnx will be generated

Step 3. Generate bit stream and driver  
Rent a U50 card on BOLEDU server and unzip FINN under build folder, add best.onnx under build folder in FINN, and then execute
```shell
./run-docker.sh build_custom ./build/
```
this will generate intermediate onnx files, bit string file, meta file and drive under build folder.(If generate bit string file fails, changing SIMD and PE in folding_config.json) Download folder with header pynq_driver_xxxxx, bitfile folder, best_streamlined.onnx to your computer, if you want to attach finn with other customized IP, you can download IP in stitched_ip folder.

Step 4. Get the scaling parameter and shift parameter.
Use any application that can open onnx file to open best_streamlined.onnx. Go to the last two layers(MUL and ADD) of model and record them.

Step 5. Inference on PYNQ-Z2
Rent a PYNQ board on BOLEDU server and upload pynq_driver_xxxxx, bitfile folder, testing image and inference.ipynb file in src/host folder, and input the parameters gotten from Step 4, after execution all notebook, the result will store in output directory. 
