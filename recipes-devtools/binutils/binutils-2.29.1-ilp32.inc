FILESEXTRAPATHS_prepend := "${THISDIR}/binutils-2.29.1:"
SRC_URI += " \
   file://0001-Move-AARCH64-ILP32-rejection-handling.patch \
   file://0002-Enable-ILP32-mode-in-gdb-on-aarch64.patch \
"
