# Gaze analysis & visualization for tests in ARVO

## Install

First, install the latest [Node.js](https://nodejs.org/) version (11+), it will also install NPM, its packet manager. Also, install [Git](https://git-scm.com/downloads).

Create some folder, open a terminal here, and download the sources:

```
git clone https://github.com/arvo-tuni/tedaav.git
```

Then go to the `tedaav` folder and run the `install.bat` script, it will do all the rest stuff.

When it finishes, you are ready to launch the app.

## Launch

Run the `run.bat` file, it will automatically launch data server and open the webpage. 

You can modify the `run.bat` file if your data folder (named `data`) is located not in the same folder. Find this line:

```
start "ARVO data server" cmd "/c node ./app.js -d YOUR_DATA_FOLDER"
```

and replace the path to the data folder with the correct one that is **relative to the `teda-server/build` folder**.

There are also other parameters for the data server, you can learn about them from the console that runs the server.
