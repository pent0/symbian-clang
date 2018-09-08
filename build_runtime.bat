cd compiler-rt
mkdir build 
cd build
setlocal
set CC=%~dp0build\bin\clang.exe
set CXX=%~dp0build\bin\clang++
cmake .. -DLLVM_PATH='..\..\llvm\' -DCMAKE_C_COMPILER_TARGET='armv5-nokia-symbian-eabi' ^
     -DCOMPILER_RT_BUILD_BUILTINS=ON^
     -DCOMPILER_RT_BUILD_SANITIZERS=OFF^
     -DCOMPILER_RT_BUILD_XRAY=OFF^
     -DCOMPILER_RT_BUILD_LIBFUZZER=OFF^
     -DCOMPILER_RT_BUILD_PROFILE=OFF^
     -DCMAKE_C_COMPILER_ID="Clang 8.0.0"^
     -DCMAKE_CXX_COMPILER_ID="Clang 8.0.0"^
     -DCOMPILER_RT_DEFAULT_TARGET_ONLY=ON^
     -DCMAKE_SYSTEM_NAME="Generic" -G "Ninja"
ninja -j 4
endlocal
cd ..\..