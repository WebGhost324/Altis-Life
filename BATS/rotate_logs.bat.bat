@echo off
:: Based off of Server Launch Script by r4z0r49
:: Script Modified and fixed by Sykotix - http://dayz.sykotix.com
::
:: Usage: dayzsrv-log-rotater.bat servername
:: Example 1 - Will update using default profile: dayzsrv-log-rotater.bat 
:: Example 2 - Will update using profile for US6: dayzsrv-log-rotater.bat US6

:::::::::::::: CONFIG ::::::::::::::::::

set BackupDir=D:\Server\Arma\Backups\Logs

:: Set your Arma2AO Base installation directory. LEAVE OFF THE ENDING \
set arma3srvpath=D:\Server\Arma

:: Set your Default server profile name. This is the name of the directory that stores your server.cfg
:: This will be used in the case that you don't launch this script without the server param.
:: Example: cfgdayz, US6, Chicago13, ect
:: DEFAULTPROFILE
set srvname=config

:: Delete Original log files after they have been rotated? This keeps your logs more organized and saves space.
:: This will not work unless the server is stopped first. This option works best set to 1 when using FireDaemon's Pre/Post Service tab
set deloriglogs=1

::::::::::: ADVANCED CONFIG ::::::::::::
:: Don't touch anything below this point unless you know what your doing.

:: Setting Server Profile to Use
IF "%1"=="" (
set servername=%srvname%
) else (
set servername=%1
)

TITLE  Arma 3 Server Log Rotater

:: Set Debug Mode
set debug=0
:: Set Debug Timeout in seconds
set dbsecs=10

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::  STOP EDITING ::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Display Debug output
if %debug% == 1 (
echo Server Name = %servername%
echo ArmaIII Server Path = "%arma3srvpath%"
timeout %dbsecs%
)

:: Set Time and Date
SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%-%date:~-7,2%-%date:~-10,2%_0%time:~-1,1%-%time:~-8,2%-%time:~-5,2%
SET dtStamp24=%date:~-4%-%date:~-7,2%-%date:~-10,2%_%time:~-11,2%-%time:~-8,2%-%time:~-5,2%
::Make Date Stamp
if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)
ECHO Todays Date and time (%date%)(%time%) / %dtStamp%
if %debug% == 1 (
timeout %dbsecs%
)

echo (%date%) (%time%) Starting Log Rotation.

:: Make the Rotated Log Directorys
if exist "%BackupDir%" goto maketsdir
mkdir "%BackupDir%"
:maketsdir
if exist "%BackupDir%\%dtStamp%" goto rotatelogs
mkdir "%BackupDir%\%dtStamp%"
::makebedir
::if exist "D:\Server\Arma\Logs\%dtStamp%\BattlEye" goto rotatelogs
::mkdir "D:\Server\Arma\Logs\%dtStamp%\BattlEye"

:rotatelogs
:: Starting Log Rotation. If there are any other logs, just follow the format below, and make sure to NOT touch any of the varibles.
copy "%arma3srvpath%\%servername%\arma3server_*.RPT" "%BackupDir%\%dtStamp%\arma3server_*.RPT"
copy "%arma3srvpath%\%servername%\server_console_*.log" "%BackupDir%\%dtStamp%\server_console_*.log"
echo (%date%) (%time%) Logs are backed up now...
echo (%date%) (%time%) Removing original log files.
del /Q /F "%arma3srvpath%\%servername%\arma3server_*.RPT"
del /Q /F "%arma3srvpath%\%servername%\server_console_*.log"
del /Q /F "%arma3srvpath%\%servername%\config.vdf.*.tmp"

if %debug% == 1 (
timeout %dbsecs%
)

:: We're done here.
exit