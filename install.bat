@echo off

echo Installing external tools...
npm install -g static

echo Downloading the projects...

git clone https://github.com/arvo-tuni/teda-server.git
git clone https://github.com/arvo-tuni/teda-client.git

echo Downloading dependencies and builing the projects...

echo [server]
cd test-data-server
npm install
npm run build

cd ..

echo [client]
cd test-data-vis
npm install
npm run build

echo Done!

pause
