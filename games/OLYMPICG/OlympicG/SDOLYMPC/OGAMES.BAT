@og.exe %1 %2 %3
@if errorlevel 27 goto plonk

@goto pants

:plonk
@og2.exe antelope %1 %2 %3 >NUL
@if errorlevel 27 goto plonk

:pants

