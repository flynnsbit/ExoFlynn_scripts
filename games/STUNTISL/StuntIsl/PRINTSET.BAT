@echo off
if "%1"=="" goto usage
if not exist %1.set goto not_found
TYPESET %1.SET > PRN:
goto exit
:not_found
@echo The set named "%1.set" was not found.
@echo .
:usage
@echo Usage      : Printset Setname
@echo Example    : Printset sets\alcatraz
:exit
