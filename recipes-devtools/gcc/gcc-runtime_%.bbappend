do_install_append_aarchilp32() {
        if [ "${BASELIB}" != "lib" -a -e "${D}/usr/lib64/libatomic.so" ] ; then
              mkdir -p ${D}${libdir}
              mv ${D}/usr/lib64/* ${D}${libdir}
              rm -rf ${D}/usr/lib64/
        fi
}
