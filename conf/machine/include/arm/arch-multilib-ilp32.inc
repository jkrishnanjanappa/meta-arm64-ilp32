require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "aarch64_ilp32"
TARGET_LD_ARCH_virtclass-multilib-lib32 += " -m aarch64linux32 "

