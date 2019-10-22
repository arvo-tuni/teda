@echo off

echo Staring server...
cd teda-server/build
start "EAKR data server" cmd "/c node ./app.js -d ../../data"

cd ../..

echo Staring client...
cd teda-client/dist
start "EAKR client" cmd "/c static -p 8080"

timeout 5 2>nul
sleep 5 2>nul
start http://127.0.0.1:8080
