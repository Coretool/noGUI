#!/usr/bin/env sh

LD_LIBRARY_PATH=build/icu/lib \
build/nogui/noGui "$0"

#QT_DEBUG_PLUGINS=1 \
#QT_PLUGIN_PATH=build/qtbase/plugins${QT_PLUGIN_PATH:+:$QT_PLUGIN_PATH} \
#build/nogui/noGui -platform linuxfb "$0"
