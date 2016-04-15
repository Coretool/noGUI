#### NodeOS HTML Renderer

  This is a first attempt to give NodeOS a working gui  ! It's name is prettey simple: **N**ode**O**s-**Gui**.


##### Building and Configuring QT5

Follow this instructions to build a static QT5 version

  [1] Follow the   [instructions](https://wiki.qt.io/Building-Qt-5-from-Git) on how to clone the source

  [2] And now :

  ```
  cd /path/to/Qt
./config.sh
make

  ```

Note that the `config.sh` file can be found in this repo and that you have to change the path to qt (replace `/path/to/QT ` with your path)

[3] Let's build **noGui**:  

Nothing easier than that. Just execute `./build.sh` 

To check if it worked , type `ldd ./[executable name]`.

##### using the build script

Nothing special, just copy and paste it into the project root and run it (maybe you'll need root)

##### Running noGui

To run noGui you need either a linuxfb or EGLFS

Run on fb:

```
./noGui -platform linuxfb http://url.com

```
Run on EGLFS (recommended)
```
./noGui .platform eglfs http://url.com
```

**Note that you have to add http://**
