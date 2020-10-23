@echo 3DWORLDBOXING Installation
@echo ---------------------
@if %1!==! goto default
@if exist %1\*.* goto err1
@echo created directory %1
@md %1
@echo off
copy  *.* %1
@goto end

:default
@if exist c:\3dwb\*.* goto nowcopy2
@echo creating default directory 3dwb
@md c:\3dwb
:nowcopy2
@echo off
copy  *.* c:\3dwb
@goto end
:err1
@echo %1 already exists choose a new directory
:end
