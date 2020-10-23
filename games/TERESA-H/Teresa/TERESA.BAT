echo OFF
mousechk
if errorlevel 1 goto exit
cd TERESA
igc OPEN
cd ..
:exit
start.bat