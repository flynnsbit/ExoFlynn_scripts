echo off
:retry1
present
:retry
if not errorlevel 2  goto cga
if not errorlevel 3  goto hercules
if not errorlevel 4  goto ega
if not errorlevel 5  goto vga
goto retry1
cls
:cga
dc2
goto fini

:ega
dc1 E
goto fini

:hercules
dc2
goto fini

:vga

dc1 V
goto fini


:fini
cls
                                                                                                                                                                                                               