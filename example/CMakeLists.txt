cmake_minimum_required(VERSION 3.4)

LIST (APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/../cmake/modules)

cmake_policy(SET CMP0060 NEW)
    	
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --target=armv5-nokia-symbian-eabi")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --target=armv5-nokia-symbian-eabi")

add_subdirectory(SimpleRoutine)
add_subdirectory(SimpleConsole)