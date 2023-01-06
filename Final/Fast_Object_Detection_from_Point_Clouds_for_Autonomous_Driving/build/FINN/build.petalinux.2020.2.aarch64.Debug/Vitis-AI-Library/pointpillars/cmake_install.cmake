# Install script for directory: /home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/root/.local/petalinux.2020.2.aarch64.Debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so.1.3.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/home/root/.local/petalinux.2020.2.aarch64.Debug/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/libvitis_ai_library-pointpillars.so.1.3.2"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/libvitis_ai_library-pointpillars.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so.1.3.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/opt/xilinx/xrt/lib:/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config:"
           NEW_RPATH "/home/root/.local/petalinux.2020.2.aarch64.Debug/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so"
         RPATH "/home/root/.local/petalinux.2020.2.aarch64.Debug/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/libvitis_ai_library-pointpillars.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so"
         OLD_RPATH "/opt/xilinx/xrt/lib:/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/model_config:"
         NEW_RPATH "/home/root/.local/petalinux.2020.2.aarch64.Debug/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvitis_ai_library-pointpillars.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/vitis_ai_library/pointpillars-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/vitis_ai_library/pointpillars-targets.cmake"
         "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/CMakeFiles/Export/share/cmake/vitis_ai_library/pointpillars-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/vitis_ai_library/pointpillars-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/vitis_ai_library/pointpillars-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/vitis_ai_library" TYPE FILE FILES "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/CMakeFiles/Export/share/cmake/vitis_ai_library/pointpillars-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/vitis_ai_library" TYPE FILE FILES "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/CMakeFiles/Export/share/cmake/vitis_ai_library/pointpillars-targets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/second/protos" TYPE FILE FILES
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/activations.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/anchors.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/box_coder.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/input_reader.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/layers.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/losses.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/model.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/optimizer.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/pipeline.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/preprocess.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/sampler.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/second.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/similarity.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/target.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/train.pb.h"
    "/home/root/build/build.petalinux.2020.2.aarch64.Debug/Vitis-AI-Library/pointpillars/second/protos/voxel_generator.pb.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vitis/ai" TYPE FILE FILES "/home/root/Vitis-AI/demo/Vitis-AI-Library/samples/pointpillars/pp-finn-main/Vitis-AI-Library/pointpillars/include/vitis/ai/pointpillars.hpp")
endif()

