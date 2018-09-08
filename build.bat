mkdir build
cd build
cmake -H.. -G Ninja -DCMAKE_BUILD_TYPE "Release"
ninja -j 4
cd ..
