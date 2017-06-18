# NodeOS HTML Renderer

This is a first try to give NodeOS a working GUI! It's name is pretty simple:
**N**ode**O**s-**GUI**.


## Building and Configuring QT5

Let's build **noGUI**:

Nothing easier than that. Just execute `./build.sh`. This will clone the Qt
repo, build a static binary and build noGUI. To check if it worked, type
`ldd ./[noGUI executable]`.

## Using the build script

Nothing special, just copy and paste it into the project root and run it (maybe
you'll need root).

## Running noGUI

To run noGui you need either a linux framebuffer or EGLFS.

Run on FbDev:

```sh
./noGUI -platform linuxfb http://url.com
```

Run on EGLFS (recommended)

```sh
./noGUI .platform eglfs http://url.com
```

**Note that you have to add http://**
