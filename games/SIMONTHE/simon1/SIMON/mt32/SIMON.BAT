@Echo Off
if not exist Soundrv.Com echo Please run SETUP to setup your sound card for digital sound effects and music.
if not exist Soundrv.Com goto end
Soundrv
Runvga /D /3 D:\simon.voc D:\effects.voc simon.gme
Soundrv u
:end
