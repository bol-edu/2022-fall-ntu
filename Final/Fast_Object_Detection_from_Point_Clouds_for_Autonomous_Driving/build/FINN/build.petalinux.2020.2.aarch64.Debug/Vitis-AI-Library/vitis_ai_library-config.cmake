#
# Copyright 2019 Xilinx Inc.
#
# Distributed under the Apache License, Version 2.0 (the "License");
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

set(_supported_components model_config;pointpillars)
set(vitis_ai_library_FOUND True)
set(_components ${_supported_components})
if(${vitis_ai_library_FIND_COMPONENTS})
  set(_components ${vitis_ai_library_FIND_COMPONENTS})
endif()
message("_components is ${_components}")
foreach(_comp ${_components})
  if (NOT ";${_supported_components};" MATCHES ${_comp})
    set(vitis_ai_library_FOUND False)
    set(vitis_ai_library_NOT_FOUND_MESSAGE "Unsupported component: ${_comp}")
  endif()
  include("${CMAKE_CURRENT_LIST_DIR}/${_comp}-targets.cmake")
  get_target_property(TARGET_LOCATION vitis_ai_library::${_comp} LOCATION)
  message(STATUS "Found importable target vitis_ai_library::${_comp}: ${TARGET_LOCATION}")
endforeach()

get_filename_component(vitis_ai_library_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(vitis_ai_library_INCLUDE_DIRS "${vitis_ai_library_CMAKE_DIR}/../../../include")
find_package(OpenCV REQUIRED opencv_core opencv_video opencv_videoio opencv_imgproc opencv_imgcodecs opencv_highgui)
find_package(Protobuf 3.4.0 REQUIRED)
