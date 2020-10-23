echo off
select
if errorlevel 5 goto FIVE
if errorlevel 4 goto FOUR
if errorlevel 3 goto THREE 
if errorlevel 2 goto TWO 
if errorlevel 1 goto ONE

:ONE
screene
gamee
goto end

:TWO
screenc
gamec
goto end

:THREE
screenc
gamec
goto end

:FOUR
screent
gamet
goto end

:FIVE
screent
gamet
goto end
:END

