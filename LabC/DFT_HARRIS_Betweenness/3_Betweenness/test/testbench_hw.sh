./host.exe -xclbin ./dut.xclbin -o ./large-csr-offset.mtx -i ./large-csr-indicesweights.mtx | tee large_case.log
./host.exe -xclbin ./dut.xclbin -o ./small-csr-offset.mtx -i ./small-csr-indicesweights.mtx | tee small_case.log
