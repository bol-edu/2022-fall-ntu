#
# Copyright 2019 Xilinx Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
cmake_minimum_required(VERSION 3.5)
get_filename_component(COMPONENT_NAME "${CMAKE_CURRENT_SOURCE_DIR}" NAME)
set(OpenCV_LIBS opencv_core opencv_video opencv_videoio opencv_imgproc opencv_imgcodecs opencv_highgui)

add_compile_definitions(CL_HPP_CL_1_2_DEFAULT_BUILD)
add_compile_definitions(CL_HPP_TARGET_OPENCL_VERSION=120)
add_compile_definitions(CL_HPP_MINIMUM_OPENCL_VERSION=120)
add_compile_definitions(CL_HPP_ENABLE_PROGRAM_CONSTRUCTION_FROM_ARRAY_COMPATIBILITY=1)
add_compile_definitions(CL_USE_DEPRECATED_OPENCL_1_2_APIS)
add_compile_definitions(CL_DEVICE_PCIE_BDF=4384)

set(PBF_NAME2 activations anchors box_coder input_reader layers losses model optimizer pipeline preprocess sampler second similarity target train voxel_generator)
foreach(PBF ${PBF_NAME2})
  add_custom_command(
    OUTPUT
    ${CMAKE_CURRENT_BINARY_DIR}/second/protos/${PBF}.pb.cc
    ${CMAKE_CURRENT_BINARY_DIR}/second/protos/${PBF}.pb.h
    DEPENDS   ${CMAKE_CURRENT_SOURCE_DIR}/include/second/protos/${PBF}.proto
    COMMAND  protobuf::protoc
    ARGS --cpp_out  ${CMAKE_CURRENT_BINARY_DIR}
    --proto_path ${CMAKE_CURRENT_SOURCE_DIR}/include
    ${CMAKE_CURRENT_SOURCE_DIR}/include/second/protos/${PBF}.proto
    COMMENT "Running C++ protocol buffer compiler on proto ${PBF}"
    VERBATIM )
  list(APPEND LIST_PBSRC_CC ${CMAKE_CURRENT_BINARY_DIR}/second/protos/${PBF}.pb.cc)
  list(APPEND LIST_PBSRC_H2 ${CMAKE_CURRENT_BINARY_DIR}/second/protos/${PBF}.pb.h)
endforeach()

if(CMAKE_SYSTEM_NAME STREQUAL "QNX")
  ## TODO: fix hard coded directory
  link_directories(/home/administrator/workspace/qtbase/lib/)
  list(APPEND OpenCV_LIBS Qt5Widgets Qt5Test Qt5Concurrent Qt5Gui Qt5Core)
else()
  list(APPEND OpenCV_LIBS pthread)
endif()

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SYSROOT}/usr/share/cmake/")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include")
include(XilinxCommon)
include(XilinxVersion)


if (CPACK_DEBIAN_PACKAGE_ARCHITECTURE STREQUAL "arm64")
  add_compile_options( -Wno-error=attributes -Wno-strict-aliasing  )
endif()

add_library(${COMPONENT_NAME} SHARED
    ${LIST_PBSRC_CC}
    src/helper.cpp
    src/pointpillars.cpp
    src/pointpillars_imp.cpp
    src/preprocess.cpp
    src/postprocess/anchor.cpp
    src/postprocess/pointpillars_post.cpp
    src/postprocess/parse_display_result.cpp
    src/pfn.cpp
    src/finn_cpp_driver.cpp
    src/xcl2.cpp
    src/packing.cpp
    src/utils.cpp
   ${CMAKE_CURRENT_BINARY_DIR}/version.c
  )

add_library(${PROJECT_NAME}::${COMPONENT_NAME} ALIAS ${COMPONENT_NAME})

target_link_libraries(${COMPONENT_NAME} PUBLIC model_config glog::glog pthread ${OpenCV_LIBS} OpenCL )

target_include_directories(${COMPONENT_NAME} PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}>
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src>
  $<INSTALL_INTERFACE:include>
)

include_directories("${CMAKE_SYSROOT}/usr/include/eigen3/")
include_directories("${CMAKE_SYSROOT}/usr/include/eigen3/Eigen/unsupported")
include_directories("${CMAKE_SYSROOT}/usr/include/xrt/")

set_target_properties(${COMPONENT_NAME} PROPERTIES
  VERSION "${PROJECT_VERSION}"
  SOVERSION "${PROJECT_VERSION_MAJOR}"
  LIBRARY_OUTPUT_NAME  ${PROJECT_NAME}-${COMPONENT_NAME}
  )
install(
  TARGETS ${COMPONENT_NAME}
  EXPORT ${COMPONENT_NAME}-targets
  RUNTIME DESTINATION ${INSTALL_BIN_DIR}
  LIBRARY DESTINATION ${INSTALL_LIB_DIR})

install(
  EXPORT ${COMPONENT_NAME}-targets
  NAMESPACE ${PROJECT_NAME}::
  DESTINATION ${INSTALL_CMAKE_DIR})

install(FILES
  ${LIST_PBSRC_H2}
  DESTINATION include/second/protos)

install(FILES include/vitis/ai/pointpillars.hpp DESTINATION include/vitis/ai)

# add_executable(test_pointpillars test/test_pointpillars.cpp)
# target_link_libraries(test_pointpillars ${COMPONENT_NAME} glog::glog  ${OpenCV_LIBS})
# add_executable(test_pointpillars_accuracy test/test_pointpillars_accuracy.cpp)
# target_link_libraries(test_pointpillars_accuracy ${COMPONENT_NAME} glog::glog  ${OpenCV_LIBS})
add_executable(pp_perf test/test_performance_pointpillars_singlethread.cpp test/time_measure.cpp)
target_link_libraries(pp_perf ${COMPONENT_NAME} glog::glog pthread ${OpenCV_LIBS})
# $CXX -std=c++17 -I. -o test_performance_pointpillars test_performance_pointpillars_2.cpp -lopencv_core -lopencv_video -lopencv_videoio -lopencv_imgproc -lopencv_imgcodecs -lopencv_highgui -lvitis_ai_library-pointpillars  -lvart-util -pthread -lglog 
add_executable(pp_test test/test_pointpillars.cpp)
target_link_libraries(pp_test ${COMPONENT_NAME} glog::glog pthread ${OpenCV_LIBS})
add_executable(pfn_test test/test_clock.cpp)
# target_link_libraries(pfn_test ${COMPONENT_NAME} glog::glog pthread ${OpenCV_LIBS})

add_executable(pp_eval test/test_pointpillars_accuracy_2.cpp)
target_link_libraries(pp_eval ${COMPONENT_NAME} glog::glog pthread ${OpenCV_LIBS})
# add_executable(pfn_test test/test_pfn.cpp)
# target_link_libraries(pfn_test ${COMPONENT_NAME} glog::glog pthread ${OpenCV_LIBS})
