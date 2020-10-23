@echo off
REM	%%1 is source disk = %1
REM	Current dir is target disk
xcopy	%1:demo*.sel . /v >NUL
xcopy	%1:loadbobg.sel . /v >NUL
xcopy	%1:*.sen . /v >NUL
xcopy	%1:*.sev . /v >NUL
xcopy	%1:tv_*.sec . /v >NUL
for %%i in (tv_home.seq gamepal.sep demtrol.exe RFTSDEMO.exe copydemo.bat copydprt.bat) do xcopy %1:%%i . /v >NUL
:stopdemo
