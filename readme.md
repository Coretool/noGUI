#### NodeOS HTML Renderer

  This is a first attempt to give NodeOS a working gui  ! It doesn't have a fancy name yet, so get creative if you want it to have a cool one ;)

  ##### Building and Configuring QT5

Follow this instructions to build a static QT5 version

  [1] Follow the   [instructions](https://wiki.qt.io/Building-Qt-5-from-Git) on how to clone the source

[2] Copy my configure.sh script to your source location

[3] Type  `make` and grab some popcorn

[4] Install it with `make install`

##### Building the renderer

You will need at properly installed QT5 version

[1] `cd` to the renderer source direction

[2]  Type `qmake`

[3] Now run `make`

[4] To test if it is really static, type `ldd ./[application name ] `
