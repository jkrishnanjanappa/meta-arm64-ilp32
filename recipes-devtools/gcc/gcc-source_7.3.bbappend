FILESEXTRAPATHS_prepend := "${THISDIR}/gcc-7.3:"
SRC_URI_append_linux-gnuilp32 += "file://0051-Enable-the-MULTILIB_OSDIRNAMES-and-other-multilib-o.patch \
                                  file://0001-Set-aarch64-base-abi-based-on-the-compiled-abi.patch"
