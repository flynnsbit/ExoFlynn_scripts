@echo off
echo �
echo Checking Memory...
memcheck 5100 >NUL
if not errorlevel 1 goto goret8
memcheck 3072 >NUL
if not errorlevel 1 goto goret4
goto nogo
:goret4
echo Running RET4
echo �
RET4
goto end
:goret8
echo Running RET8
echo �
RET8
goto end
:nogo
echo �
echo There is not enough extended (XMS) memory to run Retribution.
echo Consult the trouble shooter guide.
echo �
:end

