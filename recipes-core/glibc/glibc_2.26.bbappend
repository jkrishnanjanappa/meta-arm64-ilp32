include glibc-2.26-ilp32.inc 

# aarch64 and aarch64_ilp32 headers are already multilib ready
# FIXME: Should figure out if the alternate abi is ilp32 instead of doing it merely
# On inclusion of the layer.
do_install_armmultilib_prepend () {
   return 
}

do_install_append_aarch64 () {
    if [ "${MULTILIBS}" != "" ] ; then
       sed -i 's:^RTLDLIST=.*:RTLDLIST="/lib64/ld-linux-aarch64.so.1 /libilp32/ld-linux-aarch64_ilp32.so.1":g' ${D}${bindir}/ldd
    fi
}
