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

> Now run qmake to create a new makefile for the application, and do a clean build to create the statically linked executable:
(QT WIKI)

This will run the build against the new static libs

```
make clean
PATH=/path/to/Qt/bin:$PATH
export PATH
qmake -config release
make

```

To check if it worked , type `ldd ./[executable name]`.

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
