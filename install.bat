@echo off

echo.
echo Installing external tools...
echo.
call npm install -g node-static

echo.
echo Downloading the projects...
echo.

call git clone https://github.com/arvo-tuni/teda-server.git
echo.
call git clone https://github.com/arvo-tuni/teda-client.git

echo.
echo Downloading dependencies...

echo.
echo [server]
cd teda-server
call npm install
cd ..

echo.
echo [client]
cd teda-client
call npm install
cd ..

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
