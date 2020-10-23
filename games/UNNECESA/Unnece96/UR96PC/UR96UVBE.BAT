@D:
@cd \ur96
@if exist C:\UR96PC\univbe.drv goto DONE
@uvconfig -gen -p C:\UR96PC
:DONE
@echo Loading UR96
@univbe -p C:\UR96PC C:\UR96PC
@C:
