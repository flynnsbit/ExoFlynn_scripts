@echo off
if "%1" == "" goto noname
if exist "HS%1.BAT" goto found

echo @echo off> HS%1.BAT
echo SET hb1=%hb1%>> HS%1.BAT
echo SET hb2=%hb2%>> HS%1.BAT
echo SET hb3=%hb3%>> HS%1.BAT
echo SET hb5=%hb5%>> HS%1.BAT
echo SET hb6=%hb6%>> HS%1.BAT
echo SET hb7=%hb7%>> HS%1.BAT
echo SET hbr=%hbr%>> HS%1.BAT
echo SET hbs=%hbs%>> HS%1.BAT
echo Game saved.
goto exit

:noname
echo You must supply a save-name with SAVE. "SAVE xyz" will create a file called
echo "HSxyz.BAT". The filename should be at least 1 and at most 5 characters long.
goto exit

:found
echo Error: A file called "HS%1.BAT" already exists.

:exit