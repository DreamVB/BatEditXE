@ECHO OFF

ECHO 1=Run Notepad
ECHO 2=Open Google
ECHO 3=Show Version

SET /P Option=Choose a Option:

if %Option%==1 Start Notepad.exe
if %Option%==2 start http://www.google.com
if %Option%==3 VER
pause



