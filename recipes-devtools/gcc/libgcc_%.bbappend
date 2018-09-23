do_install_append_aarchilp32() {
        if [ "${base_libdir}" != "/lib" -a -e "${D}/usr/lib64/libgcc_s.so" ] ; then
              mkdir -p ${D}${libdir}
              mv ${D}/usr/lib64/* ${D}${libdir}
              rm -rf ${D}/usr/lib64/
        fi
        if [ -z "$(ls ${D}${base_libdir})" ] ; then
           rm -rf ${D}${base_libdir}
        fi
}

fakeroot do_multilib_fixup() {
   true
}
fakeroot do_multilib_fixup_aarchilp32() {
        mv ${D}${libdir}/${HOST_SYS}/${BINV}/64 ${D}${libdir}/${HOST_SYS}/${BINV}/lp64
}
addtask multilib_fixup after do_multilib_install before do_extra_symlinks 

FILES_${PN} += "${libdir}/libgcc*.so.*"
FILES_${PN}-dev += "${libdir}/libgcc*.so"
