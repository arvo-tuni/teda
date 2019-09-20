@echo off

echo.
echo Downloading updates...

echo.
echo [server]
cd teda-server
call git pull origin master
cd ..

echo.
echo [client]
cd teda-client
call git pull origin master
cd ..

rem echo.
rem echo Fixing some issues with Chart.js...
rem echo.
rem call git pull -f origin master

echo.
echo Building the projects...

echo.
echo [server]
cd teda-server
call npm run build
cd ..

echo.
echo [client]
cd teda-client
call npm run build
cd ..

echo.
echo Done!
