# arch64 and aarch64_ilp32 headers are already multilib ready
# Make sure not to exit if ilp32 not in one of the active tunes.

EXIT_FROM_MULTI="return"
python () {
    multilibs = d.getVar("MULTILIBS") or ""
    ilp32found=False
    for multilib in multilibs.split():
        val = multilib.replace("multilib:","")
        tune = d.getVar("DEFAULTTUNE_virtclass-multilib-%s" % (val)) or ""
        if tune.find("ilp32") != -1:
           ilp32found=True
    if not ilp32found:
       tune = d.getVar("DEFAULTTUNE") or ""
       if tune.find("ilp32") != -1:
          ilp32found=True
    if not ilp32found:
       d.setVar("EXIT_FROM_MULTI", "")
}

do_install_armmultilib_prepend () {
   ${EXIT_FROM_MULTI}
}
