@echo off
intro
if errorlevel 1 goto instruct
play NOJOY
goto end
:instruct
play JOYSTICK
:end
echo on
