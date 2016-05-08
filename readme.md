#### NodeOS HTML Renderer

  This is a first attempt to give NodeOS a working gui  ! It's name is prettey simple: **N**ode**O**s-**Gui**.


##### Building and Configuring QT5

Let's build **noGui**:  

Nothing easier than that. Just execute `./build.sh` 

This will clone the qt repo, build a static binary and build noGui. 

To check if it worked , type `ldd ./[noGUI executable]`.

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
