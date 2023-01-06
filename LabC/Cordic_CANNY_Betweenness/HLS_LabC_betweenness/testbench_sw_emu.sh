export XCL_EMULATION_MODE=sw_emu
./build_dir.sw_emu.u50/host.exe -xclbin ./build_dir.sw_emu.u50/dut.xclbin -o ./data/large-csr-offset.mtx -i ./data/large-csr-indicesweights.mtx | tee large_case.log
./build_dir.sw_emu.u50/host.exe -xclbin ./build_dir.sw_emu.u50/dut.xclbin -o ./data/small-csr-offset.mtx -i ./data/small-csr-indicesweights.mtx | tee small_case.log