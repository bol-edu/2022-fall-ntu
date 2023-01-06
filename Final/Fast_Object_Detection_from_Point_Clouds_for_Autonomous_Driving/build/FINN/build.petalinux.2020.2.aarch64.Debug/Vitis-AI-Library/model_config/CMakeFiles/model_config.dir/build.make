# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library

# Include any dependencies generated for this target.
include model_config/CMakeFiles/model_config.dir/depend.make

# Include the progress variables for this target.
include model_config/CMakeFiles/model_config.dir/progress.make

# Include the compile flags for this target's objects.
include model_config/CMakeFiles/model_config.dir/flags.make

model_config/vitis/ai/proto/dpu_model_param.pb.cc: /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/model_config/include/vitis/ai/proto/dpu_model_param.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running C++ protocol buffer compiler on proto dpu_model_param"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && /usr/bin/protoc --cpp_out /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config --proto_path /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/model_config/include /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/model_config/include/vitis/ai/proto/dpu_model_param.proto

model_config/vitis/ai/proto/dpu_model_param.pb.h: model_config/vitis/ai/proto/dpu_model_param.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate model_config/vitis/ai/proto/dpu_model_param.pb.h

model_config/CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.o: model_config/CMakeFiles/model_config.dir/flags.make
model_config/CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.o: model_config/vitis/ai/proto/dpu_model_param.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object model_config/CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.o"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.o -c /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config/vitis/ai/proto/dpu_model_param.pb.cc

model_config/CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.i"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config/vitis/ai/proto/dpu_model_param.pb.cc > CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.i

model_config/CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.s"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config/vitis/ai/proto/dpu_model_param.pb.cc -o CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.s

model_config/CMakeFiles/model_config.dir/src/config.cpp.o: model_config/CMakeFiles/model_config.dir/flags.make
model_config/CMakeFiles/model_config.dir/src/config.cpp.o: /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/model_config/src/config.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object model_config/CMakeFiles/model_config.dir/src/config.cpp.o"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/model_config.dir/src/config.cpp.o -c /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/model_config/src/config.cpp

model_config/CMakeFiles/model_config.dir/src/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/model_config.dir/src/config.cpp.i"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/model_config/src/config.cpp > CMakeFiles/model_config.dir/src/config.cpp.i

model_config/CMakeFiles/model_config.dir/src/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/model_config.dir/src/config.cpp.s"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/model_config/src/config.cpp -o CMakeFiles/model_config.dir/src/config.cpp.s

# Object files for target model_config
model_config_OBJECTS = \
"CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.o" \
"CMakeFiles/model_config.dir/src/config.cpp.o"

# External object files for target model_config
model_config_EXTERNAL_OBJECTS =

model_config/libvitis_ai_library-model_config.so.1.3.2: model_config/CMakeFiles/model_config.dir/vitis/ai/proto/dpu_model_param.pb.cc.o
model_config/libvitis_ai_library-model_config.so.1.3.2: model_config/CMakeFiles/model_config.dir/src/config.cpp.o
model_config/libvitis_ai_library-model_config.so.1.3.2: model_config/CMakeFiles/model_config.dir/build.make
model_config/libvitis_ai_library-model_config.so.1.3.2: /usr/lib/libprotobuf.so
model_config/libvitis_ai_library-model_config.so.1.3.2: /usr/lib/libglog.so.0.4.0
model_config/libvitis_ai_library-model_config.so.1.3.2: /usr/lib/libgflags.so.2.2.2
model_config/libvitis_ai_library-model_config.so.1.3.2: model_config/CMakeFiles/model_config.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libvitis_ai_library-model_config.so"
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/model_config.dir/link.txt --verbose=$(VERBOSE)
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && $(CMAKE_COMMAND) -E cmake_symlink_library libvitis_ai_library-model_config.so.1.3.2 libvitis_ai_library-model_config.so.1 libvitis_ai_library-model_config.so

model_config/libvitis_ai_library-model_config.so.1: model_config/libvitis_ai_library-model_config.so.1.3.2
	@$(CMAKE_COMMAND) -E touch_nocreate model_config/libvitis_ai_library-model_config.so.1

model_config/libvitis_ai_library-model_config.so: model_config/libvitis_ai_library-model_config.so.1.3.2
	@$(CMAKE_COMMAND) -E touch_nocreate model_config/libvitis_ai_library-model_config.so

# Rule to build all files generated by this target.
model_config/CMakeFiles/model_config.dir/build: model_config/libvitis_ai_library-model_config.so

.PHONY : model_config/CMakeFiles/model_config.dir/build

model_config/CMakeFiles/model_config.dir/clean:
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config && $(CMAKE_COMMAND) -P CMakeFiles/model_config.dir/cmake_clean.cmake
.PHONY : model_config/CMakeFiles/model_config.dir/clean

model_config/CMakeFiles/model_config.dir/depend: model_config/vitis/ai/proto/dpu_model_param.pb.cc
model_config/CMakeFiles/model_config.dir/depend: model_config/vitis/ai/proto/dpu_model_param.pb.h
	cd /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/model_config /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config /home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config/CMakeFiles/model_config.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : model_config/CMakeFiles/model_config.dir/depend

