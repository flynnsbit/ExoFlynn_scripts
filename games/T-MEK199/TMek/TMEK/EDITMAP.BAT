@ECHO OFF
CD MAPS
COPY %1.MAP %1.BAK
TMEKEDIT -infile %1.MAP -outfile %1.NEW
COPY %1.NEW %1.MAP
CD..

