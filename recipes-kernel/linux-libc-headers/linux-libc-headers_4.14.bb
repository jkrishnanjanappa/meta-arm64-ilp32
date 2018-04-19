require recipes-kernel/linux-libc-headers/linux-libc-headers.inc

MV_KERNEL_BRANCH ?= "mvl-4.14/msd.cgx"
MV_KERNEL_TREE ?= "git://github.com/MontaVista-OpenSourceTechnology/linux-mvista-2.4.git;protocol=https"
MV_KERNELCACHE_BRANCH ?= "yocto-4.14"
MV_KERNELCACHE_TREE ?= "git://github.com/MontaVista-OpenSourceTechnology/yocto-kernel-cache;protocol=https"

SRCREV ?= "${MV_KERNEL_BRANCH}"

LINUX_VERSION = "4.14"

SRC_URI = "${MV_KERNEL_TREE};branch=${MV_KERNEL_BRANCH}"
S = "${WORKDIR}/git"

# arch64 and aarch64_ilp32 headers are already multilib ready
# FIXME: Should figure out if the alternate abi is ilp32 instead of doing it merely
# On inclusion of the layer.

do_install_armmultilib_prepend () {
   exit 0
}
