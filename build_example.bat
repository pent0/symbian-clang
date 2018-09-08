cd example
mkdir build 
cd build
setlocal
set CC=%~dp0build\bin\clang
set CXX=%~dp0build\bin\clang++
cmake .. -DCMAKE_C_COMPILER_ID="Clang 8.0.0" -DCMAKE_C_COMPILER_TARGET='armv5-nokia-symbian-eabi' ^
         -DCMAKE_CXX_COMPILER_TARGET='armv5-nokia-symbian-eabi' ^
         -DCMAKE_CXX_COMPILER_ID="Clang 8.0.0" -DCMAKE_SYSTEM_NAME="Generic" -G "Ninja"
ninja -j 4
endlocal
cd ..\..