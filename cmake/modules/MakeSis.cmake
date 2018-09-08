function (make_sis IMAGE PKGFILE OUTPUTSIS ADDITIONALCMD) 
    add_custom_command(
			TARGET ${IMAGE}
			POST_BUILD
			COMMAND makesis -d$<TARGET_FILE_DIR:${IMAGE}> -c -v ${PKGFILE} ${SISFILE})
endfunction()
