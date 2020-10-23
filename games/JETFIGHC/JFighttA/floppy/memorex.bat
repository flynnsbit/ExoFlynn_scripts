@echo off
cls
if exist logo.exe goto continue
echo "You must log onto the drive containing the Jetfighter Install Disk"
echo "Type that drive letter followed by a colon, (usually A: or B:)"
echo "and press [Enter]."
goto end

:continue
logo
instnew
:end
