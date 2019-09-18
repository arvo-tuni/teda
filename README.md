# Gaze analysis & visualization for tests in ARVO

## Installing

1. Install the latest [Node.js](https://nodejs.org/en/download/current/) version (11+), it will also install NPM, its packet manager. 
2. Install [Git](https://git-scm.com/downloads).
3. Create some folder, open a terminal/console there, and download the sources:

```
git clone https://github.com/arvo-tuni/teda.git
```

5. Go to the `teda` folder and run the `install.bat` script, it will finalize the installation.
6. When it finishes, you are ready to launch the app.

## Launching

Run the `run.bat` file, it will automatically launch data server and open the webpage. 

You can modify the `run.bat` file if your data folder is not located in the `teda` folder. For this, find the following line in the `run.bat`

```
start "ARVO data server" cmd "/c node ./app.js -d YOUR_DATA_FOLDER"
```

and replace the path to the data folder with the correct one that is **relative to the `teda-server/build` folder** (the default path `../../data` means that the data is located in the `teda/data` folder).

There are also other parameters for the data server, you can learn about them from the console that runs the server. You can insert them at the end of the line before the closing `"`.

Note that launching server may take time (especially, if a new data was added to the data folder), so the web application will show an error reporting it cannot connect to the server. In this case wait until the server console shows the `app listening on port 3000` message, and then reload the web app.
