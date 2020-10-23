ECHO OFF
JOYSET.EXE
if errorlevel 10 goto :TEXTCARD
if errorlevel 2 goto :EGAMONO
if errorlevel 1 goto :HERCCARD
if errorlevel 0 goto :CGACARD
:TEXTCARD
echo +-------------------------------------+
echo * Think Quick! requires that you have *
echo * one of the following graphics cards *
echo * plugged into your system:           *
echo *                                     *
echo *    Color Graphics Adapter (CGA);    *
echo *    Enhanced Graphics Adapter with   *
echo *      autoswitch (EGA) or;           *
echo *    Hercules Compatible Monochrome   *
echo *      Graphics Adapter.              *
echo *                                     *
echo * None of the graphics cards          *
echo * mentioned above were found in your  *
echo * system therefore Think Quick! will  *
echo * not run.                            *
echo +-------------------------------------+
goto :QUIT
:EGAMONO
echo +-------------------------------------+
echo * Think Quick! has been set up to use *
echo * your EGA card in monochrome mode.   *
goto :THEND
:HERCCARD
echo +-------------------------------------+
echo * Think Quick! has been set up to use *
echo * your Hercules Graphics Adapter.     *
goto :THEND
:CGACARD
echo +-------------------------------------+
echo * Think Quick! has been set up to use *
echo * your Color Graphics Adapter.        *
:THEND
echo *                                     *
echo * It is now ready for use (see        *
echo * Getting Started in the User's       *
echo * Guide).                             *
echo +-------------------------------------+
:QUIT
set sysdisk=
set setsys=
set harddisk=
