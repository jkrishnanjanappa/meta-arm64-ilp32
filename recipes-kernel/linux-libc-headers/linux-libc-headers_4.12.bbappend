FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.12:"
require check-for-ilp32.inc
# import patches from 
# URI: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
# Branch: staging/ilp32-4.12

SRC_URI += " \
  file://0001-ptrace-Add-compat-PTRACE_-G-S-ETSIGMASK-handlers.patch \
  file://0002-compat-ABI-use-non-compat-openat-and-open_by_handle_.patch \
  file://0003-32-bit-userspace-ABI-introduce-ARCH_32BIT_OFF_T-conf.patch \
  file://0004-asm-generic-Drop-getrlimit-and-setrlimit-syscalls-fr.patch \
  file://0005-arm64-ilp32-add-documentation-on-the-ILP32-ABI-for-A.patch \
  file://0006-arm64-rename-COMPAT-to-AARCH32_EL0-in-Kconfig.patch \
  file://0007-arm64-rename-functions-like-compat_foo-to-a32_foo.patch \
  file://0008-arm64-ensure-the-kernel-is-compiled-for-LP64.patch \
  file://0009-arm64-uapi-set-__BITS_PER_LONG-correctly-for-ILP32-a.patch \
  file://0010-thread-move-thread-bits-accessors-to-separated-file.patch \
  file://0011-arm64-introduce-is_a32_task-and-is_a32_thread-for-AA.patch \
  file://0012-arm64-ilp32-add-is_ilp32_compat_-task-thread-and-TIF.patch \
  file://0013-arm64-introduce-binfmt_elf32.c.patch \
  file://0014-arm64-change-compat_elf_hwcap-and-compat_elf_hwcap2-.patch \
  file://0015-arm64-ilp32-introduce-binfmt_ilp32.c.patch \
  file://0016-arm64-ilp32-share-aarch32-syscall-handlers.patch \
  file://0017-arm64-ilp32-add-sys_ilp32.c-and-a-separate-table-in-.patch \
  file://0018-arm64-signal-share-lp64-signal-routines-to-ilp32.patch \
  file://0019-arm64-signal32-move-ilp32-and-aarch32-common-code-to.patch \
  file://0020-arm64-ilp32-introduce-ilp32-specific-handlers-for-si.patch \
  file://0021-arm64-ptrace-handle-ptrace_request-differently-for-a.patch \
  file://0022-arm64-ilp32-add-vdso-ilp32-and-use-for-signal-return.patch \
  file://0023-arm64-ilp32-add-ARM64_ILP32-to-Kconfig.patch \
  file://0024-arm64-ilp32-Clear-TIF_32BIT-in-mm-context.flags-for-.patch \
  file://0025-arm64-ilp32-Make-the-Kconfig-option-default-y.patch \
"
