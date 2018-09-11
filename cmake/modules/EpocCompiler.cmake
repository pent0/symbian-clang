function(add_epoc_arm_executable ENAME UID3 SID SOURCE)
    set (CMAKE_SYSTEM_NAME Symbian)
    set (CMAKE_SYSTEM_PROCESSOR arm)

    add_executable(${ENAME} ${SOURCE})
    set_target_properties(${ENAME} PROPERTIES PREFIX "")

    add_custom_command(
			TARGET ${ENAME}
			POST_BUILD
			COMMAND elf2e32 --elfinput=${ENAME} --uid1=268435578 --uid3=${UID3} --sid=${SID} --output=${ENAME}.exe 
                    --libpath="$ENV{EPOCROOT}/epoc32/release/armv5/lib/" --libpath="$ENV{EPOCROOT}/epoc32/release/armv6/lib/"
                    --defoutput="${ENAME}.def"
                    --dso="${ENAME}.dso"
                    --linkas="${ENAME}")
endfunction()

# Epoc ARM
function(add_epoc_arm_library ENAME SOURCE)
    set (CMAKE_SYSTEM_NAME Symbian)
    set (CMAKE_SYSTEM_PROCESSOR arm)
    
    add_library(${ENAME} ${SOURCE})   
    set_target_properties(${ENAME} PROPERTIES PREFIX "")
endfunction()