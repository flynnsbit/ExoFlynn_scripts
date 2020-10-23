echo off

if exist control goto delete
goto memory

:delete
del control

:memory
checkmem
if errorlevel 1 goto end

:frontend
play

:start
control

if errorlevel 7 goto end
if errorlevel 6 goto draft
if errorlevel 5 goto util
if errorlevel 4 goto manage
if errorlevel 3 goto bb
if errorlevel 2 goto back
if errorlevel 1 goto main
goto frontend

:draft
draft %1
goto start

:util
util %1
goto start

:manage
manage %1
goto start

:bb
bb %1
goto start

:back
back %1
goto start

:main
main %1
goto start

:end

echo Tony La Russa Baseball II CD-ROM version 1.3 CD Patch

