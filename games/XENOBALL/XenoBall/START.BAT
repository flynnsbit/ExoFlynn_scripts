echo off
hbcheck /s /m
if errorlevel==1 goto End
xenoball %1 %2 %3
:End
