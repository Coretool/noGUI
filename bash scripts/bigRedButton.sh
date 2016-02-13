#!/usr/bin/env bash
echo "Downloading QT5 source code"
 git clone git://code.qt.io/qt/qt5.git #qt 5 repo
echo "Running init script..."
 perl /qt5/init-repository #init script
 echo "Configuring Qt source"
 ./qt5/configure -static -prefix  /builds/qt5 -release -opensource  -confirm-license -openssl -silent -no-xcb -eglfs -linuxfb #configure
echo "Preparing build"
 PATH=/builds/qt5/bin:$PATH
 export PATH
 qmake -config release
 echo "Building..."
 make
echo "Done"
