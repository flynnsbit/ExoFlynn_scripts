@ECHO OFF
if not exist VXPICV.EXE goto error
VXPICV VX
VXPICV MMC
SETUP
goto end
:error
echo Please change to your CDROM-drive first!
echo.
:end

