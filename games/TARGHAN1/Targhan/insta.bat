cls
xcopy %1\TARGHAN.FR\*.*
attrib -AR *.*
if ERRORLEVEL 2 goto Erreur
goto Fin


:Erreur
cls
echo [1m**** Procedure interrupted. Installation failed ****[0m
echo.

:Fin
cls
echo [1mInstallation finished. 
echo To play, choose START from the TARGHAN sub-directory.
echo.


