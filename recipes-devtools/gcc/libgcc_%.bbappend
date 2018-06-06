do_install_append_aarchilp32() {
        if [ "${base_libdir}" != "/lib" -a -e "${D}/usr/lib64/libgcc_s.so" ] ; then
              mkdir -p ${D}${libdir}
              mv ${D}/usr/lib64/* ${D}${libdir}
              rm -rf ${D}/usr/lib64/
        fi
}
FILES_${PN} += "${libdir}/libgcc*.so.*"
FILES_${PN}-dev += "${libdir}/libgcc*.so"
