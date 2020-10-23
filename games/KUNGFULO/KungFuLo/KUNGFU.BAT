echo off
cls
set KFL=XXXXXXX
rem NOTE: DOS environment should have enough space for above process!!
rem   Program will pass to correct ending sequence via KFL environment
rem   string.  MAIN.EXE  will  error-check  and fail to process if the
rem   above string is not SET.
rem
echo KUNG FU LOUIE VS. THE MARTIAL ART POSSE
echo ---------------------------------------
echo            1989  R. Salgado
echo.
echo        IBM 286/386 EGA Version
echo AdLib Music Synthesizer Card (Optional)
echo.
echo        Usage: KUNGFU [/A] [/D]
echo   /A = AdLib support
echo   /D = Demonstration mode (run-time)
echo.
if 1%KFL% == 1 goto nocando
if %KFL% == XXXXXXX goto okcando
:nocando
echo * Not enough DOS environment space for
echo   program.  Please  reload without DOS
echo   environment  variables  (e.g.  PATH,
echo   PROMPT,  etc)  for proper execution.
goto end
:okcando
echo Press any key when ready to load game..
main %1 %2 %3
set KFL=
echo Adios from R. Salgado, 1989.
echo.
:end
