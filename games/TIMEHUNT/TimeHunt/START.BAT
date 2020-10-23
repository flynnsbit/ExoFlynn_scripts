echo off
hbcheck /s /m /k566
if errorlevel==1 goto End
hunters %1 %2 %3
:End
