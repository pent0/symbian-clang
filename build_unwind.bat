cd libunwind
mkdir build 
cd build
setlocal
set CC=%~dp0build\bin\clang.exe
set CXX=%~dp0build\bin\clang++
cmake .. -DLLVM_PATH='..\..\llvm\' -DLIBUNWIND_TARGET_TRIPLE='arm-nokia-symbian-eabi' -DLIBUNWIND_ENABLE_SHARED=OFF -DCMAKE_C_COMPILER_ID="Clang 8.0.0"^
         -DCMAKE_CXX_COMPILER_ID="Clang 8.0.0" -DCMAKE_SYSTEM_NAME="Generic" -G "Ninja"
ninja -j 4
endlocal
cd ..\..