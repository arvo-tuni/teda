# Gaze analysis & visualization for tests in ARVO

## Install

First, install the latest [Node.js](https://nodejs.org/) version (11+), it will also install NPM, its packet manager.

Then open a console and install a server for static page:

```
npm install -g static
```

Now you are ready to launch the app.

## Launch

Run the `run.bat` file, it will automatically launch data server and open the webpage. You can modify the `.bat` file if your data is located not in the same folder:

```
start "ARVO data server" cmd "/c node ./app.js -d YOUR_DATA_FOLDER"
```

There are also other parameters for the data server, you can learn about them from the console that runs the server.
