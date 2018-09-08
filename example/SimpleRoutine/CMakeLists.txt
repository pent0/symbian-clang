include (Epoc)

add_epoc_arm_executable(epoctest
    0xEF764098
    0xEF764098
    src/main.cpp)

make_sis(epoctest
   ${CMAKE_CURRENT_SOURCE_DIR}/sis/epoctest.pkg
   epoctest.sis
   "")