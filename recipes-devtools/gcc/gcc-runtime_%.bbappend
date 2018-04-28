do_install_append_aarchilp32() {
        if [ "${BASELIB}" != "lib" -a -e "${D}/usr/lib64/libatomic.so" ] ; then
              mkdir -p ${D}${libdir}
              mv ${D}/usr/lib64/* ${D}${libdir}
              rm -rf ${D}/usr/lib64/
              for la in ${D}${libdir}/*.la; do
                  sed -i $la -e "s,/usr/lib64,${libdir},"
              done
        fi
}
