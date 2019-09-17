@echo off

echo Staring server...
cd test-data-server/build
start "ARVO data server" cmd "/c node ./app.js -d ../../data"

cd ../..

echo Staring client...
cd test-data-vis/dist
start "ARVO client server" cmd "/c static -p 8080"

timeout 5

start http://127.0.0.1:8080
