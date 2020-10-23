@if not exist stp.exe goto end
@stp.exe
@if not exist setup.dat goto end
@copy setup.dat t
:end
