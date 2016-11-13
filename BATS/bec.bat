@echo off

::CHANGE THE DIRECTORY BELOW TO THE PROPER LOCATION
set becpath="D:\A3Life\Bec"
cd /d %becpath%
start "" /min "Bec.exe" --dsc -f Config.cfg
timeout 1
echo BEC has started.. 

exit