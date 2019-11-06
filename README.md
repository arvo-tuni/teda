# EAKR gaze data analysis & visualization app

**NOTE!** The description below applies only when using client (visualization in a browser) and server (log reading) sides as separate applications. It is recommended for non-developers to use a single-bundled app compiled for Windows that can be downloaded from [here](https://github.com/tuni-eakr/teda/releases)

## Installing

1. Install the latest [Node.js](https://nodejs.org/en/download/current/) version (11+), it will also install NPM, its packet manager. 
2. Install [Git](https://git-scm.com/downloads).
3. Create some folder, open a terminal/console there, and download the sources:

```
git clone https://github.com/tuni-eakr/teda.git
```

5. Go to the `teda` folder and run the `install.bat` script, it will finalize the installation.
6. When it finishes, you are ready to launch the app.

## Launching

Run the `run.bat` file, it will automatically launch data server and open the webpage. 

You can modify the `run.bat` file if your data folder is not located in the `teda` folder. For this, find the following line in the `run.bat`

```
start "EAKR data server" cmd "/c node ./app.js -d YOUR_DATA_FOLDER"
```

and replace the path to the data folder with the correct one that is **relative to the `teda/teda-server/build` folder** (the default path `../../data` means that the data is located in the `teda/data` folder).

There are also other parameters for the data server, you can learn about them from the console that runs the server. You can insert them at the end of the line before the closing `"`.

Note that launching server may take time (especially, if a new data was added to the data folder), so the web application may show an error reporting it cannot connect to the server. In this case wait until the server console shows the `app listening on port 3000` message, and then reload the web app. If this message is shown already and the server reports it is calculating statistics, then wait until it finishes the calculations and then reload the page.

Also note that currently the server has only one state shared among all clients, so it is advised not to open more than one tab with this application in the browser (i.e., the server serves only one client).

## Updating

If the application was (externally) updated, run the `update.bat` file: it will download the updates and build the sources automatically.
