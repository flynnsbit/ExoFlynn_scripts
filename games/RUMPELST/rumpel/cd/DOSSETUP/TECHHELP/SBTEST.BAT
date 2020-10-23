@echo off
cls
cd \dossetup\hwtests
echo.
echo ********  Read the following instructions before continuing:
echo.
echo Listen for digital audio.  If you hear any audio, the test confirmed
echo that your audio card will work with the TerraGlyph product.  Hit a key
echo to end the test before the audio is complete, or follow the instructions
echo given after the full audio piece is heard.
Echo.
echo.
Pause
wavetest \dossetup\hwtests\test.wav
cd \dossetup\techhelp

