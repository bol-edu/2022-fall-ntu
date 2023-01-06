export XCL_EMULATION_MODE=hw_emu
./build_dir.hw_emu.u50/host.exe -xclbin ./build_dir.hw_emu.u50/dut.xclbin -o ./data/large-csr-offset.mtx -i ./data/large-csr-indicesweights.mtx | tee large_hw_emu_case.log
./build_dir.hw_emu.u50/host.exe -xclbin ./build_dir.hw_emu.u50/dut.xclbin -o ./data/small-csr-offset.mtx -i ./data/small-csr-indicesweights.mtx | tee small_hw_emu_case.log