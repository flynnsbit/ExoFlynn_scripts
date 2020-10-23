@echo off
@cls
@md work
@cd work
@md fli
@md textures
@md tex4
@md hierarch
@md sons
@cd ..
@copy %1:\skipro\*.*
@xcopy %1:\skipro\work\sons\present.spl work\sons
@echo ..................
@echo Type SKIPRO to run
@echo ..................

