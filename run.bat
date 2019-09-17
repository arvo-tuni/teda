@echo off

echo Staring server...
cd teda-server/build
start "ARVO data server" cmd "/c node ./app.js -d ../../data"

cd ../..

echo Staring client...
cd teda-client/dist
start "ARVO client" cmd "/c static -p 8080"

timeout 5 start http://127.0.0.1:8080
