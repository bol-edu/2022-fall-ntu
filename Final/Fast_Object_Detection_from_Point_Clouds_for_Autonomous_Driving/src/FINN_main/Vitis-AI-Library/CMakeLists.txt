#
# Copyright 2019 Xilinx Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License. You may obtain a copy of
# the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations under
# the License.
#
cmake_minimum_required(VERSION 3.5)
project(
  vitis_ai_library
  VERSION 1.3.2
  LANGUAGES C CXX)
include(${CMAKE_SOURCE_DIR}/cmake/XilinxCommon.cmake)

# ugly solution for search XRT library, xrt is built without proper rpath
# setting
link_directories("/opt/xilinx/xrt/lib")
# options
option(DISABLE_ALL "disable all libraries" ON)

option(ENABLE_POINTPILLARS "enable pointpillars" ON)

set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH};${CMAKE_CURRENT_LIST_DIR}/cmake")
set(INSTALL_LIB_DIR lib)
set(INSTALL_BIN_DIR bin)
set(INSTALL_INCLUDE_DIR include)
set(INSTALL_CMAKE_DIR share/cmake/${PROJECT_NAME})

# find_package(unilog)
find_package(glog)
find_package(Protobuf 3.4.0 REQUIRED)
find_package(Xrt MODULE)
find_package(OpenCV COMPONENTS opencv_core opencv_video opencv_videoio
                               opencv_imgproc opencv_imgcodecs opencv_highgui)
if(NOT OpenCV_FOUND)
  find_package(
    OpenCV_LIBS
    opencv_core
    opencv_video
    opencv_videoio
    opencv_imgproc
    opencv_imgcodecs
    opencv_highgui)
endif(NOT OpenCV_FOUND)

set(PACKAGE_COMPONENTS model_config )

if(ENABLE_POINTPILLARS OR (NOT DISABLE_ALL))
  list(APPEND PACKAGE_COMPONENTS pointpillars)
endif()


# NOTE: general1 refer to many other libs, so it must be the last components in
# the list
if(ENABLE_GENERAL OR (NOT DISABLE_ALL))
  # use general1 instead of general because general is a special target name in
  # cmake
  list(APPEND PACKAGE_COMPONENTS general1)
endif()

add_subdirectory(benchmark)
include_directories(benchmark/include)

if(ENABLE_OVERVIEW AND (NOT DISABLE_ALL))
  add_subdirectory(overview)
endif()

foreach(COMPONENT ${PACKAGE_COMPONENTS})
  add_subdirectory(${COMPONENT})
endforeach()

file(RELATIVE_PATH REL_INCLUDE_DIR
     ${CMAKE_INSTALL_PREFIX}/share/cmake/${PROJECT_NAME}
     ${CMAKE_INSTALL_PREFIX}/include)
set(CONF_INCLUDE_DIRS "\${${PROJECT_NAME}_CMAKE_DIR}/${REL_INCLUDE_DIR}")
configure_file(cmake/config.cmake.in
               "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}-config.cmake" @ONLY)

write_basic_package_version_file(
  "${CMAKE_BINARY_DIR}/${PROJECT_NAME}-config-version.cmake"
  VERSION ${PROJECT_VERSION}
  COMPATIBILITY AnyNewerVersion)

install(FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}-config.cmake"
              "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}-config-version.cmake"
        DESTINATION share/cmake/${PROJECT_NAME})

set(CPACK_PACKAGE_NAME "libvitis_ai_library")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "A runtime runner for vitis")
set(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_SOURCE_DIR}/README.md")
set(CPACK_RESOURCE_FILE_README "${CMAKE_SOURCE_DIR}/README.md")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/Copyright.txt")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION_MAJOR ${CMAKE_PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${CMAKE_PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${CMAKE_PROJECT_VERSION_PATCH})
set(CPACK_PACKAGE_CONTACT "Hui Zhang<huizhang@xilinx.com>")
set(CPACK_PACKAGING_INSTALL_PREFIX "/usr")

set(CPACK_DEB_COMPONENT_INSTALL False)
set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
set(CPACK_DEBIAN_ARCHIVE_TYPE "gnutar")
set(CPACK_DEBIAN_COMPRESSION_TYPE "gzip")
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "libvart (>=0.0.1)")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
if(DEFINED ENV{BUILD_NUMBER})
  set(CPACK_DEBIAN_PACKAGE_RELEASE "r$ENV{BUILD_NUMBER}")
endif()
if(CMAKE_SYSTEM_PROCESSOR STREQUAL "aarch64")
  set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "arm64")
elseif(CMAKE_SYSTEM_PROCESSOR STREQUAL "x86_64")
  set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "amd64")
else()
  set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE ${CMAKE_SYSTEM_PROCESSOR})
endif()

set(CPACK_RPM_COMPONENT_INSTALL False)
set(CPACK_RPM_PACKAGE_LICENSE "Apache")
set(CPACK_RPM_PACKAGE_GROUP "Development/Tools")
set(CPACK_RPM_COMPRESSION_TYPE "xz")
set(CPACK_RPM_PACKAGE_REQUIRES "libvart >= 0.0.1")
set(CPACK_RPM_FILE_NAME RPM-DEFAULT)
if(DEFINED ENV{BUILD_NUMBER})
  set(CPACK_RPM_PACKAGE_RELEASE "r$ENV{BUILD_NUMBER}")
endif()
set(CPACK_RPM_PACKAGE_ARCHITECTURE ${CMAKE_SYSTEM_PROCESSOR})

include(CPack)
