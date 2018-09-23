FILESEXTRAPATHS_prepend := "${THISDIR}/glibc-2.26:"

SRC_URI_append_linux-gnuilp32 += " \
    file://0001-aarch64-ilp32-final.patch \
    file://0002-aarch64-ilp32-abilist.patch \
    file://0003-math.patch.patch \
    file://0004-build-many.patch.patch \
    file://0005-version.patch \
    file://0006-configure.patch \
    file://0007-Here-is-another-aarch64-ILP32-patch.-The-mode-field-.patch \
    file://0008-This-patch-is-a-one-line-change-to-use-the-PTR_REG-m.patch \
"
