include glibc-2.26-ilp32.inc 

# aarch64 and aarch64_ilp32 headers are already multilib ready
# FIXME: Should figure out if the alternate abi is ilp32 instead of doing it merely
# On inclusion of the layer.
do_install_armmultilib_prepend () {
   return 
}
