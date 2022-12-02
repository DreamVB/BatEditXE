@ECHO OFF
CALL :TestFunc 25, 10
EXIT /B %ERRORLEVEL%

:TestFunc
Set /A a=%~1
Set /A b=%~2
Set /A answer=a+b

ECHO %~1 + %~2 is %answer%

PAUSE
EXIT /B 0

