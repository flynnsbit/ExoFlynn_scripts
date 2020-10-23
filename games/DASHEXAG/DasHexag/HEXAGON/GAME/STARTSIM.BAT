@ECHO OFF
g3c.exe standard ! >nul

if errorlevel 255 goto ende

startmen.bat

:ende
