imgset ide10 "/cd/VirtualS/virtual.cue"

pause
cd VirtualS
cd .\intrplay\vsnooker
copy .\backup\*.* .\
echo.
echo Do not press F5 to bypass video driver selection during launch,
echo as this will cause the game to become unstable until the next time
echo you start it.
echo.
pause
snooker
