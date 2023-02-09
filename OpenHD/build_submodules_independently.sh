# bin/bash

# For the github CIs
# Here we build all the submodules independently from each other to make sure
# no unwanted dependencies were introduced during OpenHD development

cd ohd_interface
cmake -S . -B build_debug -DCMAKE_BUILD_TYPE=Debug
cmake --build build_debug

cd ../ohd_telemetry
cmake -S . -B build_debug -DCMAKE_BUILD_TYPE=Debug
cmake --build build_debug

cd ../ohd_video
cmake -S . -B build_debug -DCMAKE_BUILD_TYPE=Debug
cmake --build build_debug