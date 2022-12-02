@ECHO OFF
SET FILENAME=C:\WINDOWS\NOTEPAD.EXE

Rem check if notpad is found and start the app or display error message
IF EXIST %FILENAME% (START %FILENAME%) ELSE (Echo Notepad not found)
Pause


