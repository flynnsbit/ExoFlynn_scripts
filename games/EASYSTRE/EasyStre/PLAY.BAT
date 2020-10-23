echo off
twon
twindow
cls
if errorlevel 1 goto error
if errorlevel 5 goto error
twcalib -13
:error
first
twoff
if not errorlevel 1 goto end
twindow off
cls
:end
