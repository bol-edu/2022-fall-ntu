# 1. What
	This zynqmp_dpu_optimize.sh would execute following functions on target board:

	1. auto-resize ext4 partition to the max capacity 
	2. fine-tune QoS/Outstanding settings for DPU case to achieve a better performance
	3. adjust pmic irps5401 current for ZCU104 board only

# 2. How

1. How to use these scripts?   

	run ./zynqmp-dpu-optimize.sh   

	->./zynqmp_dpu_optimize.sh   
	Auto resize ext4 partition ...[✔]   
	Start QoS optimize ...[✔]   
	Congratulations, done!   

2. Init script

	As QoS and irps5401 settings would be recovered when board power off, so user
	could add this script as init-script to run:

	Eg:

```shell
	cd <dpu_sw_optimize\zynqmp>
 	echo $(readlink -f zynqmp_dpu_optimize.sh) > /etc/init.d/dpu-config.sh
	chmod +x /etc/init.d/dpu-optimize.sh
	(cd /etc/rc5.d; ln -s ../init.d/dpu-optimize.sh S99dpu-config)
```
