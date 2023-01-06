#/usr/bin/env bash

LOCAL_PATH=/home/konradl/Xilinx/platforms/xilinx-zynqmp-common-v2020.1/ir/sysroots/aarch64-xilinx-linux/install/Debug/*
REMOTE_PATH=/usr/
sshpass -p root scp -r ${LOCAL_PATH} root@192.168.2.99:${REMOTE_PATH}

LOCAL_PATH=/home/konradl/build/build.linux.2020.1.aarch64.Debug/Vitis-AI-Library/pointpillars/pp_perf
REMOTE_PATH=/home/root/ppFINN/pp_perf
sshpass -p root scp ${LOCAL_PATH} root@192.168.2.99:${REMOTE_PATH}

LOCAL_PATH=/home/konradl/build/build.linux.2020.1.aarch64.Debug/Vitis-AI-Library/pointpillars/pp_test
REMOTE_PATH=/home/root/ppFINN/pp_test
sshpass -p root scp ${LOCAL_PATH} root@192.168.2.99:${REMOTE_PATH}

LOCAL_PATH=/home/konradl/build/build.linux.2020.1.aarch64.Debug/Vitis-AI-Library/pointpillars/pfn_test
REMOTE_PATH=/home/root/pfn/pfn_test
sshpass -p root scp ${LOCAL_PATH} root@192.168.2.99:${REMOTE_PATH}