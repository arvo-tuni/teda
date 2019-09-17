@echo off

echo.
echo Installing external tools...
call npm install -g static

echo.
echo Downloading the projects...

call git clone https://github.com/arvo-tuni/teda-server.git
call git clone https://github.com/arvo-tuni/teda-client.git

echo.
echo Downloading dependencies and builing the projects...

echo.
echo [server]
cd test-data-server
call npm install
call npm run build

cd ..

echo.
echo [client]
cd test-data-vis
call npm install
call npm run build

echo.
echo Done!
