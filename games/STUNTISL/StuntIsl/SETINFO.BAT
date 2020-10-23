@echo off
if "%1"=="" goto usage
if not exist %1.set goto not_found
TYPESET %1.SET > %1.TXT
goto exit
:not_found
@echo The set named "%1.set" was not found.
:usage
@echo Usage  : Setinfo Setname
@echo Example: Setinfo sets\alcatraz
:exit
