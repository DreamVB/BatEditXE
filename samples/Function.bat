@ECHO OFF
CALL :TestFunc
Echo Back is main now exiting
PAUSE
EXIT /B %ERRORLEVEL%


:TestFunc
Echo Hello From Test Function
PAUSE
EXIT /B 0

