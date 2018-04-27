do_install_append_aarchilp32() {
        if [ "${BASELIB}" != "lib" -a -e "${D}/usr/lib64/libgcc_s.so" ] ; then
              mkdir -p ${D}${libdir}
              cp -a ${D}/usr/lib64/libgcc* ${D}${libdir}
        fi
}
FILES_${PN} += "${libdir}/libgcc*.so.*"
FILES_${PN}-dev += "${libdir}/libgcc*.so"
