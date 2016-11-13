@echo off

taskkill /f /fi "status eq not responding" /im arma3server.exe
taskkill /f /im arma3server.exe
timeout 1

taskkill /f /fi "status eq not responding" /im arma3.exe
taskkill /f /im arma3.exe
timeout 1

taskkill /im Bec.exe
taskkill /f /im cmd.exe /fi "windowtitle eq servermonitor.bat"
timeout 2
echo Kill all instances for safety

set RotatePath="C:\Users\Steve\Desktop"
cd /d %RotatePath%
start "" "rotate_logs.bat"
timeout 1
echo Logs Rotated..

set DBBackupPath="C:\Users\Steve\Desktop"
cd /d %DBBackupPath%
start "" "Backup_DB.bat"
timeout 1
echo Datenbank Backup erfolgreich..

echo Starting ARMA 3 Server...
::CHANGE THE DIRECTORY BELOW TO THE PROPER LOCATION
set ServerPath="D:\A3Life"
cd /d %ServerPath%
timeout 1
start "arma3" /min "arma3server.exe" -port=2302 -autoinit -config=config\server.cfg -bepath=D:\A3Life\battleye "-cfg=config\basic.cfg" -profiles=config\ -name=arma3life -mod=@TG;@ace;@task_force_radio;@life_server;@extDB
echo ARMA 3 Server has started

::CHANGE THE DIRECTORY BELOW TO THE PROPER LOCATION
set becpath="D:\A3Life\Bec"
cd /d %becpath%
timeout 60
start "" /min "Bec.exe" --dsc -f Config.cfg
echo Battleye has started.. 

::CHANGE THE DIRECTORY BELOW TO THE PROPER LOCATION
set ServerMonitorPath="C:\Users\Steve\Desktop"
cd /d %ServerMonitorPath%
start "" "servermonitor.bat"
echo Server Monitor has started. Have Fun
timeout 1
exit