echo off
echo.
echo Insert REEL #2 into drive %1
pause
echo.
copy %1:*.* >nul
copy %1:art\*.* art >nul
copy %1:pcs\*.* pcs >nul
echo Done.
