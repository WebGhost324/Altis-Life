::Made by eRazeri - edited by [midgetgrimm]
@echo off
title servermonitor.bat
:start
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
echo Server is not running, will be started now 
:: SET DIRECTORY TO PROPER LOCATION
start "" /min /wait "C:\Users\Steve\Desktop\Start-A3Life.bat" 
timeout 30
echo Server started succesfully
goto started
:loop
cls
echo Server is already running, running monitoring loop
:started
:: THESE ARE WERFAULT AND TASK KILLS
taskkill /f /im WerFault.exe /fi "WINDOWTITLE eq Arma 3"
C:\Windows\System32\timeout /t 80
C:\Windows\System32\tasklist /FI "IMAGENAME eq arma3server.exe" 2>NUL | C:\Windows\System32\find /I /N "arma3server.exe">NUL
if "%ERRORLEVEL%"=="0" goto loop
goto start