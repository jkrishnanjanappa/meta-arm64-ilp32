FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.12:"

# merged patches on top of yocto-linux-4.12 from:
# URI: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
# Branch: staging/ilp32-4.12

SRC_URI += "file://aarch64-ilp32.scc"
