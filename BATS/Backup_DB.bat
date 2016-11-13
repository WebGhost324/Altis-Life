@REM *** PARAMETERS/VARIABLES ***
SET BackupDir="D:\A3Life\Backups\DB"
SET mysqldir="C:\xampp\mysql\bin"
SET mysqlschema=arma3life
SET mysqlpassword=zfX8h2UYfbdw8r3L
SET mysqluser=arma3life
SET housekeepafter=5

For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a.%%b)

:: Set Time and Date
SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%-%date:~-7,2%-%date:~-10,2%_0%time:~-1,1%-%time:~-8,2%-%time:~-5,2%
SET dtStamp24=%date:~-4%-%date:~-7,2%-%date:~-10,2%_%time:~-11,2%-%time:~-8,2%-%time:~-5,2%
::Make Date Stamp
if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)

@REM *** EXECUTION ***
@REM Change to mysqldir
c:
cd %mysqldir%

:: Make the Rotated Log Directorys
if exist "%BackupDir%" goto maketsdir
mkdir "%BackupDir%"
:maketsdir
if exist "%BackupDir%\%dtStamp%" goto rotatedb
mkdir "%BackupDir%\%dtStamp%"

@REM dump/backup ALL database, this is all in one line
mysqldump -u %mysqluser% -p%mysqlpassword% --databases %mysqlschema% --routines --events --triggers --quick  >%BackupDir%\%dtStamp%\%mysqlschema%_backup.%dtStamp%.sql

@REM - Housekeeping
forfiles -p %BackupDir% -s -m *.sql -d -%housekeepafter% -c "cmd /c del @path"

exit