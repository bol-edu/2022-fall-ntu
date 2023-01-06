# ResNet Image Classifier on PYNQ-Z2
## Introduction 
- We select ResNet to implement the image classifier for its high accuracy and relative small model.
After try and error, we find that ResNet8 meet our initial goal the most.

## Major optimization
- Light-weight: we achieve 84.51% accuracy while reduce 99% parameters of original benchmark model (ResNet18).
- Max-utilized: we achieve 89.33% accuracy with a the larget model we can fit on PYNQ-Z2.

## Folder structure
```
├── ResNet-Image_Classifier_on_PYNQZ2
│   ├── build/
│   ├── data/
│   ├── docs/
│   ├── impl_result/
│   ├── src/
│   ├── LICENSE
│   ├── README.md
│   └── requirements.txt
```
- build: this directory contains the finn tranform needed jupyter notebook and the intermediate output onnx file.
- data: the downloaded CIFAR10 dataset would be here.
- docs: proposal ppt, present ptt, and report are here.
- impl_result: after-training onnx files and synthesized vivado projects are here.
- src: resnet training code and finn tranform jupyter notebook are here.
## Build step
- ResNet:  
Please install python package in requirement.txt file, then simply run ResNet_training.py.
- FINN:
Please refer to web https://github.com/bol-edu/course-lab_finn to build the finn environment. Then refer to src/ResNet_finn.ipynb to do finn transform.