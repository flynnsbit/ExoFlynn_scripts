@echo off

REM      THIS CODE IS NASTY. A LOT OF OPTIMIZATION IS A MUST.
REM      GET AWYAY FROM HERE ;-) IT'S A SHAME TO WATCH IT ...

if exist *.pos del *.pos
copy right1 right1.pos > nul 
set current=right1.pos
:start
shift
if "%1"=="38" main s 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 34 35 36 37 38
cls
type %1
type %current%
choice /c:cv~ /n /t:~,01
if errorlevel 255 goto STAY
if errorlevel 3 goto STAY
if errorlevel 2 goto RIGHT 
if errorlevel 1 goto LEFT
if errorlevel 0 goto STAY

:STAY
if exist middle??.pos goto POS_M
if exist left????.pos goto POS_L
if exist right???.pos goto POS_R

:RIGHT
if exist middle??.pos goto POS_R
if exist left????.pos goto POS_M
if exist right???.pos goto R_CRASH

:LEFT
if exist middle??.pos goto POS_L
if exist left????.pos goto L_CRASH
if exist right???.pos goto POS_M

:POS_R
del *.pos > nul

if "%1"=="19" goto R_CRASH
if "%1"=="20" goto R_CRASH
if "%1"=="21" goto R_CRASH
if "%1"=="33" goto R_CRASH
if "%1"=="34" goto R_CRASH
if "%1"=="35" goto R_CRASH

if "%1"=="12" goto RL1
if "%1"=="13" goto RL2
if "%1"=="14" goto RL3
if "%1"=="27" goto RL1
if "%1"=="28" goto RL2
if "%1"=="29" goto RL3
if "%1"=="36" goto RL1
if "%1"=="37" goto RL4
if "%1"=="38" goto RL5
if "%1"=="23" goto RM1
if "%1"=="24" goto RM2
if "%1"=="25" goto RM3
goto RR

:RL1
copy rightl1 rightl1.pos > nul
set current=rightl1.pos
goto start

:RL2
copy rightl2 rightl2.pos > nul
set current=rightl2.pos
goto start

:RL3
copy rightl3 rightl3.pos > nul
set current=rightl3.pos
goto start

:RL4
copy rightl5 rightl5.pos > nul
set current=rightl5.pos
goto start

:RL5
copy rightl6 rightl6.pos > nul
set current=rightl6.pos
goto start

:RM1
copy rightm1 rightm1.pos > nul
set current=rightm1.pos
goto start

:RM2
copy rightm2 rightm2.pos > nul
set current=rightm2.pos
goto start

:RM3
copy rightm3 rightm3.pos > nul
set current=rightm3.pos
goto start

:RR
copy right1 right1.pos > nul
set current=right1.pos
goto start


:POS_M
del *.pos > nul

if "%1"=="24" goto M_CRASH
if "%1"=="25" goto M_CRASH
if "%1"=="26" goto M_CRASH
if "%1"=="33" goto M_CRASH
if "%1"=="34" goto M_CRASH
if "%1"=="35" goto M_CRASH
if "%1"=="37" goto M_CRASH
if "%1"=="38" goto M_CRASH

if "%1"=="12" goto ML1
if "%1"=="13" goto ML2
if "%1"=="14" goto ML3
if "%1"=="27" goto ML1
if "%1"=="28" goto ML2
if "%1"=="29" goto ML3
if "%1"=="18" goto MR1
if "%1"=="19" goto MR2
if "%1"=="20" goto MR3
goto MM

:ML1
copy middlel1 middlel1.pos > nul
set current=middlel1.pos
goto start

:ML2
copy middlel2 middlel2.pos > nul
set current=middlel2.pos
goto start

:ML3
copy middlel3 middlel3.pos > nul
set current=middlel3.pos
goto start

:MR1
copy middler1 middler1.pos > nul
set current=middler1.pos
goto start

:MR2
copy middler2 middler2.pos > nul
set current=middler2.pos
goto start

:MR3
copy middler3 middler3.pos > nul
set current=middler3.pos
goto start

:MM
copy middle1 middle1.pos > nul 
set current=middle1.pos
goto start

:POS_L
del *.pos > nul
if "%1"=="13" goto L_CRASH
if "%1"=="14" goto L_CRASH
if "%1"=="15" goto L_CRASH
if "%1"=="28" goto L_CRASH
if "%1"=="29" goto L_CRASH
if "%1"=="30" goto L_CRASH
if "%1"=="37" goto L_CRASH
if "%1"=="38" goto L_CRASH

if "%1"=="18" goto LR1
if "%1"=="19" goto LR2
if "%1"=="20" goto LR3
if "%1"=="32" goto LR4
if "%1"=="33" goto LR5
if "%1"=="34" goto LR6
if "%1"=="23" goto LM1
if "%1"=="24" goto LM2
if "%1"=="25" goto LM3

goto LL

:LR1
copy leftr1 leftr1.pos > nul 
set current=leftr1.pos
goto start

:LR2
copy leftr2 leftr2.pos > nul 
set current=leftr2.pos
goto start

:LR3
copy leftr3 leftr3.pos > nul 
set current=leftr3.pos
goto start

:LR4
copy leftr4 leftr4.pos > nul 
set current=leftr4.pos
goto start

:LR5
copy leftr5 leftr5.pos > nul 
set current=leftr5.pos
goto start

:LR6
copy leftr6 leftr6.pos > nul 
set current=leftr6.pos
goto start

:LM1
copy leftm1 leftm1.pos > nul 
set current=leftm1.pos
goto start

:LM2
copy leftm2 leftm2.pos > nul 
set current=leftm2.pos
goto start

:LM3
copy leftm3 leftm3.pos > nul 
set current=leftm3.pos
goto start

:LL
copy left1 left1.pos > nul 
set current=left1.pos
goto start

:M_CRASH
cls
type %1
type crash_m1
choice /c:cv~ /n /t:~,01
cls
type %1
type crash_m2
choice /c:cv~ /n /t:~,02
goto end

:R_CRASH
cls
type %1
type crash_r1
choice /c:cv~ /n /t:~,01
cls
type %1
type crash_r2
choice /c:cv~ /n /t:~,02
goto end

:L_CRASH
cls
type %1
type crash_l1
choice /c:cv~ /n /t:~,01
cls
type %1
type crash_l2
choice /c:cv~ /n /t:~,02
goto end

:end
mode co40
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo            !!!! GAME  OVER !!!!
echo                press button
pause > nul

:END
