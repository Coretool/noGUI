#!/usr/bin/env bash

BUILD=`pwd`/build/qt5

if [[ -z $JOBS ]]; then
  JOBS=$((`getconf _NPROCESSORS_ONLN` + 1))
fi

MAKE="make --jobs=$JOBS"


SRC_DIR=`pwd`/deps/qt5

if [[ ! -d $SRC_DIR ]]; then
  git clone git://code.qt.io/qt/qt5.git $SRC_DIR || exit 1

  (
    cd deps/qt5       &&
    ./init-repository || exit 2
  ) || exit $?
fi


mkdir -p build || exit 3

(
  cd build || exit 4

  $SRC_DIR/configure       \
      -prefix $BUILD       \
      -opensource          \
      -confirm-license     \
      -static              \
      -no-sql-sqlite       \
      -no-pkg-config       \
      -qt-zlib             \
      -qt-libpng           \
      -qt-libjpeg          \
      -qt-freetype         \
      -qt-pcre             \
      -nomake tools        \
      -nomake examples     \
      -silent              \
      -no-fontconfig       \
      -no-dbus             \
      -no-xcb              \
      -linuxfb             || exit 5
#      -no-compile-examples \

  $MAKE || exit 6
) || exit $?


PATH=$BUILD/bin:$PATH
export PATH

build/qtbase/bin/qmake -config release || exit 7


$MAKE || exit 8
