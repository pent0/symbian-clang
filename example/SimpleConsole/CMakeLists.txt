include (Epoc)

add_epoc_arm_executable(SimpleConsole
    0xe8abe52f
    0xe8abe52f
    src/CmdReversing.cpp)
    	
target_include_directories(SimpleConsole PRIVATE include)
target_link_libraries(SimpleConsole PRIVATE :econs.dso :estor.dso)

make_sis(SimpleConsole
   ${CMAKE_CURRENT_SOURCE_DIR}/sis/SimpleConsole.pkg
   SimpleConsole.sis
   "")