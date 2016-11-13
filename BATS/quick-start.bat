echo Starting ARMA 3 Server...
::CHANGE THE DIRECTORY BELOW TO THE PROPER LOCATION
set ServerPath="D:\Server\Arma"
cd /d %ServerPath%
timeout 1
start "arma3" /min "arma3server.exe" -port=2302 -autoinit -config=config\server.cfg -bepath=D:\Server\Arma\battleye "-cfg=config\basic.cfg" -profiles=config\ -name=arma3life -servermod=@life_server;@extDB2;@infiSTAR_A3
echo ARMA 3 Server has started