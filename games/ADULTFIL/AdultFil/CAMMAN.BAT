echo OFF
mousechk
if errorlevel 1 goto exit
cd camman
fxnoshow video
cd ..
:exit
echo ON
